package eventWebsite;

public class event {
	private String name;
	private String date;
	private String price;
	private String image;
	
	
	
	
	public event(String name, String date, String price, String image) {
		this.name = name;
		this.date = date;
		this.price = price;
		this.image = image;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
    
	@Override
	public String toString() {
		return "event [name=" + name + ", date=" + date + ", price=" + price + ", image=" + image + "]";
	}

	
	
	
}
