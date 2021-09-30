CREATE TABLE User(
	id int AUTO_INCREMENT not null,
    firstname varchar(100) not null,
    lastname varchar(100) not null,
    username varchar(20) unique not null,
    encryptPassword  char(32) not null,
    email varchar(100) unique not null,
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isActive boolean default true,
    isDeleted boolean default false,
    isAdmin boolean default false,
	PRIMARY KEY (id)
);

CREATE TABLE StatusList(
	id int AUTO_INCREMENT not null,
    title varchar(50) not null,
    details varchar(300),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isDeleted boolean default false,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id)
);

CREATE TABLE StatusItem (
	id int AUTO_INCREMENT not null,
    title varchar(30) not null,
    colorHex char(7),
    details varchar(150),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    idStatusList int not null,
    isActive boolean default true,
    isDeleted boolean default false,
    PRIMARY KEY (id),
	FOREIGN KEY(idStatusList) REFERENCES StatusList(id)
);

CREATE TABLE Board (
	id int AUTO_INCREMENT not null,
    title varchar(50) not null,
    details varchar(300),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isDeleted boolean default false,
    idStatusList int not null,
    idStatusItem int not null,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id),
	FOREIGN KEY(idStatusItem) REFERENCES StatusList(id),
	FOREIGN KEY(idStatusList) REFERENCES StatusItem(id)
);

CREATE TABLE Stage(
	id int AUTO_INCREMENT not null,
    title varchar(50) not null,
    setTaskStatus boolean default false,
    isDeleted boolean default false,
    idBoard int not null,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id),
	FOREIGN KEY(idBoard) REFERENCES Board(id)
);

CREATE TABLE Task (
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
    isDeleted boolean default false,
    hasEnd boolean default false,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id),
	FOREIGN KEY(idBoard) REFERENCES Board(id),
	FOREIGN KEY(idStatusItem) REFERENCES StatusList(id),
	FOREIGN KEY(idStatusList) REFERENCES StatusItem(id)
);

CREATE TABLE Tag(
	id int AUTO_INCREMENT not null,
    title varchar(30) not null,
    colorHex char(7),
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isActive boolean default true,
    isDeleted boolean default false,
    idUser  int not null,
	PRIMARY KEY (id),
	FOREIGN KEY(idUser) REFERENCES User(id)
);

CREATE TABLE Task_Tag (
	id int AUTO_INCREMENT not null,
    idTask int not null ,
    idTag int not null,
    creationDate  datetime default now(),
    modificationDate datetime default now(),
    isActive boolean default true,
    isDeleted boolean default false,
    PRIMARY KEY (id),
    FOREIGN KEY(idTask) REFERENCES Task(id),
    FOREIGN KEY(idTag) REFERENCES Tag(id)
);
