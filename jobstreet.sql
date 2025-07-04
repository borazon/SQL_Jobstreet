-- Proses membuat tabel dan data cleaning
CREATE TABLE jobs (
    categories_Name TEXT,
    company_Name TEXT,
    description TEXT,
    employment TEXT,
    id INTEGER,
    job_Title TEXT,
    locations TEXT,
    postedAt TIMESTAMP
);

-- 5 teratas pekerjaan yang paling banyak dibuka
SELECT categories_name, COUNT(*) AS Job_Count
FROM jobs
GROUP BY categories_name
ORDER BY Job_Count DESC
LIMIT 5;

-- Lokasi dengan lowongan pekerjaan tertinggi
SELECT locations, COUNT(*) AS job_count
FROM jobs
GROUP BY locations
ORDER BY job_count DESC
LIMIT 10;

-- Peruhsaan yang paling banyak mengiklankan lowongan pekerjaan
SELECT company_name, COUNT(*) AS job_count
FROM jobs
WHERE company_name <> 'private' OR company_name IS NULL
GROUP BY company_name
ORDER BY job_count DESC
LIMIT 5;