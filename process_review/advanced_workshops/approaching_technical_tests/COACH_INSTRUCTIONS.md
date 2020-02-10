# How to approach technical tests

The goal of this workshop is to encourage developers to follow a defined process to break down a problem and prepare for coding, specifically when approaching technical tests.

It's worth noting that this process would also be useful in Reviews, and in general for breaking down larger coding problems into more manageable steps.

## Intro

1. Run through the questions in the README.

The goal is to make them aware than there are many different types of technical test, and preparation will be slightly different for each of these, but the overall process remains the same.

Make sure the following types of test are discussed:

- Take home, with and without time limit
- Pairing
- Observed
- Online, recorded
- Any other types you're aware of!

2. Introduce the example technical test (linked in README), clarify the requirements. Use the first part of the problem, not the extension challenge.

3. Ask the group to pair up, and discuss what they would do to prepare for solving this challenge.


## Main

For each of the following steps, first ask the cohort for their suggestions and discuss, then guide them to the most appropriate next step.

The below suggestions are guidance only, feel free to add your own approach!

### Step 1: Define the problem

The goal of this step is to map out the user journeys, in other words to define the features that can be tested.

There are several ways they could do this:
    1. Process map
    2. Sentences
    3. User stories
    4. BDD (if, when, then)

Ask the group for some examples of user journeys based on the requirements.

### Step 2: Identify edge cases

If they haven't included edge cases in the user journeys, take some time to identify 1 or 2 edge cases and note these down.

### Step 3: Break the problem down

- What are the different techniques we can use to break a problem down?
  - Nouns/Verbs
  - Inputs/Outputs
  - 'types' of problem e.g. track funds, randomise colours.  

The goal here is to start to identify possible 'units' of code.

### Step 4: Practice

If there are any problems that are particular challenging, they might want to do some research or spike some code.

Recommend having an open discussion here about when to stop researching and spiking.

### Step 5: Create a build plan

The goal here is to decide which order to build the features of the application.

They should aim to start with the smallest viable, but complete feature, and add features to handle more and more complex scenarios.

Crowdsource the first feature test from the group.

Identify the first unit test that this feature test will lead to.

Give an opportunity to talk about how feature tests and unit tests work together in TDD.

### Step 6: Project Setup

Emphasise the need to spend 10-15 minutes on project setup - gather the minimum setup from the group:
    1. README
    2. Gemfile/package.json
    3. Test framework(s)
    4. Linter
    5. Anything else!

### Step 7: Write first feature test

Only now are they ready to start TDD!
