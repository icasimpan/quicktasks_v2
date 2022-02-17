---
title: "Golang Local Module with OOP"
date: 2022-02-16T23:17:11+08:00
tags: [golang, module, oop]
draft: false
---

# Create location of your go code

```
~$ mkdir /mnt/c/learning/go
```

# Get the suggested golang init script
It is in [separate post in my quicktasks](https://ismael.casimpan.com/quicktasks/suggested-init-script-before-coding-in-golang/)

and don't forget to make it executable. For this quicktask, I assume you named it `init.sh` as well.

# Create and go to project directory
```
~$ mkdir local_module_example
~$ cd local_module_example

```

# Initialize Go environment
```
../init.sh
```

# Create module location directory
```
~$ mkdir -p example.local/person
```

# Create the module

This is module `person`
```
~$ cat > example.local/person/person.go << MODULE_BODY
package person

type person struct {
        firstName string
        lastName  string
        age       int
}

func New(firstName string, lastName string, age int) person {
        p := person{
                firstName: firstName,
                lastName:  lastName,
                age:       age,
        }

        return p
}

func (p person) ShowFirstName() string {
        return p.firstName
}

func (p person) ShowLastName() string {
        return p.lastName
}

func (p person) ShowAge() int {
        return p.age
}
MODULE_BODY
```

# Mark it as a module
```
~$ cd example.local/person
~$ go mod init person
```

# In main


```
~$ cd ../../
~$ mkdir src
~$ cat > src/main.go << MAIN_BODY
package main

import (
        "example.local/person"
        "fmt"
)

func main() {
        man := person.New(
                "George",
                "Washington",
                290,
        )

        fmt.Println("First Name:", man.ShowFirstName())
        fmt.Println("Last Name: ", man.ShowLastName())
        fmt.Println("Age: ", man.ShowAge())
}
MAIN_BODY
```

# Point person module to local
~$ cd src
~$ go mod init main
~$ go mod edit -replace example.local/person=../example.local/person
~$ go mod tidy


# Run it
```
~$ go mod run main
First Name: George
Last Name:  Washington
Age:  290
```

