{{ config(
  post_hook = "grant select on table DEMO_SPACE_TEMPLATE_BASIC.Y42_DEMO_TEMPLATE_SNOWFLAKE_TEST_PERMISS to role Y42_DEMO_TEMP"
) }}

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
