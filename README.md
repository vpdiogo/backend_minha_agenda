# backend_minha_agenda
 Task schedule API created in Rails 5.1.3.

This application was developed based on the CRUD method of Ruby on Rails. The "view" layer was not used in the backend, although it can be applied in updates to this application, for sending emails.

# Instalattion


Open the console in the master directory: 

```
bundle install
```

# If necessary, install devise and create the user:

```
rails generate devise:install

rails generate devise User

rails  g  migration addNameToUser password:string cpf:string phone:string

rails db:migrate
```

# Create a calendar user:

```
rails c
```
to verify existing users
```
User.all
```

delete an user
```
User.delete(id)
```

create user
```
User.create(email: 'example@test.com', password: '123456', cpf: '555.326.879-98', phone: '998548563')
```

# Endpoint testing by "Postman"

## GET
URL: localhost: 3000 / api / v1 / tarefas.json

login with the created user (email and token generated at console)

in headers:
|key          | value
|-------------|----------------------------------
|X-User-Email | [registered user email generated]
|X-User-Token | [token generated when creating the user by the terminal]


## POST

URL: localhost: 3000 / api / v1 / tarefas.json

in body:
|key          | value
|-------------|-------------------------------------
|tarefa[name] | [name of the task to be registered]
|tarefa[data] |
|tarefa[hora] |


## DELETE

URL: localhost: 3000 / api / v1 / tarefas / [id]

NOTE: the task id enters the url

deletes the task

example: localhost: 3000 / api / v1 / tarefas / 1


## SHOW

GET URL: localhost: 3000 / api / v1 / tarefas / [id]

to show the content


## PUT

URL: localhost: 3000 / api / v1 / tarefas / [id]

changes the parameters of the task specified by id
