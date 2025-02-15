USE [TQ3]
GO
/****** Object:  StoredProcedure [dbo].[analys_mod_group]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_mod_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analys_mod_group]
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_add_user]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_add_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analysgroup_add_user]
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_del_user]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_del_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analysgroup_del_user]
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_del_user2]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_del_user2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analysgroup_del_user2]
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_get_user]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_get_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analysgroup_get_user]
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_mod_user]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_mod_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analysgroup_mod_user]
GO
/****** Object:  StoredProcedure [dbo].[icq_changeemppwd]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_changeemppwd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_changeemppwd]
GO
/****** Object:  StoredProcedure [dbo].[icq_clear_delroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_clear_delroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_clear_delroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_chatroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_chatroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_chatroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_chatroom_t]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_chatroom_t]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_chatroom_t]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_message]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_message]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_message]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_mychatroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_mychatroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_mychatroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_roomfile]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_roomfile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_roomfile]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_roommember]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_roommember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_roommember]
GO
/****** Object:  StoredProcedure [dbo].[icq_del_userfile]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_userfile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_del_userfile]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_allemps]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_allemps]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_allemps]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_broker]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_broker]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_broker]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_chatroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_chatroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_chatroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_chatroom_u]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_chatroom_u]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_chatroom_u]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_chatroommember]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_chatroommember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_chatroommember]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_client2]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_client2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_client2]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_clientinfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_clientinfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_clientinfo]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_dept2]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_dept2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_dept2]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_dept3]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_dept3]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_dept3]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_deptemp]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_deptemp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_deptemp]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_empinfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_empinfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_empinfo]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_gmsg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_gmsg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_gmsg]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_groupuser]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_groupuser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_groupuser]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_inf_extinfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_inf_extinfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_inf_extinfo]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_msg_guser]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_msg_guser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_msg_guser]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_mychatroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_mychatroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_mychatroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_mychatroom2]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_mychatroom2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_mychatroom2]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_offmsg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_offmsg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_offmsg]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_pmsg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_pmsg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_pmsg]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_prdtuser]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_prdtuser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_prdtuser]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_prdtuser2]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_prdtuser2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_prdtuser2]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_prdtuser3]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_prdtuser3]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_prdtuser3]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_productinfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_productinfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_productinfo]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_roomfile]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_roomfile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_roomfile]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_srvgroup]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_srvgroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_srvgroup]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_topgroup]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_topgroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_topgroup]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_topuser]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_topuser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_topuser]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_userfile]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_userfile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_userfile]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_usergroup]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_usergroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_usergroup]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_userprdt]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_userprdt]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_userprdt]
GO
/****** Object:  StoredProcedure [dbo].[icq_get_yybgroup]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_yybgroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_get_yybgroup]
GO
/****** Object:  StoredProcedure [dbo].[analys_add_group]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_add_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analys_add_group]
GO
/****** Object:  StoredProcedure [dbo].[analys_del_group]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_del_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analys_del_group]
GO
/****** Object:  StoredProcedure [dbo].[analys_get_group]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_get_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[analys_get_group]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_broadcast]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_broadcast]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_broadcast]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_chatroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_chatroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_chatroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_groupmsg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_groupmsg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_groupmsg]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_msg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_msg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_msg]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_mychatroom]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_mychatroom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_mychatroom]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_offmsg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_offmsg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_offmsg]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_roomfile]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_roomfile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_roomfile]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_roommember]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_roommember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_roommember]
GO
/****** Object:  StoredProcedure [dbo].[icq_add_userfile]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_userfile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_add_userfile]
GO
/****** Object:  StoredProcedure [dbo].[icq_archive_msg]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_archive_msg]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_archive_msg]
GO
/****** Object:  StoredProcedure [dbo].[icq_archive_msg_g]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_archive_msg_g]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_archive_msg_g]
GO
/****** Object:  StoredProcedure [dbo].[icq_login_client]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_login_client]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_login_client]
GO
/****** Object:  StoredProcedure [dbo].[icq_login_emp]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_login_emp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_login_emp]
GO
/****** Object:  StoredProcedure [dbo].[icq_login_emp_new]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_login_emp_new]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_login_emp_new]
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_pmsg_flag]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_pmsg_flag]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_mod_pmsg_flag]
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_roomname]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_roomname]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_mod_roomname]
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_roomnote]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_roomnote]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_mod_roomnote]
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_roomtime]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_roomtime]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[icq_mod_roomtime]
GO
/****** Object:  StoredProcedure [dbo].[fxshd_add]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxshd_add]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fxshd_add]
GO
/****** Object:  StoredProcedure [dbo].[LOGError]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOGError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LOGError]
GO
/****** Object:  StoredProcedure [dbo].[public_add]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_add]
GO
/****** Object:  StoredProcedure [dbo].[public_add_dispatchrelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_dispatchrelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_add_dispatchrelation]
GO
/****** Object:  StoredProcedure [dbo].[public_add_incode]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_incode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_add_incode]
GO
/****** Object:  StoredProcedure [dbo].[public_add_tpincoderelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_tpincoderelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_add_tpincoderelation]
GO
/****** Object:  StoredProcedure [dbo].[public_add_tprelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_tprelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_add_tprelation]
GO
/****** Object:  StoredProcedure [dbo].[public_add_tprule]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_tprule]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_add_tprule]
GO
/****** Object:  StoredProcedure [dbo].[public_del]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_del]
GO
/****** Object:  StoredProcedure [dbo].[public_del_dispatchrelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_dispatchrelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_del_dispatchrelation]
GO
/****** Object:  StoredProcedure [dbo].[public_del_incode]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_incode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_del_incode]
GO
/****** Object:  StoredProcedure [dbo].[public_del_publicrelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_publicrelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_del_publicrelation]
GO
/****** Object:  StoredProcedure [dbo].[public_del_tpincoderelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_tpincoderelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_del_tpincoderelation]
GO
/****** Object:  StoredProcedure [dbo].[public_del_tprule]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_tprule]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_del_tprule]
GO
/****** Object:  StoredProcedure [dbo].[p_get_filter_words]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_get_filter_words]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_get_filter_words]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_client_logininfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_client_logininfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Proc_Insert_Update_client_logininfo]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_emp_dept]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_emp_dept]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Proc_Insert_Update_emp_dept]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_emp_logininfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_emp_logininfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Proc_Insert_Update_emp_logininfo]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_groupinfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_groupinfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Proc_Insert_Update_groupinfo]
GO
/****** Object:  StoredProcedure [dbo].[Proc_TQ_Check_Log]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_TQ_Check_Log]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Proc_TQ_Check_Log]
GO
/****** Object:  StoredProcedure [dbo].[public_get]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_get]
GO
/****** Object:  StoredProcedure [dbo].[public_get_alldispatchrelation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_alldispatchrelation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_get_alldispatchrelation]
GO
/****** Object:  StoredProcedure [dbo].[public_get_alltpinfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_alltpinfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_get_alltpinfo]
GO
/****** Object:  StoredProcedure [dbo].[public_get_CustomerInfo]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_CustomerInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_get_CustomerInfo]
GO
/****** Object:  StoredProcedure [dbo].[public_get_info]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_get_info]
GO
/****** Object:  StoredProcedure [dbo].[public_get_relation]    Script Date: 05/04/2016 09:18:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_relation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_get_relation]
GO
/****** Object:  StoredProcedure [dbo].[public_mod]    Script Date: 05/04/2016 09:18:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_mod]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_mod]
GO
/****** Object:  StoredProcedure [dbo].[public_mod_incode]    Script Date: 05/04/2016 09:18:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_mod_incode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_mod_incode]
GO
/****** Object:  StoredProcedure [dbo].[public_mod_tprule]    Script Date: 05/04/2016 09:18:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_mod_tprule]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[public_mod_tprule]
GO
/****** Object:  StoredProcedure [dbo].[Tdx_GetRecordFromPage]    Script Date: 05/04/2016 09:18:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tdx_GetRecordFromPage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Tdx_GetRecordFromPage]
GO
/****** Object:  StoredProcedure [dbo].[UCreateOrAppendTextFile]    Script Date: 05/04/2016 09:18:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UCreateOrAppendTextFile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UCreateOrAppendTextFile]
GO
/****** Object:  StoredProcedure [dbo].[UCreateOrAppendTextFile]    Script Date: 05/04/2016 09:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UCreateOrAppendTextFile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Proc [dbo].[UCreateOrAppendTextFile](@Filename VarChar(100),@Text nVarchar(4000)) 
AS 
DECLARE @FileSystem int 
DECLARE @FileHandle int 
DECLARE @RetCode int 
DECLARE @RetVal int 
DECLARE @CreateOrAppend int 

EXECUTE @RetCode = sp_OACreate ''Scripting.FileSystemObject'' , @FileSystem OUTPUT 
IF (@@ERROR|@RetCode > 0 Or @FileSystem < 0) 
RAISERROR (''could not create FileSystemObject'',16,1) 
EXECUTE @RetCode = sp_OAMethod @FileSystem , ''FileExists'', @RetVal out, @FileName 
IF (@@ERROR|@RetCode > 0) 
RAISERROR (''could not check file existence'',16,1) 
-- If file exists then append else create 
SET @CreateOrAppend = case @RetVal when 1 then 8 else 2 end 
EXECUTE @RetCode = sp_OAMethod @FileSystem , ''OpenTextFile'' , @FileHandle OUTPUT , @Filename, @CreateOrAppend, 1 
IF (@@ERROR|@RetCode > 0 Or @FileHandle < 0) 
RAISERROR (''could not create File'',16,1) 
EXECUTE @RetCode = sp_OAMethod @FileHandle , ''WriteLine'' , NULL , @text 
IF (@@ERROR|@RetCode > 0 ) 
RAISERROR (''could not write to File'',16,1) 
EXECUTE @RetCode = sp_OAMethod @FileHandle , ''Close'' 
IF (@@ERROR|@RetCode > 0) 
RAISERROR (''Could not close file '',16,1) 
EXEC sp_OADestroy @filehandle 
IF (@@ERROR|@RetCode > 0) 
RAISERROR (''Could not destroy file object'',16,1) 
EXEC sp_OADestroy @FileSystem ' 
END
GO
/****** Object:  StoredProcedure [dbo].[Tdx_GetRecordFromPage]    Script Date: 05/04/2016 09:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tdx_GetRecordFromPage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Tdx_GetRecordFromPage]
	@tblName      varchar(255),       -- 表名
	@fldName      varchar(255),       -- 排序字段名
	@PageSize     int = 10,           -- 页尺寸
	@PageIndex    int = 1,            -- 页码
	@OrderType    int = 0,            -- 设置排序类型, 非 0 值则降序
	@strWhere     nvarchar(2000) = '''', -- 查询条件 (注意: 不要加 where)
	@column		  nvarchar(200),		  -- 自定义列名

	@CountAll	  bigint output	      -- 返回纪录总数用于计算页面数	
AS
	declare @strSQL   varchar(6000)       -- 主语句
	declare @strTmp   varchar(1000)       -- 临时变量
	declare @strOrder varchar(500)        -- 排序类型

	declare @SQL   nvarchar(1000)
	declare @R bigint
	set   @SQL=N''select @R=count(*) from  ''+convert(nvarchar(200),@tblName)
	exec  sp_executesql    @SQL,  N'' @R BIGINT OUTPUT'',  @R OUTPUT
	set   @CountAll=  @R

	if @strWhere != ''''
	set   @SQL=N''select @R=count(*) from  ''+convert(nvarchar(200),@tblName)+ '' where '' +@strWhere
	exec  sp_executesql    @SQL,  N'' @R BIGINT OUTPUT'',  @R OUTPUT
	set   @CountAll=  @R



	if @OrderType != 0
	begin
		set @strTmp = ''<(select min''
		set @strOrder = '' order by ['' + @fldName + ''] desc''
	end
	else
	begin
		set @strTmp = ''>(select max''
		set @strOrder = '' order by ['' + @fldName +''] asc''
	end

	set @strSQL = ''select top '' + str(@PageSize) + '' ''+@column+'' from [''
		+ @tblName + ''] where ['' + @fldName + '']'' + @strTmp + ''([''
		+ @fldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' [''
		+ @fldName + ''] from ['' + @tblName + '']'' + @strOrder + '') as tblTmp)''
		+ @strOrder

	if @strWhere != ''''
		set @strSQL = ''select top '' + str(@PageSize) + '' ''+@column+'' from [''
			+ @tblName + ''] where ['' + @fldName + '']'' + @strTmp + ''([''
			+ @fldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' [''
			+ @fldName + ''] from ['' + @tblName + ''] where '' + @strWhere + '' ''
			+ @strOrder + '') as tblTmp) and '' + @strWhere + '' '' + @strOrder

	if @PageIndex = 1
	begin
		set @strTmp = ''''
		if @strWhere != ''''
			set @strTmp = '' where ('' + @strWhere + '')''

		set @strSQL = ''select top '' + str(@PageSize) + '' ''+@column+'' from [''
			+ @tblName + '']'' + @strTmp + '' '' + @strOrder
	end

	exec (@strSQL)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_mod_tprule]    Script Date: 05/04/2016 09:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_mod_tprule]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.18
-- Description:	修改路由规则
-- =============================================
CREATE PROCEDURE [dbo].[public_mod_tprule]
@id int
,@tpname varchar(50)
,@tptype int
,@starttime int
,@timeincreament int
,@problemtype smallint
,@interfacename varchar(50)
,@userid varchar(32)
as
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);

declare @updatestr varchar(200);
BEGIN TRY 
SET NOCOUNT ON;
	update public_tprule set tptype = @tptype,tpname = @tpname,starttime = @starttime,
    timeincreament = @timeincreament,problemtype = @problemtype,interfacename = @interfacename,customerservice = @userid where id = @id;
	if @@rowcount <> 0
	begin
		set @ErrorNum = 1;
		set @ErroMsg = ''OK'';
	end
	else
	begin
		set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
	end


select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH










' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_mod_incode]    Script Date: 05/04/2016 09:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_mod_incode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.16
-- Description:	修改接入码
-- =============================================
CREATE PROCEDURE [dbo].[public_mod_incode]
@id int
,@name varchar(50)
,@dispatchrule int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
declare @updatestr varchar(200);
BEGIN TRY 
	SET NOCOUNT ON;
    update public_incode set name = @name,dispatchrule = @dispatchrule where id = @id;
	if @@rowcount <> 0
	begin
		set @ErrorNum = 1;
		set @ErroMsg = ''OK'';
	end
	else
	begin
		set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
	end

select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH







' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_mod]    Script Date: 05/04/2016 09:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_mod]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.15
-- Description:	修改公众号
-- =============================================
CREATE PROCEDURE [dbo].[public_mod]
@id int
,@name varchar(50)
,@comment varchar(127)
,@welcomcontent varchar(127)
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
	SET NOCOUNT ON;
	update publicinfo set name = @name,modifytime = getdate(),comment = @comment,wellcomcontent = @welcomcontent where id = @id;
    if @@rowcount <>0
    begin
		set @ErrorNum = 1;
        set @ErroMsg = ''OK'';
    end
    else
    begin
        set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
    end
    select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH



' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_get_relation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_relation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[public_get_relation]
AS
BEGIN
SET NOCOUNT ON;
select a.id,a.name, b.id,b.tptype,b.tpname,b.starttime,b.timeincreament,b.problemtype,b.customerservice
from publicinfo a ,public_tprelation c,public_tprule b 
where a.id = c.publicid and c.tpid = b.id and a.delflag = 0 order by a.id
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_get_info]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[public_get_info]
	@publicid int
AS
BEGIN
	SET NOCOUNT ON; 
	select b.id,b.tpname,b.problemtype from dbo.public_tprelation a inner join dbo.public_tprule b on a.tpid=b.id where a.publicid=@publicid and b.tptype=2 order by b.problemtype
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_get_CustomerInfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_CustomerInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[public_get_CustomerInfo] 
AS
begin
SET NOCOUNT ON; 
select a.id,a.loginname,a.truename,b.priority from emp_logininfo as a,public_dispatchrelation as b
where a.id = b.customerserviceid 

union all

select a.id,a.loginname,a.truename,0 as priority from emp_logininfo as a where a.id not in
(select a.id from emp_logininfo as a,public_dispatchrelation as b where a.id = b.customerserviceid )
 
order by id;

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_get_alltpinfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_alltpinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.17
-- Description:	获取路由表信息
-- =============================================
CREATE PROCEDURE [dbo].[public_get_alltpinfo]
as
BEGIN
SET NOCOUNT ON;
select tprule.id,tprule.tptype,tprule.tpname,incode.id,incode.name from public_incode as incode,public_tprule as tprule,public_tpincoderelation as relation
where relation.tpid = tprule.id and relation.incodeid = incode.id and tprule.delflag = 0;
end



' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_get_alldispatchrelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get_alldispatchrelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[public_get_alldispatchrelation]
AS
BEGIN
	SET NOCOUNT ON;
    select incode.id,incode.name,incode.dispatchrule,userlog.loginname,userlog.id,userlog.truename,disrelation.priority
from public_dispatchrelation as disrelation , public_incode as incode, emp_logininfo as userlog
where disrelation.incodeid = incode.id and disrelation.customerserviceid = userlog.id
order by incode.id;

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_get]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.30
-- Description:	获取公众号
-- =============================================
CREATE PROCEDURE [dbo].[public_get]
@UserId varchar(32)
,@type smallint
AS
BEGIN
	SET NOCOUNT ON;
	select id,name,comment,wellcomcontent from publicinfo where delflag=0;
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TQ_Check_Log]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_TQ_Check_Log]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Proc_TQ_Check_Log]
@LoginName   nvarchar(30),
@UserName		nvarchar(50),
@NewPwd		  varchar(20),
@OldPwd		  varchar(20),
@CheckId	  smallint

AS
	IF @CheckId = 1   --添加用户
		BEGIN
			DECLARE @Id int 
			select @Id = count(*) from Admin_Login where LoginName = @LoginName
			IF @Id > 0
				BEGIN
					return ''0''   
				END
			ELSE
				BEGIN
					Insert into Admin_Login (LoginName,UserName,PassWord)
					values(@LoginName,@UserName,@NewPwd)
					return ''1''
				END
		END
	IF @CheckId = 2	  -- 检查用户登录
		BEGIN
			DECLARE @CId int 
			select @CId = count(*) from Admin_Login where LoginName = @LoginName and PassWord = @NewPwd
			IF @CId > 0  
				BEGIN
					return ''1''   --成功
				END
			ELSE
				BEGIN
					return ''0''   --错误
				END
		END
	IF @CheckId = 3   -- 更新密码
		BEGIN
			DECLARE @UId int 
			select @UId = count(*) from Admin_Login where LoginName = @LoginName and PassWord = @OldPwd
			IF @UId > 0  
				BEGIN
					update Admin_Login set PassWord = @NewPwd where LoginName = @LoginName
					return ''1''   --成功
				END
			ELSE
				BEGIN
					return ''0''   --错误
				END
		END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_groupinfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_groupinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Proc_Insert_Update_groupinfo]

@groupid		int,
@groupname		char(20),
@parent			int,
@type			int,
@checkid    smallint 

AS
	IF @checkid = 1
		BEGIN
			DECLARE @Count int 
			select @Count=count(*) from groupinfo where groupid=@groupid
			IF @Count>0
				BEGIN
					return ''1''
				END
			ELSE
				BEGIN
					insert into groupinfo (groupname,parent,[type])
					values(@groupname,@parent,@type)
					return ''0''
				END
		END
	IF @checkid = 2
		BEGIN
			update groupinfo set groupname=@groupname,parent=@parent,[type]=@type
			where groupid=@groupid
			return ''0''
		END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_emp_logininfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_emp_logininfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Proc_Insert_Update_emp_logininfo]

@loginname		char(12),
@pwd			char(32),
@truename		char(20),
@yyb			int,
@deptid			int,
@role			int,
@sex			char(1),
@birthday		int,
@tel			char(20),
@mobile			char(20),
@email			char(30),
@sign			char(100),
@checkid		smallint		--1:添加  2：修改 3:更新密码

AS
	IF @checkid = 1
		BEGIN
			DECLARE @Count int 
			select @Count=count(*) from emp_logininfo where loginname=@loginname
			IF @Count>0
				BEGIN
					return ''1''
				END
			ELSE
				BEGIN
insert into emp_logininfo (loginname,pwd,truename,yyb,deptid,[role],sex,birthday,tel,mobile,email,[sign])
values(@loginname,@pwd,@truename,@yyb,@deptid,@role,@sex,@birthday,@tel,@mobile,@email,@sign)
					return ''0''
				END
		END
	IF @checkid = 2
		BEGIN
			update emp_logininfo set truename=@truename,yyb=@yyb,deptid=@deptid,[role]=@role,sex=@sex,birthday=@birthday,tel=@tel,mobile=@mobile,email=@email,[sign]=@sign
			where loginname=@loginname
			return ''0''
		END
	IF @checkid = 3
		BEGIN
			update emp_logininfo set pwd=@pwd where loginname=@loginname
			return ''0''
		END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_emp_dept]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_emp_dept]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Proc_Insert_Update_emp_dept]

@deptid		int,
@parentid	int,
@deptname   char(50),
@checkid    smallint 

AS
	IF @checkid = 1
		BEGIN
			DECLARE @Count int 
			select @Count=count(*) from emp_dept where deptid=@deptid
			IF @Count>0
				BEGIN
					return ''1''
				END
			ELSE
				BEGIN
--					insert into emp_dept (deptid,parentid,deptname)
--					values(@deptid,@parentid,@deptname)
					insert into emp_dept (deptid,deptname)
					values(@deptid,@deptname)
					return ''0''
				END
		END
	IF @checkid = 2
		BEGIN
--			update emp_dept set parentid=@parentid,deptname=@deptname
--			where deptid=@deptid

			update emp_dept set deptname=@deptname
			where deptid=@deptid
			return ''0''
		END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Insert_Update_client_logininfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_Insert_Update_client_logininfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Proc_Insert_Update_client_logininfo]

@khh			char(12),
@name			char(20),
@yyb			int,
@sex			char(1),
@birthday		int,
@tel			char(20),
@mobile			char(20),
@level			int,
@checkid		smallint		--1:添加  2：修改 

AS
	IF @checkid = 1
		BEGIN
			DECLARE @Count int 
			select @Count=count(*) from client_logininfo where khh=@khh
			IF @Count>0
				BEGIN
					return ''1''
				END
			ELSE
				BEGIN
insert into client_logininfo (khh,[name],yyb,sex,birthday,tel,mobile,[level])
values(@khh,@name,@yyb,@sex,@birthday,@tel,@mobile,@level)
					return ''0''
				END
		END
	IF @checkid = 2
		BEGIN
			update client_logininfo set [name]=@name,yyb=@yyb,sex=@sex,birthday=@birthday,tel=@tel,mobile=@mobile,[level]=@level
			where khh=@khh
			return ''0''
		END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[p_get_filter_words]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_get_filter_words]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得过滤关键字
CREATE proc [dbo].[p_get_filter_words]
@id int  = 0
as
select top 100 id,words
from filter_words
where id>@id order by id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_del_tprule]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_tprule]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'





-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.18
-- Description:	删除路由项
-- =============================================
CREATE PROCEDURE [dbo].[public_del_tprule]
@tpid int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
declare @nCount int;
BEGIN TRY 
	
	SET NOCOUNT ON;
	update public_tprule set delflag = 1 where id = @tpid;
    if @@rowcount <> 0
    begin
		select @nCount = count(tpid) from public_tprelation where tpid = @tpid;
		if @nCount <> 0
		begin
		   delete from public_tprelation where tpid = @tpid;
		end		
        select @nCount = count(tpid) from public_tpincoderelation where tpid = @tpid;
		if @nCount <> 0
		begin
		   delete from public_tprelation where tpid = @tpid;
		end		
		set @ErrorNum = 1;
        set @ErroMsg = ''OK'';
    end
    else
    begin
        set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
    end
    select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
	
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH









' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_del_tpincoderelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_tpincoderelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[public_del_tpincoderelation]
@tpid int
,@incodeid int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
declare @nCount int;
BEGIN TRY 
	SET NOCOUNT ON;
	delete from public_tpincoderelation where incodeid = @incodeid and tpid = @tpid;
	if @@rowcount <> 0
	begin
		set @ErrorNum = 1;
        set @ErroMsg = ''OK'';
	end
    else
    begin
		set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
	end
	select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH
' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_del_publicrelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_publicrelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[public_del_publicrelation]
@pubid int
,@tpid int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
declare @nCount int;
BEGIN TRY 
	SET NOCOUNT ON;
	delete from public_tprelation where publicid = @pubid and tpid = @tpid;
	if @@rowcount <> 0
	begin
		set @ErrorNum = 1;
        set @ErroMsg = ''OK'';
	end
    else
    begin
		set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
	end
	select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH
' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_del_incode]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_incode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.18
-- Description:	删除接入码
-- =============================================
CREATE PROCEDURE [dbo].[public_del_incode]
@id int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
declare @nCount int;
BEGIN TRY 
SET NOCOUNT ON;
	update public_incode set delflag = 1 where id = @id;

    if @@rowcount <>0
    begin
		set @ErrorNum = 1;
        set @ErroMsg = ''OK'';
    end
    else
    begin
        set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
    end

    select @nCount = count(incodeid) from public_tpincoderelation where incodeid = @id;
    if @nCount <> 0
        delete from public_tpincoderelation where incodeid = @id;
    select @nCount = count(incodeid) from public_dispatchrelation where incodeid = @id;
    if @nCount <> 0
        delete from public_dispatchrelation where incodeid = @id;

    select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH


' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_del_dispatchrelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del_dispatchrelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[public_del_dispatchrelation]
@incodeid int
,@customerserviceid bigint
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
declare @nCount int;
BEGIN TRY 
	SET NOCOUNT ON;
	delete from public_dispatchrelation where incodeid = @incodeid and customerserviceid = @customerserviceid;
	if @@rowcount <> 0
	begin
		set @ErrorNum = 1;
        set @ErroMsg = ''OK'';
	end
    else
    begin
		set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist!'';
	end
	select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH
' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_del]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.15
-- Description:	删除公众号
-- =============================================
CREATE PROCEDURE [dbo].[public_del]
@id int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
	SET NOCOUNT ON;
	update publicinfo set delflag = 1 ,deletetime = getdate() where id = @id;
	if @@rowcount<>0
    begin
		set @ErrorNum = 1;
		set @ErroMsg = ''OK'';
    end
    else 
    begin
		set @ErrorNum = 0;
		set @ErroMsg = ''The data is not exist'';
    end
    select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH



' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_add_tprule]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_tprule]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.17
-- Description:	添加路由规则
-- =============================================
CREATE PROCEDURE [dbo].[public_add_tprule]
@tptype int
,@tpname varchar(50)
,@starttime varchar(20) 
,@timeincreament varchar(20)
,@problemtype smallint
,@interfacename varchar(50)
,@customerservice varchar(50)
as
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
SET NOCOUNT ON;
	insert into public_tprule(tptype,tpname,starttime,timeincreament,problemtype,interfacename,customerservice) 
values(
@tptype
,@tpname 
,@starttime
,@timeincreament
,@problemtype,@interfacename,@customerservice);
if @@rowcount <> 0
begin
	set @ErrorNum = 1;
    set @ErroMsg = ''OK'';
end
select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH















' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_add_tprelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_tprelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.19
-- Description:	添加公众号对应路由规则的关系表
-- =============================================
CREATE PROCEDURE [dbo].[public_add_tprelation]
@publicid int
,@tpid int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
	SET NOCOUNT ON;
	insert into public_tprelation(publicid,tpid) values(@publicid,@tpid);
	set @ErrorNum = 1;
	set @ErroMsg = ''OK'';
	select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH




' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_add_tpincoderelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_tpincoderelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		hongliang.luo
-- Create date: 2015.03.05
-- Description:	添加路由规则对应接入码的关系表
-- =============================================
create PROCEDURE [dbo].[public_add_tpincoderelation]
@tpid int
,@incode int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
	SET NOCOUNT ON;
	insert into public_tpincoderelation(tpid,incodeid) values(@tpid,@incode);
	set @ErrorNum = 1;
	set @ErroMsg = ''OK'';
	select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH


' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_add_incode]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_incode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'










-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.16
-- Description:	添加接入码
-- =============================================
CREATE PROCEDURE [dbo].[public_add_incode]
@name varchar(50)
,@dispatchrule smallint 
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
	SET NOCOUNT ON;
	insert into public_incode(name,dispatchrule) values(@name,@dispatchrule );
	set @ErrorNum = 1;
    set @ErroMsg = ''OK'';
    select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH










' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_add_dispatchrelation]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add_dispatchrelation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.19
-- Description:	添加调度关系表
-- =============================================
CREATE PROCEDURE [dbo].[public_add_dispatchrelation]
@incodeid int
,@customerserviceid int
,@customerservice varchar(50)
,@priority int
AS
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
	SET NOCOUNT ON;
	insert into public_dispatchrelation(incodeid,customerserviceid,customerservice,priority) 
    values(@incodeid,@customerserviceid,@customerservice,@priority);
	set @ErrorNum = 1;
	set @ErroMsg = ''OK'';
	select @ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 
BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH






' 
END
GO
/****** Object:  StoredProcedure [dbo].[public_add]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_add]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		hongliang.luo
-- Create date: 2014.12.15
-- Mod date:    2014.12.18 修改表结构
-- Description:	添加公众号
-- =============================================
CREATE PROCEDURE [dbo].[public_add]
@publicname varchar(50)
,@createNmae varchar(32)
,@comment varchar(127)
,@wellcomComtent varchar(127)

as
DECLARE @ErrorNum int;
DECLARE @ErroMsg nvarchar(4000);
BEGIN TRY 
SET NOCOUNT ON;
	insert into publicinfo(name,delflag,createuserid,comment,wellcomcontent) values(@publicname,0,@createNmae,@comment,@wellcomComtent);
	set @ErrorNum = 1;
    set @ErroMsg = ''OK'';
    select @@IDENTITY as curpublicid,@ErrorNum ErrorNum,@ErroMsg ErroMsg;
END TRY 

BEGIN CATCH 
DECLARE @ErrorSeverity INT 
DECLARE @ErrorState INT 
DECLARE @ErrorProcedure nvarchar(200) 
DECLARE @ErrorLine int

SELECT  @ErrorNum         = ERROR_NUMBER()    
       ,@ErrorSeverity    = ERROR_SEVERITY()  
       ,@ErrorState       = ERROR_STATE()     
       ,@ErroMsg          = ERROR_MESSAGE()  
       ,@ErrorProcedure   = ERROR_PROCEDURE()
       ,@ErrorLine        = ERROR_LINE();

SELECT  @ErrorNum         ErrorNum   
--	   ,@ErrorSeverity	  ErrorSeverity 
--	   ,@ErrorState		  ErrorState    
	   ,@ErroMsg	      ErroMsg  
--	   ,@ErrorProcedure	  ErrorProcedure
--	   ,@ErrorLine		  ErrorLine     
;
/*
RAISERROR ( 
@ErrorNumber     ,
@ErrorSeverity	,
@ErrorState		,
@errormessage	,
@ErrorProcedure	,
@ErrorLine		
);
*/ 
END CATCH








' 
END
GO
/****** Object:  StoredProcedure [dbo].[LOGError]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOGError]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[LOGError](@msg nvarchar(400)) 
as


declare @text nvarchar(400) 
SELECT @text=text FROM sys.messages WHERE language_id=1033 AND message_id=@@ERROR 
if len(@text)>1 
begin 
set @msg=@msg +'' : ''+@text 
EXEC dbo.UCreateOrAppendTextFile ''C:\Error.log'',@msg 
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fxshd_add]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxshd_add]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[fxshd_add]
	-- Add the parameters for the stored procedure here
	@loginname varchar(12)
,   @truename  varchar(20)
AS
DECLARE @nCount int;
declare @strPwd varchar(32)
declare @isnull char(6)
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select @nCount = count(loginname) from emp_logininfo where loginname = @loginname;
	if @nCount = 0
	begin
		insert emp_logininfo (loginname,truename,pwd,modtime) values(@loginname,@truename,''21218cca77804d2ba1922c33e0151105'',getdate());
	end
	else
	begin
		select @strPwd = pwd from emp_logininfo where loginname = @loginname;
		set @isnull = isnull(@strPwd,''NULL'');
		if ''NULL'' = @isnull
		begin
			update emp_logininfo set pwd = ''21218cca77804d2ba1922c33e0151105'';
		end
		update emp_logininfo set truename = @truename,modtime = getdate() where loginname = @loginname; 
	end

END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_roomtime]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_roomtime]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--修改群时间戳
create proc [dbo].[icq_mod_roomtime]
@roomid int
as
update chatroominfo set modtime=getdate() where roomid=@roomid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_roomnote]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_roomnote]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--修改群公告
CREATE proc [dbo].[icq_mod_roomnote]
@roomid int,
@note varchar(100)
as
declare @ret int
update chatroominfo set note=@note,modtime=getdate()
where roomid=@roomid
if(@@rowcount<>0)
set @ret=1
else set @ret=0
select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_roomname]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_roomname]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--修改群名称
CREATE proc [dbo].[icq_mod_roomname]
@roomid int,
@name varchar(32)
as
declare @ret int
update chatroominfo set chatroomname=@name,modtime=getdate() where roomid=@roomid

if(@@rowcount<>0)
set @ret=1
else set @ret=0
select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_mod_pmsg_flag]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_mod_pmsg_flag]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--修改个人消息标记
create proc [dbo].[icq_mod_pmsg_flag]
@id char(20),
@newflag char
as
update msg_toperson set flag=@newflag where id=@id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_login_emp_new]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_login_emp_new]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

create   procedure [dbo].[icq_login_emp_new]
	@loginname char(20),
	@logtype int=0
as

if @logtype=0
begin
	select icqid=@loginname,truename,yyb,deptid,role,sex,sign,pwd
	from emp_logininfo 
	where loginname=@loginname
end
else if @logtype=2
begin
	select icqid=@loginname,truename,yyb,deptid,role,sex,sign,pwd
	from emp_logininfo 
	where loginname=@loginname
end
return 1


' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_login_emp]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_login_emp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE   procedure [dbo].[icq_login_emp]
	@loginname char(20),
	@pwd char(32),
	@logtype int=0
as

if @logtype=0
begin
	select icqid=@loginname,truename,yyb,deptid,role,sex,sign,pwd
	from emp_logininfo 
	where loginname=@loginname
end
else if @logtype=2
begin
	select icqid=@loginname,truename,yyb,deptid,role,sex,sign,pwd
	from emp_logininfo 
	where loginname=@loginname
end
return 1


' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_login_client]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_login_client]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

--客户登陆
CREATE proc [dbo].[icq_login_client]
	@khh		char(20),
	@yyb		char(4)=''''
as

declare @name char(20),@sex int,@branch char(4)
select top 1 @name=name,@sex=sex,@branch=yyb from client_logininfo where khh=@khh 

if(@@rowcount>0)
begin
	select icqid=@khh,name=@name,sex=@sex,yyb=@branch
	return 1;
end
else
begin
	if(@yyb='''')	 return 0;
	begin tran insertuser
	insert into client_logininfo(yyb,khh) values(@yyb,@khh)
	if(@@rowcount<>1) 
		goto Error_End;
	select icqid=@khh,name=@khh,sex=0,yyb=@yyb from client_logininfo
	commit tran insertuser
	return 1

Error_End:
	rollback tran insertuser
	return 0;
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_archive_msg_g]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_archive_msg_g]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--群组消息归档
create proc [dbo].[icq_archive_msg_g]
as
declare @maxid bigint
select @maxid=max(id) from icq_tempmsg_g;
insert into icq_hismsg_g(roomid,roomtype,src_id,date,time,type,flag,message)
select roomid,roomtype,src_id,date,time,type,flag,message from icq_tempmsg_g
where id<=@maxid;
if(@@error<>0)
begin
	print ''群组消息归档出错''
	return
end
delete from icq_tempmsg_g where id<=@maxid;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_archive_msg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_archive_msg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--消息归档
create proc [dbo].[icq_archive_msg]
as
declare @maxid bigint
select @maxid=max(id) from icq_tempmsg;
insert into icq_hismsg(dst_id,src_id,flag,date,time,type,mark,message)
select dst_id,src_id,flag,date,time,type,mark,message from icq_tempmsg
where id<=@maxid;
if(@@error<>0)
begin
	print ''消息归档出错''
	return
end
delete from icq_tempmsg where id<=@maxid;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_userfile]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_userfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--添加用户文件
create proc [dbo].[icq_add_userfile]
@user_id char(12),
@flag tinyint,
@filename varchar(255),
@filename_inner varchar(128),
@totallen int
as
insert into user_file(user_id,flag,filename,filename_inner,totallen,modtime)
values(@user_id,@flag,@filename,@filename_inner,@totallen,getdate())
if(@@rowcount=1) return @@identity;
return 0;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_roommember]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_roommember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--添加群成员
CREATE  PROCEDURE [dbo].[icq_add_roommember] 
@roomid int,
@userid char(12),
@memtype int=0
AS
SET NOCOUNT ON

declare @ret int
insert into chatroom_member(roomid,userid,memtype,modtime)
values(@roomid,@userid,@memtype,getdate())
if @@error<>0 set @ret=0
else set @ret=1
select ret=@ret

' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_roomfile]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_roomfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--添加群组共享文件信息
CREATE proc [dbo].[icq_add_roomfile]
@roomid int,
@roomtype char,
@filename_inner varchar(128),
@filename varchar(256),
@totallen int,
@src_id varchar(20)
as
insert into roomfile(roomid,roomtype,filename_inner,filename,totallen,src_id,modtime)
values(@roomid,@roomtype,@filename_inner,@filename,@totallen,@src_id,getdate())
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_offmsg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_offmsg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

--添加离线消息
CREATE    procedure [dbo].[icq_add_offmsg]
	@dst_id char(12),
	@src_id char(12),
	@type int,
	@time int,
	@message varchar(4000),
	@src_name char(32)='''',
	@roomid int=0,
	@roomtype int=0,
	@flag int=0
as

declare @ret int
insert into icq_offmsg(dst_id,src_id,type,time,message,src_name,roomid,roomtype,flag)
values(@dst_id,@src_id,@type,@time,@message,@src_name,@roomid,@roomtype,@flag)
if @@error<>0 
set @ret=0
else set @ret=1
select ret=@ret


' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_mychatroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_mychatroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--添加我的群组
CREATE  PROCEDURE [dbo].[icq_add_mychatroom] 
@icqid char(12),
@roomid int
as

declare @ret int
insert into userchatroom(icqid,roomid) values(@icqid,@roomid)

if(@@rowcount<>1)
	select @ret=0
else
	select @ret=1

select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_msg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_msg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--添加消息
CREATE    procedure [dbo].[icq_add_msg]
@dst_id char(12),
@src_id char(12),
@type int,
@date int,
@time int,
@message varchar(4000)
as
declare @ret int
insert into icq_tempmsg(dst_id,src_id,type,date,time,message)
values(@dst_id,@src_id,@type,@date,@time,@message)
if @@error<>0 
set @ret=0
else set @ret=1
select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_groupmsg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_groupmsg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--添加群消息
CREATE    procedure [dbo].[icq_add_groupmsg]
@roomid int,
@roomtype char(1),
@src_id char(12),
@date int,
@time int,
@message varchar(4000)
as
declare @ret int
insert into icq_tempmsg_g(roomid,roomtype,src_id,date,time,type,message)
values(@roomid,@roomtype,@src_id,@date,@time,2,@message)
if @@error<>0 
set @ret=0
else set @ret=1
select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_chatroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_chatroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

--创建系统聊天室或公共聊天室
CREATE  PROCEDURE [dbo].[icq_add_chatroom] 
	@chatroomname varchar(32),
	@masterid char(12),
	@roomtype char
AS
SET NOCOUNT ON
declare @ret int,@roomid int

begin tran tran1
insert into chatroominfo(chatroomname,masterid,roomtype,delflag,modtime)
values(@chatroomname,@masterid,@roomtype,0,getdate())
if(@@error<>0)
begin
	select ret=0,roomid=0
	rollback tran tran1
	return
end

select @roomid=@@identity
insert into chatroom_member(roomid,userid,memtype,modtime) 
values(@roomid,@masterid,1,getdate())
if @@error<>0 
begin
	set @ret=0
	select ret=0,roomid=0
	rollback tran tran1
	return
end
set @ret=1

commit tran tran1
select ret=@ret,roomid=@roomid



' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_add_broadcast]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_add_broadcast]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--广播入库
CREATE proc [dbo].[icq_add_broadcast]
@dst_id char(12),
@src_id char(12),
@time	int,
@type char(1),
@cnt varchar(2048)
as
insert into icq_broadcast(dst_id,src_id,time,type,cnt,modtime)
values(@dst_id,@src_id,@time,@type,@cnt,getdate())
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analys_get_group]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_get_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[analys_get_group]
	@analysid char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	select groupid,groupname from analys_group where analysid=@analysid order by groupid
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[analys_del_group]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_del_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[analys_del_group]
	@groupid int
AS
BEGIN
	SET NOCOUNT ON; 
	delete from analys_group where groupid=@groupid
	SELECT 1 
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[analys_add_group]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_add_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[analys_add_group]
	@analysid char(20),
	@groupname char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	insert into analys_group(analysid,groupname)
	values(@analysid, @groupname);

	SELECT @@IDENTITY AS ''groupid''
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_yybgroup]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_yybgroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--根据客户营业部获取用户分组
CREATE proc [dbo].[icq_get_yybgroup]
@yybinfo char(5)
as
select topgroupid,groupname from topgroup where yybinfo = @yybinfo
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_userprdt]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_userprdt]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到用户的产品
CREATE proc [dbo].[icq_get_userprdt]
@user_id char(12)
as
select a.cp_id,b.cp_name,type=b.cp_type from prdt_user a,product b
where a.user_id=@user_id and a.cp_id=b.cp_id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_usergroup]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_usergroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到用户分组
CREATE proc [dbo].[icq_get_usergroup]
@icqid char(12)
as
select a.groupid,a.groupname,a.parent
from usergroup b,
groupinfo a  
where b.icqid=@icqid and b.groupid=a.groupid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_userfile]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_userfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到用户文件
create proc [dbo].[icq_get_userfile]
@user_id char(12)
as
select id,user_id,flag,filename,filename_inner,totallen,modtime
from user_file where user_id=@user_id order by id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_topuser]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_topuser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获取置顶分组的好友
--客户的分组列表
CREATE proc [dbo].[icq_get_topuser]
as
select topgroupid as groupid,icqid=a.loginname,a.truename,a.sex from topgroupuser b,emp_logininfo a
where a.loginname=b.icqid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_topgroup]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_topgroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获取置顶组
create proc [dbo].[icq_get_topgroup]
as
select topgroupID,groupname from topgroup where yybinfo = ''0''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_srvgroup]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_srvgroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到服务人员分组
--客户版本
create proc [dbo].[icq_get_srvgroup]
as
select id,name from st_const where type=3 order by id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_roomfile]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_roomfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获取群组共享文件
CREATE PROCEDURE [dbo].[icq_get_roomfile]
@khh char(20),
@roomid int = 0
AS
if(@roomid=0)
begin
	--根据客户号得到所有群组共享文件
	select a.fileid,a.roomid,a.roomtype,a.filename,a.filename_inner,a.totallen,a.src_id,a.modtime
	from roomfile a ,chatroom_member b where b.userid=@khh and a.roomid=b.roomid   order by fileid
end
else
begin
	--根据群组ID得到群组共享文件
	select fileid,roomid,roomtype,filename,filename_inner,totallen,src_id,modtime
	from roomfile where roomid=@roomid  order by fileid
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_productinfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_productinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到产品信息
CREATE   procedure [dbo].[icq_get_productinfo]
@cp_id int
as
select cp_name,cp_mgr,cp_tzmb,cp_tzln,cp_tzfw,cp_yjbjjz,cp_fxsytz,cp_lssy,cp_fljg,cp_syqt
from product
where cp_id=@cp_id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_prdtuser3]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_prdtuser3]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		zzj
-- Create date: 2012-05-09
-- Description:	取得这个投顾的客户订阅的产品
-- =============================================
CREATE PROCEDURE [dbo].[icq_get_prdtuser3]
	@prdt_id int,      -- 产品id
	@icqid char(12)    -- 投顾tqid
AS
BEGIN
	SET NOCOUNT ON;
	
	select  user_id,type,user_name from prdt_user
	where cp_id=@prdt_id and type=0 and user_id in ( select id1 from relation where id2=@icqid ) order by user_id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_prdtuser2]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_prdtuser2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到产品的用户,投顾查询产品用户时调用
create proc [dbo].[icq_get_prdtuser2]
@prdt_id int
as
set nocount on
select  user_id,type,user_name from prdt_user
where cp_id=@prdt_id and type=0 order by user_id
set nocount off
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_prdtuser]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_prdtuser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到产品的用户
CREATE proc [dbo].[icq_get_prdtuser]
@prdt_id int,
@user_id char(12)=''''
as
set nocount on
select top 500 user_id,type,user_name from prdt_user
where cp_id=@prdt_id and user_id>@user_id and type=0
set nocount off
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_pmsg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_pmsg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得批量个人消息
CREATE proc [dbo].[icq_get_pmsg]
@seq bigint
as
select top 100 id,userno,yyb,attr,flag,endtime,src_id,cnt
from msg_toperson
where id>@seq order by id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_offmsg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_offmsg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--离线消息查询
CREATE    procedure [dbo].[icq_get_offmsg]
@icqid char(12)
as

select top 50 src_id,time,type,message,src_name,roomid,roomtype,flag
from icq_offmsg where dst_id=@icqid order by id desc

' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_mychatroom2]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_mychatroom2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得用户所有的群
CREATE  PROCEDURE [dbo].[icq_get_mychatroom2]
@icqid char(12)
as

select top 100 b.roomid,b.roomtype,b.chatroomname,b.masterid,b.note
from chatroom_member a,chatroominfo b where a.userid=@icqid and a.roomid=b.roomid
order by b.roomid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_mychatroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_mychatroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得用户所有的群
CREATE  PROCEDURE [dbo].[icq_get_mychatroom]
@icqid char(12)
as

select top 100 b.roomid,b.roomtype,b.chatroomname,b.masterid,b.note from userchatroom a,chatroominfo b
where a.icqid=@icqid and a.roomid=b.roomid and b.delflag=0 order by roomid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_msg_guser]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_msg_guser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得分组消息的分组用户
CREATE proc [dbo].[icq_get_msg_guser]
@groupid char(20),
@seq bigint
as
select top 1000 id,khh
from msg_group
where id>@seq and groupid=@groupid order by id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_inf_extinfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_inf_extinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		zzj
-- Create date: 2012-04-25
-- Description:	读取INF_EXTINFO部分表记录
-- =============================================
ALTER PROCEDURE [dbo].[icq_get_inf_extinfo]
	@nMinID numeric(16,0)      -- 最小id
AS
BEGIN
	SET NOCOUNT ON

	select top 50 MID,UIDK,MType,MContent,MFrom,Mobile,yybid,MDate,MSendFlag from INF_EXTINFO where MID>=@nMinID and MSendDate is NULL and MState is NULL and (MSendFlag=-1 or ( MSendFlag=0 and ( MMsgStoreDate is NULL or MMsgStoreDate<=GetDate()))) order by MID asc

END
*/

-- =============================================
-- Author:		zzj
-- Create date: 2012-05-04
-- Description:	读取INF_EXTINFO部分表记录
-- =============================================
CREATE PROCEDURE [dbo].[icq_get_inf_extinfo]
	@nMinID numeric(16,0)      -- 最小id
AS
BEGIN
	SET NOCOUNT ON

	select top 50 MID,UIDK,MType,MContent,MFrom,Mobile,yybid,MDate,MSendFlag,MMsgID,
							case 
							when MMsgStoreDate is NULL then 1
							when MMsgStoreDate<=GetDate() then 1
							else 0
							end as ''DX_DIRECT_SEND''
		from INF_EXTINFO where MID>=@nMinID and MSendDate is NULL and MState is NULL and (MSendFlag=-1 or MSendFlag=0 ) order by MID asc

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_groupuser]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_groupuser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到分组用户
--员工客户端分组
CREATE proc [dbo].[icq_get_groupuser]
@groupid int
as
select icqid=a.khh,a.name, a.sex,a.mobile
from 
(select icqid from groupuser where usergroupid=@groupid) b
inner join 
client_logininfo a  
on b.icqid=a.khh
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_gmsg]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_gmsg]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得盘播组消息
CREATE proc [dbo].[icq_get_gmsg]
@seq varchar(30)
as
select top 100 id,attr,endtime,grouptype,groupid,cnt
from msg_togroup
where id>convert(bigint,@seq) order by id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_empinfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_empinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到员工信息
CREATE   procedure [dbo].[icq_get_empinfo]
@icqid char(12)
as
select a.loginname,a.truename,a.yyb,a.deptid,a.role,b.rolename,a.sex,
a.yybname,a.birthday,a.zsbh,a.tel,a.mobile,a.email,a.sign,a.description
from emp_logininfo a
left join 
emp_role b 
on a.role=b.roleid  where a.loginname=@icqid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_deptemp]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_deptemp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到部门员工
CREATE proc [dbo].[icq_get_deptemp] 
@deptid int,
@yyb int = 0
as
if(@yyb<>0)
begin
select icqid=loginname,truename,sex,mobile,sign from emp_logininfo 
where yyb=@yyb and deptid=@deptid order by loginname
end
else
begin
select icqid=loginname,truename,sex,mobile,sign from emp_logininfo 
where deptid=@deptid order by loginname
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_dept3]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_dept3]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

--得到部门
create proc [dbo].[icq_get_dept3]
	@deptid int
as

select deptid,deptname,parentid from dbo.emp_dept order by parentid,deptid;
	


' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_dept2]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_dept2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--得到部门
CREATE proc [dbo].[icq_get_dept2]
@deptid int
as
declare @deptname char(50),
		@parentid int,
		@showtype int
select top 1 @deptname=deptname,@parentid=parentid,@showtype=showtype from emp_dept where deptid=@deptid

if(@@rowcount<>1) return;
if(@showtype=1)
begin
	select deptid,deptname,parentid from dbo.emp_dept order by parentid,deptid
	return;
end

select * from
(
select deptid,deptname,parentid from emp_dept where showtype=1
union all
select deptid=@deptid,deptname=@deptname,parentid=@parentid
)a order by parentid,deptid

' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_clientinfo]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_clientinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到客户信息
CREATE   procedure [dbo].[icq_get_clientinfo]
@icqid char(12)
as
select khh,name,yyb,yybname,sex,birthday,level,tel,mobile,email,jf
from client_logininfo 
where khh=@icqid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_client2]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_client2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到客户列表
CREATE proc [dbo].[icq_get_client2]
@icqid char(12)	--员工ID
as

select icqid=a.id1,b.name,a.relation,b.yyb,b.sex from relation a,client_logininfo b
where a.id2=@icqid and a.id1=b.khh order by a.id1
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_chatroommember]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_chatroommember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获得一个聊天室的成员列表
CREATE PROCEDURE [dbo].[icq_get_chatroommember] 
@roomid int
AS
select userid,memtype from chatroom_member where roomid=@roomid order by userid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_chatroom_u]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_chatroom_u]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获取群组聊天室更新信息
CREATE PROCEDURE [dbo].[icq_get_chatroom_u]
@modtime datetime
AS

select top 500 roomid,roomtype,chatroomname,masterid,delflag,note,modtime=convert(char(24),modtime,121)
from chatroominfo where modtime>@modtime order by modtime
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_chatroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_chatroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--获取群组聊天室信息
CREATE PROCEDURE [dbo].[icq_get_chatroom]
@roomid int = 0
AS
if(@roomid=0)
begin
	--得到所有固定群组信息
	select top 100000 roomid,chatroomname,masterid,roomtype,note,modtime=convert(char(24),modtime,121) 
	from chatroominfo where delflag=0 order by roomid
end
else
begin
	--得到单个群组信息
	select roomid,chatroomname,masterid,roomtype,note,modtime=convert(char(24),modtime,121) 
	from chatroominfo where roomid=@roomid and delflag=0
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_broker]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_broker]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到经纪人列表
CREATE proc [dbo].[icq_get_broker]
@icqid char(12)
as

select icqid=a.id2,b.truename,a.relation,b.sex,b.sign from relation a,emp_logininfo b
where a.id1=@icqid and a.id2=b.loginname
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_get_allemps]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_get_allemps]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--得到所有员工
CREATE proc [dbo].[icq_get_allemps]
as
select loginname,truename,deptid,sex from emp_logininfo
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_userfile]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_userfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--删除用户文件
CREATE proc [dbo].[icq_del_userfile]
@user_id char(12),
@filename_inner varchar(128)
as
delete from user_file where user_id=@user_id and filename_inner=@filename_inner
if(@@rowcount=1) return 1;
return 0;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_roommember]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_roommember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--删除群的一个成员
CREATE PROCEDURE [dbo].[icq_del_roommember] 
@roomid int,
@userid char(12)
AS
SET NOCOUNT ON
declare @ret int
delete chatroom_member  where roomid=@roomid and userid=@userid
update chatroominfo set modtime=getdate() where roomid=@roomid
if @@error<>0 
set @ret=0
else set @ret=1
select ret=@ret

' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_roomfile]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_roomfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--删除群组共享文件信息
CREATE proc [dbo].[icq_del_roomfile]
@roomid int,
@filename_inner varchar(128)
as
delete from roomfile where roomid=@roomid and filename_inner=@filename_inner
if(@@rowcount>0) return 1
return 0
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_mychatroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_mychatroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--删除用户的一个群组
CREATE PROCEDURE [dbo].[icq_del_mychatroom]
@icqid char(12),
@roomid int
AS

declare @ret int
delete userchatroom where icqid=@icqid and roomid=@roomid
if @@error<>0 
	set @ret=0
else set @ret=1

select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_message]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_message]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--离线消息删除
create   procedure [dbo].[icq_del_message]
@icqid char(12)
as
declare @ret int
delete icq_offmsg where dst_id=@icqid
if @@error<>0
set @ret=0
else set @ret=1
select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_chatroom_t]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_chatroom_t]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 定时删除无效的群组
create PROCEDURE [dbo].[icq_del_chatroom_t]
AS

delete from dbo.chatroominfo where delflag=1
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_del_chatroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_del_chatroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--删除一个群组聊天室
CREATE PROCEDURE [dbo].[icq_del_chatroom]
@roomid int
AS
SET NOCOUNT ON
declare @ret int
update chatroominfo set delflag=1,modtime=getdate() where roomid=@roomid
--delete chatroominfo where roomid=@roomid
delete dbo.chatroom_member where roomid=@roomid

if @@error<>0 
set @ret=0
else set @ret=1
select ret=@ret

' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_clear_delroom]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_clear_delroom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--清理已经删除的群组相关信息
CREATE proc [dbo].[icq_clear_delroom]
as
delete from chatroom_member from chatroom_member a,chatroominfo b 
where a.roomid=b.roomid and b.delflag=1;
delete from chatroominfo where delflag=1;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[icq_changeemppwd]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_changeemppwd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--修改员工密码
CREATE PROC [dbo].[icq_changeemppwd]
	@icqid char(12),
	@password char(32),
	@newpwd char(32)
as 

declare @ret int
set @ret = 0
if(exists(select loginname from emp_logininfo where loginname=@icqid and pwd=@password))
begin
	update emp_logininfo set pwd=@newpwd where loginname=@icqid
	if @@rowcount > 0
		set @ret = 1
end

select ret=@ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_mod_user]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_mod_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[analysgroup_mod_user]
	@groupid int,
	@clientid char(20),
	@analysid char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	update analys_group_user set groupid=@groupid
	where clientid=@clientid and analysid=@analysid
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_get_user]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_get_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[analysgroup_get_user]
	@groupid int,
	@analysid char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	select clientid from analys_group_user
	where groupid=@groupid and analysid=@analysid
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_del_user2]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_del_user2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[analysgroup_del_user2]
	@groupid int
AS
BEGIN
	SET NOCOUNT ON; 
	if( @groupid > 0 )
	BEGIN
		delete from analys_group_user
		where groupid=@groupid
	END
	SELECT 1 
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_del_user]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_del_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[analysgroup_del_user]
	@groupid int,
	@clientid char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	if( @groupid > 0 )
	BEGIN
		delete from analys_group_user
		where groupid=@groupid and clientid=@clientid
	END
	SELECT 1 
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analysgroup_add_user]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analysgroup_add_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[analysgroup_add_user]
	@groupid int,
	@clientid char(20),
	@analysid char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	insert into analys_group_user(groupid,clientid,analysid)
	values(@groupid, @clientid, @analysid)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[analys_mod_group]    Script Date: 05/04/2016 09:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_mod_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[analys_mod_group]
	@groupid int,
	@groupname char(20)
AS
BEGIN
	SET NOCOUNT ON; 
	update analys_group set groupname=@groupname where groupid=@groupid
END



' 
END
GO
