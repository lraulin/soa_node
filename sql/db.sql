BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "tbl_email" (
	"email_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"sent_at"	INTEGER,
	"sent_at_local"	TEXT,
	"email_body"	TEXT
);
CREATE TABLE IF NOT EXISTS "tbl_report" (
	"report_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"created_at"	INTEGER,
	"body"	TEXT,
	"json"	TEXT
);
CREATE TABLE IF NOT EXISTS "tbl_record" (
	"record_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"run_id"	INTEGER,
	"domain_id"	INT,
	"record_values"	TEXT,
	"raw"	TEXT,
	FOREIGN KEY("run_id") REFERENCES "tbl_run_datetime"("run_id"),
	FOREIGN KEY("domain_id") REFERENCES "tbl_domain"("domain_id")
);
CREATE TABLE IF NOT EXISTS "tbl_run_datetime" (
	"run_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"run_datetime"	INT
);
CREATE TABLE IF NOT EXISTS "tbl_domain" (
	"domain_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"domain_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "tbl_type" (
	"type_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"type_name"	TEXT
);
COMMIT;