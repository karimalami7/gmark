WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 53 AND s1.label = 81  AND s2.label = 50  AND s3.label = 47  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 53 AND s1.label = 57  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 53 AND s1.label = 57 )) , c1(src, trg) AS ((SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 59 AND s1.label = 67  UNION SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 59 AND s1.label = 67  UNION SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 59 AND s1.label = 67 )) , c2(src, trg) AS ((SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 67 AND s1.label = 59  AND s2.label = 71 )) SELECT DISTINCT c2.src, c1.src, c0.src FROM c0, c1, c2 WHERE c2.src = c1.trg AND c1.src = c0.trg;