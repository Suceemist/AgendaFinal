package ExamenHibernateAna;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
public class AccesoBD {
    private static SessionFactory sessionFactory;
    public static void setUp() throws Exception {
		// A SessionFactory is set up once for an application!
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
				.configure() // configures settings from hibernate.cfg.xml
				.build();
		
			sessionFactory = new MetadataSources( registry ).buildMetadata().buildSessionFactory();
               
                
	}
    public static void insertarContacto(Contacto c){
	Session s=sessionFactory.openSession();
	s.beginTransaction();
	s.save(c);
	s.getTransaction().commit();
    }
          
      public static List<Contacto> listarContactos() {
	//List<Contacto> lista_contactos=new List();
	Session s=sessionFactory.openSession();
        String hql="FROM Contacto";
        Query consulta=s.createQuery(hql);
        List<Contacto> resultados=(List<Contacto>) consulta.list();
       
        return resultados;   
    }

  
    
}
