MATCH (x0)-[:phomepage|pincludes|phomepage*]->(x1), (x0)-[:pincludes|ppurchaseFor|phomepage*]->(x2), (x0)-[:phomepage|phomepage|phomepage*]->(x3), (x0)-[:ppurchaseFor*]->(x4) RETURN DISTINCT x0, x2, x1, x3;
