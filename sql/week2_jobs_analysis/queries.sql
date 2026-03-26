-- =========================================
-- Jobs Data Analysis (Week 2 Project)
-- =========================================

-- 1. Jobs by Client
SELECT 
    client, 
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY client
ORDER BY total_jobs DESC;

-- 2. Jobs by Status
SELECT 
    status, 
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY status
ORDER BY total_jobs DESC;

-- 3. Open vs Closed Jobs
SELECT 
    CASE
        WHEN status = 'Complete' THEN 'Closed'
        ELSE 'Open'
    END AS job_state,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY job_state
ORDER BY total_jobs DESC;

-- 4. Urgency Breakdown by Priority
SELECT 
    CASE
        WHEN priority = 'High' THEN 'Urgent'
        WHEN priority = 'Medium' THEN 'Normal'
        ELSE 'Low'
    END AS urgency_level,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY urgency_level
ORDER BY total_jobs DESC;

-- 5. High Priority Active Jobs (Sorted by Due Date)
SELECT 
    *
FROM jobs
WHERE status != 'Complete'
  AND priority = 'High'
ORDER BY due_date ASC;