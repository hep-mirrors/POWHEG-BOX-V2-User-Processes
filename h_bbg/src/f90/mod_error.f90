module mod_error
  implicit none

contains
  !> report error with message
  subroutine error(message)
    implicit none
    character(len=*),intent(in):: message

    write(*,*)'ERROR:'
    write(*,*) message
    write(*,*)''
    write(*,*)'stop!'
    stop

    return
  end subroutine error

end module mod_error
