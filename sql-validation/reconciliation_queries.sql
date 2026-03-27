-- Approved unreversed transactions
SELECT
    COUNT(*) AS approved_txn_count,
    SUM(amount) AS approved_total
FROM transactions
WHERE auth_status = 'APPROVED'
  AND is_reversed = 'N';

-- Settlement batch totals
SELECT
    COUNT(*) AS settled_txn_count,
    SUM(amount) AS settled_total
FROM settlement_batch
WHERE settlement_status = 'SETTLED';

-- Approved transactions missing in settlement
SELECT
    t.transaction_id,
    t.stan,
    t.amount
FROM transactions t
LEFT JOIN settlement_batch s
    ON t.transaction_id = s.transaction_id
WHERE t.auth_status = 'APPROVED'
  AND t.is_reversed = 'N'
  AND s.transaction_id IS NULL;