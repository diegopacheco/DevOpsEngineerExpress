package main

import (
	"fmt"
	"log"

	"github.com/gocql/gocql"
)

func main() {
	cluster := gocql.NewCluster("127.0.0.1")
	cluster.Keyspace = "CLUSTER_TEST"
	cluster.Consistency = gocql.Quorum
	session, _ := cluster.CreateSession()
	defer session.Close()

	var id string
	var text string

	iter := session.Query("SELECT * from CLUSTER_TEST.TEST").Iter()
	for iter.Scan(&id, &text) {
		fmt.Println("Data:", id, text)
	}
	if err := iter.Close(); err != nil {
		log.Fatal(err)
	}
}
