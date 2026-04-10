-- Rename Over Your Shoulder category to Micromanagement
-- Run in Supabase SQL Editor

update scenarios
  set category = '👀 Micromanagement'
  where pathway = 'overyourshoulder'
  and category = '👀 Over Your Shoulder';
