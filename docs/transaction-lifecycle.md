# Transaction Lifecycle

## 1. Authorization Request
A purchase starts when the POS terminal sends an authorization request.

Expected QA focus:
- required fields are present
- amount is correct
- terminal ID is valid
- merchant ID is valid
- transaction reference is unique
- request is routed correctly

## 2. Authorization Response
The issuer / host returns approval or decline.

Expected QA focus:
- response is linked to original request
- approval or decline is recorded correctly
- response code is displayed correctly
- transaction log reflects actual outcome

## 3. Timeout / Unknown Result
A transaction may time out before the terminal receives a response.

Expected QA focus:
- transaction status is not incorrectly finalized
- reversal or retry logic is triggered correctly
- duplicate charging is prevented

## 4. Reversal
A reversal is used when a previous transaction must be cancelled or neutralized.

Expected QA focus:
- reversal references original transaction
- reversal is only allowed for valid scenarios
- reversal result is recorded properly
- reversed transactions do not proceed to settlement

## 5. Settlement
Approved transactions are included in downstream settlement.

Expected QA focus:
- only valid approved transactions are settled
- declined transactions are excluded
- reversed transactions are excluded
- totals match transaction records

## 6. Reconciliation
Transaction records should match downstream records.

Expected QA focus:
- no missing approved transactions
- no duplicate settlements
- no unmatched reversals
- total amount consistency across systems