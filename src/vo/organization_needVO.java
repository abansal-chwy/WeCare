package vo;

public class organization_needVO {
	
	
	private String EIN;
	private int elec;
	private int edu;
	private int health;
	private int hunger;
	private int sports;
	private int household;
	private String category;
	private insertVO orgVO;
	
	
	
	public insertVO getOrgVO() {
		return orgVO;
	}
	public void setOrgVO(insertVO orgVO) {
		this.orgVO = orgVO;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEIN() {
		return EIN;
	}
	public void setEIN(String eIN) {
		EIN = eIN;
	}
	public int getElec() {
		return elec;
	}
	public void setElec(int elec) {
		this.elec = elec;
	}
	public int getEdu() {
		return edu;
	}
	public void setEdu(int edu) {
		this.edu = edu;
	}
	public int getHealth() {
		return health;
	}
	public void setHealth(int health) {
		this.health = health;
	}
	public int getHunger() {
		return hunger;
	}
	public void setHunger(int hunger) {
		this.hunger = hunger;
	}
	public int getSports() {
		return sports;
	}
	public void setSports(int sports) {
		this.sports = sports;
	}
	public int getHousehold() {
		return household;
	}
	public void setHousehold(int household) {
		this.household = household;
	}

	

}
