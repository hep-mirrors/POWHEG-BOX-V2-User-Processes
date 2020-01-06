module mod_files
  use mod_error
  implicit none

  ! This module allows to pass a list of filenames as an argument of
  ! various functions

  type fname
    !>> name of the file
    character(len=:),allocatable:: name
  end type fname
  
  type fblock
    !>> block of filename
    integer:: nfiles
    type(fname),dimension(:),allocatable:: files
  end type fblock
  
contains
  !> assigns a name
  function fname_assign(xname) result(res)
    implicit none
    type(fname):: res
    character(len=*),intent(in):: xname

    allocate( character(len=len(xname)) :: res%name )
    res%name= xname

    return
  end function fname_assign

  !> read off file name
  function fname_read(fname1) result(res)
    implicit none
    character(len=:),allocatable :: res
    type(fname),intent(in):: fname1

    res= fname1%name

    return
  end function fname_read

  !> open file with given unit
  subroutine fname_open(filename,iunit)
    implicit none
    type(fname),intent(in):: filename
    integer,intent(in):: iunit
    integer:: ios

    open(unit=iunit,file=filename%name,status='old',iostat=ios)
    if( ios.ne.0 ) call error("fname_open: \n Problem opening file: "//filename%name)

    return
  end subroutine fname_open

  !> create file with given unit
  subroutine fname_create(filename,iunit)
    implicit none
    type(fname),intent(in):: filename
    integer,intent(in):: iunit
    integer:: ios

    open(unit=iunit,file=filename%name,iostat=ios)
    if( ios.ne.0 ) call error("fname_create: \n Problem creating file: "//filename%name)

    return
  end subroutine fname_create

  !> initialises block of names
  function fblock_init() result(res)
    implicit none
    type(fblock):: res

    res%nfiles=0
    
    return
  end function fblock_init

  !> adds another file to file block
  function fblock_add(block1,xname) result(res)
    implicit none
    type(fblock):: res
    type(fblock),intent(in):: block1
    character(len=*),intent(in):: xname
    integer:: ifile

    ! increase number of files
    res%nfiles= block1%nfiles + 1
    
    ! allocate block
    allocate(res%files(res%nfiles))

    ! rewrite old filenames
    do ifile=1,block1%nfiles
      res%files(ifile)= block1%files(ifile)
    enddo

    ! add new filename
    res%files( res%nfiles )= fname_assign(xname)

    return
  end function fblock_add

  !> adds two fileblocks
  function fblock_addblocks(block1,block2) result(res)
    implicit none
    type(fblock):: res
    type(fblock),intent(in):: block1,block2
    integer:: ifile,nfile

    ! increase number of files
    res%nfiles= block1%nfiles + block2%nfiles
    
    ! allocate block
    allocate(res%files(res%nfiles))

    ! rewrite old filenames (block1)
    do ifile=1,block1%nfiles
      res%files(ifile)= block1%files(ifile)
    enddo

    ! rewrite old filenames (block2)
    nfile=block1%nfiles
    do ifile=1,block2%nfiles
      res%files(nfile+ifile)= block2%files(ifile)
    enddo

    return
  end function fblock_addblocks

  !> opens n-th file from a file block wit a unit iunit
  subroutine fblock_open(block1,ifile,iunit)
    implicit none
    type(fblock),intent(in):: block1
    integer,intent(in):: ifile,iunit
    integer:: ios

    if( ifile.le.0 )then
      write(*,*)'ERROR: fblock_open: ifile < 0'
      write(*,*)'>> ifile= ',ifile
      stop
    endif

    if( ifile.gt.block1%nfiles )then
      write(*,*)'ERROR: fblock_open: ifile > nfiles'
      write(*,*)'>> ifile=  ',ifile
      write(*,*)'>> nfiles= ',block1%nfiles
      stop
    endif

    open(unit=iunit,file=fname_read(block1%files(ifile)),status='old',iostat=ios)

    if( ios.ne.0 )then
      write(*,*)'ERROR: fblock_open: problem opening file!'
      write(*,*)'>> name=  ',fname_read(block1%files(ifile))
      write(*,*)'>> ifile= ',ifile
      write(*,*)'>> iunit= ',iunit
      write(*,*)'>> iostat=',ios
      stop
    endif
    
    return
  end subroutine fblock_open
    
  
end module mod_files
