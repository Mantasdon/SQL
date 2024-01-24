





CREATE TABLE mado8357.Zaidejas (
    Kodas         CHAR(13)     NOT NULL,
    Vardas        VARCHAR(32)  NOT NULL,
    Pavarde       CHAR(12)     NOT NULL,
    Tautybe       CHAR(12)     NOT NULL,
    Taskai        INT(12)      DEFAULT 1 CONSTRAINT TaskuDyis CHECK(Taskai > 0 AND Taskai < 10000  OR (Verte IS NULL)),
    
    PRIMARY KEY (Kodas)
);

CREATE TABLE mado8357.Remejas(
    ID            CHAR(13)    NOT NULL,
    Salis         CHAR(12)    NOT NULL,
    Biudzetas     int(20)     Default 100000,
    Pavadinimas   VARCHAR(12) NOT NULL,
    PRIMARY KEY (ID),
);


CREATE TABLE mado8357.Turnyrai(
    NR        CHAR(13)    NOT NULL,
    DATA      DATE        NOT NULL,
    Lygis     int(20)     NOT NULL,
    Vieta     VARCHAR(12) NOT NULL CONSTRAINT VietosApribojimas CHECK (Vieta != "Rusija"),
    PRIMARY KEY (NR),
);

CREATE TABLE mado8357.Steigia(
    Prizinis_fondas        INT         NOT NULL CONSTRAINT MinimalusFondas CHECK (Prizinis_fondas > 1000),
    Remejai                CHAR(13)    NOT NULL,
    Turnyrai               CHAR(13)    NOT NULL,
    PRIMARY KEY (Remejai, Turnyrai),
    FOREIGN KEY (Remejai) REFERENCES mado8357.Remejas       ON DELETE CASCADE,
    FOREIGN KEY (Turnyrai) REFERENCES mado8357.Turnyras ON DELETE CASCADE
);

CREATE TABLE mado8357.Dalyvauja(
    Zaidejai     CHAR(13)     NOT NULL,
    Turnyras     DATE         NOT NULL,
    PRIMARY KEY (Zaidejai, Turnyras),
    FOREIGN KEY (Zaidejai) REFERENCES mado8357.Zaidejas       ON DELETE CASCADE,
    FOREIGN KEY (Turnyras) REFERENCES mado8357.Turnyrai ON DELETE CASCADE
);


























