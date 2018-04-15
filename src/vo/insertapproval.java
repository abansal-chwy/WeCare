package vo;

import javax.persistence.Table;

@Table(name="approval")
public class insertapproval {
	
	private int fid;
	private String status;
	private insertVO insertvoobj;
	
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public insertVO getInsertVOobj() {
		return insertvoobj;
	}
	public void setInsertVOobj(insertVO insertvoobj) {
		this.insertvoobj = insertvoobj;
	}
	
	
	
	
}
