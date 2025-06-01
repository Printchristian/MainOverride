-- Step 1: Find the forum post that mentioned EmptyStack and dad in April 2048
SELECT * 
FROM forum_posts
WHERE content ILIKE '%emptystack%'
AND content ILIKE '%dad%'
AND date BETWEEN '2048-04-01' AND '2048-04-30';

-- Step 2: Find out who made the post (get their full name)
SELECT * 
FROM forum_accounts
WHERE username = 'smart-money-44';

-- Step 3: Find other forum users with the same last name (likely family)
SELECT * 
FROM forum_accounts
WHERE last_name = 'Steele';

-- Step 4: Find out which Steele works for EmptyStack
SELECT * 
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- Step 5: Log in as Andrew Steele
-- Username: triple-cart-38
-- Password: password456
-- Command used: node mainframe

-- Step 6: After login, the system loaded emptystack.sql
-- We ran: psql -U postgres -d mainframe_override -f emptystack.sql

-- Step 7: Search messages for references to Project TAXI
SELECT * 
FROM emptystack_messages
WHERE body ILIKE '%taxi%';

-- Step 8: Find admin's account info who sent the message
SELECT * 
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- Step 9: Find the actual project ID for Project TAXI
SELECT * 
FROM emptystack_projects
WHERE code ILIKE '%taxi%';

-- Step 10: Final shutdown
-- Logged in using:
-- Username: your-boss-99
-- Password: notagaincarter
-- Project ID: DczE0v2b
-- Command used: node mainframe -stop
