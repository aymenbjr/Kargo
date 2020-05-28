package Web;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClientImpl;
import dao.CommandeImpl;
import dao.ConteneurImpl;
import dao.Encryption;
import dao.IClient;
import dao.ICommande;
import dao.IConteneur;
import dao.Email.SMTPAuthenticator;
import entities.Client;
import entities.Commande;
import entities.Conteneur;

/**
 * Cette servet gère les utilisateurs
 * @author Aymen
 *
 */
public class UtilisateurServlet extends HttpServlet {
	
	private IClient clientDao;
	private IConteneur conteneurDao;
	private ICommande commandeDao;	
	private IConteneur conteneur;
	
	HttpSession session;
	
	@Override
	public void init() throws ServletException {
		clientDao = new ClientImpl();
		conteneurDao = new ConteneurImpl();
		commandeDao= new CommandeImpl();
		conteneur= new ConteneurImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
					if(request.getServletPath().equals("/utilisateur_commande")){

						String idConteneur = request.getParameter( "id_c" );
						String idUser = request.getParameter( "id_u" );
				    	if(idConteneur != null && idUser != null) {
				    		// creation de la commande
				    		Commande nouvelleCommande = new Commande(Integer.valueOf(idUser), Integer.valueOf(idConteneur));
				    		commandeDao.addCommande(nouvelleCommande);
				    		
				    		// réaffichage de la liste des conteneurs avec un message au-dessus
//							List<Conteneur> conteneurs =  conteneurDao.ListConteneur();
//							request.setAttribute("succes", "Félicitations! Vous avez bien commandé le conteneur numéro " +  idConteneur +  " . Vous serez contacté très prochainement par notre service clientèle afin qu'on puisse définir votre méthode de paiment");	
//							request.setAttribute("conteneurs", conteneurs);				
							request.getRequestDispatcher("WEB-INF/Paiment.jsp").forward(request, response);
				    	} else {
				    		// Affichage des commandes par utilisateur
				    		
				    		session = request.getSession();
							Client utilisateurAuthentifie =  (Client) session.getAttribute("session");
							
							if(utilisateurAuthentifie != null) {
								List<Commande> commandes =  commandeDao.ListCommandeID(utilisateurAuthentifie.getId_Client());		
								request.setAttribute("commandes", commandes); 
								request.getRequestDispatcher("WEB-INF/clientCommande.jsp").forward(request, response);
							} else {
								// Redirection vers la page d'acceuil en cas d'erreur
								response.sendRedirect("http://localhost:8080/Kargo/Acceuil");
							}
							
				    		
				    	}
					}
				
				if(request.getServletPath().equals("/modifier_utilisateur")){
				// récuperation de l'utilisateur pour afficher ses informations dans le formulaire de modification
 					String idClient = request.getParameter( "id_c" );
					Client client = clientDao.getClient(idClient);
					request.setAttribute("client", client);
					
					request.getRequestDispatcher("WEB-INF/EditClient.jsp").forward(request, response);
				}
					
					if(request.getServletPath().equals("/ajout_client")){
						
						request.getRequestDispatcher("WEB-INF/AddClient.jsp").forward(request, response);
					}
					
					if(request.getServletPath().equals("/ajout_utilisateur")){
						
						request.getRequestDispatcher("WEB-INF/registration.jsp").forward(request, response);
					}
					
					if(request.getServletPath().equals("/login_utilisateur")){
						
						request.getRequestDispatcher("WEB-INF/ajoutClient.jsp").forward(request, response);
					}
					
					if(request.getServletPath().equals("/admin_commande")){
						List<Commande> commandes =  commandeDao.ListCommande();
						request.setAttribute("commandes", commandes); 
						request.getRequestDispatcher("WEB-INF/adminCommande.jsp").forward(request, response);
					}
					
					if(request.getServletPath().equals("/supprimer_commande")) {
						try {
							String idCommande = request.getParameter( "id_c" );
							commandeDao.deleteCommande(Integer.parseInt(idCommande));
							session = request.getSession();
							Client utilisateurAuthentifie =  (Client) session.getAttribute("session");
					
							List<Commande> commandes  =  commandeDao.ListCommandeID(utilisateurAuthentifie.getId_Client());		
							request.setAttribute("commandes", commandes ); 
							request.setAttribute("succes", "votre commande a été bien supprimé");	
						} catch (Exception e) {
							request.setAttribute("erreur", "Une erreur est survenue lors de la suppression du commande ");	
						} finally {
							request.getRequestDispatcher("WEB-INF/clientCommande.jsp").forward(request, response);
						}	
					}
					
					if(request.getServletPath().equals("/supprimer_commandee")) {
						try {
							String idCommande = request.getParameter( "id_c" );
							commandeDao.deleteCommande(Integer.parseInt(idCommande));
							List<Commande> commandes =  commandeDao.ListCommande();
							request.setAttribute("commandes", commandes ); 
							request.setAttribute("succes", "votre commande a été bien supprimé");	
						} catch (Exception e) {
							request.setAttribute("erreur", "Une erreur est survenue lors de la suppression du commande ");	
						} finally {
							request.getRequestDispatcher("WEB-INF/adminCommande.jsp").forward(request, response);
						}	
					}
				
					
					if(request.getServletPath().equals("/deconnection")){
						
						session = request.getSession();
						session.invalidate();
						
						request.setAttribute("succes", "Vous vous êtes bien déconnecté(e)");
						
						// Redirection vers la page d'acceuil
						response.sendRedirect("http://localhost:8080/Kargo/Acceuil");
					}
					
					if(request.getServletPath().equals("/parametre")){
						session = request.getSession();
						Client utilisateurAuthentifie =  (Client) session.getAttribute("session");
						
						if(utilisateurAuthentifie != null) {
							request.setAttribute("client", utilisateurAuthentifie);
							request.getRequestDispatcher("WEB-INF/parametre.jsp").forward(request, response);
						} else {
							// Redirection vers la page d'acceuil en cas d'erreur
							request.setAttribute("erreur", "Vous devez vous authentifié pour pouvoir acceder à vos informations personnels");
							request.getRequestDispatcher("WEB-INF/Acceuil.jsp").forward(request, response);
						}

					 
						
					}
		}
		
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		if(request.getServletPath().equals("/ajout_client")) {	
			try {
				// Restitution des données depuis le formulaire
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String motDePasse = request.getParameter("mdp");
				String email = request.getParameter("email");
				String adresse = request.getParameter("adresse");
				String telephone = request.getParameter("telephone");
				String fax = request.getParameter("fax");
				
				Client client = new Client(nom, prenom, motDePasse, adresse, telephone, fax, email);		
				clientDao.addClient(client);
				 
				request.setAttribute("succes", client.getNom() + " a été bien ajouté");		
			} catch (Exception e) {
				request.setAttribute("erreur", "Une erreur est survenue. Veuillez verifier que vous avez bien saisi les shamps du formulaire ");	
			} finally {
				request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);
			}
		}
		
		if(request.getServletPath().equals("/ajout_utilisateur")) {	
			try {
				// Restitution des données depuis le formulaire
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String motDePasse = request.getParameter("mdp");
				String email = request.getParameter("email");
				String adresse = request.getParameter("adresse");
				String telephone = request.getParameter("telephone");
				String fax = request.getParameter("fax");
				
				Client client = new Client(nom, prenom, motDePasse, adresse, telephone, fax, email);		
				clientDao.addClient(client);
				
				request.setAttribute("succes", "Identifiez Vous à nouveau");
						
			} catch (Exception e) {
				request.setAttribute("erreur", "Une erreur est survenue. Veuillez verifier que vous avez bien saisi les shamps du formulaire ");	
			} finally {
				request.getRequestDispatcher("WEB-INF/ajoutClient.jsp").forward(request, response);
			}
		}
		
		if(request.getServletPath().equals("/modifier_utilisateur")){
				// Restitution des données depuis le formulaire
				String id = request.getParameter("id");
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String adresse = request.getParameter("adresse");
				String telephone = request.getParameter("tel");
				String fax = request.getParameter("fax");
				String email = request.getParameter("email");
				String motDePasse = request.getParameter("mdp");
				Client clientModifie = new Client(nom, prenom, motDePasse, adresse, telephone, fax, email);
				// on utilise l'id pour modifier le client
				clientModifie.setId_Client(Integer.valueOf(id));
				clientDao.updateClient(clientModifie);
	
				request.setAttribute("succes", "l'utilisateur été bien modifier");
						
				List<Client> clients =  clientDao.ListClient();		
				request.setAttribute("clients", clients);
				request.getRequestDispatcher("WEB-INF/adminClient.jsp").forward(request, response);
		}
		
		
		if(request.getServletPath().equals("/login_utilisateur")){	
				String exceptionContent = "Une erreur est survenue lors de l'authentification";
				try{
					String email = request.getParameter("email");
					String password = request.getParameter("password");
					boolean status = false;
					status=clientDao.existe(email,password);
					// utilisateur existe dans la base
					if(status){
						// crée la session
						session = request.getSession();
						// on met dedans l'utilisateur authentifié maintenant qu'on sait qu'il existe dans notre base de données
						Client utilisateur = clientDao.getClient(email, Encryption.encrypt(password));
						session.setAttribute("session", utilisateur);
						request.setAttribute("succes", "Bienvenue "+ utilisateur.getNom() + "! Vous vous êtes bien authentifié");
						
						// si c'est un admin on le redirige vers l'espace administrateur, sinon vers l'espace utilisateur
						if(utilisateur.getE_mail().equals("aymanebj@gmail.com") && utilisateur.getPassword().equals(Encryption.encrypt("111"))) {
							List<Conteneur> conteneurs =  conteneur.ListConteneur();
							request.setAttribute("conteneurs", conteneurs); 
							
							request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);		
						} else {
							request.getRequestDispatcher("WEB-INF/Acceuil.jsp").forward(request, response);		
						}
					} else {
						exceptionContent = "login / mdp incorrect";
						throw new Exception(exceptionContent);
					}
				}catch (Exception e) {
					request.setAttribute("erreur", exceptionContent);	
					request.getRequestDispatcher("WEB-INF/ajoutClient.jsp").forward(request, response);
				}
			}
		
	
	
	
}
}


