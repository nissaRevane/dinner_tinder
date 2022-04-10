# Diner tinder

It's dinner time ! Create an application that helps users find the most relevant recipes that they can prepare with the ingredients that they have at home

## User stories

[INIT] : Create a functional API and frontend ready to use.

[DISPLAY RECIPES] : Create a MVP that can display recipes stored in the database.

[MY INGREDIENTS] : Add an editable list of personal ingredients

[MATCH] : Create a match algorithm to propose recipe matching ingredient that the user have

## Install

### Rails

I suppose rails is installed. To create database with fixture fixture as seed
```shell
cd diner_tiner_api
rails db:create
rails db:migrate
```

### Ember

```shell
npm install -g ember-cli
```

## Launch app in local

Launch back API : 
```shell
cd diner_tiner_api
rails s
```

Launch front app :
```shell
cd diner-tinder
ember serve
```

In the browser go to local URL : http://localhost:4200