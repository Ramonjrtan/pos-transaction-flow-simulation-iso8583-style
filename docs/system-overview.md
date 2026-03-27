# System Overview

## Objective
This document explains the simplified transaction architecture used in this repository.

## Simulated Components

### 1. POS Terminal
The point of sale terminal where the card transaction starts.
Responsibilities:
- Capture transaction amount
- Capture card or payment method
- Send authorization request
- Receive approval or decline response
- Print or display result

### 2. Payment Switch / Middleware
The intermediary layer between the terminal and issuer / host.
Responsibilities:
- Route messages
- Validate required fields
- Track transaction references
- Handle timeouts and retries
- Support reversal and downstream logging

### 3. Issuer / Host
The authorizing system that approves or declines the transaction.
Responsibilities:
- Validate transaction
- Evaluate card/account status
- Return response code
- Return approval for valid transactions

### 4. Settlement Layer
The downstream batch process that collects approved transactions for financial posting and reconciliation.
Responsibilities:
- Include approved transactions
- Exclude declined transactions
- Exclude reversed transactions
- Support reconciliation and reporting

---

## Simplified Flow
1. Customer starts purchase on POS terminal
2. POS sends authorization request
3. Switch validates and routes request
4. Issuer / host returns response
5. POS displays result
6. Approved transactions are included in settlement
7. Settlement totals are reconciled against transaction records

---

## QA Perspective
A payment transaction should not only be tested at the screen level. It should also be validated through:
- request correctness
- response correctness
- transaction state changes
- downstream settlement behavior
- duplicate protection
- exception handling