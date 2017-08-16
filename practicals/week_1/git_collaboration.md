Git Collaboration 1
===================

## Learn to

* Collaborate with another person using git and Github.

## Introduction

Git is a tool we use to manage changes in our code projects.

## Exercise 1

Person on the left, on your computer:

* Create a new directory called 'introductions'
* Create a new git repository

Try out `git status` and see what it says — it's usually useful information. If it says 'Not a git repository' then something is wrong.

## Exercise 2

Person on the left, on your computer:

* Create a new file called `say_hello.rb`
* Ask your pair partner their name
* Add the following to it, replacing `<name>` with their name:

  ```
  puts "Hello <name>!"
  ```

* Commit this change

Try out `git log`. You should see your commit there.

## Exercise 3

Person on the left, on your computer:

* Create a new Github repository called 'introductions'
* Push your local changes to the Github repository
* Add your pair partner as a collaborator on the Github repository

Check out the repository page on Github. You should see your file there.

## Exercise 4

Person on the right, on your computer:

* Clone (don't fork) your pair partner's 'introductions' repository
* Run `say_hello.rb` to check it works
* Add a new line to 'say_hello.rb' saying hello back
* Commit and push your changes

Check back on that repository page — do you see your new changes on Github?

## Exercise 5

Person on the right, on your computer:

* Open the repository on Github and find the list of commits
* You should see two commits with your photos
* You should be able to click the photos and see your Github profile

Here is an example of how it should be:

![](https://i.imgur.com/JHOmDyq.png)

Here is an example of how it should not be:

![](https://i.imgur.com/pEcjcI8.png)

## Exercise 6

Both, on your respective computers:

* Set up your global git config to use:
  * Your real name
  * The email address you use with Github

Here is how you check it is set up correctly:

```bash
$ git config --global --get-regexp "user"
user.name Kay Lovelace
user.email kay@makersacademy.com
```

## Exercise 7

We change pair partners every day. Imagine it is a fresh new day, and you have a new person to pair with: Eric Cantona.

We want to pick up from where we left off, but without interfering with Lefty's repository. To do this, we create a new repository with the same code.

Person on the right, on your computer:

* Create a new repository on Github called 'introductions-2'
* Change your local repository remote to point at your new 'introductions-2' repository
* Write a new introduction to Eric
* Commit and push your changes

Eric's introduction should now be on Github!

## Exercise 8

Using git involves learning a lot of strange commands with weird names.

How can we learn about commands like this? List some techniques:

*
*

Getting good at finding out information like this will help you become a better software engineer. Each additional technique you learn might save you days or weeks of time in the long run.
