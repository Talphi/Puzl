-- Migration: add stripe_customer_id to profiles
-- Run in Supabase SQL Editor

alter table profiles
  add column if not exists stripe_customer_id text unique;
