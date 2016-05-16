package cyb.traing.watch;

public class MainWatch extends Thread{
	
	public static void main(String[] args) {
		
		MainWatch m = new MainWatch();
		
		m.start();
	}
	
	@Override
	public void run() {
		
		Seconds s = new Seconds();
		Minute m = new Minute(s);
		Hour h = new Hour(m);
		
		Thread t1 = new Thread(h);
		
		t1.start();
		
		System.out.println(h.getCount() + ":" + m.getCount() + ":" + s.getCount());
		
		
		
		
	}

}
