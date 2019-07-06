package dto;

import java.sql.Date;

public class PagesDTO {
public PagesDTO(String house, String unit, String postal, String street, String building, String manner, String lot,
			String purchase, String property, String date1, String date2, String types) {
		super();
		this.house = house;
		this.unit = unit;
		this.postal = postal;
		this.street = street;
		this.building = building;
		this.manner = manner;
		this.lot = lot;
		this.purchase = purchase;
		this.property = property;
		this.date1 = date1;
		this.date2 = date2;
		this.types = types;
	}

private String house;
private String unit;
private String postal;
private String street;
private String building;
private String manner;
private String lot;
private String purchase;
private String property;
private String date1;
private String date2;

private String types;

public String getHouse() {
	return house;
}

public void setHouse(String house) {
	this.house = house;
}

public String getUnit() {
	return unit;
}

public void setUnit(String unit) {
	this.unit = unit;
}

public String getPostal() {
	return postal;
}

public void setPostal(String postal) {
	this.postal = postal;
}

public String getStreet() {
	return street;
}

public void setStreet(String street) {
	this.street = street;
}

public String getBuilding() {
	return building;
}

public void setBuilding(String building) {
	this.building = building;
}

public String getManner() {
	return manner;
}

public void setManner(String manner) {
	this.manner = manner;
}

public String getLot() {
	return lot;
}

public void setLot(String lot) {
	this.lot = lot;
}

public String getPurchase() {
	return purchase;
}

public void setPurchase(String purchase) {
	this.purchase = purchase;
}

public String getProperty() {
	return property;
}

public void setProperty(String property) {
	this.property = property;
}

public String getDate1() {
	return date1;
}

public void setDate1(String date1) {
	this.date1 = date1;
}

public String getDate2() {
	return date2;
}

public void setDate2(String date2) {
	this.date2 = date2;
}

public String getTypes() {
	return types;
}

public void setTypes(String types) {
	this.types = types;
}

}
