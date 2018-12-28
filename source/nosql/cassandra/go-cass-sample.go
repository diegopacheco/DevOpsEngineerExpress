package main

import (
	"fmt"
	"log"

	"github.com/gocql/gocql"
)

func main() {
	cluster := gocql.NewCluster("localhost")
	cluster.Keyspace = "cluster_test"
	cluster.Consistency = gocql.LocalOne
	session, _ := cluster.CreateSession()
	defer session.Close()

	var id string
	var text string

	iter := session.Query("SELECT * from cluster_test.TEST").Iter()
	for iter.Scan(&id, &text) {
		fmt.Println("Data:", id, text)
	}
	if err := iter.Close(); err != nil {
		log.Fatal(err)
	}
}
