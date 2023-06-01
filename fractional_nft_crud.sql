CREATE TABLE IONI.ORGANIZATIONS  (
       organization_id int,
       organization varchar,
       organization_location_id int,
       created_at timestamp,
       updated_at timestamp,
       PRIMARY KEY ( organization_id )
    ) 
    WITH "public_key=<public_key>, access_type=permissioned"
	
CREATE TABLE IONI.CLAIM_AUDIT_LOGS  (
       audit_id int,
       claim_id int,
       audit_date timestamp,
       audited_gold_amount float,
       created_at timestamp,
       updated_at timestamp,
       auditor_id int,
       nft_contract_address varchar,
       audited boolean,
       chain_id int,
       PRIMARY KEY ( audit_id )
    ) 
    WITH "public_key=<public_key>, access_type=permissioned"

CREATE TABLE IONI.IONI_PARTICIPANTS  (
       id int,
       wallet varchar,
       first_name varchar,
       last_name varchar,
       created_at timestamp,
       updated_at timestamp,
       organization_id int,
       email varchar,
       phone varchar,
       role varchar,
       PRIMARY KEY ( id )
    ) 
    WITH "public_key=<public_key>, access_type=permissioned"

CREATE TABLE IONI.IONI_VAULT  (
       transaction_hash varchar,
       vault_contract_address varchar,
       nft_contract_address varchar,
       token_contract_address varchar,
       token_id int,
       wallet_address varchar,
       amount int,
       created_at timestamp,
       updated_at timestamp,
       PRIMARY KEY ( transaction_hash )
    ) 
    WITH "public_key=<public_key>, access_type=permissioned"

CREATE TABLE INSTRUXI.IONI_AUDIT  (
      claim_id int,
      buyer_first_name varchar(256),
      buyer_last_name varchar(256),
      buyer_public_key varchar(256),
      auditor_first_name varchar(256),
      auditor_last_name varchar(256),
      auditor_public_key varchar(256),
      audited_gold_amount float,
      erc721_nft_transaction_hash varchar(256),
      erc721_nft_contract_address varchar(256),
      nft_token_uri varchar(256),
      erc20_value int,
      erc20_token_contract_address varchar(256),
      vault_transaction_hash varchar(256),
      vault_contract_address varchar(256),
      audited boolean,
      PRIMARY KEY ( claim_id )
    ) 
    WITH "public_key=<public_key>, access_type=public_read"