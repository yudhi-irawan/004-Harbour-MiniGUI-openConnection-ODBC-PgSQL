-- c:\PostgreSQL\17\pgAdmin 4\runtime\pgAdmin4.exe
-- password: odoo

-- create blank database: mcg_db
-- owner: postgres
-- password: odoo (for example)

-- https://www.postgresql.org/ftp/odbc/versions.old/msi/
-- psqlodbc_16_00_0000.zip --> 2025-07-09 success!
-- psqlodbc_16_00_0000-x64.zip --> 2025-07-09 error!!!


CREATE TABLE tblAbsenceType (
    ID               SERIAL PRIMARY KEY,
    AbsenceTypeCode  VARCHAR(4) NOT NULL DEFAULT '0000',
    Description      VARCHAR(60) DEFAULT '',
    Description2     VARCHAR(30) DEFAULT '',
    Remark           VARCHAR(30) DEFAULT '',

    Point            NUMERIC(2,0) NOT NULL DEFAULT 0,
    PaidSalary       NUMERIC(6,2) DEFAULT 0.00,
    PaidLeave        NUMERIC(6,2) DEFAULT 0.00,
    PaidMeal         NUMERIC(6,2) DEFAULT 0.00,
    PaidTransport    NUMERIC(6,2) DEFAULT 0.00,
    PaidIncentive    NUMERIC(6,2) DEFAULT 0.00,

    EntryTimeInYN    SMALLINT NOT NULL DEFAULT 1,
    EntryTimeOutYN   SMALLINT NOT NULL DEFAULT 1,

    UserEdit         VARCHAR(10) DEFAULT '',
    DateTimeEdit     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO tblAbsenceType (AbsenceTypeCode,Description,           Description2,Remark,Point,PaidSalary,PaidLeave,PaidMeal,PaidTransport,EntryTimeInYN,EntryTimeOutYN,UserEdit) VALUES
('A',            'ALPA',                '',	 	    '',    5,    0,         0,        0,       0,            3,          3,           'SAMPLE'),
('CH',           'CUTI HAID',           '',		    '',    0,    100,       0,        0,       0,            3,          3,           'SAMPLE'),
('CM',           'CUTI MELAHIRKAN',     '',		    '',    0,    100,       0,        0,       0,            3,          3,           'SAMPLE'),
('CN',           'CUTI NIKAH',          '',		    '',    0,    100,       0,        0,       0,            3,          3,           'SAMPLE'),
('CT',           'CUTI TAHUNAN',        '',		    '',    0,    100,       0,        0,       0,            3,          3,           'SAMPLE'),
('DL',           'DINAS LUAR',          '',		    '',    0,    100,       0,        100,     100,          3,          3,           'SAMPLE'),
('I',            'IJIN/SAKIT',          '',		    '',    1,    0,         0,        0,       0,            3,          3,           'SAMPLE'),
('IB',           'IJIN/SAKIT (DIBAYAR)','',		    '',    0,    100,       0,        0,       0,            3,          3,           'SAMPLE'),
('N',            'NORMAL',              '',		    '',    0,    100,       0,        100,     100,          3,          3,           'SAMPLE'),
('SC',           'SCORSING',            '',	 	    '',    2,    0,         0,        0,       0,            3,          3,           'SAMPLE'),
('P',            'PULANG',              '',	 	    '',    2,    11,        0,        11,      100,          3,          2,           'SAMPLE'),
('PI',           'PULANG AWAL/I',       '',	 	    '',    1,    11,        0,        11,      100,          3,          2,           'SAMPLE'),
('PB',           'PULANG DIBAYAR',      '',	 	    '',    0,    100,       0,        11,      100,          3,          2,           'SAMPLE'),
('T',            'TERLAMBAT',           '',	 	    '',    2,    11,        0,        11,      100,          2,          3,           'SAMPLE'),
('TB',           'TERLAMBAT (DIBAYAR)', '',	 	    '',    0,    100,       0,        100,     100,          2,          3,           'SAMPLE');

