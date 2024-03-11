WITH

source AS (
	SELECT * FROM {{ source('raw_open_exoplanet_catalogue', 'exoplanets') }}
),

renamed AS (
	SELECT
		NAME AS exoplanet_name,
		BINARYFLAG AS binary_flag,
		MASS AS mass,
		RADIUS AS radius,
		PERIOD AS period,
		SEMIMAJORAXIS AS semi_major_axis,
		ECCENTRICITY AS eccentricity,
		PERIASTRON AS periastron,
		LONGITUDE AS longitude,
		ASCENDINGNODE AS ascending_node,
		INCLINATION AS inclination,
		TEMPERATURE AS temperature,
		AGE AS age,
		DISCOVERYMETHOD AS discovery_method,
		DISCOVERYYEAR AS discovery_year,
		LASTUPDATE AS last_updated,
		SYSTEM_RIGHTASCENSION AS system_right_ascension,
		SYSTEM_DECLINATION AS system_declination,
		SYSTEM_DISTANCE AS system_distance,
		HOSTSTAR_MASS AS hoststar_mass,
		HOSTSTAR_RADIUS AS hoststar_radius,
		HOSTSTAR_METALLICITY AS hoststar_metallicity,
		HOSTSTAR_TEMPERATURE AS hoststar_temperature,
		HOSTSTAR_AGE hoststar_age,
		LIST AS parent_lists
	FROM source
)

SELECT * FROM renamed
