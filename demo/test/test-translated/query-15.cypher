MATCH (x0)<-[:p0]-()-[:p0]->(x1), (x1)-[:p1]->()<-[:p1]-()-[:p3]->(x2), (x2)<-[:p3]-()-[:p1]->()<-[:p1]-()-[:p3]->(x3), (x3)<-[:p3]-()-[:p1]->()<-[:p1]-(x4) RETURN DISTINCT x0;