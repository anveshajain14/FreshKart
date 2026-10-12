-- Databricks notebook source
create catalog if not exists fk_1361;
use catalog fk_1361;

create schema if not exists landing
comment "landing zone";
create schema if not exists bronze
comment "Ingestion";
create schema if not exists silver
comment "cleaning and transformations";
create schema if not exists gold
comment "business KPIs";
create schema if not exists ops;

create volume if not exists landing.raw;
create volume if not exists ops.pipeline_state;



-- COMMAND ----------

