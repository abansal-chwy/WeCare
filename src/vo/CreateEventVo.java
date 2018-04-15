package vo;

public class CreateEventVo {

	private int event_id;
	private String event_name;
	private String time;
	private String date;
	private String location;
	private String description;
	private String EIN;
	private insertVO abc;
	private int active;
	private String ngo_name;
	private String URL;
	
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		this.URL = uRL;
	}
	public String getNgo_name() {
		return ngo_name;
	}
	public void setNgo_name(String ngo_name) {
		this.ngo_name = ngo_name;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getEIN() {
		return EIN;
	}
	public void setEIN(String eIN) {
		EIN = eIN;
	}
	public insertVO getAbc() {
		return abc;
	}
	public void setAbc(insertVO abc) {
		this.abc = abc;
	}
	
	
	
	
	
}
