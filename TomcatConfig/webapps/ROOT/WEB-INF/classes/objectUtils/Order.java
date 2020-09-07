package objectUtils;
import java.util.*;

public class Order {
	protected List<Product> list;
	protected Double total;
	protected String receiver;
	protected String date;
	
	
	public Double getTotal() {
		return total;
	}

	public Order() {
		super();
	}
	
	public Order(Double total, String receiver, String date) {
		super();
		this.list = new ArrayList<Product>();
		this.total = total;
		this.receiver = receiver;
		this.date = date;
	}

	public void setTotal(Double total) {
		this.total = total;
	}
	
	protected String getReceiver() {
		return receiver;
	}
	protected void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	protected String getDate() {
		return date;
	}
	protected void setDate(String date) {
		this.date = date;
	}
	
}
