CREATE TABLE obesity_state (
"State" VARCHAR PRIMARY KEY,
"Obesity Rate" DECIMAL,
"Population" INT
);

CREATE TABLE health_state (
"State" VARCHAR PRIMARY KEY,
"Health Expen" INT
);


-- Join both tables
SELECT obesity_state."State", obesity_state."Obesity Rate", obesity_state."Population", health_state."Health Expen"
From obesity_state
Join health_state
On obesity_state."State" = health_state."State";


CREATE TABLE combined_df (
"State" VARCHAR PRIMARY KEY,
"Obesity Rate" DECIMAL,
"Population" INT,
"Health Expen" INT
);


CREATE TABLE final_state (
"State" VARCHAR PRIMARY KEY,
"Tested" VARCHAR,
"Infected" INT,
"Deaths" INT,
"ICU Beds" INT,
"Age 0-25" DECIMAL,
"Age 26-54" DECIMAL,
"Age 55+" DECIMAL
);

-- Join both tables
Select final_state."State", final_state."Tested", final_state."Infected", final_state."Deaths", final_state."ICU Beds", final_state."Age 0-25", final_state."Age 26-54", final_state."Age 55+", combined_df."Obesity Rate", combined_df."Population", combined_df."Health Expen"
FROM final_state
JOIN combined_df
On final_state."State" = combined_df."State";
