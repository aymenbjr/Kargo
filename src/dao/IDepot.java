package dao;

import java.util.List;

import entities.Depot;

public interface IDepot {
	
	public void AddDepot(Depot d);
	public List<Depot> ListDepot();
	public List<Depot> ListParMC(String mc);
	public Depot getDepot(String id_d);
	public Depot updateDepot(Depot d);
	public void deleteDepot(int id_d);

}
