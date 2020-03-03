# Process modelling, applied to HTTP request/response cycle and mvc


## Learning objectives

- Define process modelling as a tool to describe and understand a process.
- Use process modelling to further your understanding of HTTP requests and responses.
- Use process modelling to further your understanding of Model, View, Controller pattern



## Instructions
Run the [to do list app](https://github.com/makersacademy/todo-list-web) on your machine by:
- Fork the repo onto your github repo
- Clone the repo onto your machine
- cd todo-list-web
- ruby app.rb

Looking at the to do list:

Mermaid code:
```
 sequenceDiagram
	User->>+Browser: clicks `todolist`
  Browser->>+Controller: GET /todolist
  Controller->>+Model: Todolist.items
  Model->>-Controller: Array of item objects
  Controller->>+View: render :todos with @items
  View->>-Controller: HTML
  Controller->>-Browser: 200 OK, body HTML
  Browser->>-User: see to list
```
  

## Processes to model
For each of the following
- draw a diagram of the interaction between the user, browser,
server, model, view and controller
- Use `httpie` to make a request on the command line.
What additional information does this tell you? 
- How does data get based from the browser to the server

### Home page

- User types in `http://localhost:4567/`


### Add item

- User clicks on `Add a todo list item` link.
- User types information into the form and presses submit


### Todo list by categeory

Go back to the index page

- User clicks on `View to do list by category` link
- User modifies the url to say `http://localhost:4567/todolistbycategory?category=Domestic`



