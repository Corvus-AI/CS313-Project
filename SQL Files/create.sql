CREATE TABLE admin (
	admin_id VARCHAR(5) PRIMARY KEY,
	password VARCHAR(50) NOT NULL
);

CREATE TABLE voter (
    voter_id varchar(5) PRIMARY KEY,
    vname varchar(55) NOT NULL,
    password varchar(55) NOT NULL,
    email varchar(55) NOT NULL
);

CREATE TABLE survey (
    survey_id varchar(5) PRIMARY KEY,
    sname varchar(55) NOT NULL,
    description varchar(100) NOT NULL 
);

CREATE TABLE data (
    v_name VARCHAR(5) ,
    s_name VARCHAR(5) ,
    option INT ,
    PRIMARY KEY (v_name , s_name)
);