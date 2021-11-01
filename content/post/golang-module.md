---
title: "Golang Module"
date: 2021-11-01T23:05:11+08:00
tags: [golang, module]
draft: false
---

```
~$ mkdir greetings
~$ cd greetings
~$ go mod init example.com/greetings
```

In a text editor, create `greetings.go` with the following content:
```
package greetings

import "fmt"

// Hello returns a greeting for the named person.
func Hello(name string) string {
    // Return a greeting that embeds the name in a message.
    message := fmt.Sprintf("Hi, %v. Welcome!", name)
    return message
}
```

Call it from another module

```
~$ cd ..
~$ mkdir hello
~$ cd hello
~$ go mod init example.com/hello
```

In a text editor, create `hello.go` with the following content:
```
package main

import (
    "fmt"

    "example.com/greetings"
)

func main() {
    // Get a greeting message and print it.
    message := greetings.Hello("Gladys")
    fmt.Println(message)
}
```

Edit `example.com/hello` module to use your local example.com/greetings module.
Inside 'hello' directory:
```
~$ go mod edit -replace example.com/greetings=../greetings
```

Then, tidy it
```
~$ go mod tidy
```

The go.mod file in `example.com/hello` module should now be:
```
module example.com/hello

go 1.16

replace example.com/greetings => ../greetings

require example.com/greetings v0.0.0-00010101000000-000000000000
```

Then, from `hello` directory, run it.
```
~$ go run .
Hi, Gladys. Welcome!
```

NOTE: This example was directly taken from https://golang.org/doc/tutorial/create-module so check it there for further details.

