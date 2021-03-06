package main

import (
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

type Users struct {
	id        string
	accountID string
	name      string
	createdAt string
	updatedAt string
}

func main() {
	db, err := sql.Open("postgres", "host=127.0.0.1 port=5555 user=root password=password dbname=blog sslmode=disable")
	defer db.Close()

	if err != nil {
		fmt.Println(err)
	}

	fmt.Println("World", err, "Hello")

	rows, err := db.Query("SELECT * FROM users")

	if err != nil {
		fmt.Println(err)
	}

	fmt.Println(rows)

	var users []Users
	for rows.Next() {
		var u Users
		rows.Scan(&u.id, &u.accountID, &u.name, &u.createdAt, &u.updatedAt)
		users = append(users, u)
	}

	fmt.Println("users", users)
}
