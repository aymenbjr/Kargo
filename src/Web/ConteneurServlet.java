package Web;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.PortableInterceptor.USER_EXCEPTION;

import dao.AdminImpl;
import dao.ClientImpl;
import dao.CommandeImpl;
import dao.ConteneurImpl;
import dao.DemandLocImpl;
import dao.DepotImpl;
import dao.IAdmin;
import dao.IClient;
import dao.ICommande;
import dao.IConteneur;
import dao.IDemandLoc;
import dao.IDepot;
import entities.Admin;
import entities.Client;
import entities.Commande;
import entities.Conteneur;
import entities.Depot;

/**
 * Cette servlet gère les conteneurs
 * @author Aymen
 *
 */
//@WebServlet("/ConteneurServlet")
public class ConteneurServlet extends HttpServlet {
	private IClient client;
	private IAdmin admin;
	private IDepot depot;
	private IConteneur conteneur;
	private IDemandLoc Demande_Location;
	private ICommande commande;	
	
	@Override
	public void init() throws ServletException {
		client=new ClientImpl();
		admin=new AdminImpl();
		depot= new DepotImpl();
		conteneur= new ConteneurImpl();
		Demande_Location= new DemandLocImpl();
		commande= new CommandeImpl();
	}
	
    public ConteneurServlet() {
        super();
       }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		if(request.getServletPath().equals("/Acceuil")) {
			
			request.getRequestDispatcher("WEB-INF/Acceuil.jsp").forward(request, response);
		}

	    /**
	     * on se rederige vers la liste des conteneur si aucun id produit n'est renseigné,
	     * sinon on affiche le detail de ce produit
	     */
		if(request.getServletPath().equals("/conteneur")) {
			
			String idControleur = request.getParameter( "id_c" );
	    	if(idControleur == null) {
				List<Conteneur> conteneurs =  conteneur.ListConteneur();		
				request.setAttribute("conteneurs", conteneurs);				
				request.getRequestDispatcher("WEB-INF/deals.jsp").forward(request, response);
			} else {		
				Conteneur conteneurAffichee = conteneur.getConteneur(idControleur);
				
				Client utilisateurConnecte = (Client) request.getSession().getAttribute("session");
				
				// si l'utilisateur est connecté, on récupère son id
				if(utilisateurConnecte != null) {
					request.setAttribute("idUtilisateur", utilisateurConnecte.getId_Client());
				}
				
				request.setAttribute("conteneur", conteneurAffichee);			
				request.getRequestDispatcher("WEB-INF/produit.jsp").forward(request, response);
			}
		}
		
		// ajouter conteneur pour l'admin
		if(request.getServletPath().equals("/ajout_conteneur")) {
			
			request.getRequestDispatcher("WEB-INF/AddProduct.jsp").forward(request, response);
		}
		
		
		
		
		 /**
	     * on se rederige vers la liste des categories si aucune categorie n'est renseignée , 
	     * sinon on affiche la liste filtrée par catégorie
	     */
		if(request.getServletPath().equals("/categorie")) {
			String categorieConteneur = request.getParameter( "categorie_c" );
	    	if(categorieConteneur == null) {
	    		request.getRequestDispatcher("WEB-INF/categories.jsp").forward(request, response);
	    	} else {
	    		List<Conteneur> conteneurs = conteneur.ListParType(categorieConteneur);
	    		request.setAttribute("conteneurs", conteneurs);				
	    		request.getRequestDispatcher("WEB-INF/deals.jsp").forward(request, response);
	    	}
		}	
		
		
		// affichage  pour l'admin
		
		if(request.getServletPath().equals("/admin_conteneur")) { 
			List<Conteneur> conteneurs =  conteneur.ListConteneur();		
			request.setAttribute("conteneurs", conteneurs);
			request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);
		}
		
		if(request.getServletPath().equals("/admin_client")) { 
			List<Client> clients =  client.ListClient();		
			request.setAttribute("clients", clients);
			request.getRequestDispatcher("WEB-INF/adminClient.jsp").forward(request, response);
		}
		
		if(request.getServletPath().equals("/admin_depot")) { 
			List<Depot> depots =  depot.ListDepot();		
			request.setAttribute("depots", depots);
			request.getRequestDispatcher("WEB-INF/adminDepot.jsp").forward(request, response);
		}
		
		// suppression  pour l'admin
		if(request.getServletPath().equals("/supprimer_conteneur")) {
			try {
				String idControleur = request.getParameter( "id_c" );	
				conteneur.deleteConteneur(Integer.parseInt(idControleur));
				List<Conteneur> conteneurs =  conteneur.ListConteneur();		
				request.setAttribute("conteneurs", conteneurs);
				request.setAttribute("succes", "votre conteneur a été bien supprimé");	
			} catch (Exception e) {
				request.setAttribute("erreur", "Une erreur est survenue lors de la suppression du conteneur ");	
			} finally {
				request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);
			}	
		}
		
		
		if(request.getServletPath().equals("/supprimer_client")) {
			try {
				String idClient = request.getParameter( "id_c" );
				client.deleteClient(Integer.parseInt(idClient));
				List<Client> clients =  client.ListClient();		
				request.setAttribute("clients", clients);
				request.setAttribute("succes", "votre utilisateur a été bien supprimé");	
			} catch (Exception e) {
				request.setAttribute("erreur", "Une erreur est survenue lors de la suppression du utilisateur ");	
			} finally {
				request.getRequestDispatcher("WEB-INF/adminClient.jsp").forward(request, response);
			}	
		}
		
		
		
		if(request.getServletPath().equals("/supprimer_depot")) {
			try {
				String idDepot = request.getParameter( "id_c" );
				depot.deleteDepot(Integer.parseInt(idDepot));
				List<Depot> depots =  depot.ListDepot();		
				request.setAttribute("depots", depots);
				request.setAttribute("succes", "votre depot a été bien supprimé");	
			} catch (Exception e) {
				request.setAttribute("erreur", "Une erreur est survenue lors de la suppression du depot ");	
			} finally {
				request.getRequestDispatcher("WEB-INF/adminDepot.jsp").forward(request, response);
			}	
		}
		
		
		if(request.getServletPath().equals("/modifier_conteneur")){
			String idConteneur = request.getParameter( "id_c" );
			Conteneur conteneurs = conteneur.getConteneur(idConteneur);
			request.setAttribute("conteneurs", conteneurs);
			request.getRequestDispatcher("WEB-INF/EditConteneur.jsp").forward(request, response);

		}
		
		if(request.getServletPath().equals("/recherche2")){
			 
			request.getRequestDispatcher("WEB-INF/SearchProduct.jsp").forward(request, response);
		}
		
		
		
		if(request.getServletPath().equals("/paiment")){
			 
			request.getRequestDispatcher("WEB-INF/Paiment.jsp").forward(request, response);
		}
			
		
		if(request.getServletPath().equals("/paiment2")){
			 
			request.getRequestDispatcher("WEB-INF/paiment2.jsp").forward(request, response);
		}
		
		
		if(request.getServletPath().equals("/contact")) { 
			
			request.getRequestDispatcher("WEB-INF/contact.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
			
		if(request.getServletPath().equals("/modifier_conteneur")){
			String id =request.getParameter("id");
			String titre = request.getParameter("titre");
			String description = request.getParameter("description");
			String type = request.getParameter("type");
			String taille = request.getParameter("taille"); 
			String prix = request.getParameter("prix");	
			String poids = request.getParameter("poids");	
			String capacite = request.getParameter("capacite");	
			String etat = request.getParameter("etat");	
			
			Conteneur ConteneurModifie = new Conteneur(titre, description, type,  Double.valueOf(taille),  Double.valueOf(prix), Double.valueOf(poids), Double.valueOf(capacite), etat);
			ConteneurModifie.setId_Conteneur(Integer.parseInt(id));
			conteneur.updateClonteneur(ConteneurModifie);
			request.setAttribute("succes", "le Conteneur a été bien modifier"); 
			List<Conteneur> conteneurs =  conteneur.ListConteneur();
			request.setAttribute("conteneurs", conteneurs);
			request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);
		}
		
		if(request.getServletPath().equals("/contact")) { 
	
//			session = request.getSession();
//			Client utilisateurAuthentifie =  (Client) session.getAttribute("session");
//			String mail=utilisateurAuthentifie.getE_mail();
//			if(mail != null) {
//				String objet = request.getParameter("objet");
//				String message = request.getParameter("message");
//				SendEmail(mail,objet,message);      j'ai pas su appeler la methode qui envoie l'émail
				request.setAttribute("succes", "Votre Email a été bien envoyé");	
				request.getRequestDispatcher("WEB-INF/Acceuil.jsp").forward(request, response);
//			}
	
		}
		
		if(request.getServletPath().equals("/ajout_conteneur")) {
			
			//  creation d'un conteneur		
			try {
				String titre = request.getParameter("titre");
				String description = request.getParameter("description");
				String type = request.getParameter("type");
				double taille = Double.valueOf(request.getParameter("taille"));
				// image par defaut ( temporaire)
				String image  = "./img/product01.jpg";
				//String image = request.getParameter("image");
				double prix = Double.valueOf(request.getParameter("prix"));	
				double poids = Double.valueOf(request.getParameter("poids"));	
				double capacite = Double.valueOf(request.getParameter("capacite"));	
				String etat = request.getParameter("etat");	
				
				Conteneur nouveauConteneur = new Conteneur(titre, description, type,  taille, image, prix, poids, capacite, etat);
				conteneur.addConteneur(nouveauConteneur);
				
				// chargement de la liste des conteneurs
				List<Conteneur> conteneurs =  conteneur.ListConteneur();		
				request.setAttribute("conteneurs", conteneurs);	
				request.setAttribute("succes", "votre conteneur a été bien ajouté");	
			} catch (Exception e) {
				request.setAttribute("erreur", "Une erreur est survenue. Veuillez verifier que vous avez bien saisi les shamps du formulaire ");	
			} finally {
				request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);
			}	
		}
		
		if(request.getServletPath().equals("/recherche2")){
		try{
			String Taille = request.getParameter("taille");
			double a=Double.parseDouble(Taille);
			String Prix = request.getParameter("prix");
			double b=Double.parseDouble(Prix);
			String Capacite = request.getParameter("capacite");
			double c=Double.parseDouble(Capacite);
			List<Conteneur> conteneurs =  conteneur.RechercheAvancee(Taille,Prix,Capacite);		
			request.setAttribute("conteneurs", conteneurs);
			request.getRequestDispatcher("WEB-INF/deals.jsp").forward(request, response);
			} catch (Exception e) {
			request.setAttribute("erreur", "Bitte überprüfen Sie, ob Sie die Formularfelder korrekt ausgefüllt haben! ");	
			request.getRequestDispatcher("WEB-INF/SearchProduct.jsp").forward(request, response);
		}
		}
		
		if(request.getServletPath().equals("/recherche")){
			
			String recherche = request.getParameter("recherche");
			if(recherche.equals("")){
				String option = request.getParameter("option");
//				switch(option){
//				case "0":	
//					response.sendRedirect("http://localhost:8080/Kargo/Acceuil");
//					break;
//				case "1":
//					response.sendRedirect("http://localhost:8080/Kargo/categorie?categorie_c=DRY");
//					break;
//				case "2":
//					response.sendRedirect("http://localhost:8080/Kargo/categorie?categorie_c=OPEN TOP");
//					break;
//				case "3":
//					response.sendRedirect("http://localhost:8080/Kargo/categorie?categorie_c=FLAT RACK");
//					break;
//				}
				
			}else{
			List<Conteneur> conteneurs =  conteneur.ListParMC(recherche);
			request.setAttribute("conteneurs", conteneurs);
			if(conteneurs==null){
				request.setAttribute("erreur", "Aucun Resultat");
				
			}
			request.getRequestDispatcher("WEB-INF/deals.jsp").forward(request, response);
			
			
			}
		}
		
		
		}
	}

