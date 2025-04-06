-- bank_account.accepted_document definition

-- Drop table

-- DROP TABLE bank_account.accepted_document;

CREATE TABLE bank_account.accepted_document (
	id varchar(36) NOT NULL,
	"name" varchar(100) NOT NULL,
	description text NULL,
	code varchar(50) NOT NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT accepted_document_code_key UNIQUE (code),
	CONSTRAINT accepted_document_pkey PRIMARY KEY (id)
);


-- bank_account.bank definition

-- Drop table

-- DROP TABLE bank_account.bank;

CREATE TABLE bank_account.bank (
	id varchar(36) NOT NULL,
	"name" varchar(100) NOT NULL,
	code varchar(20) NOT NULL,
	established_date date NULL,
	active bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT bank_code_key UNIQUE (code),
	CONSTRAINT bank_pkey PRIMARY KEY (id)
);


-- bank_account.customer definition

-- Drop table

-- DROP TABLE bank_account.customer;

CREATE TABLE bank_account.customer (
	id varchar(36) NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	phone_number varchar(20) NOT NULL,
	date_of_birth date NOT NULL,
	ssn varchar(20) NOT NULL,
	address varchar(255) NOT NULL,
	city varchar(50) NOT NULL,
	state varchar(50) NOT NULL,
	zip_code varchar(20) NOT NULL,
	country varchar(50) NOT NULL,
	active bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT customer_email_key UNIQUE (email),
	CONSTRAINT customer_pkey PRIMARY KEY (id),
	CONSTRAINT customer_ssn_key UNIQUE (ssn)
);
CREATE INDEX idx_customer_email ON bank_account.customer USING btree (email);
CREATE INDEX idx_customer_ssn ON bank_account.customer USING btree (ssn);


-- bank_account.document_type definition

-- Drop table

-- DROP TABLE bank_account.document_type;

CREATE TABLE bank_account.document_type (
	id varchar(36) NOT NULL,
	"name" varchar(100) NOT NULL,
	description text NULL,
	code varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT document_type_code_key UNIQUE (code),
	CONSTRAINT document_type_pkey PRIMARY KEY (id)
);


-- bank_account.requirement definition

-- Drop table

-- DROP TABLE bank_account.requirement;

CREATE TABLE bank_account.requirement (
	id varchar(36) NOT NULL,
	"name" varchar(100) NOT NULL,
	description text NOT NULL,
	code varchar(50) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	needs_consent bool DEFAULT false NOT NULL,
	consent_text text NULL,
	CONSTRAINT requirement_code_key UNIQUE (code),
	CONSTRAINT requirement_pkey PRIMARY KEY (id)
);


-- bank_account.document_type_accepted_document definition

-- Drop table

-- DROP TABLE bank_account.document_type_accepted_document;

CREATE TABLE bank_account.document_type_accepted_document (
	id varchar(36) NOT NULL,
	document_type_id varchar(36) NOT NULL,
	accepted_document_id varchar(36) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT document_type_accepted_docume_document_type_id_accepted_doc_key UNIQUE (document_type_id, accepted_document_id),
	CONSTRAINT document_type_accepted_document_pkey PRIMARY KEY (id),
	CONSTRAINT document_type_accepted_document_accepted_document_id_fkey FOREIGN KEY (accepted_document_id) REFERENCES bank_account.accepted_document(id),
	CONSTRAINT document_type_accepted_document_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES bank_account.document_type(id)
);
CREATE INDEX idx_dt_ad_accepted_document_id ON bank_account.document_type_accepted_document USING btree (accepted_document_id);
CREATE INDEX idx_dt_ad_document_type_id ON bank_account.document_type_accepted_document USING btree (document_type_id);


-- bank_account.product definition

-- Drop table

-- DROP TABLE bank_account.product;

CREATE TABLE bank_account.product (
	id varchar(36) NOT NULL,
	bank_id varchar(36) NOT NULL,
	"name" varchar(100) NOT NULL,
	code varchar(50) NOT NULL,
	description text NULL,
	parent_id varchar(36) NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT product_bank_id_code_key UNIQUE (bank_id, code),
	CONSTRAINT product_pkey PRIMARY KEY (id),
	CONSTRAINT product_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES bank_account.bank(id),
	CONSTRAINT product_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES bank_account.product(id)
);
CREATE INDEX idx_product_bank_id ON bank_account.product USING btree (bank_id);
CREATE INDEX idx_product_parent_id ON bank_account.product USING btree (parent_id);


-- bank_account.product_document_type definition

-- Drop table

-- DROP TABLE bank_account.product_document_type;

CREATE TABLE bank_account.product_document_type (
	id varchar(36) NOT NULL,
	product_id varchar(36) NOT NULL,
	document_type_id varchar(36) NOT NULL,
	is_mandatory bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT product_document_type_pkey PRIMARY KEY (id),
	CONSTRAINT product_document_type_product_id_document_type_id_key UNIQUE (product_id, document_type_id),
	CONSTRAINT product_document_type_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES bank_account.document_type(id),
	CONSTRAINT product_document_type_product_id_fkey FOREIGN KEY (product_id) REFERENCES bank_account.product(id)
);
CREATE INDEX idx_prod_dt_document_type_id ON bank_account.product_document_type USING btree (document_type_id);
CREATE INDEX idx_prod_dt_product_id ON bank_account.product_document_type USING btree (product_id);


-- bank_account.product_requirement definition

-- Drop table

-- DROP TABLE bank_account.product_requirement;

CREATE TABLE bank_account.product_requirement (
	id varchar(36) NOT NULL,
	product_id varchar(36) NOT NULL,
	requirement_id varchar(36) NOT NULL,
	is_mandatory bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT product_requirement_pkey PRIMARY KEY (id),
	CONSTRAINT product_requirement_product_id_requirement_id_key UNIQUE (product_id, requirement_id),
	CONSTRAINT product_requirement_product_id_fkey FOREIGN KEY (product_id) REFERENCES bank_account.product(id),
	CONSTRAINT product_requirement_requirement_id_fkey FOREIGN KEY (requirement_id) REFERENCES bank_account.requirement(id)
);
CREATE INDEX idx_prod_req_product_id ON bank_account.product_requirement USING btree (product_id);
CREATE INDEX idx_prod_req_requirement_id ON bank_account.product_requirement USING btree (requirement_id);


-- bank_account.requirement_document_type definition

-- Drop table

-- DROP TABLE bank_account.requirement_document_type;

CREATE TABLE bank_account.requirement_document_type (
	id varchar(36) NOT NULL,
	requirement_id varchar(36) NOT NULL,
	document_type_id varchar(36) NOT NULL,
	is_mandatory bool DEFAULT true NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT requirement_document_type_pkey PRIMARY KEY (id),
	CONSTRAINT requirement_document_type_requirement_id_document_type_id_key UNIQUE (requirement_id, document_type_id),
	CONSTRAINT requirement_document_type_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES bank_account.document_type(id),
	CONSTRAINT requirement_document_type_requirement_id_fkey FOREIGN KEY (requirement_id) REFERENCES bank_account.requirement(id)
);
CREATE INDEX idx_req_dt_document_type_id ON bank_account.requirement_document_type USING btree (document_type_id);
CREATE INDEX idx_req_dt_requirement_id ON bank_account.requirement_document_type USING btree (requirement_id);


-- bank_account.application definition

-- Drop table

-- DROP TABLE bank_account.application;

CREATE TABLE bank_account.application (
	id varchar(36) NOT NULL,
	customer_id varchar(36) NOT NULL,
	product_id varchar(36) NOT NULL,
	application_number varchar(50) NOT NULL,
	status varchar(36) NOT NULL,
	submitted_date timestamp NOT NULL,
	reviewed_by varchar(100) NULL,
	reviewed_date timestamp NULL,
	review_comments text NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT application_application_number_key UNIQUE (application_number),
	CONSTRAINT application_pkey PRIMARY KEY (id),
	CONSTRAINT application_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES bank_account.customer(id),
	CONSTRAINT application_product_id_fkey FOREIGN KEY (product_id) REFERENCES bank_account.product(id)
);
CREATE INDEX idx_application_customer_id ON bank_account.application USING btree (customer_id);
CREATE INDEX idx_application_number ON bank_account.application USING btree (application_number);
CREATE INDEX idx_application_product_id ON bank_account.application USING btree (product_id);
CREATE INDEX idx_application_status_id ON bank_account.application USING btree (status);


-- bank_account.application_history definition

-- Drop table

-- DROP TABLE bank_account.application_history;

CREATE TABLE bank_account.application_history (
	id varchar(36) NOT NULL,
	application_id varchar(36) NOT NULL,
	previous_status varchar(36) NULL,
	new_status varchar(36) NOT NULL,
	changed_by varchar(100) NULL,
	changed_date timestamp NOT NULL,
	"comments" text NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp NULL,
	CONSTRAINT application_history_pkey PRIMARY KEY (id),
	CONSTRAINT application_history_application_id_fkey FOREIGN KEY (application_id) REFERENCES bank_account.application(id)
);
CREATE INDEX idx_app_history_application_id ON bank_account.application_history USING btree (application_id);


-- bank_account.application_requirement_consent definition

-- Drop table

-- DROP TABLE bank_account.application_requirement_consent;

CREATE TABLE bank_account.application_requirement_consent (
	id varchar(36) NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	application_id varchar(36) NOT NULL,
	requirement_id varchar(36) NOT NULL,
	consent_given bool DEFAULT false NOT NULL,
	consent_date timestamp NULL,
	ip_address varchar(50) NULL,
	user_agent varchar(500) NULL,
	CONSTRAINT application_requirement_consent_pkey PRIMARY KEY (id),
	CONSTRAINT fk_arc_application FOREIGN KEY (application_id) REFERENCES bank_account.application(id),
	CONSTRAINT fk_arc_requirement FOREIGN KEY (requirement_id) REFERENCES bank_account.requirement(id)
);
CREATE INDEX idx_arc_application_id ON bank_account.application_requirement_consent USING btree (application_id);
CREATE INDEX idx_arc_requirement_id ON bank_account.application_requirement_consent USING btree (requirement_id);


-- bank_account."document" definition

-- Drop table

-- DROP TABLE bank_account."document";

CREATE TABLE bank_account."document" (
	id varchar(36) NOT NULL,
	application_id varchar(36) NOT NULL,
	document_type_id varchar(36) NOT NULL,
	accepted_document_id varchar(36) NOT NULL,
	original_file_name varchar(255) NOT NULL,
	stored_file_name varchar(255) NOT NULL,
	file_path varchar(500) NOT NULL,
	file_size int8 NOT NULL,
	content_type varchar(100) NOT NULL,
	uploaded_date timestamp NOT NULL,
	is_verified bool DEFAULT false NULL,
	verified_by varchar(100) NULL,
	verified_date timestamp NULL,
	verification_comment text NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT document_pkey PRIMARY KEY (id),
	CONSTRAINT document_accepted_document_id_fkey FOREIGN KEY (accepted_document_id) REFERENCES bank_account.accepted_document(id),
	CONSTRAINT document_application_id_fkey FOREIGN KEY (application_id) REFERENCES bank_account.application(id),
	CONSTRAINT document_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES bank_account.document_type(id)
);
CREATE INDEX idx_document_accepted_document_id ON bank_account.document USING btree (accepted_document_id);
CREATE INDEX idx_document_application_id ON bank_account.document USING btree (application_id);
CREATE INDEX idx_document_document_type_id ON bank_account.document USING btree (document_type_id);


-- bank_account.account definition

-- Drop table

-- DROP TABLE bank_account.account;

CREATE TABLE bank_account.account (
	id varchar(36) NOT NULL,
	customer_id varchar(36) NOT NULL,
	product_id varchar(36) NOT NULL,
	application_id varchar(36) NOT NULL,
	account_number varchar(50) NOT NULL,
	status varchar(20) NOT NULL,
	opened_date timestamp NOT NULL,
	closed_date timestamp NULL,
	closure_reason text NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT account_account_number_key UNIQUE (account_number),
	CONSTRAINT account_pkey PRIMARY KEY (id),
	CONSTRAINT account_application_id_fkey FOREIGN KEY (application_id) REFERENCES bank_account.application(id),
	CONSTRAINT account_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES bank_account.customer(id),
	CONSTRAINT account_product_id_fkey FOREIGN KEY (product_id) REFERENCES bank_account.product(id)
);
CREATE INDEX idx_account_application_id ON bank_account.account USING btree (application_id);
CREATE INDEX idx_account_customer_id ON bank_account.account USING btree (customer_id);
CREATE INDEX idx_account_number ON bank_account.account USING btree (account_number);
CREATE INDEX idx_account_product_id ON bank_account.account USING btree (product_id);
