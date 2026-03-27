-- Declined transactions incorrectly included in settlement
SELECT
    t.transaction_id,
    t.stan,
    t.amount
FROM transactions t
JOIN settlement_batch s
    ON t.transaction_id = s.transaction_id
WHERE t.auth_status = 'DECLINED';

-- Reversed transactions incorrectly included in settlement
SELECT
    t.transaction_id,
    t.stan,
    t.amount
FROM transactions t
JOIN settlement_batch s
    ON t.transaction_id = s.transaction_id
WHERE t.is_reversed = 'Y';