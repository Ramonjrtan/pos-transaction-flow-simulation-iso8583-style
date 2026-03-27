# ISO8583-style Fields Used in This Simulation

This repository uses a simplified message structure inspired by ISO8583-style transaction processing.

| Field | Description | Example |
|------|-------------|---------|
| MTI | Message Type Indicator | 0100, 0110, 0400, 0410 |
| PAN | Masked card number | 541333******1111 |
| Processing Code | Identifies transaction type | 000000 |
| Amount | Transaction amount | 000000001500 |
| Transmission Date Time | Message date and time | 0327093000 |
| STAN | System Trace Audit Number | 123456 |
| Local Time | Local transaction time | 093000 |
| Local Date | Local transaction date | 0327 |
| POS Entry Mode | Card entry method | 051 |
| Response Code | Approval or decline result | 00, 05, 91 |
| Terminal ID | POS terminal identifier | TERM0001 |
| Merchant ID | Merchant identifier | MERCH001 |

## Notes
This is not a full ISO8583 implementation.
The purpose is to support QA scenario design and transaction-flow validation using realistic payment-style message elements.