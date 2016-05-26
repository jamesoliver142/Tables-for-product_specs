/*=========================================================================
  Author : James 
  
  Date : 26.05.2016
  
  Purpose : Create the product spec table

  1 - Create the table
  2 - Add comments to columns
  3 - Create sequence for psc_id
  
=========================================================================*/
select to_char(current_date, 'DD/MM/YYYY HH24:MI:SS') run_on, user environment from dual;

-- 1 -- Create the table
create table product_spec
(
	psc_id number primary key,
	psc_name varchar2(50) not null,
	psc_desc varchar2(200),
	psc_collection varchar2(30),
	psc_version_no number,
	psc_notes varchar2(4000),
	psc_status_code char(1),
	psc_created_dt date,
	psc_created_by varchar2(30),
	psc_updated_dt date,
	psc_updated_by varchar2(30)
	helloworld number
);

 -- 2 -- Add comments to columns
 comment on column product_spec.psc_id is 'Primary key';
 comment on column product_spec.psc_name is 'Name of the spec';
 comment on column product_spec.psc_desc is 'Description of the spec';
 comment on column product_spec.psc_version_no is 'Spec version number';
 comment on column product_spec.psc_notes is 'Any notes to be added';
 comment on column product_spec.psc_status_code is 'Whether or not the spec is active or inactive';
 comment on column product_spec.psc_created_dt is 'Date spec was created';
 comment on column product_spec.psc_created_by is 'Who created the spec';
 comment on column product_spec.psc_updated_dt is 'Date the spec was last updated';
 comment on column product_spec.psc_updated_by is 'Who last updated the spec';
 
 -- 3 -- Create sequence for psc_id
create sequence psc_id_seq
start with 100
increment by 1
nocache;
