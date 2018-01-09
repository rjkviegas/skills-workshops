# Working with Legacy Code: doing archaeology

So you've started a new job. The team's midway through a major refactor: the creaking system build thirty years hence just isn't cutting it any more, and it's being replaced with something new.

The first step in working with legacy code is usually to **replace the legacy code with something modern that does the same thing**. Then you can add features to the new thing.

But how do you get to grips with a system written in some weird language, in an unfamiliar framework, using software principles from the 80s?

The answer is: **document it through archaeology**.

> This principle applies to _any_ legacy system, including ones that were only recently-built. If it lacks documentation and you're new to it – it's legacy.

### Learning Outcomes

By the end of the workshop, you'll be equipped to dive into a legacy codebase, understand how it works, and share your findings through documentation.

- State the easiest way to get insight into a legacy application is through documenting it ('archaeology').
- Explain how to use writing documentation to get insight into how an app works.
- Do archaeology on a Rails app, adding some documentation.

## Starter

We'll build a shared model of Rails, identifying the most important bits, and we'll look at some good examples of documentation.

## Main

Take [this legacy app](https://github.com/makersacademy/debugging-rails). Add one or more documentation commits to it. This could be:

- Documentation of a single object's interface
- Documentation of how multiple objects interact
- Documentation of how to set up and run the project
- Some other documentation
- For an added challenge, try adding some docs using [RDoc](https://ruby.github.io/rdoc/)

### What's a documentation commit?

A 'documentation commit' involves writing some small piece of text or a diagram that explains how part of a system works. The next newbie after you will be able to use this diagram or prose to understand the system: saving them from figuring it out.

Also, doing documentation commits will encourage senior members of your team to give you feedback on your understanding of the system.

Only once everyone understands the current state of the project can everyone understand the work-to-be-done. Flying without a shared understanding is a recipe for lack of direction.

## Plenary

We'll get together and discuss our contributions. We'll answer questions like:

- What makes a good documentation commit?
- How do we do better archaeology?
