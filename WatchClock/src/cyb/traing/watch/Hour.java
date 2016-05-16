package cyb.traing.watch;

public class Hour extends Hand implements Runnable{

	
	private Minute m;
	private Thread t;
	


	public Hour(Minute m2) {
		
		super.setCount((byte)0);
		this.m = m2;
		t = new Thread(m);
		
	}

	
	
	@Override
	public void run() {
		
		t.start();
		while(true)
		{
			if(m.getCount()>=60)
			{
				this.incr_count();
				m.setCount((byte)0);
			}
		}
		
	}

}
