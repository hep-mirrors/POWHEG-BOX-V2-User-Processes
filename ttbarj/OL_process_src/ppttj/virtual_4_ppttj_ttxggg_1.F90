
module ol_vamp_4_ppttj_ttxggg_1_/**/REALKIND
contains

! **********************************************************************
subroutine vamp_4(M)
! P(0:3,nlegs) = incoming external momenta
! Uses tree structures 'wf', factors 'c', and denominators 'den' from loop_ppttj_ttxggg_1.
! Sets colour stripped amplitudes A from the module loop_amplitudes_ppttj_ttxggg_1.
! **********************************************************************
  use KIND_TYPES, only: REALKIND, QREALKIND, intkind2
  use ol_parameters_decl_/**/DREALKIND, only: l_switch
  use ol_parameters_decl_/**/QREALKIND ! masses
  use ol_vert_interface_/**/REALKIND
  use ol_prop_interface_/**/REALKIND
  use ol_last_step_/**/REALKIND
  use ol_tables_storage_ppttj_ttxggg_1_/**/DREALKIND
  use ol_tensor_sum_storage_ppttj_ttxggg_1_/**/REALKIND
  use ol_loop_handling_/**/REALKIND
  use ofred_reduction_/**/REALKIND, only: Hotf_4pt_reduction, Hotf_4pt_reduction_last
  use ofred_reduction_/**/REALKIND, only: Hotf_5pt_reduction, Hotf_5pt_reduction_last
  use ol_loop_reduction_/**/REALKIND, only: TI_bubble_red, TI_triangle_red
use ol_loop_reduction_/**/REALKIND, only: compute_scalar_box

  use ol_loop_storage_ppttj_ttxggg_1_/**/REALKIND
#ifndef PRECISION_dp
  use ol_loop_storage_ppttj_ttxggg_1_/**/DREALKIND, only: &
    & p_switch, Hel, merge_step, merge_mism, merge_tables, merge_hels, ntryL, hel_states
#endif
  use hol_initialisation_/**/REALKIND, only: G0_hol_initialisation
  use ol_h_vert_interface_/**/REALKIND
  use ol_h_prop_interface_/**/REALKIND
  use ol_h_last_step_/**/REALKIND
  use ol_merging_/**/REALKIND, only: ol_merge, ol_merge_tensors, ol_merge_last

  implicit none

  type(Hpolcont) :: Gcoeff(hel_states)
  type(Hpolcont), intent(in) :: M(11,hel_states)


#ifndef PRECISION_dp
  if (ntryL==1 .OR. p_switch == 1) Gcoeff(:)%hf = Hel(1:hel_states)
#else
  if (ntryL==1 .OR. p_switch == 2) Gcoeff(:)%hf = Hel(1:hel_states)
#endif

  ! =============================================
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(89),[G1H4(53),G1H4(78),G0H4(4),G0H4(7),G0H4(10)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(71),[G1H4(31),G1H4(6),G0H4(3),G0H4(6),G0H4(9)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(3),[G0H8(9),G0H8(8),G0H8(3)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(34),[G0H8(22),G0H8(23),G0H8(4)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(54),[G0H8(25),G0H8(15),G0H8(21)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(65),[G0H8(7),G0H8(1),G0H8(24)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(69),[G0H8(20),G0H8(17),G0H8(5)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(73),[G0H8(19),G0H8(18),G0H8(6)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(35),[G1H4(137),G1H4(123),G1H4(8),G1H4(50),G1H4(113) &
    ,G0H4(22),G0H4(21),G0H4(13),G0H4(20),G0H4(16),G0H4(17),G0H4(15),G0H4(1),G0H4(2)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(49),[G1H4(5),G1H4(39),G0H4(14),G0H4(19),G0H4(18)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G0H2(42),[G0H2(41),G0H2(40),G0H2(39),G0H2(38),G0H2(37) &
    ,G0H2(24),G0H2(23),G0H2(22),G0H2(21),G0H2(20),G0H2(19),G0H2(18),G0H2(17),G0H2(16),G0H2(9),G0H2(8),G0H2(7),G0H2(3),G0H2(2) &
    ,G0H2(1)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G0H2(36),[G0H2(35),G0H2(34),G0H2(33),G0H2(32),G0H2(31) &
    ,G0H2(30),G0H2(29),G0H2(28),G0H2(27),G0H2(26),G0H2(25),G0H2(15),G0H2(14),G0H2(13),G0H2(12),G0H2(11),G0H2(10),G0H2(6),G0H2(5) &
    ,G0H2(4)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(25),[G0H8(10),G0H8(13),G0H8(16)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(49),[G0H8(11),G0H8(2),G0H8(12)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(142),[G1H4(112),G1H4(132),G1H4(107),G1H4(96),G1H4(117) &
    ,G1H4(125),G1H4(67),G1H4(60),G1H4(62),G1H4(23),G1H4(12)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(33),[G1H4(1),G1H4(54),G1H4(36),G1H4(41),G1H4(46)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(61),[G1H4(108),G1H4(90),G1H4(110),G1H4(115),G1H4(97)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(44),[G1H4(56),G1H4(101),G1H4(119),G1H4(59),G1H4(84)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(61),[G0H8(27),G0H8(26),G0H8(14)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(27),[G0H8(30),G0H8(29),G0H8(28)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(23),[G0H8(33),G0H8(32),G0H8(31)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(22),[G0H8(36),G0H8(35),G0H8(34)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(15),[G1H4(134),G1H4(81),G1H4(69),G1H4(83),G1H4(77)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(143),[G1H4(74),G1H4(47)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(22),[G1H4(88),G1H4(133)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(131),[G1H4(48),G1H4(95)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(21),[G1H8(77)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(13),[G1H8(9)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(43),[G1H4(24)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(55),[G1H4(124),G1H4(66)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(55),[G1H8(59)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(128),[G1H4(144)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H4(145),[G1H4(40),G1H4(52)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(50),[G1H8(5)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(31),[G1H8(7)])
  call ol_merge(ntryL,merge_step,merge_mism,merge_tables,merge_hels,G1H8(16),[G1H8(1)])
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H4(129),ex4(:),ex3(:),G1tensor(20),m4h2x2x1(:,16),heltab3x4(:,:,16))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H4(89),ex3(:),ex4(:),G1tensor(36),m4h2x2x1(:,17),heltab3x4(:,:,17))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H4(71),ex4(:),ex3(:),G1tensor(56),m4h2x2x1(:,18),heltab3x4(:,:,18))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H8(3),ex4(:),wf4(:,1),G1tensor(66),m4h2x4x1(:,3),heltab3x8(:,:,7))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H8(34),wf4(:,1),ex4(:),G1tensor(80),m4h4x2x1(:,2),heltab3x8(:,:,8))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H8(54),ex4(:),wf4(:,1),G1tensor(92),m4h2x4x1(:,4),heltab3x8(:,:,9))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H8(65),ex3(:),wf4(:,1),G1tensor(104),m4h2x4x1(:,5),heltab3x8(:,:,10))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H8(69),wf4(:,1),ex3(:),G1tensor(120),m4h4x2x1(:,3),heltab3x8(:,:,11))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H8(73),ex3(:),wf4(:,1),G1tensor(63),m4h2x4x1(:,6),heltab3x8(:,:,12))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(4),wf4(:,1),wf4(:,2),G1tensor(81),m4h4x4x1(:,1),heltab3x16(:,:,4))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(6),wf4(:,2),wf4(:,1),G1tensor(11),m4h4x4x1(:,2),heltab3x16(:,:,5))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(17),wf4(:,1),wf4(:,2),G1tensor(10),m4h4x4x1(:,3),heltab3x16(:,:,6))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H4(35),28,wf4(:,1),3,G2tensor(413),m3h4x1(:,89),heltab2x4(:,:,396))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H4(49),19,wf4(:,2),12,G2tensor(431),m3h4x1(:,90),heltab2x4(:,:,397))
  call Hcheck_last_UV_W(ntryL,l_switch,G0H2(42),23,ex4(:),8,G1tensor(28),m3h2x1(:,540),heltab2x2(:,:,540))
  call Hcheck_last_UV_W(ntryL,l_switch,G0H2(36),27,ex3(:),4,G1tensor(33),m3h2x1(:,541),heltab2x2(:,:,541))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(19),ex4(:),wf8(:,6),G1tensor(95),m4h2x8x1(:,1),heltab3x16(:,:,7))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(30),wf8(:,6),ex4(:),G1tensor(47),m4h8x2x1(:,1),heltab3x16(:,:,8))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(36),ex4(:),wf8(:,6),G1tensor(88),m4h2x8x1(:,2),heltab3x16(:,:,9))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H8(25),24,wf8(:,6),7,G2tensor(175),m3h8x1(:,40),heltab2x8(:,:,269))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(45),ex3(:),wf8(:,5),G1tensor(64),m4h2x8x1(:,3),heltab3x16(:,:,10))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(47),wf8(:,5),ex3(:),G1tensor(119),m4h8x2x1(:,2),heltab3x16(:,:,11))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(60),ex3(:),wf8(:,5),G1tensor(125),m4h2x8x1(:,4),heltab3x16(:,:,12))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H8(49),20,wf8(:,5),11,G2tensor(169),m3h8x1(:,41),heltab2x8(:,:,270))
  call Hloop_QV_A(ntryL,G1H4(142),wf4(:,1),G1H1(1),m3h4x1(:,91),heltab2x4(:,:,398))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(124),n2h1(438))
  call Hloop_QV_A(ntryL,G1H4(33),wf4(:,1),G1H1(1),m3h4x1(:,92),heltab2x4(:,:,399))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(177),n2h1(439))
  call Hloop_QV_A(ntryL,G1H4(61),wf4(:,1),G1H1(1),m3h4x1(:,93),heltab2x4(:,:,400))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(126),n2h1(440))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H4(44),28,wf4(:,1),3,G2tensor(173),m3h4x1(:,94),heltab2x4(:,:,401))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(62),ex4(:),wf8(:,9),G1tensor(101),m4h2x8x1(:,5),heltab3x16(:,:,13))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(73),wf8(:,9),ex4(:),G1tensor(123),m4h8x2x1(:,3),heltab3x16(:,:,14))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(75),ex4(:),wf8(:,9),G1tensor(135),m4h2x8x1(:,6),heltab3x16(:,:,15))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H8(61),24,wf8(:,9),7,G2tensor(128),m3h8x1(:,42),heltab2x8(:,:,271))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(86),ex4(:),wf8(:,12),G1tensor(146),m4h2x8x1(:,7),heltab3x16(:,:,16))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(88),wf8(:,12),ex4(:),G1tensor(151),m4h8x2x1(:,4),heltab3x16(:,:,17))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(10),ex4(:),wf8(:,12),G1tensor(156),m4h2x8x1(:,8),heltab3x16(:,:,18))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H8(27),24,wf8(:,12),7,G2tensor(171),m3h8x1(:,43),heltab2x8(:,:,272))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(12),ex3(:),wf8(:,14),G1tensor(161),m4h2x8x1(:,9),heltab3x16(:,:,19))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(21),wf8(:,14),ex3(:),G1tensor(166),m4h8x2x1(:,5),heltab3x16(:,:,20))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(23),ex3(:),wf8(:,14),G1tensor(171),m4h2x8x1(:,10),heltab3x16(:,:,21))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H8(23),20,wf8(:,14),11,G2tensor(130),m3h8x1(:,44),heltab2x8(:,:,273))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(32),ex3(:),wf8(:,16),G1tensor(176),m4h2x8x1(:,11),heltab3x16(:,:,22))
  call Hcheck_last_GGG_G_12(ntryL,l_switch,G1H16(34),wf8(:,16),ex3(:),G1tensor(181),m4h8x2x1(:,6),heltab3x16(:,:,23))
  call Hcheck_last_GGG_G_23(ntryL,l_switch,G1H16(1),ex3(:),wf8(:,16),G1tensor(186),m4h2x8x1(:,12),heltab3x16(:,:,24))
  call Hcheck_last_UV_W(ntryL,l_switch,G1H8(22),20,wf8(:,16),11,G2tensor(167),m3h8x1(:,45),heltab2x8(:,:,274))
  call Hloop_QV_A(ntryL,G1H4(15),wf4(:,2),G1H1(1),m3h4x1(:,95),heltab2x4(:,:,402))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(132),n2h1(441))
  call Hloop_QV_A(ntryL,G1H4(143),wf4(:,2),G1H1(1),m3h4x1(:,96),heltab2x4(:,:,403))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(135),n2h1(442))
  call Hloop_QV_A(ntryL,G1H4(22),wf4(:,2),G1H1(1),m3h4x1(:,97),heltab2x4(:,:,404))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(194),n2h1(443))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H4(131),19,wf4(:,2),12,G2tensor(374),m3h4x1(:,98),heltab2x4(:,:,405))
  call Hloop_QV_A(ntryL,G1H8(21),wf8(:,5),G1H1(1),m3h8x1(:,46),heltab2x8(:,:,275))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(200),n2h1(444))
  call Hloop_QV_A(ntryL,G1H8(36),wf8(:,5),G1H1(1),m3h8x1(:,47),heltab2x8(:,:,276))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(383),n2h1(445))
  call Hloop_QV_A(ntryL,G1H8(44),wf8(:,5),G1H1(1),m3h8x1(:,48),heltab2x8(:,:,277))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(206),n2h1(446))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H8(39),20,wf8(:,5),11,G2tensor(386),m3h8x1(:,49),heltab2x8(:,:,278))
  call Hloop_QV_A(ntryL,G1H8(13),wf8(:,6),G1H1(1),m3h8x1(:,50),heltab2x8(:,:,279))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(209),n2h1(447))
  call Hloop_QV_A(ntryL,G1H8(45),wf8(:,6),G1H1(1),m3h8x1(:,51),heltab2x8(:,:,280))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(368),n2h1(448))
  call Hloop_QV_A(ntryL,G1H8(20),wf8(:,6),G1H1(1),m3h8x1(:,52),heltab2x8(:,:,281))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(215),n2h1(449))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H8(17),24,wf8(:,6),7,G2tensor(221),m3h8x1(:,53),heltab2x8(:,:,282))
  call Hcheck_last_QA_V(ntryL,l_switch,G1H4(43),wf4(:,8),G1tensor(191),m3h4x1(:,99),heltab2x4(:,:,406))
  call Hcheck_last_AQ_V(ntryL,l_switch,G1H4(55),wf4(:,7),G1tensor(196),m3h4x1(:,100),heltab2x4(:,:,407))
  call Hloop_VQ_A(ntryL,G0H8(37),wf8(:,60),G0H1(1),m3h8x1(:,54),heltab2x8(:,:,283))
  call Hcheck_last_Q_A(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(201),n2h1(450))
  call Hloop_QV_A(ntryL,G1H8(55),wf8(:,9),G1H1(1),m3h8x1(:,55),heltab2x8(:,:,284))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(224),n2h1(451))
  call Hloop_QV_A(ntryL,G1H8(62),wf8(:,9),G1H1(1),m3h8x1(:,56),heltab2x8(:,:,285))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(377),n2h1(452))
  call Hloop_QV_A(ntryL,G1H8(57),wf8(:,9),G1H1(1),m3h8x1(:,57),heltab2x8(:,:,286))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(230),n2h1(453))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H8(58),24,wf8(:,9),7,G2tensor(380),m3h8x1(:,58),heltab2x8(:,:,287))
  call Hcheck_last_QA_V(ntryL,l_switch,G1H4(128),wf4(:,14),G1tensor(206),m3h4x1(:,101),heltab2x4(:,:,408))
  call Hcheck_last_AQ_V(ntryL,l_switch,G1H4(145),wf4(:,13),G1tensor(211),m3h4x1(:,102),heltab2x4(:,:,409))
  call Hloop_VA_Q(ntryL,G0H8(38),wf8(:,67),G0H1(1),m3h8x1(:,59),heltab2x8(:,:,288))
  call Hcheck_last_A_Q(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(216),n2h1(454))
  call Hloop_QV_A(ntryL,G1H8(50),wf8(:,12),G1H1(1),m3h8x1(:,60),heltab2x8(:,:,289))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(233),n2h1(455))
  call Hloop_QV_A(ntryL,G1H8(24),wf8(:,12),G1H1(1),m3h8x1(:,61),heltab2x8(:,:,290))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(239),n2h1(456))
  call Hloop_QV_A(ntryL,G1H8(53),wf8(:,12),G1H1(1),m3h8x1(:,62),heltab2x8(:,:,291))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(242),n2h1(457))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H8(26),24,wf8(:,12),7,G2tensor(365),m3h8x1(:,63),heltab2x8(:,:,292))
  call Hloop_VA_Q(ntryL,G0H4(12),wf4(:,14),G0H1(1),m3h4x1(:,103),heltab2x4(:,:,410))
  call Hcheck_last_A_Q(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(221),n2h1(458))
  call Hloop_VQ_A(ntryL,G0H8(39),wf8(:,73),G0H1(1),m3h8x1(:,64),heltab2x8(:,:,293))
  call Hcheck_last_Q_A(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(226),n2h1(459))
  call Hloop_QV_A(ntryL,G1H8(31),wf8(:,14),G1H1(1),m3h8x1(:,65),heltab2x8(:,:,294))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(245),n2h1(460))
  call Hloop_QV_A(ntryL,G1H8(29),wf8(:,14),G1H1(1),m3h8x1(:,66),heltab2x8(:,:,295))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(359),n2h1(461))
  call Hloop_QV_A(ntryL,G1H8(35),wf8(:,14),G1H1(1),m3h8x1(:,67),heltab2x8(:,:,296))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(248),n2h1(462))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H8(12),20,wf8(:,14),11,G2tensor(371),m3h8x1(:,68),heltab2x8(:,:,297))
  call Hloop_VA_Q(ntryL,G0H8(40),wf8(:,77),G0H1(1),m3h8x1(:,69),heltab2x8(:,:,298))
  call Hcheck_last_A_Q(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(231),n2h1(463))
  call Hloop_QV_A(ntryL,G1H8(16),wf8(:,16),G1H1(1),m3h8x1(:,70),heltab2x8(:,:,299))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,0,G2tensor(251),n2h1(464))
  call Hloop_QV_A(ntryL,G1H8(11),wf8(:,16),G1H1(1),m3h8x1(:,71),heltab2x8(:,:,300))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMT,G2tensor(257),n2h1(465))
  call Hloop_QV_A(ntryL,G1H8(19),wf8(:,16),G1H1(1),m3h8x1(:,72),heltab2x8(:,:,301))
  call Hcheck_last_Q_A(ntryL,l_switch,G1H1(1),31,nMB,G2tensor(362),n2h1(466))
  call Hcheck_last_CV_D(ntryL,l_switch,G1H8(2),20,wf8(:,16),11,G2tensor(260),m3h8x1(:,73),heltab2x8(:,:,302))
  call Hloop_VA_Q(ntryL,G0H4(23),wf4(:,8),G0H1(1),m3h4x1(:,104),heltab2x4(:,:,411))
  call Hcheck_last_A_Q(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(236),n2h1(467))
  call Hloop_VA_Q(ntryL,G0H8(41),wf8(:,82),G0H1(1),m3h8x1(:,74),heltab2x8(:,:,303))
  call Hcheck_last_A_Q(ntryL,l_switch,G0H1(1),31,nMT,G1tensor(241),n2h1(468))
  call Hcheck_last_AQ_V(ntryL,l_switch,G1H8(63),wf8(:,84),G1tensor(246),m3h8x1(:,75),heltab2x8(:,:,304))
  call ol_merge_tensors(G1tensor(33),[G0tensor(423),G0tensor(368),G0tensor(272),G0tensor(372),G0tensor(118),G0tensor(266) &
    ,G0tensor(334),G0tensor(17),G0tensor(47),G0tensor(422),G0tensor(370),G0tensor(320),G0tensor(40),G0tensor(15)])
  call ol_merge_tensors(G0tensor(113),[G0tensor(153),G0tensor(207),G0tensor(406),G0tensor(8),G0tensor(3),G0tensor(415) &
    ,G0tensor(290),G0tensor(195),G0tensor(140),G0tensor(115),G0tensor(20)])
  call ol_merge_tensors(G0tensor(222),[G0tensor(167),G0tensor(194),G0tensor(209),G0tensor(264),G0tensor(376),G0tensor(125) &
    ,G0tensor(25)])
  call ol_merge_tensors(G0tensor(466),[G0tensor(461),G0tensor(456),G0tensor(451),G0tensor(446),G0tensor(433),G0tensor(398) &
    ,G0tensor(413),G0tensor(328),G0tensor(278),G0tensor(293),G0tensor(248),G0tensor(231),G0tensor(332),G0tensor(198),G0tensor(416) &
    ,G0tensor(183),G0tensor(322),G0tensor(242),G0tensor(331),G0tensor(311),G0tensor(291),G0tensor(33),G0tensor(236),G0tensor(154) &
    ,G0tensor(444),G0tensor(281),G0tensor(34),G0tensor(192),G0tensor(399),G0tensor(157),G0tensor(129),G0tensor(409),G0tensor(97) &
    ,G0tensor(159),G0tensor(109),G0tensor(404),G0tensor(18),G0tensor(289),G0tensor(269),G0tensor(99),G0tensor(38),G0tensor(119) &
    ,G0tensor(13),G0tensor(69),G0tensor(139),G0tensor(186),G0tensor(92),G0tensor(267),G0tensor(277),G0tensor(287),G0tensor(136) &
    ,G0tensor(141),G0tensor(232),G0tensor(116),G0tensor(42),G0tensor(66),G0tensor(11),G0tensor(387),G0tensor(361),G0tensor(346) &
    ,G0tensor(21),G0tensor(435),G0tensor(6),G0tensor(1),G0tensor(405),G0tensor(380),G0tensor(355),G0tensor(330),G0tensor(305) &
    ,G0tensor(280),G0tensor(255),G0tensor(230),G0tensor(205),G0tensor(180),G0tensor(155),G0tensor(130),G0tensor(105),G0tensor(80) &
    ,G0tensor(55),G0tensor(30)])
  call ol_merge_tensors(G0tensor(464),[G0tensor(459),G0tensor(397),G0tensor(257),G0tensor(174),G0tensor(339),G0tensor(239) &
    ,G0tensor(201),G0tensor(31),G0tensor(270),G0tensor(215),G0tensor(90),G0tensor(65),G0tensor(45)])
  call ol_merge_tensors(G1tensor(221),[G0tensor(448),G0tensor(177),G0tensor(137),G0tensor(78),G0tensor(144),G0tensor(46) &
    ,G0tensor(75),G0tensor(50)])
  call ol_merge_tensors(G0tensor(454),[G0tensor(438),G0tensor(288),G0tensor(358),G0tensor(218),G0tensor(246),G0tensor(364) &
    ,G0tensor(151),G0tensor(102),G0tensor(142),G0tensor(240),G0tensor(165),G0tensor(120),G0tensor(70)])
  call ol_merge_tensors(G0tensor(449),[G0tensor(403),G0tensor(268),G0tensor(383),G0tensor(213),G0tensor(173),G0tensor(64) &
    ,G0tensor(419),G0tensor(91),G0tensor(327),G0tensor(145),G0tensor(95)])
  call ol_merge_tensors(G1tensor(236),[G0tensor(453),G0tensor(253),G0tensor(256),G0tensor(294),G0tensor(356),G0tensor(72) &
    ,G0tensor(251),G0tensor(100)])
  call ol_merge_tensors(G0tensor(297),[G0tensor(103),G0tensor(104),G0tensor(274),G0tensor(296),G0tensor(284),G0tensor(106) &
    ,G0tensor(150)])
  call ol_merge_tensors(G0tensor(94),[G0tensor(193),G0tensor(424),G0tensor(359),G0tensor(39),G0tensor(247),G0tensor(121) &
    ,G0tensor(390),G0tensor(365),G0tensor(265),G0tensor(220),G0tensor(170)])
  call ol_merge_tensors(G1tensor(196),[G0tensor(163),G0tensor(351),G0tensor(319),G0tensor(22),G0tensor(76),G0tensor(221) &
    ,G0tensor(375),G0tensor(175)])
  call ol_merge_tensors(G0tensor(343),[G0tensor(283),G0tensor(74),G0tensor(439),G0tensor(389),G0tensor(354),G0tensor(37) &
    ,G0tensor(299),G0tensor(181),G0tensor(340),G0tensor(315),G0tensor(295),G0tensor(245),G0tensor(190)])
  call ol_merge_tensors(G2tensor(177),[G0tensor(301),G0tensor(23),G0tensor(349),G0tensor(166),G0tensor(275),G0tensor(200)])
  call ol_merge_tensors(G2tensor(173),[G2tensor(124),G2tensor(413),G0tensor(83),G0tensor(52),G0tensor(314),G0tensor(224) &
    ,G0tensor(300),G0tensor(225)])
  call ol_merge_tensors(G1tensor(206),[G0tensor(393),G0tensor(212),G0tensor(199),G0tensor(14),G0tensor(101),G0tensor(32) &
    ,G0tensor(325),G0tensor(250)])
  call ol_merge_tensors(G1tensor(28),[G0tensor(352),G0tensor(308),G0tensor(421),G0tensor(401),G0tensor(396),G0tensor(381) &
    ,G0tensor(326),G0tensor(321),G0tensor(189),G0tensor(49),G0tensor(395),G0tensor(345)])
  call ol_merge_tensors(G1tensor(191),[G0tensor(363),G0tensor(143),G0tensor(434),G0tensor(279),G0tensor(86),G0tensor(152) &
    ,G0tensor(9),G0tensor(350)])
  call ol_merge_tensors(G1tensor(211),[G0tensor(426),G0tensor(402),G0tensor(241),G0tensor(178),G0tensor(56),G0tensor(41) &
    ,G0tensor(417),G0tensor(400)])
  call ol_merge_tensors(G2tensor(135),[G0tensor(282),G0tensor(323),G0tensor(362),G0tensor(214),G0tensor(161),G0tensor(420)])
  call ol_merge_tensors(G1tensor(226),[G1tensor(201),G0tensor(353),G0tensor(238),G0tensor(337),G0tensor(57),G0tensor(259) &
    ,G0tensor(176),G0tensor(425)])
  call ol_merge_tensors(G0tensor(407),[G0tensor(348),G0tensor(258),G0tensor(48),G0tensor(276),G0tensor(81),G0tensor(4)])
  call ol_merge_tensors(G1tensor(186),[G1tensor(181),G1tensor(176),G1tensor(171),G1tensor(166),G1tensor(161),G1tensor(156) &
    ,G1tensor(151),G1tensor(146),G1tensor(135),G1tensor(123),G1tensor(101),G1tensor(125),G1tensor(119),G1tensor(64),G1tensor(88) &
    ,G1tensor(47),G1tensor(95),G1tensor(10),G1tensor(11),G1tensor(81),G0tensor(338),G0tensor(303),G0tensor(298),G0tensor(204) &
    ,G0tensor(62),G0tensor(71),G0tensor(61),G0tensor(392),G0tensor(172),G0tensor(26),G0tensor(5)])
  call ol_merge_tensors(G2tensor(260),[G2tensor(251),G2tensor(371),G2tensor(245),G2tensor(386),G2tensor(200),G2tensor(167) &
    ,G2tensor(130),G2tensor(169),G1tensor(92),G1tensor(80),G1tensor(66),G0tensor(388),G0tensor(133),G0tensor(316),G0tensor(44) &
    ,G0tensor(412),G0tensor(391),G0tensor(430)])
  call ol_merge_tensors(G1tensor(246),[G0tensor(463),G0tensor(263),G0tensor(357),G0tensor(191),G0tensor(112),G0tensor(82) &
    ,G0tensor(51)])
  call ol_merge_tensors(G2tensor(257),[G2tensor(359),G2tensor(383),G0tensor(443),G0tensor(187),G0tensor(341),G0tensor(73) &
    ,G0tensor(219),G0tensor(132),G0tensor(146)])
  call ol_merge_tensors(G0tensor(465),[G0tensor(445),G0tensor(432),G0tensor(309),G0tensor(12),G0tensor(271),G0tensor(149) &
    ,G0tensor(171),G0tensor(147),G0tensor(371),G0tensor(292)])
  call ol_merge_tensors(G2tensor(374),[G2tensor(132),G2tensor(431),G1tensor(56),G1tensor(36),G1tensor(20),G0tensor(458) &
    ,G0tensor(342),G0tensor(162),G0tensor(249),G0tensor(216),G0tensor(196)])
  call ol_merge_tensors(G1tensor(241),[G1tensor(231),G1tensor(216),G0tensor(460),G0tensor(455),G0tensor(450),G0tensor(77) &
    ,G0tensor(234),G0tensor(29),G0tensor(28)])
  call ol_merge_tensors(G2tensor(365),[G2tensor(233),G2tensor(380),G2tensor(224),G2tensor(221),G2tensor(209),G2tensor(171) &
    ,G2tensor(128),G2tensor(175),G1tensor(63),G1tensor(120),G1tensor(104),G0tensor(313),G0tensor(53),G0tensor(414),G0tensor(168) &
    ,G0tensor(184),G0tensor(169),G0tensor(128)])
  call ol_merge_tensors(G2tensor(126),[G0tensor(228),G0tensor(206),G0tensor(431),G0tensor(324)])
  call ol_merge_tensors(G2tensor(194),[G0tensor(480),G0tensor(470),G0tensor(138)])
  call ol_merge_tensors(G0tensor(485),[G0tensor(475),G0tensor(329),G0tensor(98)])
  call ol_merge_tensors(G0tensor(486),[G0tensor(481),G0tensor(476),G0tensor(471),G0tensor(208),G0tensor(317),G0tensor(347) &
    ,G0tensor(158),G0tensor(336)])
  call ol_merge_tensors(G0tensor(478),[G0tensor(474),G0tensor(469),G0tensor(203),G0tensor(202),G0tensor(114)])
  call ol_merge_tensors(G2tensor(362),[G2tensor(248),G2tensor(206),G0tensor(473),G0tensor(441),G0tensor(107)])
  call ol_merge_tensors(G2tensor(239),[G2tensor(377),G2tensor(368),G0tensor(408),G0tensor(67),G0tensor(43),G0tensor(124) &
    ,G0tensor(379),G0tensor(179),G0tensor(127)])
  call ol_merge_tensors(G0tensor(484),[G0tensor(479),G0tensor(468),G0tensor(436)])
  call ol_merge_tensors(G2tensor(242),[G2tensor(230),G2tensor(215),G0tensor(483),G0tensor(217),G0tensor(378)])
call TI_bubble_red(G2tensor(177),28,mass2set(:,1),G0tensor(10),M2L1R1,G0tensor(35))
call TI_bubble_red(G2tensor(173),28,mass2set(:,2),G0tensor(60),M2L1R1)
call TI_bubble_red(G2tensor(135),19,mass2set(:,1),G0tensor(85),M2L1R1,G0tensor(110))
call TI_bubble_red(G2tensor(260),20,mass2set(:,2),G0tensor(135),M2L1R1)
call TI_bubble_red(G2tensor(257),20,mass2set(:,1),G0tensor(160),M2L1R1,G0tensor(185))
call TI_bubble_red(G2tensor(374),19,mass2set(:,2),G0tensor(210),M2L1R1)
call TI_bubble_red(G2tensor(365),24,mass2set(:,2),G0tensor(235),M2L1R1)
call TI_bubble_red(G2tensor(126),28,mass2set(:,3),G0tensor(260),M2L1R1,G0tensor(285))
call TI_bubble_red(G2tensor(194),19,mass2set(:,3),G0tensor(310),M2L1R1,G0tensor(335))
call TI_bubble_red(G2tensor(362),20,mass2set(:,3),G0tensor(360),M2L1R1,G0tensor(385))
call TI_bubble_red(G2tensor(239),24,mass2set(:,1),G0tensor(410),M2L1R1,G0tensor(2))
call TI_bubble_red(G2tensor(242),24,mass2set(:,3),G0tensor(7),M2L1R1,G0tensor(440))
  call ol_merge_tensors(G0tensor(2),[G0tensor(185),G0tensor(110),G0tensor(35),G0tensor(466)])
  call ol_merge_tensors(G0tensor(440),[G0tensor(385),G0tensor(486),G0tensor(335),G0tensor(285)])
call TI_bubble_red(G1tensor(33),27,mass2set(:,2),G0tensor(427),M2L1R1)
call TI_bubble_red(G1tensor(221),25,mass2set(:,4),G0tensor(36),M2L1R1,G0tensor(122))
call TI_bubble_red(G1tensor(236),21,mass2set(:,4),G0tensor(302),M2L1R1,G0tensor(382))
call TI_bubble_red(G1tensor(196),26,mass2set(:,5),G0tensor(377),M2L1R1,G0tensor(16))
call TI_bubble_red(G1tensor(206),25,mass2set(:,5),G0tensor(111),M2L1R1,G0tensor(96))
call TI_bubble_red(G1tensor(28),23,mass2set(:,2),G0tensor(227),M2L1R1)
call TI_bubble_red(G1tensor(191),21,mass2set(:,5),G0tensor(126),M2L1R1,G0tensor(131))
call TI_bubble_red(G1tensor(211),22,mass2set(:,5),G0tensor(156),M2L1R1,G0tensor(237))
call TI_bubble_red(G1tensor(226),18,mass2set(:,4),G0tensor(262),M2L1R1,G0tensor(252))
call TI_bubble_red(G1tensor(186),16,mass2set(:,2),G0tensor(117),M2L1R1)
call TI_bubble_red(G1tensor(246),18,mass2set(:,5),G0tensor(87),M2L1R1,G0tensor(19))
call TI_bubble_red(G1tensor(241),17,mass2set(:,4),G0tensor(27),M2L1R1,G0tensor(244))
  call ol_merge_tensors(G0tensor(244),[G0tensor(19),G0tensor(252),G0tensor(237),G0tensor(131),G0tensor(96),G0tensor(16) &
    ,G0tensor(382),G0tensor(122),G0tensor(2)])
  call ol_merge_tensors(T0sum(196),[G0tensor(427)])
  call ol_merge_tensors(T0sum(197),[G0tensor(113)])
  call ol_merge_tensors(T0sum(198),[G0tensor(222)])
  call ol_merge_tensors(T0sum(199),[G0tensor(244)])
  call ol_merge_tensors(T0sum(200),[G0tensor(464)])
  call ol_merge_tensors(T0sum(201),[G0tensor(36)])
  call ol_merge_tensors(T0sum(202),[G0tensor(454)])
  call ol_merge_tensors(T0sum(203),[G0tensor(449)])
  call ol_merge_tensors(T0sum(204),[G0tensor(302)])
  call ol_merge_tensors(T0sum(205),[G0tensor(297)])
  call ol_merge_tensors(T0sum(206),[G0tensor(94)])
  call ol_merge_tensors(T0sum(207),[G0tensor(377)])
  call ol_merge_tensors(T0sum(208),[G0tensor(343)])
  call ol_merge_tensors(T0sum(209),[G0tensor(10)])
  call ol_merge_tensors(T0sum(210),[G0tensor(60)])
  call ol_merge_tensors(T0sum(211),[G0tensor(111)])
  call ol_merge_tensors(T0sum(212),[G0tensor(227)])
  call ol_merge_tensors(T0sum(213),[G0tensor(126)])
  call ol_merge_tensors(T0sum(214),[G0tensor(156)])
  call ol_merge_tensors(T0sum(215),[G0tensor(85)])
  call ol_merge_tensors(T0sum(216),[G0tensor(262)])
  call ol_merge_tensors(T0sum(217),[G0tensor(407)])
  call ol_merge_tensors(T0sum(218),[G0tensor(117)])
  call ol_merge_tensors(T0sum(219),[G0tensor(135)])
  call ol_merge_tensors(T0sum(220),[G0tensor(87)])
  call ol_merge_tensors(T0sum(221),[G0tensor(160)])
  call ol_merge_tensors(T0sum(222),[G0tensor(465)])
  call ol_merge_tensors(T0sum(223),[G0tensor(210)])
  call ol_merge_tensors(T0sum(224),[G0tensor(27)])
  call ol_merge_tensors(T0sum(225),[G0tensor(235)])
  call ol_merge_tensors(T0sum(226),[G0tensor(260)])
  call ol_merge_tensors(T0sum(227),[G0tensor(440)])
  call ol_merge_tensors(T0sum(228),[G0tensor(310)])
  call ol_merge_tensors(T0sum(229),[G0tensor(485)])
  call ol_merge_tensors(T0sum(230),[G0tensor(478)])
  call ol_merge_tensors(T0sum(231),[G0tensor(360)])
  call ol_merge_tensors(T0sum(232),[G0tensor(410)])
  call ol_merge_tensors(T0sum(233),[G0tensor(484)])
  call ol_merge_tensors(T0sum(234),[G0tensor(7)])


! Compute scalar Master integrals 

  call compute_scalar_box([ 17, 21, 29 ],masses2_29,RedSet_4(10),ScalarBoxes(1))
  call compute_scalar_box([ 16, 21, 29 ],masses2_21,RedSet_4(11),ScalarBoxes(2))
  call compute_scalar_box([ 16, 17, 29 ],masses2_21,RedSet_4(1),ScalarBoxes(3))
  call compute_scalar_box([ 16, 17, 21 ],masses2_21,RedSet_4(2),ScalarBoxes(4))
  call compute_scalar_box([ 1, 5, 13 ],masses2_29,RedSet_4(12),ScalarBoxes(5))
  call compute_scalar_box([ 17, 25, 29 ],masses2_29,RedSet_4(13),ScalarBoxes(6))
  call compute_scalar_box([ 16, 25, 29 ],masses2_21,RedSet_4(14),ScalarBoxes(7))
  call compute_scalar_box([ 16, 17, 25 ],masses2_21,RedSet_4(3),ScalarBoxes(8))
  call compute_scalar_box([ 1, 9, 13 ],masses2_29,RedSet_4(15),ScalarBoxes(9))
  call compute_scalar_box([ 20, 21, 23 ],masses2_20,RedSet_4(16),ScalarBoxes(10))
  call compute_scalar_box([ 16, 21, 23 ],masses2_20,RedSet_4(17),ScalarBoxes(11))
  call compute_scalar_box([ 16, 20, 23 ],masses2_16,RedSet_4(18),ScalarBoxes(12))
  call compute_scalar_box([ 16, 20, 21 ],masses2_18,RedSet_4(4),ScalarBoxes(13))
  call compute_scalar_box([ 4, 5, 7 ],masses2_20,RedSet_4(19),ScalarBoxes(14))
  call compute_scalar_box([ 20, 22, 23 ],masses2_20,RedSet_4(20),ScalarBoxes(15))
  call compute_scalar_box([ 16, 22, 23 ],masses2_20,RedSet_4(21),ScalarBoxes(16))
  call compute_scalar_box([ 16, 20, 22 ],masses2_18,RedSet_4(5),ScalarBoxes(17))
  call compute_scalar_box([ 4, 6, 7 ],masses2_20,RedSet_4(22),ScalarBoxes(18))
  call compute_scalar_box([ 18, 22, 23 ],masses2_27,RedSet_4(23),ScalarBoxes(19))
  call compute_scalar_box([ 16, 18, 23 ],masses2_20,RedSet_4(24),ScalarBoxes(20))
  call compute_scalar_box([ 16, 18, 22 ],masses2_21,RedSet_4(6),ScalarBoxes(21))
  call compute_scalar_box([ 2, 6, 7 ],masses2_27,RedSet_4(25),ScalarBoxes(22))
  call compute_scalar_box([ 18, 26, 27 ],masses2_27,RedSet_4(26),ScalarBoxes(23))
  call compute_scalar_box([ 16, 26, 27 ],masses2_20,RedSet_4(27),ScalarBoxes(24))
  call compute_scalar_box([ 16, 18, 27 ],masses2_20,RedSet_4(28),ScalarBoxes(25))
  call compute_scalar_box([ 16, 18, 26 ],masses2_21,RedSet_4(7),ScalarBoxes(26))
  call compute_scalar_box([ 2, 10, 11 ],masses2_27,RedSet_4(29),ScalarBoxes(27))
  call compute_scalar_box([ 17, 21, 23 ],masses2_27,RedSet_4(30),ScalarBoxes(28))
  call compute_scalar_box([ 16, 17, 23 ],masses2_20,RedSet_4(31),ScalarBoxes(29))
  call compute_scalar_box([ 1, 5, 7 ],masses2_27,RedSet_4(32),ScalarBoxes(30))
  call compute_scalar_box([ 17, 25, 27 ],masses2_27,RedSet_4(33),ScalarBoxes(31))
  call compute_scalar_box([ 16, 25, 27 ],masses2_20,RedSet_4(34),ScalarBoxes(32))
  call compute_scalar_box([ 16, 17, 27 ],masses2_20,RedSet_4(35),ScalarBoxes(33))
  call compute_scalar_box([ 1, 9, 11 ],masses2_27,RedSet_4(36),ScalarBoxes(34))
  call compute_scalar_box([ 20, 21, 23 ],masses2_26,RedSet_4(16),ScalarBoxes(35))
  call compute_scalar_box([ 16, 21, 23 ],masses2_26,RedSet_4(17),ScalarBoxes(36))
  call compute_scalar_box([ 16, 20, 23 ],masses2_30,RedSet_4(18),ScalarBoxes(37))
  call compute_scalar_box([ 16, 20, 21 ],masses2_28,RedSet_4(4),ScalarBoxes(38))
  call compute_scalar_box([ 4, 5, 7 ],masses2_26,RedSet_4(19),ScalarBoxes(39))
  call compute_scalar_box([ 18, 19, 23 ],masses2_22,RedSet_4(37),ScalarBoxes(40))
  call compute_scalar_box([ 16, 19, 23 ],masses2_30,RedSet_4(38),ScalarBoxes(41))
  call compute_scalar_box([ 16, 18, 23 ],masses2_26,RedSet_4(24),ScalarBoxes(42))
  call compute_scalar_box([ 16, 18, 19 ],masses2_26,RedSet_4(8),ScalarBoxes(43))
  call compute_scalar_box([ 2, 3, 7 ],masses2_22,RedSet_4(39),ScalarBoxes(44))
  call compute_scalar_box([ 18, 19, 23 ],masses2_24,RedSet_4(37),ScalarBoxes(45))
  call compute_scalar_box([ 16, 19, 23 ],masses2_16,RedSet_4(38),ScalarBoxes(46))
  call compute_scalar_box([ 16, 18, 19 ],masses2_20,RedSet_4(8),ScalarBoxes(47))
  call compute_scalar_box([ 2, 3, 7 ],masses2_24,RedSet_4(39),ScalarBoxes(48))
  call compute_scalar_box([ 20, 22, 23 ],masses2_26,RedSet_4(20),ScalarBoxes(49))
  call compute_scalar_box([ 16, 22, 23 ],masses2_26,RedSet_4(21),ScalarBoxes(50))
  call compute_scalar_box([ 16, 20, 22 ],masses2_28,RedSet_4(5),ScalarBoxes(51))
  call compute_scalar_box([ 4, 6, 7 ],masses2_26,RedSet_4(22),ScalarBoxes(52))
  call compute_scalar_box([ 18, 19, 27 ],masses2_22,RedSet_4(40),ScalarBoxes(53))
  call compute_scalar_box([ 16, 19, 27 ],masses2_30,RedSet_4(41),ScalarBoxes(54))
  call compute_scalar_box([ 16, 18, 27 ],masses2_26,RedSet_4(28),ScalarBoxes(55))
  call compute_scalar_box([ 2, 3, 11 ],masses2_22,RedSet_4(42),ScalarBoxes(56))
  call compute_scalar_box([ 18, 19, 27 ],masses2_24,RedSet_4(40),ScalarBoxes(57))
  call compute_scalar_box([ 16, 19, 27 ],masses2_16,RedSet_4(41),ScalarBoxes(58))
  call compute_scalar_box([ 2, 3, 11 ],masses2_24,RedSet_4(42),ScalarBoxes(59))
  call compute_scalar_box([ 17, 19, 23 ],masses2_22,RedSet_4(43),ScalarBoxes(60))
  call compute_scalar_box([ 16, 17, 23 ],masses2_26,RedSet_4(31),ScalarBoxes(61))
  call compute_scalar_box([ 16, 17, 19 ],masses2_26,RedSet_4(9),ScalarBoxes(62))
  call compute_scalar_box([ 1, 3, 7 ],masses2_22,RedSet_4(44),ScalarBoxes(63))
  call compute_scalar_box([ 17, 19, 23 ],masses2_24,RedSet_4(43),ScalarBoxes(64))
  call compute_scalar_box([ 16, 17, 19 ],masses2_20,RedSet_4(9),ScalarBoxes(65))
  call compute_scalar_box([ 1, 3, 7 ],masses2_24,RedSet_4(44),ScalarBoxes(66))
  call compute_scalar_box([ 17, 19, 27 ],masses2_22,RedSet_4(45),ScalarBoxes(67))
  call compute_scalar_box([ 16, 17, 27 ],masses2_26,RedSet_4(35),ScalarBoxes(68))
  call compute_scalar_box([ 1, 3, 11 ],masses2_22,RedSet_4(46),ScalarBoxes(69))
  call compute_scalar_box([ 17, 19, 27 ],masses2_24,RedSet_4(45),ScalarBoxes(70))
  call compute_scalar_box([ 1, 3, 11 ],masses2_24,RedSet_4(46),ScalarBoxes(71))
  call compute_scalar_box([ 18, 22, 23 ],masses2_19,RedSet_4(23),ScalarBoxes(72))
  call compute_scalar_box([ 16, 18, 22 ],masses2_25,RedSet_4(6),ScalarBoxes(73))
  call compute_scalar_box([ 2, 6, 7 ],masses2_19,RedSet_4(25),ScalarBoxes(74))
  call compute_scalar_box([ 18, 26, 27 ],masses2_19,RedSet_4(26),ScalarBoxes(75))
  call compute_scalar_box([ 16, 26, 27 ],masses2_26,RedSet_4(27),ScalarBoxes(76))
  call compute_scalar_box([ 16, 18, 26 ],masses2_25,RedSet_4(7),ScalarBoxes(77))
  call compute_scalar_box([ 2, 10, 11 ],masses2_19,RedSet_4(29),ScalarBoxes(78))
  call compute_scalar_box([ 17, 21, 23 ],masses2_19,RedSet_4(30),ScalarBoxes(79))
  call compute_scalar_box([ 16, 17, 21 ],masses2_25,RedSet_4(2),ScalarBoxes(80))
  call compute_scalar_box([ 1, 5, 7 ],masses2_19,RedSet_4(32),ScalarBoxes(81))
  call compute_scalar_box([ 17, 21, 29 ],masses2_17,RedSet_4(10),ScalarBoxes(82))
  call compute_scalar_box([ 16, 21, 29 ],masses2_25,RedSet_4(11),ScalarBoxes(83))
  call compute_scalar_box([ 16, 17, 29 ],masses2_25,RedSet_4(1),ScalarBoxes(84))
  call compute_scalar_box([ 1, 5, 13 ],masses2_17,RedSet_4(12),ScalarBoxes(85))
  call compute_scalar_box([ 17, 25, 27 ],masses2_19,RedSet_4(33),ScalarBoxes(86))
  call compute_scalar_box([ 16, 25, 27 ],masses2_26,RedSet_4(34),ScalarBoxes(87))
  call compute_scalar_box([ 16, 17, 25 ],masses2_25,RedSet_4(3),ScalarBoxes(88))
  call compute_scalar_box([ 1, 9, 11 ],masses2_19,RedSet_4(36),ScalarBoxes(89))
  call compute_scalar_box([ 17, 25, 29 ],masses2_17,RedSet_4(13),ScalarBoxes(90))
  call compute_scalar_box([ 16, 25, 29 ],masses2_25,RedSet_4(14),ScalarBoxes(91))
  call compute_scalar_box([ 1, 9, 13 ],masses2_17,RedSet_4(15),ScalarBoxes(92))
! end of process


end subroutine vamp_4

end module ol_vamp_4_ppttj_ttxggg_1_/**/REALKIND
