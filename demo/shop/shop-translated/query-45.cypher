MATCH (x0)<-[:p6]-()-[:p6]->()<-[:p6]-(x1), (x1)-[:p76|p81|p54*]->(x2), (x0)<-[:p37]-()-[:p76]->(x3), (x2)<-[:p6]-()-[:p1]->()<-[:p16]-(x4) RETURN DISTINCT x0, x2;
