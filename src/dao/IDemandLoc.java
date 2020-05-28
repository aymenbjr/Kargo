package dao;

import java.util.List;

import entities.Demande_Location;

public interface IDemandLoc {

	public void addDemandLoc(Demande_Location dl);
	public List<Demande_Location> GetDemandLoc();
	public Demande_Location getDemLocation(String id_dl);
	public Demande_Location updateDemLocation(Demande_Location dl);
	public void deleteDemandLoc(int id_dl);
}
