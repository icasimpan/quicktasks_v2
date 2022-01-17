---
title: "Simple OOP Example"
date: 2022-01-17T13:01:11+08:00
tags: [golang, oop]
draft: false
---

*** draft ***

Simple OOP example and how it's done in Go adapted with some changes from [GoLangBot](https://golangbot.com/structs-instead-of-classes/).

In the root directory where you keep your golang code (e.g. ~/documents/golang), I assume you are already using the [golang init script](https://ismael.casimpan.com/quicktasks-golang/suggested-init-script-before-coding-in-golang/).

Directory layout is like the following as well.
```
├── documents/
│   └── golang/
│   └── init.sh
```

Then, within `~/documents/golang`, 
```
~$ mkdir oop
~$ cd oop
~$ git init module oop
```

Directory structure now as follows:
```
├── documents/
│   └── golang/
│   |   └── oop/
│   |   |    └── go.mod
│   └── init.sh
```

From within `oop/employee` directory, create `employee.go` with following code:
```
package employee

import (  
    "fmt"
)

type Employee struct {  
    FirstName   string
    LastName    string
    TotalLeaves int
    LeavesTaken int
}

func (e Employee) LeavesRemaining() {  
    fmt.Printf("%s %s has %d leaves remaining\n", e.FirstName, e.LastName, (e.TotalLeaves - e.LeavesTaken))
}
```
In the above `employee.go` code, Employee struct is connected to the `(e Employee) LeavesRemaininig()` method.
Notice it's just like an oridinary Go function, the only difference is the prefixed `(e Employee)` or "receiver" in Go terminology.

Directory structure now as follows:
```
├── documents/
│   └── golang/
│   |   └── oop/
│   |   |    └── employee/
│   |   |    └── go.mod
│   └── init.sh
```

