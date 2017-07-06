# Differentiation

[Differentiation](https://en.wikipedia.org/wiki/Differentiated_instruction) at Makers Academy is:

> Ensuring that all learners – regardless of starting point – can make progress towards an outcome.

This is a guide to how to do differentiation during Skills Workshops.

### Different Forms of Differentiation

###### By Outcome

This is the least effective form of differentation. In essence, it is assumed that learners will fall into different categories of 'achievement' towards the outcome:

- **All** will make basic progress
- **Most** will make ok progress
- **Some** will make good progress

Differentiation by outcome is the 'default form' of differentiation. For instance, in a workshop about Encapsulation:

- **All** will be able to define encapsulation
- **Most** will be able to explain encapsulation
- **Some** will be able to apply encapsulation

There is no work required to do this form of differentiation. But it sucks for everyone except the **some**.

###### By Support

This is a more effective form of differentiation. In essence, coaching support is applied differently to different groups:

- **Weak students** will be supported by a coach through the materials, in a small-group constant-engagement scenario.
- **Middle students** will just get on with the materials, possibly in pairs or teams, with the coach available if they have questions
- **Strong students** will get on with the materials, probably solo or in pairs, and cannot access a coach for questions.

Differentiation by support does not require much effort, but it does require that the coach identifies different student groups (or that students are trained to do this for themselves). For instance, in a workshop about Encapsulation:

- **Weak students** will encapsulate some code in a small group, supported and prompted by a coach
- **Middle students** will encapsulate the same code in pairs, with the coach available if needed
- **Strong students** will encapsulate the same code solo. They can't ask for coach support.

Differentiation by support can have adverse effects on ability to self-lead in learning, especially for weaker students (who need that behaviour to be developed most).

###### By Task

This is a very effective form of differentiation. In essence, students complete different tasks depending on their 'level':

- **Novice students** will be supported by a scaffold through the activity. This could be a [CBL scaffold](https://github.com/makersacademy/course-design/issues/56), or something [more sophisticated](https://en.wikipedia.org/wiki/Instructional_scaffolding). They may repeat the activity without the scaffold, too.
- **Intermediate students** will do the activity without a scaffold.
- **Advanced students** will do the activity without a scaffold, but with an [extension](https://github.com/makersacademy/course-design/issues/57).

Differentiation by task requires planning effort, or experience paired with on-the-fly activity-building. For instance, in a workshop about Encapsulation:

- **Novice students** will encapsulate some code, supported by a checklist scaffold that guides them how to do it.
- **Intermediate students** will encapsulate some code.
- **Advanced students** will encapsulate some code, and then encapsulate some code in a language in which they are unfamiliar.

With time, students can frequently be trained to assess themselves accurately and pursue a task that makes the most sense for them. This happens because each pathway provides optimum 'value' to students depending on their level (i.e. advanced students don't go for the 'Novice' task as it bores them, and novice students don't go for the 'Advanced' task as it knocks their confidence). However, some coach effort is required to encourage persistent novices to move towards Advanced pathways.

### How do I decide which 'group' students should do the activity in?

Differentiated instruction works best with effective [Assessment for Learning](https://en.wikipedia.org/wiki/Assessment_for_learning) ('AfL'). Mini-assessments can be as simple as asking for 'thumbs' on the outcomes or primary learning objective ('main point').

Depending on students' responses to the assessment, the coach can split people into different groups, to differentiate by support or task.

For example, just before the Main activity of a workshop about Encapsulation, the coach asks:

> How would you feel out of ten if you were asked to encapsulate this code in a job interview?

The coach then splits the group, with different expectations communicated to each (example is differentiation by task):

- **0 – 4** Use a scaffold structure to work through encapsulating the code, then repeat without the scaffold
- **5 – 8** Encapsulate the code without a scaffold structure
- **9 – 10** Encapsulate the code without a scaffold structure, then repeat in a different language

There is much more information about using AfL to guide differentiated activities in the landmark paper ['Inside the Black Box'](https://weaeducation.typepad.co.uk/files/blackbox-1.pdf). There is also an interesting [BBC documentary](https://www.youtube.com/watch?v=J25d9aC1GZA) with one of the authors.

### How to build differentiated Skills Workshops

Skills Workshops at Makers Academy are typically constructed via [Backward Design](https://en.wikipedia.org/wiki/Backward_design). That is:

1. Identify (a) primary outcome(s)
2. Structure (additional) outcomes according to [Bloom's Taxonomy](http://sjmog.github.io/posts/501_self-guided-learning-1/)
3. Write a [Main Activity](../README.md) to practice these outcomes
4. Write a [Starter Activity](../README.md) to introduce or demonstrate new info required to tackle the Main
5. Add a [Plenary](../README.md), possibly with 'exemplar' code or materials from the Main. This is typically on a `plenary` branch.

Where possible, we try to differentiate the Main:

- Take the Main activity. 
- [Write a scaffold (:construction:)](https://github.com/makersacademy/course-design/issues/56) for achieving success. This is the 'support' task route.
- [Write an extension(:construction:)](https://github.com/makersacademy/course-design/issues/57) to do once success has been achieved. This is the 'extension' task route.

###### Examples

- [Differentiating the Encapsulation workshop](https://github.com/makersacademy/skills-workshops/commit/03c29dca716db9271ae53dc3047e62cea0f7d920) (diff, ~15 lines)
