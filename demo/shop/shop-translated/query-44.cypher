MATCH (x0)-[:p72]->()<-[:p80]-(x1), (x1)-[:p81|p81*]->(x2), (x0)-[:p72]->()-[:p51]->(x3), (x2)-[:p72]->()-[:p51]->(x4) RETURN "true" LIMIT 1;
