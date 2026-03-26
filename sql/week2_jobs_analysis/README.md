# Jobs Data Analysis (SQL Project)

## 📌 Objective
Analyze job workflow data to understand workload distribution, job status, and priority levels.

## 🛠️ Tools Used
- SQL (PostgreSQL)
- VS Code
- WSL (Ubuntu)

## 📊 Key Analyses

### 1. Jobs by Client
Counts total jobs per client to identify workload distribution.

### 2. Jobs by Status
Breaks down jobs by current status (Complete, In Progress, Pending).

### 3. Open vs Closed Jobs
Uses CASE statements to categorize jobs into Open or Closed.

### 4. Urgency Breakdown
Groups jobs by priority level:
- High → Urgent  
- Medium → Normal  
- Low → Low  

### 5. High Priority Active Jobs
Filters jobs that are:
- Not complete  
- High priority  
- Sorted by earliest due date  

## 🧠 Skills Demonstrated
- Filtering with WHERE
- Logical conditions (AND / OR)
- Pattern matching (LIKE)
- Aggregations (COUNT)
- Grouping (GROUP BY)
- Conditional logic (CASE)
- Sorting (ORDER BY)

## 📁 File Structure
data-portfolio/
└── sql/
    └── week2_jobs_analysis/
        ├── queries.sql
        └── README.md