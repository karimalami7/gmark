WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = gender AND s1.label = follows  AND s2.label = like  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = gender AND s1.label = like  AND s2.label = like  AND s3.label = author )) , c1(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = keywords AND s1.label = description  AND s2.label = legalName  AND s3.label = familyName  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = description AND s1.label = givenName  AND s2.label = location  AND s3.label = location  UNION SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = expires AND s1.label = expires  AND s2.label = like )) , c2(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = reviewer AND s1.label = reviewer )) , c3(src, trg) AS (SELECT src, trg FROM c2 UNION SELECT head.src, tail.trg FROM c2 as head, c3 as tail WHERE head.trg = tail.src) SELECT DISTINCT c0.src, c2.trg  FROM c0, c1, c2, c3 WHERE c2.src = c1.trg AND c1.src = c0.trg;