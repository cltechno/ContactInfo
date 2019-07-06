package dto;
public class ApplicationDTO
{
	public ApplicationDTO(String idnumber,String idtype)
	{
		this.idnumber = idnumber;
		this.idtype = idtype;
		
	}
public ApplicationDTO(String idnumber,String idtype, String name,  String telehome, String teleoff, String hand,
			String fax, String email, String gender, String dob, String status, String citizen, String nationality,
			String race, String relation, String card, String issue, String expiry) {
		super();
		this.idnumber = idnumber;
		this.idtype = idtype;
		this.name = name;

		this.telehome = telehome;
		this.teleoff = teleoff;
		this.hand = hand;
		this.fax = fax;
		this.email = email;
		this.gender = gender;
		this.dob = dob;
		this.status = status;
		this.citizen = citizen;
		this.nationality = nationality;
		this.race = race;
		this.relation = relation;
		this.card = card;
		this.issue = issue;
		this.expiry = expiry;
	}
public ApplicationDTO(String idnumber,  String idtype,String name, String telehome, String teleoff, String hand,
			String fax, String email, String gender, String dob, String status, String citizen, String nationality,
			String race) {
		super();
		this.idnumber = idnumber;
		this.idtype = idtype;

		this.name = name;
		this.telehome = telehome;
		this.teleoff = teleoff;
		this.hand = hand;
		this.fax = fax;
		this.email = email;
		this.gender = gender;
		this.dob = dob;
		this.status = status;
		this.citizen = citizen;
		this.nationality = nationality;
		this.race = race;
	}
public ApplicationDTO(String idnumber, String idtype,String name,  String telehome, String teleoff, String hand,
			String fax, String email) {
		super();
		this.idnumber = idnumber;
		this.idtype = idtype;

		this.name = name;
		this.telehome = telehome;
		this.teleoff = teleoff;
		this.hand = hand;
		this.fax = fax;
		this.email = email;
	}
public ApplicationDTO() {
	// TODO Auto-generated constructor stub
}
private String idnumber;
private String idtype;
private String name;

private String telehome;
private String teleoff;
private String hand;
private String fax;
private String email;
private String gender;
private String dob;
private String status;
private String citizen;
private String nationality;
private String race;
private String relation;
private String card;
private String issue;
private String expiry;
public String getIdnumber() {
	return idnumber;
}
public void setIdnumber(String idnumber) {
	this.idnumber = idnumber;
}
public String getIdtype() {
	return idtype;
}
public void setIdtype(String idtype) {
	this.idtype = idtype;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getTelehome() {
	return telehome;
}
public void setTelehome(String telehome) {
	this.telehome = telehome;
}
public String getTeleoff() {
	return teleoff;
}
public void setTeleoff(String teleoff) {
	this.teleoff = teleoff;
}
public String getHand() {
	return hand;
}
public void setHand(String hand) {
	this.hand = hand;
}
public String getFax() {
	return fax;
}
public void setFax(String fax) {
	this.fax = fax;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getCitizen() {
	return citizen;
}
public void setCitizen(String citizen) {
	this.citizen = citizen;
}
public String getNationality() {
	return nationality;
}
public void setNationality(String nationality) {
	this.nationality = nationality;
}
public String getRace() {
	return race;
}
public void setRace(String race) {
	this.race = race;
}
public String getRelation() {
	return relation;
}
public void setRelation(String relation) {
	this.relation = relation;
}
public String getCard() {
	return card;
}
public void setCard(String card) {
	this.card = card;
}
public String getIssue() {
	return issue;
}
public void setIssue(String issue) {
	this.issue = issue;
}
public String getExpiry() {
	return expiry;
}
public void setExpiry(String expiry) {
	this.expiry = expiry;
}
}