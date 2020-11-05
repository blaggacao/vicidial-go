CREATE TABLE vicidial_live_agents (
live_agent_id INT(9) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user VARCHAR(20),
server_ip VARCHAR(15) NOT NULL,
conf_exten VARCHAR(20),
extension VARCHAR(100),
`status` ENUM('READY','QUEUE','INCALL','PAUSED','CLOSER','MQUEUE') default 'PAUSED',
lead_id INT(9) UNSIGNED NOT NULL,
campaign_id VARCHAR(8),
uniqueid VARCHAR(20),
callerid VARCHAR(20),
channel VARCHAR(100),
random_id INT(8) UNSIGNED,
last_call_time DATETIME,
last_update_time TIMESTAMP,
last_call_finish DATETIME,
closer_campaigns TEXT,
call_server_ip VARCHAR(15),
user_level TINYINT(3) UNSIGNED default '0',
comments VARCHAR(20),
campaign_weight TINYINT(1) default '0',
calls_today SMALLINT(5) UNSIGNED default '0',
external_hangup VARCHAR(1) default '',
external_status VARCHAR(255) default '',
external_pause VARCHAR(20) default '',
external_dial VARCHAR(100) default '',
external_ingroups TEXT,
external_blended ENUM('0','1') default '0',
external_igb_set_user VARCHAR(20) default '',
external_update_fields ENUM('0','1') default '0',
external_update_fields_data VARCHAR(255) default '',
external_timer_action VARCHAR(20) default '',
external_timer_action_message VARCHAR(255) default '',
external_timer_action_seconds MEDIUMINT(7) default '-1',
agent_log_id INT(9) UNSIGNED default '0',
last_state_change DATETIME,
agent_territories TEXT,
outbound_autodial ENUM('Y','N') default 'N',
manager_ingroup_set ENUM('Y','N','SET') default 'N',
ra_user VARCHAR(20) default '',
ra_extension VARCHAR(100) default '',
external_dtmf VARCHAR(100) default '',
external_transferconf VARCHAR(120) default '',
external_park VARCHAR(40) default '',
external_timer_action_destination VARCHAR(100) default '',
on_hook_agent ENUM('Y','N') default 'N',
on_hook_ring_time SMALLINT(5) default '15',
ring_callerid VARCHAR(20) default '',
last_inbound_call_time DATETIME,
last_inbound_call_finish DATETIME,
campaign_grade TINYINT(2) UNSIGNED default '1',
external_recording VARCHAR(20) default '',
external_pause_code VARCHAR(6) default '',
pause_code VARCHAR(6) default '',
preview_lead_id INT(9) UNSIGNED default '0',
external_lead_id INT(9) UNSIGNED default '0',
last_inbound_call_time_filtered DATETIME,
last_inbound_call_finish_filtered DATETIME,
index (random_id),
index (last_call_time),
index (last_update_time),
index (last_call_finish)
) ENGINE=MyISAM;



/* bin/FastAGI_log.pl:1286 */


/* name: UpdateVicidialLiveAgents :exec */
UPDATE vicidial_live_agents SET ring_callerid='' where ring_callerid=?/* callerid */;
