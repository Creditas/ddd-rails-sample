# What is this project?

**DDD Rails Sample** is a open-source project meant to be used as a start point, or an inspiration, for those who want to build Domain Driven Design applications in Ruby. As Rails is the most robust web framework in Ruby community we tried to use it in a way we could modularize the layers and decouple responsabilities. This project is the result of this efforts.

**NOTE:** This is NOT intended to be a definitive solution or a production ready project

# Technologies/frameworks involved

- Ruby on Rails
- Active Record
- Dry::Types
- Dry::Validations

# Architecture

- Object oriented programming following SOLID and Clean Code principles
- Domain Driven Design
- Repository Pattern
- CQRS (same database)
  - Commands
  - Queries

### Nice to have in the future
- [ ] Include different Bounded Contexts
- [ ] Domain Events
- [ ] IoC Container or Service Locator
- [ ] Domain Notifications instead of raising exceptions
- [ ] Event Sourcing
- [ ] A simple front-end implementation

# Setup

```bash
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s
```

## Different implementation versions

This project describes a two-phase implementation of the Repository pattern. The first implementation (version 1) is somewhat more pragmatic as the domain class itself inherit from Active Record. In the second one (version 2) we evolve this implementation in a way that our domain model became PORO classes, but that came with a cost as you can see in more details below.

### Version 1

In this version we treat te **Persistence Model** and **Domain Model** as the same thing. We use this in the first version because it is a way more simple, fast, and we can have take advantage from all benefits the ORM offers.

> **ORM + DDD dilemma**: You can see more details about the tradeoffs and the risks of using the Persistence Model and Domain Models as the same thing or in a separated way [in this SO answer](https://stackoverflow.com/a/34436709/890890).

The only problem with Active Record is that, different from other ORMs like SQLAlchemy (Python), Hibernate (Java), Entity Framework (.NET), *you can't create an external class to map your domain model to the database*. In Active Record your class MUST inherit from `ActiveRecord::Base` in order to be persisted. This breaks (:hankey:) the [Clean Architecture](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html) but as mentioned above, its a tradeoff that you may want to pay in face to the pragmatism.


### Version 2

... More details soon ...

## About

The **DDD Rails Sample** was developed by [Murilo Capanema](https://github.com/mcapanema) and [Fabrício Rissetto](https://github.com/fabriciorissetto/) under the WTFPL license.

Contributions are welcome :heartbeat:



