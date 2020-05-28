package entities;
import java.io.Serializable;
import java.sql.*;
import java.util.*;

public class Date implements Serializable{
	private Date DateDebut;
	private Date DateFin;
	public Date getDateDebut() {
		return DateDebut;
	}
	public void setDateDebut(Date dateDebut) {
		DateDebut = dateDebut;
	}
	public Date getDateFin() {
		return DateFin;
	}
	public void setDateFin(Date dateFin) {
		DateFin = dateFin;
	}
	@Override
	public String toString() {
		return "Date [DateDebut=" + DateDebut + ", DateFin=" + DateFin + "]";
	}
	public Date(Date dateDebut, Date dateFin) {
		super();
		DateDebut = dateDebut;
		DateFin = dateFin;
	}
	public Date() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
		
}
