package main

import (
	"context"
	"fmt"
	"time"

	"github.com/coreos/etcd/clientv3"
)

func main() {
	cli, err := clientv3.New(clientv3.Config{
		Endpoints:   []string{"localhost:2379", "localhost:22379", "localhost:32379"},
		DialTimeout: 5 * time.Second,
	})
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println("Etcd Client connected")
	}

	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)

	resPut, errPut := cli.Put(ctx, "x", "10")
	if errPut != nil {
		fmt.Println(errPut)
	} else {
		fmt.Printf("Put on ETCD : %s \n", resPut.OpResponse().Put())
	}

	x, _ := cli.Get(ctx, "x")
	fmt.Printf("Get x from ETCD: %s \n", string(x.Kvs[0].Value))

	cancel()
	cli.Close()
}
