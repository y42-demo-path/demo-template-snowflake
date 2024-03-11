WITH

source AS (
	SELECT * FROM {{ source('raw_space_fuel_shop', 'public_payments') }}
),

renamed AS (
	SELECT
		id AS payment_id,
		order_id,
		amount_total,
		payment_method,
		payment_status
	FROM source
)

SELECT * FROM renamed
