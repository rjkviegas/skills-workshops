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

The deployment appears to go smoothly but the migration is not run so when the learners go to `/widgets` they see an error.

To find the cause of this error they need to look in the application logs either on the Heroku platform or using the Heorku CLI.

## Plenary ( 20 minutes )

Ask the learners to report their findings around what happens during deployment. What did they observe?  What did it all mean?

## Possible extensions

* Create an app that has a system dependency that must be installed using a package manager command.  Don't include the package manager command! 😈