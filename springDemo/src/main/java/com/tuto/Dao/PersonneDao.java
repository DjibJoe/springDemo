package com.tuto.Dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.tuto.entity.Personne;

public class PersonneDao {

		private static SessionFactory factory; 
		
		private Configuration con;
		private SessionFactory sf;

		public PersonneDao() {	
			try {
				con = new Configuration().configure().addAnnotatedClass(Personne.class);
				sf = con.buildSessionFactory();
		      } catch (Throwable ex) { 
		         System.out.println("ERREUR DE L'OBJET SESSION FACTORY" + ex);
		         throw new ExceptionInInitializerError(ex); 
		      }
		}
		public Personne getPersonne(String id) {
			Session session = sf.openSession();
			Transaction tr = null;
			try {
				tr =  session.beginTransaction();
				Personne p = (Personne)session.get(Personne.class,Integer.parseInt(id));
				tr.commit();
				return  p;
			
			} catch (Exception e) {
				System.out.println("ERREUR recuperation de l'id \n"+id);
				e.printStackTrace();
			}
			finally {
				session.close();
			}
			return null;
		}
		
		public void addPersonne(Personne p) {
			
			Session session = sf.openSession();
			Transaction tr =null;
			try {
				tr =  session.beginTransaction();
				session.save(p);
				tr.commit();
			
			} catch (Exception e) {
				System.out.println("ERREUR AJOUT DE L'OBJET\n"+p);
				e.printStackTrace();
			}
			finally {
				session.close();
			}
		}
		
		public List<Personne> getAllPeople() {
			Session session = sf.openSession();
			Transaction tr =null;
			try {
				tr =  session.beginTransaction();
				Query q = session.createQuery("from Personne where genre = 'Male'");
				List<Personne> p = q.list();
				tr.commit();
				return p;
			} catch (Exception e) {
				System.out.println("ERREUR RECCUPERATION");
				e.printStackTrace();
			}
			finally {
				session.close();
			}
			
			
			
			return null;
		}
		
		public void remove (String id) {
			Session session = sf.openSession();
			Transaction tr =null;
			try {
				tr =  session.beginTransaction();
				Personne p =(Personne) session.get(Personne.class, Integer.parseInt(id));				
				session.delete(p);
				tr.commit();
			} catch (Exception e) {
				System.out.println("ERREUR RECCUPERATION");
				e.printStackTrace();
			}
			finally {
				session.close();
			}
		}
		
	 
		public void update(String id,Personne p) {
			 Session session = sf.openSession();
		      Transaction tx = null;
		      
		      try {
		         tx = session.beginTransaction();
		         Personne personne = (Personne)session.get(Personne.class, Integer.parseInt(id)); 
		         personne.setAdrssIp(p.getAdrssIp());
		         personne.setEmail(p.getEmail());
		         personne.setGenre(p.getGenre());
		         personne.setNom(p.getNom());
		         personne.setPrenom(p.getPrenom());
				 session.update(personne); 
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
		}
	}

	
