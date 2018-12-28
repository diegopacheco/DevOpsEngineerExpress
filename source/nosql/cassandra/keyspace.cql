CREATE KEYSPACE CLUSTER_TEST WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 }; 
USE CLUSTER_TEST;
CREATE TABLE TEST ( key text PRIMARY KEY, value text);
INSERT INTO TEST (key,value) VALUES ('1', 'works');
SELECT * from CLUSTER_TEST.TEST;
