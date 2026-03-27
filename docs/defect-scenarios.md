# Common Defect Scenarios in Payment Transaction Testing

## 1. Duplicate Authorization
A retry creates a second financial posting instead of linking to the original transaction.

## 2. Timeout Without Reversal
The terminal times out but no reversal is triggered, leaving unclear financial state.

## 3. Settlement Mismatch
An approved transaction is not present in settlement or totals do not match.

## 4. Declined Transaction Included in Settlement
A non-approved transaction is mistakenly included downstream.

## 5. Reversal Without Matching Original
A reversal is processed without a valid original transaction reference.

## 6. Response Linked to Wrong Transaction
Approval response is matched to wrong STAN or terminal reference.

## 7. Terminal / Merchant Mismatch
A transaction is posted under the wrong terminal or merchant identifier.