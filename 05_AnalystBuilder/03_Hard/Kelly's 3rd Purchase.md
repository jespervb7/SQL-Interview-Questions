# [Kelly's 3rd Purchase](https://www.analystbuilder.com/questions/kellys-3rd-purchase-kFaIE)

## Quick statistics
|Statistic              |Value      |
|--                     |--         |
| Date started          |30-04-2024           |
| Date completed        |30-04-2024         |
| Time taken (seconds)  |420           |

## The question
At Kelly's Ice Cream Shop, Kelly gives a 33% discount on each customer's 3rd purchase.

Write a query to select the 3rd transaction for each customer that received that discount. Output the customer id, transaction id, amount, and the amount after the discount as "discounted_amount".

Order output on customer ID in ascending order.

Note: Transaction IDs occur sequentially. The lowest transaction ID is the earliest ID.

### Example data
| Field          	| Data Type 	|
|----------------	|-----------	|
| customer_id    	| int       	|
| transaction_id 	| int       	|
| amount         	| int       	|

### Example output
| Customer_id 	| Transaction_id 	| Amount 	| Discounted_amount 	|
|-------------	|----------------	|--------	|-------------------	|
| 1001        	| 374711         	| 94     	| 62.98             	|
| 1002        	| 415562         	| 50     	| 33.5              	|
| 1003        	| 102487         	| 39     	| 26.13             	|

## Solution

Below you will find my approach to solving this particular problem

### Comments

Personally I found this question quite difficult, window functions aren't my strongest suit! Had to spend a little bit of googling to get it to work.

Below I will outline my approach

- First find the 3rd purchase made by customer (had to google how and stumbled upon partiont by and row_number)
- Filter for each 3rd order and display the discounted amount by doing 0.67 * amount

Note: After rereading the question I realized I missed the order by clause, but it wasn't needed as the data was already properly sorted. My answer was correct, but my query technically wasn't.

### Code

```SQL
WITH purchases_numbering AS (
  SELECT
        *
      , ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY transaction_id) AS order_number
  FROM purchases
)

SELECT
      customer_id
  ,   transaction_id
  ,   amount
  ,   amount * 0.67 AS discounted_amount
FROM purchases_numbering
WHERE order_number = 3
```