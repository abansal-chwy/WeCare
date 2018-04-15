package vo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="mailcheck")
public class mailcheckVO {
	@Id
	private int app_id;
	private String app_date;
	private int mails_sent;
	
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	
	
	public String getApp_date() {
		return app_date;
	}
	public void setApp_date(String app_date) {
		this.app_date = app_date;
	}
	public int getMails_sent() {
		return mails_sent;
	}
	public void setMails_sent(int mails_sent) {
		this.mails_sent = mails_sent;
	}


}
