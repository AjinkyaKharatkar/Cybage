package cyb.cybnet.listeners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class mySessionListener
 *
 */
@WebListener
public class MySessionListener implements HttpSessionListener {
	
	private static int sessionCount=0;
    public MySessionListener() {
     
    }

    public void sessionCreated(HttpSessionEvent arg0)  { 
    	System.out.println("creating session");
         sessionCount++;
    }
	
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
    	System.out.println("deleting session");
        if(sessionCount>0)
        	sessionCount--;
    }
	
    public static int getSessionCount(){
    	return sessionCount;
    }
}
