# BUG-001 Duplicate Authorization Posted Twice

## Summary
A retry after transaction timeout created a second approved transaction instead of linking to the original request.

## Severity
Critical

## Impact
Customer may be charged twice and both records may be included in settlement.

## Steps to Reproduce
1. Submit purchase authorization
2. Simulate delayed host response
3. Retry transaction from terminal
4. Observe system transaction records

## Expected Result
System should detect duplicate request using transaction reference or STAN and prevent duplicate posting.

## Actual Result
Two approved records were created for what should have been one transaction.

## Recommendation
Add duplicate control logic based on transaction key, amount, terminal ID, and request trace reference.