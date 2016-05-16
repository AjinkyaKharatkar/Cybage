package cyb.traing.watch;

public abstract class Hand {
	
	private byte count;

	public byte getCount() {
		return count;
	}

	public void setCount(byte count) {
		this.count = count;
	}
	
	public byte incr_count()
	{
		return count++;
	}

}
