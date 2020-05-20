# Coach instructions

The intention is that learners deploy a simple application and understand what that means and / or what is involved by observing the output.

## Starter ( 10 minutes )

Using whatever mechanism you feel is appropriate (e.g. think/pair/share, group discussions, etc) ensure the cohort are thinking about

1. What the internet is (clients and servers)
2. What deployment is (moving application code from client to server)

Try to facilitate the conversation to keep things simple at first.

## Main ( 30 minutes )

The learners deploy an app by going through the process described [here](https://devcenter.heroku.com/articles/getting-started-with-ruby?singlepage=true).

The Heroku guide is not shared at the start, so that the learners have to think about what's going on.  It's included in 'Further Reading'

> When this workshop was first created, following the guide from Heroku does not properly set up the database (the migration is not run).  This leaves the learners with an interesting problem to investigate but we're relying on Heroku not fixing this!

Run through the process of deploying the app to check that Heroku have not fixed it before you run the workshop.

Further down the line we should fork this repo and refactor it so that we can maintain our own set of interesting bugs!

## Plenary ( 20 minutes )

Ask the learners to report their findings around what happens during deployment. What did they observe?  What did it all mean?

## Possible extensions

* Create an app that has a system dependency that must be installed using a package manager command.  Don't include the package manager command! 😈