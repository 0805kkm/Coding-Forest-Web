package dto;
 
public class Product implements java.io.Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
    private String id;
    private int price;
    private int num;
    private String name;
    private String description;
    private String file;
    private int student;

    

    
    public Product() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	public Product(String id,int num) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public int getstudent() {
		return student;
	}
	
	public void setstudent(int student) {
		this.student = student;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	

    
	
    
 

    
    
}