MATCH (x0)-[:phomepage|pincludes*]->(x1), (x1)-[:partist]->()-[:phomepage]->()<-[:phomepage]-(x2), (x2)-[:pincludes|ppurchaseFor*]->(x3), (x3)-[:phomepage]->()<-[:psubscribes]-(x4) RETURN "true" LIMIT 1;
