MATCH (x0)<-[:p55]-()<-[:p66]-()-[:p10]->(x1), (x0)<-[:p64]-()-[:p49]->()<-[:p9]-()-[:p5]->(x2), (x0)<-[:p72]-()-[:p76]->()-[:p5]->(x3) RETURN DISTINCT x3, x1, x2, x0;