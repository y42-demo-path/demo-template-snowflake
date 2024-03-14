WITH

source AS (
	SELECT * FROM {{ source('raw_space_fuel_shop', 'public_payments') }}
),

renamed AS (
	SELECT
		"ID" AS payment_id,
		"ORDER_ID" AS order_id,
		"AMOUNT_TOTAL" AS amount_total,
		"PAYMENT_METHOD" AS payment_method,
		"PAYMENT_STATUS" AS payment_status
	FROM source
)

SELECT * FROM renamed
