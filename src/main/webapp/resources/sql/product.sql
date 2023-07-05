    private String id;
    private int price;
    private int num;
    private String name;
    private String description;
    private String file;
    private int student;
    
    CREATE TABLE IF NOT EXISTS product(
	id VARCHAR(10) NOT NULL,
	name VARCHAR(20),
	price  INTEGER,
	description TEXT,
	file  VARCHAR(20),
	student INTEGER default 0,
	PRIMARY KEY (id)
)default CHARSET=utf8;

drop table product;

desc product;

select * from product;

delete from product;

INSERT INTO product VALUES('P001', 'GITHUB', 15000, 'GITHUB', 'git.jpg',0);
INSERT INTO product VALUES('P002', 'PYTHON', 12000, 'PYHTON', 'python.jpg',0);
INSERT INTO product VALUES('P003', 'JAVASCRIPT', 78000, 'JAVASCRIPT', 'js.jpg',0);
INSERT INTO product VALUES('P004', 'NODE', 75000, 'NODE', 'nodejs.jpg',0);
INSERT INTO product VALUES('P005', 'NEXT', 75000, 'NEXT', 'next.jpg',0);
INSERT INTO product VALUES('P006', 'FLUTTER', 82000, 'FLUTTER', 'flutter.jpg',0);
INSERT INTO product VALUES('P007', 'VUE', 800000, 'VUE', 'vue.jpg',0);
INSERT INTO product VALUES('P009', 'GITHUB', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera', 'git.jpg',0);
INSERT INTO product VALUES('P008', 'GITHUB', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera', 'git.jpg',0);

select * from product where id='P001';


delete from product;

delete from product where id='p21312';