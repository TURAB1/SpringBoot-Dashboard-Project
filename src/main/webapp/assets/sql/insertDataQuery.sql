create database dashboard;
use dashboard;

select * from client;

INSERT INTO client (name, email, address, nationality, degree)
VALUES 
    ('chris John', 'chris@example.com', '111 Avenue,kigali,Rwanda', 'Rwandan', 'Bachelor of Engineering'),
    ('kenny Doe', 'kenny@example.com', '123 Main St, New York, USA', 'American', 'Bachelor of Science'),
    ('Jane Smith', 'jane@example.com', '456 street, London, UK', 'British', 'Master of Arts'),
    ('Robert Johnson', 'robert@example.com', '789 avenue, Toronto, Canada', 'Canadian', 'PhD in Physics'),
    ('Maria Garcia', 'maria@example.com', '321 street, Madrid, Spain', 'Spanish', 'Bachelor of Engineering'),
    ('Hongil Dong', 'hongil@example.com', ' 12 shillim,Seoul, Korea', 'Korean', 'MBA');
    
 alter table client

 
 select * from comment
 
 ALTER TABLE comment
DROP FOREIGN KEY FKkh7b1ibqumr31jlf124of15vy;

ALTER TABLE comment
ADD CONSTRAINT FK_comment_client
FOREIGN KEY (client_id) REFERENCES client(id)
ON DELETE CASCADE;
    