package cyb.cybnet.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import cyb.cybnet.util.DBUtility;

@WebListener
public class ConnectionInitializer implements ServletContextListener {

  
    public ConnectionInitializer() {
        // TODO Auto-generated constructor stub
    }

	
    public void contextInitialized(ServletContextEvent arg0)  { 
         DBUtility.getConnection();
    }

	
    public void contextDestroyed(ServletContextEvent arg0)  { 
         DBUtility.closeConnection();
    }
	
}
