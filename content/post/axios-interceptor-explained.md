---
title: "Axios Interceptor Explained"
date: 2022-04-22T00:20:25+08:00
tags: [axios, reactjs, frontend]
draft: false
---

Excerpt from https://stackoverflow.com/questions/52737078/how-can-you-use-axios-interceptors
```
To talk in simple terms, it is more of a checkpoint for every HTTP action. Every API call that has been made, is passed through this interceptor.

So, why two interceptors?

An API call is made up of two halves, a request, and a response. Since it behaves like a checkpoint, the request and the response have separate interceptors.
```
