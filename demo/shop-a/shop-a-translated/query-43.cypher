MATCH (x0)<-[:plocation]-()-[:pgender]->(x1), (x0)<-[:pperformedIn]-()<-[:plike]-()-[:pfollows]->()-[:pgender]->(x2), (x0)<-[:pperformedIn]-()<-[:plike]-()-[:pgender]->(x3), (x0)<-[:plocation]-()-[:pgender]->(x4) RETURN DISTINCT x1, x2, x0, x3;
