mysql> select count(*) as nbr_etudiant
    -> from etudiant;
+--------------+
| nbr_etudiant |
+--------------+
|            7 |
+--------------+
1 row in set (0.04 sec)

mysql> select nome_tu,prenometu,timestampdiff(year,datenaissance,curdate()) as age
    -> from etudiant;
+---------------+-------------+------+
| nome_tu       | prenometu   | age  |
+---------------+-------------+------+
| alami         | ahmed       |   38 |
| toumi         | aicha       |   23 |
| souni         | sanaa       |   25 |
| idrissi alami | mohamed     |   27 |
| ouled thami   | ali         |   44 |
| ben omar      | abd allah   |   33 |
| boudiaf       | fatim zohra |   27 |
+---------------+-------------+------+
7 rows in set (0.00 sec)

mysql> select titreform, prixform
    -> from formation
    -> order by prixform desc limit 1;
+------------------------+----------+
| titreform              | prixform |
+------------------------+----------+
| Base de donnees Oracle |     6000 |
+------------------------+----------+
1 row in set (0.00 sec)

mysql> select titreform, prixform
    -> from formation
    -> order by prixform asc limit 1;
+---------------+----------+
| titreform     | prixform |
+---------------+----------+
| Communication |     2500 |
+---------------+----------+
1 row in set (0.00 sec)


mysql> select codesess , count(distinct num_cinetu) as nombe_inscrits
    -> from inscription
    -> group by codesess;
+----------+----------------+
| codesess | nombe_inscrits |
+----------+----------------+
|     1101 |              7 |
|     1201 |              6 |
|     1302 |              5 |
|     1401 |              6 |
|     1501 |              7 |
+----------+----------------+
5 rows in set (0.00 sec)

mysql> select distinct num_cinetu from etudiant;
+------------+
| num_cinetu |
+------------+
| AB234567   |
| G5346789   |
| C0987265   |
| D2356903   |
| Y1234987   |
| J3578902   |
| F827363    |
+------------+
7 rows in set (0.00 sec)

mysql> select num_cinetu,count(*) as nbr_inscri
    -> from inscription
    -> group by num_cinetu;
+------------+------------+
| num_cinetu | nbr_inscri |
+------------+------------+
| AB234567   |          4 |
| G5346789   |          4 |
| C0987265   |          5 |
| D2356903   |          5 |
| Y1234987   |          5 |
| J3578902   |          3 |
| F9827363   |          2 |
| G4346789   |          1 |
|  J3578902  |          1 |
|  F9827363  |          1 |
+------------+------------+

mysql> select codesess,count( typecours = 'distanciel') as nbr_distanciel,count( typecours = 'presentiel') as nbr_presentiel
    -> from inscription
    -> group by codesess;
+----------+----------------+----------------+
| codesess | nbr_distanciel | nbr_presentiel |
+----------+----------------+----------------+
|     1101 |              7 |              7 |
|     1201 |              6 |              6 |
|     1302 |              5 |              5 |
|     1401 |              6 |              6 |
|     1501 |              7 |              7 |
+----------+----------------+----------------+
5 rows in set (0.00 sec)
