package cyb.traing.watch;

public class Minute extends Hand implements Runnable{
	
	private Seconds s;
	private Thread t;
	
	public Minute(Seconds s) {
		
		super.setCount((byte)0);
		this.s = s;
		t= new Thread(s);
	}
	

	@Override
	public void run() {
		
		t.start();
		
		while(true)
		{
			if(s.getCount()>=60)
			{
				this.incr_count();
				s.setCount((byte)0);
			}
		}
		
	}

}
