CREATE TABLE projects (funder VARCHAR(10), funding INT, p_title VARCHAR(30), p_id VARCHAR(10)PRIMARY KEY); 
CREATE TABLE work_on (s_id VARCHAR(4), stop_date INT, p_id VARCHAR(10), start_date INT, PRIMARY KEY (s_id, p_id), FOREIGN KEY (s_id) REFERENCES staff (s_id), FOREIGN KEY (p_id) REFERENCES projects (p_id)); 
CREATE TABLE department (d_title VARCHAR(10), d_id VARCHAR(5)PRIMARY KEY, location VARCHAR(15)); 
CREATE TABLE courses (code VARCHAR(4), c_title VARCHAR(30), year VARCHAR(4), d_id VARCHAR(5), c_id VARCHAR(3)PRIMARY KEY, FOREIGN KEY (d_id) REFERENCES department (d_id)); 
CREATE TABLE give_course (s_id VARCHAR(4), c_id VARCHAR(3), PRIMARY KEY (s_id, c_id), FOREIGN KEY (s_id) REFERENCES staff (s_id), FOREIGN KEY (c_id) REFERENCES courses (c_id)); 
CREATE TABLE staff (s_id VARCHAR(4)PRIMARY KEY, pos VARCHAR(15), initials VARCHAR (4), d_id VARCHAR(5), qual VARCHAR(5), s_name VARCHAR(15), FOREIGN KEY (d_id) REFERENCES department (d_id)); 

INSERT INTO courses (code, c_title, year, d_id, c_id) VALUES ("361", "Multimedia Systems", "3rd", "COMP", "MM"); 
INSERT INTO courses (code, c_title, year, d_id, c_id) VALUES ("112c", "Introduction to Operating Systems", "1st", "COMP", "IOS"); 
INSERT INTO courses (code, c_title, year, d_id, c_id) VALUES ("242", "Databases", "2nd", "COMP", "DB"); 
INSERT INTO courses (code, c_title, year, d_id, c_id) VALUES ("111a", "Programming in Assembler", "1st", "COMP", "PA"); 
INSERT INTO courses (code, c_title, year, d_id, c_id) VALUES ("110", "Basic Nextology", "1st", "NEXT", "BN"); 

INSERT INTO give_course (s_id, c_id) VALUES ("JF", "MM"); 
INSERT INTO give_course (s_id, c_id) VALUES ("ND", "MM"); 
INSERT INTO give_course (s_id, c_id) VALUES ("GSB", "IOS"); 
INSERT INTO give_course (s_id, c_id) VALUES ("JAM", "DB"); 
INSERT INTO give_course (s_id, c_id) VALUES ("JAM", "PA"); 
INSERT INTO give_course (s_id, c_id) VALUES ("BB", "BN"); 

INSERT INTO projects (funder, funding, p_title, p_id) VALUES ("ESPRIT", "100000", "COMIC", "COMIC"); 
INSERT INTO projects (funder, funding, p_title, p_id) VALUES ("SERC", "23400", "OSCAR", "OSCAR"); 
INSERT INTO projects (funder, funding, p_title, p_id) VALUES ("SERC", "34100", "Guide", "GUIDE"); 
INSERT INTO projects (funder, funding, p_title, p_id) VALUES ("SERC", "19782", "Multimedia and CSCW", "MCSCW"); 
INSERT INTO projects (funder, funding, p_title, p_id) VALUES ("NERC", "51200", "Advanced Nextology", "AN"); 

INSERT INTO work_on (s_id, stop_date, p_id, start_date) VALUES ("JAM", "1998", "COMIC", "1994"); 
INSERT INTO work_on (s_id, stop_date, p_id, start_date) VALUES ("JAM", "1991", "OSCAR", "1989"); 
INSERT INTO work_on (s_id, stop_date, p_id, start_date) VALUES ("ND", "1999", "GUIDE", "1997"); 
INSERT INTO work_on (s_id, stop_date, p_id, start_date) VALUES ("JF", "1999", "GUIDE", "1998"); 
INSERT INTO work_on (s_id, stop_date, p_id, start_date) VALUES ("GSB", "1994", "MCSCW", "1990"); 
INSERT INTO work_on (s_id, stop_date, p_id, start_date) VALUES ("BB", "1989", "AN", "1985"); 

INSERT INTO staff (s_id, pos, initials, d_id, qual, s_name) VALUES ("JF", "Lecturer", "J. ", "COMP", "PhD", "Finney"); 
INSERT INTO staff (s_id, pos, initials, d_id, qual, s_name) VALUES ("JAM", "Senior Lecturer", "J.A. ", "COMP", "PhD", "Mariani"); 
INSERT INTO staff (s_id, pos, initials, d_id, qual, s_name) VALUES ("GSB", "Senior Lecturer", "G.S. ", "COMP", "PhD", "Blair"); 
INSERT INTO staff (s_id, pos, initials, d_id, qual, s_name) VALUES ("ND", "Professor", "N. ", "COMP", "PhD", "Davies"); 
INSERT INTO staff (s_id, pos, initials, d_id, qual, s_name) VALUES ("BB", "Professor", "B. ", "NEXT", "BA", "Bear"); 

INSERT INTO department (d_title, d_id, location) VALUES ("Computing", "COMP", "SECAMS Building"); 
INSERT INTO department (d_title, d_id, location) VALUES ("Nextology", "NEXT", "Nexto Building"); 

