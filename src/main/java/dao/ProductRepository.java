package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList<Product>listOfProducts=new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance() {
    	return instance;
    }
    public ProductRepository(){
        
        Product product1 =new Product("P001",1);
        product1.setPrice(15000);
        product1.setName("GitHub");
        product1.setDescription("What if I suddenly want to turn back time to 2 days ago while making a code?<br>" + 
        		"Want to collaborate with a team member without code conflicts?<br>" + 
        		"You can use git, a software that helps you control the version.<br>" + 
        		"And if you don't know git, you can't get a job<br>" + 
        		"I used the new grammar of git restore and switch, which is easier than before when I was struggling with git checkout<br>"+
        		"Let's learn git using VSCode editor instead of old vim and terminal.");
		product1.setFile("git.jpg");

        
        listOfProducts.add(product1);
        
        Product product2 =new Product("P002",2);
        product2.setPrice(12000);
        product2.setName("Python");
        product2.setDescription("After graduating from grammar, make something fun, whether it's data analysis, crawler, or machine learning<br>"
        		
        		+ "I prepared a Python basic grammar class that you learn faster than anyone else. <br>"
        		
        		+ "We will quickly organize the basic Python grammar content for hobby developers in 30 minutes.<br>"
        		
        		+ "Feature 1:<br>"
        		
        		+ "This lecture is not just an unfriendly lecture that lists grammar.<br>"
        		
        		+ "I will tell you when to use the grammar you learned, and how to code it.<br>"
        		
        		+ "If you want to be a good code maker, let's listen to it.<br>"
        		
        		+ " <br>"
        		
        		+ "Feature 2: <br>"
        		
        		+ "The target students are those who are completely new to coding<br>"
        		
        		+ "This is a short lecture that aims to introduce Python programming to you. <br>"
        		
        		+ "The useless and peripheral content in Python books was removed because I fell asleep listening to listen <br>"
        		
        		+ "You can quickly learn only the basic core contents required for practical programming.");//설명
		product2.setFile("python.jpg");

        
        listOfProducts.add(product2);
        
        Product product3 =new Product("P003",3);
        product3.setPrice(78000);
        product3.setName("JavaScript");
        product3.setDescription("It is a JavaScript basic class where you learn by creating several real web UI.<br>"
        		
        		+ "It's not fun to teach while just listing the grammar, so it's obvious that I'll turn off the lecture and go watch YouTube<br>"
        		
        		+ "Let's have fun with the practical example-oriented class.<br>"
        		
        		+ " <br>"
        		
        		+ "I often ask about the differences from other lectures, so if I write it down <br>"
        		
        		+ "General front-end lectures only teach coding skills.<br>"
        		
        		+ "\"I'll make a great portfolio quickly, so get a job at a web agency that receives 180 won a month and contribute to the 80% employment rate statistics.\" What's the disadvantage. <br>"
        		
        		+ "When I ask them to make a new one, they ask, \"Should I use function grammar here?\"<br>"
        		
        		+ "It's just a coding footer who can't apply it at all. <br>"
        		
        		+ " <br>"
        		
        		+ "I read a lot of JavaScript books and listen to lectures, but the first feature I see is that I can't make a single line of code <br>"
        		
        		+ "Because I didn't know when and where to use grammar, and I just followed the grammar.<br>"
        		
        		+ "So, coding Apple focuses on the principle of implementing technology alone.<br>"
        		
        		+ "Learn grammar and the principles of web behavior here and become a real developer who can create this and that on his own.");//설명
		product3.setFile("js.jpg");

        
        listOfProducts.add(product3);
        
        Product product4 =new Product("P004",4);
        product4.setPrice(75000);
        product4.setName("Node");
        product4.setDescription("With coding Apple, which is the easiest way to explain programming in the world, web service production is also quick.k.a. a web service. <br>"
        		
        		+ "A new Node.js lecture has been created to learn by making a bulletin board!<br>"
        		
        		+ "Together, anyone can understand the server and even deploy the web service in two hours. <br>"
        		
        		+ "It's a kind lecture that even those who don't have background knowledge about existing servers can easily understand. <br>"
        		
        		+ " <br>"
        		
        		+ "1. Front-end developers and publishers who suffered from a lack of knowledge of web servers,<br>"
        		
        		+ "2. For those who want to create a quick web service prototype with easy grammar and flexible DB design,<br>"
        		
        		+ "3. For those who want to open their own site or blog, <br>"
        		
        		+ "4. Those who want to develop a full stack of servers and DBs with just JavaScript<br>"
        		
        		+ "5. I recommend it to those who didn't understand what I was saying even if I followed the Node.js tutorial while searching Google.");//설명
		product4.setFile("nodejs.jpg");

        
        listOfProducts.add(product4);
        
        Product product5 =new Product("P005",5);
        product5.setPrice(75000);
        product5.setName("Next");
        product5.setDescription("Next.js is a React-based framework that can be created from the front end to the server.<br>"
        		
        		+ "Full stack web development is possible with just this. <br>"
        		
        		+ " <br>"
        		
        		+ "Server-side rendering is easy when using Next.js <br>"
        		
        		+ "You can create search engine-friendly sites with faster loading time than sites created using only React and Vue.<br>"
        		
        		+ "It is also easy to create server functions and member authentication functions. <br>"
        		
        		+ "Server-side rendering is becoming more popular and requires a lot of back-end capabilities, so wouldn't it be reliable to take a bite of Next.js <br>"
        		
        		+ " <br>"
        		
        		+ "We are going to learn basic grammar and server functions by making two projects  <br>"
        		
        		+ "If you just follow the chords without thinking, you won't be able to use it at all<br>"
        		
        		+ "I will teach you how to code with Next.js on your own. <br>"
        		
        		+ "Everyone thinks it's going to be bad if we don't use the new version, so we'll proceed with Next.js version 13.");//설명
		product5.setFile("next.jpg");
        
        listOfProducts.add(product5);
        
        Product product6 =new Product("P006" ,6);
        product6.setPrice(82000);
        product6.setName("Flutter");
        product6.setDescription("The Flutter library allows you to create iOS and Android apps with a single codebase. <br>"
        		
        		+ "- You can expect native performance and feel faster than React Native<br>"
        		
        		+ "- It's easy to put in a custom design <br>"
        		
        		+ "- Google keeps pushing for it and updating it <br>"
        		
        		+ "If you need to develop a new app these days and you don't have enough time and resources, Flutter is an excellent choice. <br>"
        		
        		+ " <br>"
        		
        		+ "Stadia, BMW, and Google are already using platters. <br>"
        		
        		+ "Let's make real production-level apps, too.<br>"
        		
        		+ "If you learn the teacher's code, that's all you can make<br>"
        		
        		+ "This is a lecture that teaches you how to use Flutter and how to use grammar so that you can code by yourself.");//설명
		product6.setFile("flutter.jpg");

        
        listOfProducts.add(product6);
        
        Product product7 =new Product("P007" ,7);
        product7.setPrice(80000);
        product7.setName("Vue");
        product7.setDescription("If you don't know what Vue is talking about in official documents or books, and if you don't think React is right for me, please start with this. <br>"
        		
        		+ "This is a project-type Vue.js lecture where you learn by creating a single page application similar to Instagram.<br>"
        		
        		+ "From creating projects using the Vue CLI to compiling and publishing PWA, you can learn most of Vue's techniques used in actual production. <br>"
        		
        		+ " <br>"
        		
        		+ "Vue is a library that provides the same functionality as React. Only the grammar is slightly different. <br>"
        		
        		+ "Do you know why I sometimes use Vue instead of React when I make new services on Naver and Kakao Talk.<br>"
        		
        		+ "1. Grammar is easy 2. Coding patterns are set, so it's easy to be a beginner and easy to collaborate 3. It's light and fast  <br>"
        		
        		+ "React... Everything is possible if you do well with good at JavaScript <br>"
        		
        		+ "Even if Vue is not good at JavaScript, if you memorize about 10 new Vue grammar, anyone who is a developer can easily make a great web app.<br>"
        		
        		+ "Let's make an Instagram that's good to brag about somewhere other than todoapp that everyone else does.");//설명
		product7.setFile("vue.jpg");

        
        listOfProducts.add(product7);
       
        
    }
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
    

    
    public Product getProductById(String productId) {
    	
    	Product productById = null;
    	
    	for(int i=0; i < listOfProducts.size(); i++) {
    		
    		Product product = listOfProducts.get(i);
    		if(product != null && product.getId() != null && product.getId().contentEquals(productId)) {
    			productById = product;
    			break;
    		}
    		
    	}
    	
    	
    	return productById;
    }
    
    
    public void addProduct(Product product) {
        listOfProducts.add(product);
    }
    
    public Product getId(String id) {
    	
    	Product Id = null;
    	
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getId() != null && product.getId().equals(id)) {
				Id = product;
				break;
			}
		}
		return Id;
    	
    	
    }
    	
    	
    }
    
    
