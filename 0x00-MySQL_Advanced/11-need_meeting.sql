-- Creates a view need_meeting that lists all students that have a score under 80(strict)
-- and no last_meeting or more that 1 month.
-- Requirements:
-- - The view need_meeting should return all students name when:
-- - Their score are under (strict) to 80
-- - AND no last_meeting date OR more that 1 month

CREATE VIEW need_meeting AS
SELECT users.name
FROM users
JOIN corrections ON users.id = corrections.user_id
WHERE corrections.score < 80
AND (users.last_meeting IS NULL OR users.last_meeting < DATE_SUB(NOW(), INTERVAL 1 MONTH));
