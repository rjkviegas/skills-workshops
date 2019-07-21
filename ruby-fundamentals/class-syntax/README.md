## Getting started
`bundle install`
`cd exercise1`
`rspec`

### Exercise One
Write a program that meets these user stories:
As a car owner I want my car to tell me its current speed
As a car owner I want to be able to accelerate the car
As a car owner I want to be able to apply the breaks to a car

It should:
* Have one class:
 * `Car`
   * Has one instance variable:
      `current_speed`. This is an integer.
   * Has three methods:
     * `initialize` Creates a new instance of car. Takes no parameters.
     * `speed_up` Takes a number as a parameter. Increases the speed variable in the class
     * `brake` Takes a number as a parameter. Decreases the speed variable in the class.

### Exercise Two

It should:
* Have one class:
  * `Garage`
    * Has one instance variable:
      `cars`. This is an array of hashmaps. Each hashmap relates to a car and
      contains the keys `registration_plate` and `make`.
    * Has 5 methods:
      * `initialize` This is provided for you.
      * `add`. Takes a hashmap (corresponding to a car) as a parameter. Appends to the list of cars variable in the class
      * `find_car`. Takes a string as a parameter. Returns a car (if found) with a matching registration plate.
      * `remove_car`. Takes a string as a parameter. Deletes a car (if found) with
      a matching registration plate from the list of cars variable.


### Exercise Three

Write a program that keeps a list of todos. It should:
* Have two classes:
 * `Todo`
   * Has two methods:
     * `initialize`: Creates a new todo object. Takes a string as a
       parameter and stores it on the todo object.
     * `text`: Takes no parameters. Returns the string that was
       stored when the todo object was created.
 * `TodoList`
   * Has three methods:
     * `initialize`: Creates a new todo list object. Takes no parameters.
     * `add`: Takes a todo object as a parameter.  Stores it on the
       todo list object.
     * `print`: Takes no parameters.  Creates a string of all the
       stored todos, one per line.  Each line should start with a
       `* `.  `puts`es the string.
       * e.g.
         ```
         * get milk
         * get the papers
         ```
