<p align="left">
   <img src=".github/phoenix-elixir.png" width="200px" />
</p>

# Rocketpay

> Application made during the [NLW#4](https://nextlevelweek.com/)

# :pushpin: Table of Contents

* [About](#computer-about)
* [Features](#rocket-features)
* [Installation](#construction_worker-installation)
* [Getting Started](#runner-getting-started)
* [FAQ](#rocket-tecnologias)

## :computer: About

The Rocketpay is an elixir application develop on next level week 4.0 and consists of a payments api, where a an user is able to create an account, make deposits, withdraw and transfer.

# :rocket: Features

* User and account create
* Deposits
* Withdraws
* Transfers

# :construction_worker: Installation

**In order to install everything you'll need for this project you can take a look in [this documentation](https://hexdocs.pm/phoenix/installation.html#elixir-1-6-or-later) and follow the steps, then in order to clone the project via HTTPS, run this command:**


```
git clone git@github.com:cunhaedu/challenge.git
```

**Install dependencies**

```
mix deps.get
```

**Setup a database**

Once you have the postgres in your machine or docker, you should modify the files inside the ```config``` folder with your credentials, then run the following command to setup the database: 

```
mix ecto.setup
```

# :runner: Getting Started
Run the following command in order to start the application in a development environment:
```
mix phx.server
```

## Status Codes

Check the following status codes in this API:

| Status Code | Description |
| :--- | :--- |
| 200 | `OK` |
| 201 | `CREATED` |
| 400 | `BAD REQUEST` |
| 500 | `INTERNAL SERVER ERROR` |

## :rocket:  Tecnologias

This project use the following technologies:

* [Elixir](https://elixir-lang.org/)

* [Phoenix](https://www.phoenixframework.org/)

* [Credo](https://github.com/rrrene/credo)

* [ExCoveralls](https://github.com/parroty/excoveralls)
