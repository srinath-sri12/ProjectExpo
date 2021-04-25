package com.projectexpo.data;

public class PaperDetails {

	String sno;
	public String name ;
	String roll ;
	String dept;
	String papername;
	String eventname;
	String presentedplace;
	String eventdate;
	String prize;


	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoll() {
		return roll;
	}
	public void setRoll(String roll) {
		this.roll = roll;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPapername() {
		return papername;
	}
	public void setPapername(String papername) {
		this.papername = papername;
	}
	public String getEventname() {
		return eventname;
	}
	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	public String getPresentedplace() {
		return presentedplace;
	}
	public void setPresentedplace(String presentedplace) {
		this.presentedplace = presentedplace;
	}
	public String getEventdate() {
		return eventdate;
	}
	public void setEventdate(String eventdate) {
		this.eventdate = eventdate;
	}
	public String getPrize() {
		return prize;
	}
	public void setPrize(String prize) {
		this.prize = prize;
	}
	public PaperDetails(String sno, String name, String roll, String dept, String papername, String eventname,
			String presentedplace, String eventdate, String prize) {
		super();
		this.sno = sno;
		this.name = name;
		this.roll = roll;
		this.dept = dept;
		this.papername = papername;
		this.eventname = eventname;
		this.presentedplace = presentedplace;
		this.eventdate = eventdate;
		this.prize = prize;
	}
	public PaperDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

}
