MATCH (x0)-[:p3]->()-[:p6]->(x1), (x1)<-[:p6]-()-[:p5]->()<-[:p5]-()-[:p5]->(x2), (x2)<-[:p5]-()<-[:p3]-()-[:p0]->()-[:p2]->(x3) RETURN "true" LIMIT 1;