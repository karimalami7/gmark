WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = contentRating AND s1.label = printColumn  AND s2.label = title  AND s3.label = performer  UNION SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = like AND s1.label = friendOf  AND s2.label = like )) , c1(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = homepage AND s1.label = homepage  UNION SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = conductor AND s1.label = friendOf  AND s2.label = conductor  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = includes AND s1.label = includes )) , c2(src, trg) AS (SELECT src, trg FROM c1 UNION SELECT head.src, tail.trg FROM c1 as head, c2 as tail WHERE head.trg = tail.src) , c3(src, trg) AS ((SELECT s0.src, s1.trg FROM edge s0, edge s1 WHERE s0.trg = s1.src AND s0.label = homepage AND s1.label = url  UNION SELECT s0.src, s1.trg FROM edge s0, edge s1 WHERE s0.trg = s1.src AND s0.label = conductor AND s1.label = givenName  UNION SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = movement AND s1.label = duration  AND s2.label = description )) SELECT "true" FROM edge WHERE EXISTS (SELECT * FROM c0, c1, c2, c3 WHERE c3.src = c1.trg AND c1.src = c0.trg);
