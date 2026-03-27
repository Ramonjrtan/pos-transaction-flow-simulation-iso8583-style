# BUG-002 Timeout Without Reversal

## Summary
A timed-out transaction was left unresolved and no reversal was triggered.

## Severity
High

## Impact
Financial state remains unclear and may create settlement inconsistencies.

## Expected Result
Timed-out transactions should trigger reversal or exception workflow based on business rules.

## Actual Result
Transaction remained in timeout state with no follow-up handling.