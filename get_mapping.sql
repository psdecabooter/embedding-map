SELECT sat_solution, (embedding <=> :query_vector) AS distance
FROM mappings
