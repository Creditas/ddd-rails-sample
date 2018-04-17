# Rails and Repository Pattern

This repository aims to implement a PoC of a Rails API with the Repository Pattern over Active Record to decouple the persistence model of the domains logic.

## Implementation Phases

This project describes a two-phase implementation of the Repository Pattern.
On the first step(v1), we just introduce the concept of a Repository, that deals just with the fetch and persistence of the Model Entities - more like a proxy, delegating all the real logic to Active Record and letting all the business logic inside the Model itself.
After that (if needed), we introduce the concept of Entity (the domain class that holds the business logic) and move the logic inside the Model to that specific class. For the second implementation, we need to map all the attributes from the Model to the Entity and vice-versa.

## Challenges

- [ ] Build a simple and robust way to integrate the Entity + Repository over Active Record;
- [ ] Find a way decouple the Model table definition from the domain representation of that Entity;
- [ ] Find a way to keep Active Record dirty tracking while mapping from Entity to Model on persistence operations;
