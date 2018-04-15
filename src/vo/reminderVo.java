package vo;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class reminderVo implements Serializable{
//	@EmbeddedId
	//private reminderkey reminderkey;
		private String event_id;
		public String getEvent_id() {
			return event_id;
		}
		public void setEvent_id(String event_id) {
			this.event_id = event_id;
		}
		public String getUser_email() {
			return user_email;
		}
		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}
		private String user_email;
		private String event_name;
		private String event_date;
		private String reminder_date;
		private int mail_sent;
		
//		public reminderkey getReminderkey() {
//			return reminderkey;
//		}
//		public void setReminderkey(reminderkey reminderkey) {
//			this.reminderkey = reminderkey;
//		}
		
		public String getEvent_name() {
			return event_name;
		}
		public void setEvent_name(String event_name) {
			this.event_name = event_name;
		}
		public String getEvent_date() {
			return event_date;
		}
		public void setEvent_date(String event_date) {
			this.event_date = event_date;
		}
		public String getReminder_date() {
			return reminder_date;
		}
		public void setReminder_date(String reminder_date) {
			this.reminder_date = reminder_date;
		}
		public int getMail_sent() {
			return mail_sent;
		}
		public void setMail_sent(int mail_sent) {
			this.mail_sent = mail_sent;
		}
		
		
	
}
