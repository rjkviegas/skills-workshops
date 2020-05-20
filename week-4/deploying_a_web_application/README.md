# Deploying a web application

## Learning objectives

1. Explain what deployment is
2. Explain what happens during deployment
3. Deploy a simple web app

## Starter

We'll start by recapping what, on a very crude scale, the internet is because we'll need this mental model close to be in our working memory, for later on.

Next, we'll talk about what deployment means.  Again, in very crude terms.

## Main

During this exercise you'll deploy a simple Ruby application using a service called Heroku.

The application you'll deploy is a tiny app that includes some promotional information about Heroku (they did _make_ the application after all).

### Set up

1. [Get yourself a free Heroku account](https://signup.heroku.com/dc)
2. Do `brew install heroku/brew/heroku` to install the Heroku command line tools
3. Log in to Heroku by doing `heroku login`, which will open a browser and take you to the Heroku site

### Deploy

We'll use a toy application that Heroku made for this purpose.  First you'll need to get the codebase on your machine by grabbing the code from their GitHub repo

`git clone https://github.com/heroku/ruby-getting-started.git`

Then `cd` into that new directory.  Since you're not going to run this application locally, you don't need to install the dependencies on your machine.  I.e. You don't need to do `bundle install`.

The next step is to create an app on the Heroku platform, so that Heroku is ready to receive this codebase.  You can do this using the Heroku CLI

`heroku create`

> Now have a look in your Heroku account! 🎉

OK, now you need to get the codebase for this toy-application onto the Heroku platform.

> Pause here for a moment – what tool do you alreay use to move code around? 🤔

You can push your code to the Heroku platform using Git.

One of the things that `heroku create` did, along with creating the application for you on the Heroku platform, was add a new remote repo to your local repo.  Have a look!

`git remote -v`

The new remote repo is called `heroku` and you can push your code there using Git.

> **Pay close attention to the output!**

`git push heroku master`

### Challenges
1. Read the output from `git push heroku master` and try to figure out what Heroku is doing.
2. If deployment went smoothly (i.e. there was no error message) you should see the URL of your deployed app in the output.  Go there in your browser!
3. Try navigating to `<your url>/widgets` (you'll see an error message).  How can you find more information?  Maybe there's something on the Heroku platform that will help!
    <details>
    <summary style="color:green;"><b>Click here if you're really stuck</b></summary>
    If you go to the Heroku site, you can find the logs for your application and you'll find some interesting things in there.
    </details>
4. Try to fix it!
    - Think about how you would do this on your own machine first
    - Then try to do it on your own machine
    - Now you need to do it on Heroku's machine!
      <details>
      <summary style="color:green;"><b>Click here if you're really stuck</b></summary>
      The Heroku platform allows you to open a terminal session on their machine, via your browser.  To do this, find out how to 'Run console' on your Heroku application, via the Heroku platform.  Once you've found out how to do that, use the `bash` command to open a bash session and do `bundle exec rake db:migrate`.  If this completes without error, you should now be able to navigate to `/widgets` and CRUD widgets to you hearts content.
      </details>

## Plenary

We'll regroup to discuss what you've done, observed and been stuck on.  If there's time, we can also talk about some other hosting platforms and deployment processes.

## Further reading

1. [Deploying ruby apps on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)
2. [Continuous integration](https://martinfowler.com/articles/continuousIntegration.html)
3. The engineering team you join will probably use a tool like [Jenkins](https://www.jenkins.io/) (but it will be configured to run and deploy automatically ⚡️).