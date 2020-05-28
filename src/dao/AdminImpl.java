package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

import entities.Admin;

public class AdminImpl implements IAdmin {
	
	
	@Override
	public void addAdmin(Admin a) {
		Connection conn=DBconnect.getConnection();
		try {
			PreparedStatement st=conn.prepareStatement("insert into Admin values (?,?)");
			st.setString(1, a.getNom());
			st.setString(2, a.getPassword());
			st.executeUpdate();
			st.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
	
	

	@Override
	public boolean login(String nom, String mdp) {
		boolean b=false;
		Connection conn=DBconnect.getConnection();
		PreparedStatement st;
		try {
		st = conn.prepareStatement("select Password from Admin where Nom=?");
		st.setString(1, nom);
		ResultSet rs=st.executeQuery();
		if(rs.next() && Encryption.decrypt(rs.getString("Password")).equals(mdp)){
			b=true;
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}




	@Override
	public Admin getAdmin(String nom, String mdp) {
			Connection conn=DBconnect.getConnection();
			Admin a=new Admin();
			try {
				PreparedStatement st=conn.prepareStatement("select * from Admin where login = ? and password = ?");
				st.setString(1, nom);
				st.setString(2, mdp);
				ResultSet rs=st.executeQuery();
				if(rs.next()){
					a.setId_Admin(rs.getInt("Id_Admin"));
					a.setId_Person_P(rs.getInt("Id_Person_P"));
					a.setId_Depot(rs.getInt("Id_Depot"));
					a.setNom(rs.getString("Nom"));
					a.setPassword(rs.getString("Password"));
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(a==null) throw new RuntimeException("Admin "+nom+" nicht gefunden");
			return a;
		}
	}



