WITH

source AS (
    SELECT * FROM {{ source('raw_space_fuel_shop', 'public_orders') }}
),

renamed AS (
    SELECT
        "ID" AS order_id,
        "CUSTOMER_ID" AS customer_id,
        "FULFILLMENT_METHOD" AS fulfillment_method,
        "LINE_ITEMS" AS line_items,
        "SERVICE_STATION" AS service_station,
        "STATUS" AS order_status,
        "UPDATED_AT" AS order_received
    FROM source
)

SELECT
    order_id,
    customer_id,
    fulfillment_method,
    line_items,
    service_station,
    order_received,
    CASE
        WHEN order_status = '0' THEN 'INVALID'
        WHEN order_status = '1' THEN 'DECLINED'
        WHEN order_status = '2' THEN 'ACCEPTED'
    END AS order_status

FROM renamed
