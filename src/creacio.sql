DROP TABLE articles;
DROP TABLE revistes;
DROP TABLE autors;

CREATE TABLE autors ( id_autor NUMERIC(4,0) PRIMARY KEY,
		nom VARCHAR(20) NOT NULL,
		any_naixement NUMERIC(4,0) NOT NULL,
		nacionalitat VARCHAR(20) NOT NULL,
		actiu VARCHAR(1) NOT NULL
);

CREATE TABLE revistes (id_revista NUMERIC(4,0) PRIMARY KEY,
		titol VARCHAR(20) NOT NULL,
		data_publicacio DATE NOT NULL
);

CREATE TABLE articles (id_article NUMERIC(4,0) PRIMARY KEY,
		id_autor NUMERIC(4,0) NOT NULL,
		titol VARCHAR(40) NOT NULL,
		data_creacio DATE NOT NULL,
		publicable VARCHAR(1) NOT NULL,
		id_revista NUMERIC(4,0) DEFAULT NULL
);

ALTER TABLE articles ADD CONSTRAINT articles_autors_fkey 		
	FOREIGN KEY (id_autor) REFERENCES autors(id_autor);
ALTER TABLE articles ADD CONSTRAINT articles_revistes_fkey 		
	FOREIGN KEY (id_revista) REFERENCES revistes(id_revista);
