MATCH (x0)-[:pAuthoredBy]->()<-[:pAuthoredBy]-()-[:pAuthoredBy]->(x1), (x0)-[:pAuthoredBy]->()<-[:pAuthoredBy]-()-[:pAuthoredBy]->(x2), (x0)-[:pAuthoredBy]->()<-[:pAuthoredBy]-()-[:pAuthoredBy]->(x3) RETURN DISTINCT x0;