# Skills Workshops

All Skills Workshops held at Makers Academy.

## What are Skills Workshops?

Whole-cohort activities that take 1 - 1.5 hours. Each trains a specific skill, while addressing certain concepts along the way.

## How do I run them?

Instructions for running any Skills Workshop are available as `INSTRUCTIONS.md` in each workshop directory. Skills Workshops are split into three parts: a **Starter**, **Main**, and **Plenary**.

#### Before the workshop
- Decide on what the _main point_ of the workshop is. For instance: "Students can do encapsulation well." Keep it vague. Having this in mind will help keep your Starter tight and focussed.

#### Starter

In the Starter, the coach:

- Introduces the headline of the workshop, tying to previous workshops if possible
- Assesses how confident the cohort feels in each of the three upcoming Learning Objectives for the workshop
- Demonstrates whatever is required to get to the **Main**.

Starters generally last for 15 - 20 minutes.

##### Tips for effective Starters

- Facilitate where possible. That is; don't just talk, constantly ask questions of the cohort to help you demo code/processes.
- Feel free to make mistakes and ask students to prompt you to move forward.
- An easy way to check student confidence in a Learning Objective is to ask them to give you 'thumbs': 100% up means 'I can definitely do that', 100% down means 'no idea what that means', and somewhere in the middle is 'maybe'.
- Keep it really tight. Give students enough, but a Starter is not a lecture. It's tempting to to off-piste and help students out with a bunch of ancillary skills they're struggling with. Avoid getting too deep into things that aren't the _main point_ you identified before the workshop.

#### Main

In the Main, students work on an extended activity. Instructions for students are found in the `README.md` of each workshop.

In the Main, the coach:

- Sets a time limit for students to regather for the Plenary.
- Checks with students to motivate them to solve problems, but doesn't solve them.
- Ensures effective pairing is happening.

Mains generally last for 30 - 45 minutes.

##### Tips for effective Mains

- Students forget when they started a task. So it's better to say 'regather at 11' than to say 'you have half an hour'
- If students are regularly running over time, set a big, noticeable timer on-screen. [Google has one](https://www.google.co.uk/search?q=timer).
- Few students complete the Main activity. This is intended and good: students should always feel under 'time pressure' during a Main.
- Some Mains in this repo are [_differentiated by task_](differentiation/README.md). This is a structure to ensure that all learners make good progress towards the _main point_, regardless of where they are at the beginning of the Main.
- For repos that aren't differentiated by task, [_differentiate by support_](differentiation/README.md).

#### Plenary

In the Plenary, students demonstrate their solutions to the Main activity. The coach:

- Facilitates discussion and points out key areas for improvement. Ideally, these key areas are linked to the week's outcomes.
- Returns to the Learning Objectives and re-assesses cohort confidence.
- _OPTIONAL_ Gathers feedback on the workshop.

Plenaries generally last for 15 - 25 minutes.

##### Tips for effective Plenaries

- Reiterate things. It's generally better to pick out one key problem three times than three problems once.
- Use a randomiser to randomly choose who demos their code: otherwise, only the most confident people in the cohort will volunteer. Using a randomiser ensures the heat is off you as a coach.
- Point out to students that their confidence in these topics has risen, and that this is the key point of the workshop.
- One effective way to encourage learner reflection is to give students post-it notes on the way out of the workshop, and to write 1 - 3 things they picked up from this workshop on it. They can stick it on the door on the way out and you can get a sense of how the workshop went.

## Adding more Workshops

When adding workshops, please follow the existing structures so everything stays lovely and consistent:

- Workshops have a Starter, Main, and Plenary
- Instructions for delivering the Workshop are in an `INSTRUCTIONS.md`
- Student guidance for the Main activity are in a `README.md`
- The `plenary` branch _exclusively_ contains material relevant to running the Plenary (i.e. usually a model completed Main)
- Workshops are named `skill_<number>` where `<number>` indicates the order the workshop should be given in the sequence of similar workshops
