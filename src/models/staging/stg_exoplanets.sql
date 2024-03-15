WITH

source AS (
	SELECT * FROM {{ source('raw_exoplanets', 'exoplanets') }}
),

renamed AS (
	SELECT
		"name" AS "exoplanet_name",
		"binaryflag" AS "binary_flag",
		"mass",
		"radius",
		"period",
		"semimajoraxis" AS "semi_major_axis",
		"eccentricity",
		"periastron",
		"longitude",
		"ascendingnode" AS "ascending_node",
		"inclination",
		"temperature",
		"age",
		"discoverymethod" AS "discovery_method",
		"discoveryyear" AS "discovery_year",
		"lastupdate" AS "last_updated",
		"system_rightascension" AS "system_right_ascension",
		"system_declination",
		"system_distance",
		"hoststar_mass",
		"hoststar_radius",
		"hoststar_metallicity",
		"hoststar_temperature",
		"hoststar_age",
		"list" AS "parent_lists"
	FROM source
)

SELECT * FROM renamed
