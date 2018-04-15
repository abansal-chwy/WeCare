package vo;

import java.io.Serializable;

import javax.persistence.Embeddable;





@Embeddable
public class reminderkey implements Serializable{
		protected String event_id;
		protected String user_email;
		
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

		

	    public reminderkey() {}

	    public reminderkey(String event_id,String  user_email) {
	        this.event_id = event_id;
	        this.user_email = user_email;
	    }
}
