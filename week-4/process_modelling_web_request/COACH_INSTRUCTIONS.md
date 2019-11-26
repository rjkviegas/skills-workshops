### Modelling a web request from browser to db and back again

#### Learning objectives

1) Remember that a model, view, controller (MVC) is a pattern for making websites
2) Understand how information is sent between each component when a browser makes a request

## Instructions

### Starter (15 minutes)

* Show the diagram of MVC. Have a discussion about each thing the diagram shows
* Assign roles for browser, controller, model, view and database to members of the cohort 
and act out how information is passed between using post-its using an example scenario.
This should be specific about how each component queries another component and what  
information is passed at each stage. 

For example for a create operation:

 - Browser sends an HTTP POST request with form fields to the Controller
 - Controller calls Model method with arguments
 - Model performs SQL query on database


### Main (40 minutes)

* Ask the students to get into groups and act out the scenarios in the document

### Plenary (10 minutes)

Come together and ask everyone to draw a process model of MVC. 

AND/OR Suggest this follow on activity

Clone and run [this project](https://github.com/makersacademy/mvc-example)
There are puts statements describing how information is passed between each component.

Look at the code responsible for adding a new book into the database. 
Add a puts statement at each stage of the request between model, view, controller
and database. 
