package cyb.traing.watch;

public class Seconds extends Hand implements Runnable{

	
	public Seconds() {
		
		super.setCount((byte)0);
	}
	
	@Override
	public void run() {
		
		
		while(true)
		{
		try {
			this.incr_count();
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			
		}
		}
		
	}

}
