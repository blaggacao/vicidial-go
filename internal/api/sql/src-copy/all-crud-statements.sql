bin/AST_manager_send.pl:135:SELECT count(*) from vicidial_manager where server_ip = ?/* conf{VARserver_ip} */ and status = 'NEW';
bin/AST_manager_send.pl:141:SELECT count(*) from vicidial_manager where server_ip = ?/* conf{VARserver_ip} */ and status = 'QUEUE';
bin/AST_manager_send.pl:151:UPDATE vicidial_manager set status='QUEUE' where server_ip = ?/* conf{VARserver_ip} */ and status = 'NEW' order by man_id limit 1;
bin/AST_manager_send.pl:167:SELECT man_id,uniqueid,entry_date,status,response,server_ip,channel,action,callerid,cmd_line_b,cmd_line_c,cmd_line_d,cmd_line_e,cmd_line_f,cmd_line_g,cmd_line_h,cmd_line_i,cmd_line_j,cmd_line_k FROM vicidial_manager where server_ip = ?/* conf{VARserver_ip} */ and status = 'QUEUE' order by man_id limit 1;
bin/AST_manager_send.pl:200:SELECT count(*) FROM vicidial_manager where server_ip = ?/* conf{VARserver_ip} */ and callerid=?/* vdm->{callerid} */ and status = 'DEAD';
bin/AST_manager_send.pl:264:UPDATE vicidial_manager set status='SENT' where man_id=?/* vdm->{man_id} */;
bin/AST_manager_send.pl:273:UPDATE vicidial_manager set status='DEAD' where man_id=?/* vdm->{man_id} */ and cmd_line_d!='Exten: 8309' and cmd_line_d!='Exten: 8310';
bin/AST_manager_send.pl:369:SELECT server_id,server_description,server_ip,active,asterisk_version,max_vicidial_trunks,telnet_host,telnet_port,ASTmgrUSERNAME,ASTmgrSECRET,ASTmgrUSERNAMEupdate,ASTmgrUSERNAMElisten,ASTmgrUSERNAMEsend,local_gmt,voicemail_dump_exten,answer_transfer_agent,ext_context,sys_perf_log,vd_server_logs,agi_output,vicidial_balance_active,balance_trunks_offlimits,recording_web_link,alt_server_ip,active_asterisk_server,generate_vicidial_conf,rebuild_conf_files,outbound_calls_per_second,sysload,channels_total,cpu_idle_percent,disk_usage,sounds_update,vicidial_recording_limit,carrier_logging_active,vicidial_balance_rank,rebuild_music_on_hold,active_agent_login_server,conf_secret FROM servers where server_ip = ?/* serverip */;
bin/AST_manager_listen_AMI2.pl:129:SELECT telnet_host,telnet_port,ASTmgrUSERNAME,ASTmgrSECRET,ASTmgrUSERNAMEupdate,ASTmgrUSERNAMElisten,ASTmgrUSERNAMEsend,max_vicidial_trunks,answer_transfer_agent,local_gmt,ext_context,vd_server_logs,asterisk_version FROM servers where server_ip = ?/* server_ip */;
bin/AST_manager_listen_AMI2.pl:331:SELECT vd_server_logs FROM servers where server_ip = ?/* server_ip */;
bin/AST_manager_listen_AMI2.pl:585:UPDATE vicidial_manager set status='DEAD', channel=?/* event_hash{'Channel'} */ where server_ip = ?/* server_ip */ and uniqueid = ?/* event_hash{'Uniqueid'} */ and cmd_line_d!='Exten: 8309' and cmd_line_d!='Exten: 8310';
bin/AST_manager_listen_AMI2.pl:623:UPDATE vicidial_manager set status='SENT', channel=?/* event_hash{'Channel'} */, uniqueid = ?/* event_hash{'Uniqueid'} */ where server_ip = ?/* event_hash{'ServerIP'} */ and callerid = ?/* call_id */;
bin/AST_manager_listen_AMI2.pl:632:UPDATE vicidial_manager set status='UPDATED', channel=?/* event_hash{'Channel'} */, uniqueid = ?/* event_hash{'Uniqueid'} */ where server_ip = ?/* event_hash{'ServerIP'} */ and callerid = ?/* call_id */ and status != 'NEW';
bin/AST_manager_listen_AMI2.pl:675:UPDATE vicidial_manager set status='UPDATED', channel=?/* event_hash{'Channel'} */, uniqueid = ?/* event_hash{'Uniqueid'} */ where server_ip = ?/* event_hash{'ServerIP'} */ and callerid = ?/* call_id */;
bin/AST_manager_listen_AMI2.pl:710:INSERT INTO vicidial_dtmf_log SET dtmf_time=NOW(),channel=?/* event_hash{'Channel'} */,server_ip=?/* event_hash{'ServerIP'} */,uniqueid=?/* event_hash{'Uniqueid'} */,digit=?/* event_hash{'Digit'} */,direction=?/* event_hash{'Direction'} */,state='Begin';
bin/AST_manager_listen_AMI2.pl:759:INSERT INTO vicidial_dtmf_log SET dtmf_time=NOW(),channel=?/* event_hash{'Channel'} */,server_ip=?/* event_hash{'ServerIP'} */,uniqueid=?/* event_hash{'Uniqueid'} */,digit=?/* event_hash{'Digit'} */,direction=?/* event_hash{'Direction'} */,state='End';
bin/FastAGI_log.pl:161:SELECT vd_server_logs,asterisk_version FROM servers where server_ip = ?/* VARserver_ip */;
bin/FastAGI_log.pl:262:SELECT agi_output,asterisk_version FROM servers where server_ip = ?/* VARserver_ip */;
bin/FastAGI_log.pl:445:SELECT count(*) FROM phones where server_ip=?/* VARserver_ip */ and extension=?/* channel_line */ and protocol='Zap';
bin/FastAGI_log.pl:469:SELECT count(*) FROM phones where server_ip=?/* VARserver_ip */ and dialplan_number=?/* channel_line */ and protocol='EXTERNAL';
bin/FastAGI_log.pl:514:SELECT cmd_line_b,cmd_line_d FROM vicidial_manager where callerid=?/* callerid */ limit 1;
bin/FastAGI_log.pl:539:SELECT campaign_id FROM vicidial_auto_calls where callerid=?/* callerid */ limit 1;
bin/FastAGI_log.pl:557:SELECT opensips_cid_name FROM system_settings;
bin/FastAGI_log.pl:573:SELECT opensips_cid_name FROM vicidial_campaigns where campaign_id = ?/* CAMPCUST */;
bin/FastAGI_log.pl:596:INSERT INTO call_log (uniqueid,channel,channel_group,type,server_ip,extension,number_dialed,start_time,start_epoch,end_time,end_epoch,length_in_sec,length_in_min,caller_code) values(?/* unique_id */,?/* channel */,?/* channel_group */,?/* type */,?/* VARserver_ip */,?/* extension */,?/* number_dialed */,?/* now_date */,?/* now_date_epoch */,'','','','',?/* callerid */);
bin/FastAGI_log.pl:618:SELECT count(*) from parked_channels where channel_group=?/* callerid */;
bin/FastAGI_log.pl:629:SELECT server_ip from parked_channels where channel_group=?/* callerid */;
bin/FastAGI_log.pl:675:SELECT carrier_logging_active FROM servers where server_ip = ?/* VARserver_ip */;
bin/FastAGI_log.pl:695:SELECT uniqueid FROM call_log where uniqueid LIKE ?/* beginUNIQUEID% */ and caller_code LIKE ?/* "%$CIDlead_id" */;
bin/FastAGI_log.pl:715:SELECT sip_hangup_cause,sip_hangup_reason FROM vicidial_dial_log where lead_id=?/* CIDlead_id */ and server_ip=?/* VARserver_ip */ and caller_code=?/* callerid */ order by call_date desc limit 1;
bin/FastAGI_log.pl:739:UPDATE vicidial_dial_log SET sip_hangup_cause=?/* sip_hangup_cause */,sip_hangup_reason=?/* sip_hangup_reason */,uniqueid=?/* uniqueid */ where caller_code=?/* callerid */ and server_ip=?/* VARserver_ip */ and lead_id=?/* CIDlead_id */;
bin/FastAGI_log.pl:748:SELECT sip_hangup_cause,sip_hangup_reason FROM vicidial_dial_log where lead_id=?/* CIDlead_id */ and server_ip=?/* VARserver_ip */ and caller_code=?/* callerid */ order by call_date desc limit 1;
bin/FastAGI_log.pl:764:INSERT IGNORE INTO vicidial_carrier_log set uniqueid=?/* uniqueid */,call_date=?/* now_date */,server_ip=?/* VARserver_ip */,lead_id=?/* CIDlead_id */,hangup_cause=?/* hangup_cause */,dialstatus=?/* dialstatus */,channel=?/* channel */,dial_time=?/* dial_time */,answered_time=?/* answered_time */,sip_hangup_cause=?/* sip_hangup_cause */,sip_hangup_reason=?/* sip_hangup_reason */,caller_code=?/* callerid */;
bin/FastAGI_log.pl:775:SELECT monitor_start_time,UTC_TIMESTAMP(monitor_start_time) from vicidial_rt_monitor_log where caller_code=?/* callerid */ and ( (monitor_end_time is NULL) or (monitor_start_time=monitor_end_time) );
bin/FastAGI_log.pl:788:UPDATE vicidial_rt_monitor_log set monitor_sec=?/* monitor_sec */,monitor_end_time=?/* now_date */ where caller_code=?/* callerid */;
bin/FastAGI_log.pl:798:SELECT uniqueid,start_epoch,channel,end_epoch,channel_group FROM call_log where uniqueid=?/* unique_id */;
bin/FastAGI_log.pl:800:SELECT uniqueid,start_epoch,channel,end_epoch,channel_group FROM call_log where caller_code=?/* callerid */ and channel NOT LIKE 'Local/%';
bin/FastAGI_log.pl:829:UPDATE call_log set end_time=?/* now_date */,end_epoch=?/* now_date_epoch */,length_in_sec=?/* length_in_sec */,length_in_min=?/* length_in_min */,channel=?/* channel */ where uniqueid=?/* unique_id */;
bin/FastAGI_log.pl:838:SELECT recording_id,start_epoch,filename,end_epoch FROM recording_log where vicidial_id=?/* unique_id */ order by start_time desc limit 1;
bin/FastAGI_log.pl:856:UPDATE recording_log set end_time=?/* now_date */,end_epoch=?/* now_date_epoch */,length_in_sec=?/* CLlength_in_sec */,length_in_min=?/* CLlength_in_min */ where recording_id=?/* CLrecording_id */;
bin/FastAGI_log.pl:866:SELECT start_epoch FROM call_log where uniqueid=?/* DOUBLEunique_id */ and channel_group='DOUBLE_LOG' order by start_time desc limit 1;
bin/FastAGI_log.pl:879:UPDATE call_log set end_time=?/* now_date */,end_epoch=?/* now_date_epoch */,length_in_sec=?/* DOUBLElength_in_sec */,length_in_min=?/* DOUBLElength_in_min */ where uniqueid=?/* DOUBLEunique_id */ and channel_group='DOUBLE_LOG' order by start_time desc limit 1;
bin/FastAGI_log.pl:889:DELETE from live_inbound where uniqueid IN(?/* unique_id */,?/* CALLunique_id */) and server_ip=?/* VARserver_ip */;
bin/FastAGI_log.pl:894:SELECT UTC_TIMESTAMP(parked_time),UTC_TIMESTAMP(grab_time) FROM park_log where uniqueid=?/* unique_id */ and server_ip=?/* VARserver_ip */ and (parked_sec is null or parked_sec < 1) order by parked_time desc LIMIT 1;
bin/FastAGI_log.pl:923:UPDATE park_log set status='HUNGUP',hangup_time=?/* now_date */,parked_sec=?/* parked_sec */,talked_sec=?/* talked_sec */ where uniqueid=?/* unique_id */ and server_ip=?/* VARserver_ip */ order by parked_time desc LIMIT 1;
bin/FastAGI_log.pl:962:SELECT enhanced_disconnect_logging FROM system_settings;
bin/FastAGI_log.pl:1001:SELECT result FROM vicidial_cpd_log where callerid=?/* callerid */ and result NOT IN('Voice','Unknown','???','') order by cpd_id desc limit 1;
bin/FastAGI_log.pl:1047:UPDATE vicidial_list set status=?/* VDL_status */ where lead_id = ?/* CIDlead_id */;
bin/FastAGI_log.pl:1052:UPDATE vicidial_auto_calls set status=?/* VDAC_status */ where callerid = ?/* callerid */;
bin/FastAGI_log.pl:1059:UPDATE vicidial_log FORCE INDEX(lead_id) set status=?/* VDL_status */ where lead_id = ?/* CIDlead_id */ and uniqueid LIKE ?/* Euniqueid% */;
bin/FastAGI_log.pl:1066:SELECT lead_id,callerid,campaign_id,alt_dial,stage,UTC_TIMESTAMP(call_time),uniqueid,status,call_time,phone_code,phone_number,queue_position FROM vicidial_auto_calls where uniqueid = ?/* uniqueid */ or callerid = ?/* callerid */ limit 1;
bin/FastAGI_log.pl:1094:SELECT list_id,called_count FROM vicidial_list where lead_id=?/* VD_lead_id */ limit 1;
bin/FastAGI_log.pl:1110:INSERT INTO vicidial_log SET uniqueid=?/* uniqueid */,lead_id=?/* VD_lead_id */,list_id=?/* VD_list_id */,status=?/* VDL_status */,campaign_id=?/* VD_campaign_id */,call_date=?/* VD_call_time */,start_epoch=?/* VD_start_epoch */,phone_code=?/* VD_phone_code */,phone_number=?/* VD_phone_number */,user='VDAD',processed='N',length_in_sec='0',end_epoch=?/* VD_start_epoch */,alt_dial=?/* VD_alt_dial */,called_count=?/* called_count */ ,comments='MANUAL';
bin/FastAGI_log.pl:1115:INSERT IGNORE INTO vicidial_log_extended SET uniqueid=?/* uniqueid */,server_ip=?/* VARserver_ip */,call_date=?/* VD_call_time */,lead_id=?/* VD_lead_id */,caller_code=?/* VD_callerid */,custom_call_id='' ON DUPLICATE KEY UPDATE server_ip=?/* VARserver_ip */,call_date=?/* VD_call_time */,lead_id=?/* VD_lead_id */,caller_code=?/* VD_callerid */;
bin/FastAGI_log.pl:1124:SELECT call_quota_lead_ranking FROM vicidial_campaigns where campaign_id=?/* VD_campaign_id */;
bin/FastAGI_log.pl:1145:DELETE FROM vicidial_auto_calls where callerid = ?/* callerid */;
bin/FastAGI_log.pl:1168:SELECT lead_id,callerid,campaign_id,alt_dial,stage,UTC_TIMESTAMP(call_time),uniqueid,status,call_time,phone_code,phone_number,queue_position,server_ip,agent_only FROM vicidial_auto_calls where uniqueid = ?/* uniqueid */ or callerid = ?/* callerid */ limit 1;
bin/FastAGI_log.pl:1205:SELECT channel from parked_channels where channel_group=?/* callerid */;
bin/FastAGI_log.pl:1233:SELECT channel,server_ip from parked_channels_recent where channel_group=?/* callerid */ and park_end_time > ?/* PSQLdate */ order by park_end_time desc limit 1;
bin/FastAGI_log.pl:1264:SELECT count(*) from live_channels where channel=?/* PC_channel */;
bin/FastAGI_log.pl:1282:DELETE FROM vicidial_auto_calls where ( ( (status!='IVR') and (uniqueid=?/* uniqueid */ or callerid = ?/* callerid */) ) or ( (status='IVR') and (uniqueid=?/* uniqueid */) ) ) order by call_time desc limit 1;
bin/FastAGI_log.pl:1286:UPDATE vicidial_live_agents SET ring_callerid='' where ring_callerid=?/* callerid */;
bin/FastAGI_log.pl:1291:SELECT enable_queuemetrics_logging,queuemetrics_server_ip,queuemetrics_dbname,queuemetrics_login,queuemetrics_pass,queuemetrics_log_id,queuemetrics_socket,queuemetrics_socket_url FROM system_settings;
bin/FastAGI_log.pl:1338:SELECT queue_position,call_date FROM vicidial_closer_log where uniqueid=?/* unique_id */ and lead_id=?/* CIDlead_id */ and campaign_id=?/* VD_campaign_id */ and call_date > ?/* RSQLdate */ order by closecallid desc limit 1;
bin/FastAGI_log.pl:1350:SELECT agent,data4 from queue_log where call_id=?/* VD_callerid */ and verb='CONNECT' order by time_id desc limit 1;
bin/FastAGI_log.pl:1369:SELECT count(*) FROM vicidial_auto_calls where status = 'LIVE' and campaign_id=?/* VD_campaign_id */ and call_time < ?/* VCLcall_date */;
bin/FastAGI_log.pl:1380:INSERT INTO queue_log SET `partition`='P01',time_id=?/* secX */,call_id=?/* VD_callerid */,queue=?/* VD_campaign_id */,agent=?/* VD_agent */,verb='ABANDON',data1=?/* current_position */,data2=?/* queue_position */,data3=?/* VD_stage */,serverid=?/* queuemetrics_log_id */,data4=?/* data_four */;
bin/FastAGI_log.pl:1385:INSERT INTO queue_log SET `partition`='P01',time_id=?/* secX */,call_id=?/* VD_callerid */,queue=?/* VD_campaign_id */,agent=?/* VD_agent */,verb='COMPLETECALLER',data1=?/* VD_stage */,data2=?/* VD_call_length */,data3=?/* queue_position */,serverid=?/* queuemetrics_log_id */,data4=?/* data_four */;
bin/FastAGI_log.pl:1393:SELECT vendor_lead_code,list_id,phone_code,phone_number,title,first_name,middle_initial,last_name,postal_code FROM vicidial_list where lead_id=?/* VD_lead_id */ LIMIT 1;
bin/FastAGI_log.pl:1470:SELECT enable_drop_lists,call_quota_lead_ranking,timeclock_end_of_day FROM system_settings;
bin/FastAGI_log.pl:1488:SELECT start_epoch,status,user,term_reason,comments,alt_dial FROM vicidial_log FORCE INDEX(lead_id) where lead_id = ?/* VD_lead_id */ and uniqueid LIKE ?/* Euniqueid% */ limit 1;
bin/FastAGI_log.pl:1523:SELECT start_epoch,status,closecallid,user,term_reason,length_in_sec,queue_seconds,comments FROM vicidial_closer_log where lead_id = ?/* VD_lead_id */ and call_date > ?/* RSQLdate */ order by closecallid desc limit 1;
bin/FastAGI_log.pl:1553:SELECT list_id,called_count FROM vicidial_list where lead_id=?/* VD_lead_id */ limit 1;
bin/FastAGI_log.pl:1568:UPDATE vicidial_list SET status='PDROP' where lead_id=?/* VD_lead_id */;
bin/FastAGI_log.pl:1572:INSERT INTO vicidial_log SET uniqueid=?/* uniqueid */,lead_id=?/* VD_lead_id */,list_id=?/* VD_list_id */,status='PDROP',campaign_id=?/* VD_campaign_id */,call_date=?/* VD_call_time */,start_epoch=?/* VD_start_epoch */,phone_code=?/* VD_phone_code */,phone_number=?/* VD_phone_number */,user='VDAD',processed='N',length_in_sec='0',end_epoch=?/* VD_start_epoch */,alt_dial=?/* VD_alt_dial */,called_count=?/* called_count */;
bin/FastAGI_log.pl:1576:INSERT IGNORE INTO vicidial_log_extended SET uniqueid=?/* uniqueid */,server_ip=?/* VARserver_ip */,call_date=?/* VD_call_time */,lead_id=?/* VD_lead_id */,caller_code=?/* VD_callerid */,custom_call_id='' ON DUPLICATE KEY UPDATE server_ip=?/* VARserver_ip */,call_date=?/* VD_call_time */,lead_id=?/* VD_lead_id */,caller_code=?/* VD_callerid */;
bin/FastAGI_log.pl:1582:INSERT IGNORE INTO vicidial_drop_log SET uniqueid=?/* uniqueid */,server_ip=?/* VARserver_ip */,drop_date=NOW(),lead_id=?/* VD_lead_id */,campaign_id=?/* VD_campaign_id */,status='PDROP',phone_code=?/* VD_phone_code */,phone_number=?/* VD_phone_number */;
bin/FastAGI_log.pl:1609:UPDATE vicidial_list set status='DROP' where lead_id = ?/* VD_lead_id */;
bin/FastAGI_log.pl:1622:UPDATE vicidial_log FORCE INDEX(lead_id) set $SQL_status end_epoch=?/* now_date_epoch */,length_in_sec=?/* VD_seconds */ where lead_id = ?/* VD_lead_id */ and uniqueid LIKE ?/* Euniqueid% */;
bin/FastAGI_log.pl:1675:UPDATE vicidial_closer_log set $VDCLSQL_update end_epoch=?/* now_date_epoch */,length_in_sec=?/* VD_seconds */$LOGuserSQL where closecallid = ?/* VD_closecallid */;
bin/FastAGI_log.pl:1683:SELECT drop_lead_reset FROM vicidial_inbound_groups where group_id=?/* VD_campaign_id */;
bin/FastAGI_log.pl:1697:UPDATE vicidial_list set called_since_last_reset='N' where lead_id = ?/* VD_lead_id */;
bin/FastAGI_log.pl:1707:INSERT IGNORE INTO vicidial_drop_log SET uniqueid=?/* uniqueid */,server_ip=?/* VARserver_ip */,drop_date=NOW(),lead_id=?/* VD_lead_id */,campaign_id=?/* VD_campaign_id */,status='DROP',phone_code=?/* VD_phone_code */,phone_number=?/* VD_phone_number */;
bin/FastAGI_log.pl:1717:SELECT auto_alt_dial,auto_alt_dial_statuses,use_internal_dnc,use_campaign_dnc,use_other_campaign_dnc,call_quota_lead_ranking FROM vicidial_campaigns where campaign_id=?/* VD_campaign_id */;
bin/FastAGI_log.pl:1756:SELECT alt_phone,gmt_offset_now,state,list_id FROM vicidial_list where lead_id=?/* VD_lead_id */;
bin/FastAGI_log.pl:1781:SELECT count(*) FROM vicidial_dnc where phone_number IN(?/* VD_alt_phone */,?/* alt_areacode */);
bin/FastAGI_log.pl:1784:SELECT count(*) FROM vicidial_dnc where phone_number=?/* VD_alt_phone */;
bin/FastAGI_log.pl:1805:SELECT count(*) FROM vicidial_campaign_dnc where phone_number IN(?/* VD_alt_phone */,?/* alt_areacode */) and campaign_id=?/* temp_campaign_id */;
bin/FastAGI_log.pl:1808:SELECT count(*) FROM vicidial_campaign_dnc where phone_number=?/* VD_alt_phone */ and campaign_id=?/* temp_campaign_id */;
bin/FastAGI_log.pl:1822:INSERT INTO vicidial_hopper SET lead_id=?/* VD_lead_id */,campaign_id=?/* VD_campaign_id */,status='READY',list_id=?/* VD_list_id */,gmt_offset_now=?/* VD_gmt_offset_now */,state=?/* VD_state */,alt_dial='ALT',user='',priority='25',source='A';
bin/FastAGI_log.pl:1838:SELECT address3,gmt_offset_now,state,list_id FROM vicidial_list where lead_id=?/* VD_lead_id */;
bin/FastAGI_log.pl:1863:SELECT count(*) FROM vicidial_dnc where phone_number IN(?/* VD_address3 */,?/* addr3_areacode */);
bin/FastAGI_log.pl:1866:SELECT count(*) FROM vicidial_dnc where phone_number=?/* VD_address3 */;
bin/FastAGI_log.pl:1887:SELECT count(*) FROM vicidial_campaign_dnc where phone_number IN(?/* VD_address3 */,?/* alt_areacode */) and campaign_id=?/* temp_campaign_id */;
bin/FastAGI_log.pl:1890:SELECT count(*) FROM vicidial_campaign_dnc where phone_number=?/* VD_address3 */ and campaign_id=?/* temp_campaign_id */;
bin/FastAGI_log.pl:1904:INSERT INTO vicidial_hopper SET lead_id=?/* VD_lead_id */,campaign_id=?/* VD_campaign_id */,status='READY',list_id=?/* VD_list_id */,gmt_offset_now=?/* VD_gmt_offset_now */,state=?/* VD_state */,alt_dial='ADDR3',user='',priority='20',source='A';
bin/FastAGI_log.pl:1925:SELECT gmt_offset_now,state,list_id FROM vicidial_list where lead_id=?/* VD_lead_id */;
bin/FastAGI_log.pl:1941:SELECT count(*) FROM vicidial_list_alt_phones where lead_id=?/* VD_lead_id */;
bin/FastAGI_log.pl:1956:SELECT alt_phone_id,phone_number,active FROM vicidial_list_alt_phones where lead_id=?/* VD_lead_id */ and alt_phone_count=?/* Xlast */;
bin/FastAGI_log.pl:1982:SELECT count(*) FROM vicidial_dnc where phone_number IN(?/* VD_altdial_phone */,?/* ad_areacode */);
bin/FastAGI_log.pl:1985:SELECT count(*) FROM vicidial_dnc where phone_number=?/* VD_altdial_phone */;
bin/FastAGI_log.pl:2007:SELECT count(*) FROM vicidial_campaign_dnc where phone_number IN(?/* VD_altdial_phone */,?/* ap_areacode */) and campaign_id=?/* temp_campaign_id */;
bin/FastAGI_log.pl:2010:SELECT count(*) FROM vicidial_campaign_dnc where phone_number=?/* VD_altdial_phone */ and campaign_id=?/* temp_campaign_id */;
bin/FastAGI_log.pl:2027:INSERT INTO vicidial_hopper SET lead_id=?/* VD_lead_id */,campaign_id=?/* VD_campaign_id */,status='READY',list_id=?/* VD_list_id */,gmt_offset_now=?/* VD_gmt_offset_now */,state=?/* VD_state */,alt_dial=?/* "X$Xlast" */,user='',priority='15',source='A';
bin/FastAGI_log.pl:2038:INSERT INTO vicidial_hopper SET lead_id=?/* VD_lead_id */,campaign_id=?/* VD_campaign_id */,status='DNC',list_id=?/* VD_list_id */,gmt_offset_now=?/* VD_gmt_offset_now */,state=?/* VD_state */,alt_dial=?/* "X$Xlast" */,user='',priority='15',source='A';
bin/FastAGI_log.pl:2107:SELECT container_entry FROM vicidial_settings_containers where container_id=?/* VD_call_quota_lead_ranking */;
bin/FastAGI_log.pl:2257:SELECT list_id,called_count,rank FROM vicidial_list where lead_id=?/* VD_lead_id */;
bin/FastAGI_log.pl:2286:SELECT call_date from vicidial_dial_log where lead_id=?/* VD_lead_id */ and call_date > ?/* CQSQLdate */ and caller_code LIKE ?/* "%$VD_lead_id" */ order by call_date desc limit 1;
bin/FastAGI_log.pl:2355:SELECT first_call_date,UTC_TIMESTAMP(first_call_date),last_call_date from vicidial_lead_call_quota_counts where lead_id=?/* VD_lead_id */ and list_id=?/* VLlist_id */;
bin/FastAGI_log.pl:2384:UPDATE vicidial_lead_call_quota_counts SET last_call_date=?/* VDLcall_datetime */,status=?/* temp_status */,called_count=?/* VLcalled_count */,rank=?/* tempVLrank */,modify_date=NOW() ,session_one_calls=(session_one_calls + 1),session_one_today_calls=(session_one_today_calls + 1) $day_updateSQL where lead_id=?/* VD_lead_id */ and list_id=?/* VLlist_id */ and modify_date < NOW();
bin/FastAGI_log.pl:2389:UPDATE vicidial_lead_call_quota_counts SET status=?/* temp_status */,called_count=?/* VLcalled_count */,rank=?/* tempVLrank */,modify_date=NOW() where lead_id=?/* VD_lead_id */ and list_id=?/* VLlist_id */;
bin/FastAGI_log.pl:2397:INSERT INTO vicidial_lead_call_quota_counts SET lead_id=?/* VD_lead_id */,list_id=?/* VLlist_id */,first_call_date=?/* VDLcall_datetime */,last_call_date=?/* VDLcall_datetime */,status=?/* temp_status */,called_count=?/* VLcalled_count */,day_one_calls='1',rank=?/* tempVLrank */,modify_date=NOW() ,session_six_calls='1',session_six_today_calls='1';
bin/FastAGI_log.pl:2405:UPDATE vicidial_list SET rank='0' where lead_id=?/* VD_lead_id */;
bin/AST_manager_kill_hung_congested.pl:121:SELECT vd_server_logs FROM servers where server_ip = ?/* VARserver_ip */;
bin/AST_manager_kill_hung_congested.pl:139:SELECT channel FROM live_sip_channels where server_ip = ?/* server_ip */ and extension = 'CONGEST' and channel LIKE 'Local%' limit 99;
bin/AST_manager_kill_hung_congested.pl:168:INSERT INTO vicidial_manager values('','',?/* now_date */,'NEW','N',?/* server_ip */,'','Hangup',?/* KCqueryCID */,?/* "Channel: $congest_kill[$i]" */,'','','','','','','','','');
bin/AST_manager_kill_hung_congested.pl:188:SELECT channel FROM live_sip_channels where server_ip = ?/* server_ip */ and extension = 'CONGEST' and channel LIKE 'Local%' limit 99;
bin/AST_manager_kill_hung_congested.pl:217:INSERT INTO vicidial_manager values('','',?/* now_date */,'NEW','N',?/* server_ip */,'','Hangup',?/* KCqueryCID */,?/* "Channel: $congest_kill[$i]" */,'','','','','','','','','');
bin/AST_manager_kill_hung_congested.pl:238:SELECT channel FROM live_sip_channels where server_ip = ?/* server_ip */ and extension = 'CONGEST' and channel LIKE 'Local%' limit 99;
bin/AST_manager_kill_hung_congested.pl:267:INSERT INTO vicidial_manager values('','',?/* now_date */,'NEW','N',?/* server_ip */,'','Hangup',?/* KCqueryCID */,?/* "Channel: $congest_kill[$i]" */,'','','','','','','','','');
bin/AST_manager_kill_hung_congested.pl:289:SELECT channel FROM live_sip_channels where server_ip = ?/* server_ip */ and extension = 'CONGEST' and channel LIKE 'Local%' limit 99;
bin/AST_manager_kill_hung_congested.pl:319:INSERT INTO vicidial_manager values('','',?/* now_date */,'NEW','N',?/* server_ip */,'','Hangup',?/* KCqueryCID */,?/* "Channel: $congest_kill[$i]" */,'','','','','','','','','');
bin/AST_update_AMI2.pl:154:SELECT telnet_host,telnet_port,ASTmgrUSERNAME,ASTmgrSECRET,ASTmgrUSERNAMEupdate,ASTmgrUSERNAMElisten,ASTmgrUSERNAMEsend,max_vicidial_trunks,answer_transfer_agent,local_gmt,ext_context,vd_server_logs,asterisk_version FROM servers where server_ip = ?/* server_ip */;
bin/AST_update_AMI2.pl:194:SELECT count(*) FROM server_updater where server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:205:INSERT INTO server_updater set server_ip=?/* server_ip */, last_update=NOW();
bin/AST_update_AMI2.pl:569:UPDATE server_updater set last_update=NOW() where server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:930:INSERT INTO live_sip_channels (channel,server_ip,extension,channel_data) values (?/* channel_ref->{'Channel'} */,?/* server_ip */,?/* extension */,?/* channel_ref->{'ApplicationData'} */);
bin/AST_update_AMI2.pl:940:INSERT INTO live_channels (channel,server_ip,extension,channel_data) values (?/* channel_ref->{'Channel'} */,?/* server_ip */,?/* extension */,?/* channel_ref->{'ApplicationData'} */);
bin/AST_update_AMI2.pl:974:DELETE FROM live_sip_channels where server_ip=?/* server_ip */ and channel=?/* db_client->{'channel'} */ and extension=?/* db_client->{'extension'} */;
bin/AST_update_AMI2.pl:984:DELETE FROM live_channels where server_ip=?/* server_ip */ and channel=?/* db_trunk->{'channel'} */ and extension=?/* db_trunk->{'extension'} */;
bin/AST_update_AMI2.pl:1017:INSERT IGNORE INTO $cid_channels_recent (caller_id_name, connected_line_name, call_date, channel, dest_channel, linkedid, dest_uniqueid, uniqueid) values ;
bin/AST_update_AMI2.pl:1037:DELETE pc1 FROM parked_channels pc1, parked_channels pc2 WHERE pc1.parked_time < pc2.parked_time AND pc1.parked_time <> pc2.parked_time AND pc1.channel = pc2.channel AND pc1.server_ip=?/* server_ip */ and pc2.server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:1042:SELECT channel,extension,parked_time,UTC_TIMESTAMP(parked_time),channel_group FROM parked_channels where server_ip = ?/* server_ip */ order by channel desc, parked_time desc;
bin/AST_update_AMI2.pl:1100:DELETE FROM parked_channels WHERE channel=?/* channel */ and extension=?/* extension */; and server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:1105:DELETE FROM vicidial_auto_calls WHERE callerid IN $auto_delete_sql;
bin/AST_update_AMI2.pl:1217:UPDATE servers SET sysload=?/* server_load */, channels_total=?/* channel_counts->{'total'} */, cpu_idle_percent=?/* cpu_idle_percent */, disk_usage=?/* disk_usage */ where server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:1231:INSERT INTO server_performance (start_time, server_ip, sysload, freeram, usedram, processes, channels_total, trunks_total, clients_total, clients_zap, clients_iax, clients_local, clients_sip, live_recordings, cpu_user_percent, cpu_system_percent, cpu_idle_percent, disk_reads, disk_writes) values( NOW(), ?/* server_ip */, ?/* server_load */, ?/* mem_free */, ?/* mem_used */, ?/* num_processes */, ?/* channel_counts->{'total'} */, ?/* channel_counts->{'trunks'} */, ?/* channel_counts->{'clients'} */, ?/* channel_counts->{'dahdi'} */, ?/* channel_counts->{'iax'} */, ?/* channel_counts->{'local'} */, ?/* channel_counts->{'sip'} */, '0', ?/* cpu_user_percent */, ?/* cpu_sys_percent */, ?/* cpu_idle_percent */, ?/* reads */, ?/* writes */);
bin/AST_update_AMI2.pl:1246:SELECT sys_perf_log,vd_server_logs FROM servers where server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:1264:SELECT extension, protocol FROM phones where server_ip=?/* server_ip */ and phone_type NOT LIKE '%trunk%';
bin/AST_update_AMI2.pl:1315:SELECT channel,extension FROM live_channels where server_ip=?/* server_ip */;
bin/AST_update_AMI2.pl:1324:SELECT channel,extension FROM live_sip_channels where server_ip=?/* server_ip */;
bin/AST_manager_sip_AMI2.pl:116:SELECT telnet_host,telnet_port,ASTmgrUSERNAME,ASTmgrSECRET,ASTmgrUSERNAMEupdate,ASTmgrUSERNAMElisten,ASTmgrUSERNAMEsend,max_vicidial_trunks,answer_transfer_agent,local_gmt,ext_context,vd_server_logs,asterisk_version FROM servers where server_ip = ?/* server_ip */;
bin/AST_manager_sip_AMI2.pl:321:SELECT vd_server_logs FROM servers where server_ip = ?/* server_ip */;
bin/AST_manager_sip_AMI2.pl:575:INSERT INTO vicidial_sip_event_log SET caller_code =?/* call_id */, channel=?/* event_hash{'Channel'} */, server_ip=?/* event_hash{'ServerIP'} */, uniqueid=?/* event_hash{'Uniqueid'} */, sip_call_id=?/* event_hash{'SIPCallID'} */, event_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ), sip_event = 'INVITE';
bin/AST_manager_sip_AMI2.pl:582:INSERT INTO vicidial_sip_event_recent SET caller_code =?/* call_id */, channel=?/* event_hash{'Channel'} */, server_ip=?/* event_hash{'ServerIP'} */, uniqueid=?/* event_hash{'Uniqueid'} */, invite_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ );
bin/AST_manager_sip_AMI2.pl:626:INSERT INTO vicidial_sip_event_log SET caller_code =?/* call_id */, channel=?/* event_hash{'Channel'} */, server_ip=?/* event_hash{'ServerIP'} */, uniqueid=?/* event_hash{'Uniqueid'} */, sip_call_id=?/* event_hash{'SIPCallID'} */, event_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ), sip_event = ?/* event_hash{'Response'} */;
bin/AST_manager_sip_AMI2.pl:635:UPDATE vicidial_sip_event_recent SET first_100_date = IF( first_100_date IS NULL, FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ), first_100_date), last_100_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ) where caller_code = ?/* call_id */;
bin/AST_manager_sip_AMI2.pl:639:UPDATE vicidial_sip_event_recent SET first_180_date = IF( first_180_date IS NULL, FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ), first_180_date), last_180_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ) where caller_code = ?/* call_id */;
bin/AST_manager_sip_AMI2.pl:643:UPDATE vicidial_sip_event_recent SET first_183_date = IF( first_183_date IS NULL, FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ), first_183_date), last_183_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ) where caller_code = ?/* call_id */;
bin/AST_manager_sip_AMI2.pl:647:UPDATE vicidial_sip_event_recent SET 200_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ) where caller_code = ?/* call_id */;
bin/AST_manager_sip_AMI2.pl:651:UPDATE vicidial_sip_event_recent SET error_date = FROM_UNIXTIME( ?/* event_hash{'Timestamp'} */ ) where caller_code = ?/* call_id */;
