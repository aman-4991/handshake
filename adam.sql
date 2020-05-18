SELECT strftime('%Y', `date`, 'unixepoch') AS year, COUNT(*) AS count
FROM birth_report
WHERE city = 'Budapest' AND strftime('%m', `date`, 'unixepoch') = '06'
GROUP BY strftime('%Y', `date`, 'unixepoch');
