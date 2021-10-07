CREATE TABLE IF NOT EXISTS User(
	id int AUTO_INCREMENT not null,
    firstname varchar(100) not null,
    lastname varchar(100) not null,
    username varchar(20) unique not null,
    encryptPassword  char(32) not null,
    email varchar(100) unique not null,
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isActive boolean default true,
    deleteDate datetime default null,
    isAdmin boolean default false,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS StatusList(
	id int AUTO_INCREMENT not null,
    title varchar(50) not null,
    details varchar(300),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    deleteDate datetime default null,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id)
);

CREATE TABLE IF NOT EXISTS StatusItem (
	id int AUTO_INCREMENT not null,
    title varchar(30) not null,
    colorHex char(7),
    details varchar(150),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    idStatusList int not null,
    isActive boolean default true,
    deleteDate datetime default null,
    PRIMARY KEY (id),
	FOREIGN KEY(idStatusList) REFERENCES StatusList(id)
);

CREATE TABLE IF NOT EXISTS Board (
	id int AUTO_INCREMENT not null,
    title varchar(50) not null,
    details varchar(300),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    deleteDate datetime default null,
    idStatusList int not null,
    idStatusItem int not null,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id),
	FOREIGN KEY(idStatusItem) REFERENCES StatusList(id),
	FOREIGN KEY(idStatusList) REFERENCES StatusItem(id)
);

CREATE TABLE IF NOT EXISTS Stage(
	id int AUTO_INCREMENT not null,
    title varchar(50) not null,
    setTaskStatus boolean default false,
    deleteDate datetime default null,
    idBoard int not null,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id),
	FOREIGN KEY(idBoard) REFERENCES Board(id)
);

CREATE TABLE IF NOT EXISTS Task (
	id int AUTO_INCREMENT not null,
    title varchar(30) not null,
    details  varchar(300),
    startDate datetime default now(),
    endDate datetime,
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    colorHex char(7),
    idBoard int not null,
    idStage int not null,
    idStatusList int not null,
    idStatusItem int not null,
    idUser  int not null,
    isActive boolean default true,
    deleteDate datetime default null,
    hasEnd boolean default false,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id),
	FOREIGN KEY(idBoard) REFERENCES Board(id),
	FOREIGN KEY(idStatusItem) REFERENCES StatusList(id),
	FOREIGN KEY(idStatusList) REFERENCES StatusItem(id)
);

CREATE TABLE IF NOT EXISTS Tag(
	id int AUTO_INCREMENT not null,
    title varchar(30) not null,
    colorHex char(7),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isActive boolean default true,
    deleteDate datetime default null,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id)
);

CREATE TABLE IF NOT EXISTS Task_Tag (
	id int AUTO_INCREMENT not null,
    idTask int not null ,
    idTag int not null,
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isActive boolean default true,
    deleteDate datetime default null,
    PRIMARY KEY (id),
    FOREIGN KEY(idTask) REFERENCES Task(id),
    FOREIGN KEY(idTag) REFERENCES Tag(id)
);
