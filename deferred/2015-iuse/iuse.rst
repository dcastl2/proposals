.. role:: cite

.. raw:: latex

   \providecommand*\DUrolecite[1]{\cite{#1}}


.....................................................................................
Stemmatics: STEM Multidisciplinary Autograde Tutor for Individualized Course of Study  
.....................................................................................

.. raw:: latex

 \setlength{\parindent}{0pt}
 \setlength{\parskip}{8pt}
 \thispagestyle{empty}
 \pagebreak


===============
Project Summary
===============

.. TODO: return to this point and substantiate it.

**Overview**. The problems facing education in the sciences are manifold, and
the needs have never been higher both for industry and research. Students learn
at different rates. Some will struggle to grasp concepts that others (possibly
even the instructor) find intuitive.  To avoid missing opportunities for the
opening of a student's mind, the instructor needs to be able to give a student
a large number of problems and to provide individual assessment and guidance.
It is for this purpose that intelligent tutoring systems (ITS) were developed.

.. Assignment of partial credit in grading is manually intensive, leading to a
   reduction in the number of tests and quizzes an instructor can provide to
   identify problem students and their individual difficulties.

In computer programming instruction, intelligent tutoring systems are
computer-aided teaching and assessment tools designed to aid and supplement
course instruction. Most ITS systems provide adaptive tutoring, tailoring both
the course content and assessments for students so as to satisfy an objective
criterion. One example is to minimize *regret*, or the amount of time required
to learn a certain amount of material :cite:`tekin2014`.

This work is an effort to build the first ITS that is aware of and makes
significant use of all the Bloom taxonomic levels in guiding a student's
education. It will also integrate advanced automatic grading concepts, such as
dependency-graph-based short-answer grading and machine learning techniques for
code grading, to provide the student with better feedback on more advanced
topics. Further, it will provide a way to apply the scientific method to
teaching, and to enable progress in discovering and disseminating effective
teaching strategies.

.. *Intellectual Merit*

.. 1) How important is the proposed activity to advancing knowledge and
   understanding within its own field or across different fields?

**Intellectual Merit**. The proposed project advances knowledge by integrating
techniques in ITS research to provide a full-featured system which can profile
students, detailing their interests, strengths and weaknesses. Using profile
information, the ITS can then generate interesting problems to solve and cover
weak areas, while at the same time covering the full range of requisite
concepts in the course and holding the difficulty level across students equal.

.. 2) How well qualified is the proposer (individual or team) to conduct the
   project? (If appropriate, the reviewer will comment on the quality of prior
   work.)

  .. Brandt has been teaching computer science at Louisiana State University
     for over a decade. He has also been responsible for summer camps that
     introduced high school students to high performance computing, and
     incoming freshmen to the computer science department. While he has created
     and taught advanced courses, both at the graduate and undergraduate
     levels, he believes that the need for quality instruction is greatest at
     the introductory levels. It is there that the spark must be kindled to
     make a scientist, if it is to happen at all.

  .. Castleberry is a level three teaching assistant and is fully qualified to
     teach courses as the instructor of record. He has two years of teaching
     experience and eight years of tutoring experience, and his work with
     autograding tools have made an impact on the Computer Science department.
     He also holds a B.S.  in Psychology with a focus in cognitive and social
     psychology, and has experience with both experimental methods and
     statistical techniques in the field of psychology. This enables him to
     create a system which utilizes results and methods of cognitive
     psychology.

.. 3) To what extent does the proposed activity suggest and explore creative,
   original, or potentially transformative concepts?

The system ensures that the student undergoes a smooth progression across Bloom
cognitive taxonomic levels (Knowledge, Comprehension, Application, Analysis,
Evaluation, Synthesis), which is a task that no other ITS to date handles. This
is to guarantee the student is prepared for the problem which the ITS gives;
i.e.  the student meets all prerequisites to solve a given problem. The
proposed project also aims to improve on existing auto-grading techniques for
both short answers and code. In addition, the project endeavors to find a
generalized algorithm for scheduling content in such a way as to optimize each
student's acquisition of the material.

.. 4) How well conceived and organized is the proposed activity?
   
A software development plan has been conceived and is detailed in this
proposal. Prototype versions of some components of the software have already been implemented, such
as the databases, interfaces, and primitive auto-graders. 

.. 5) Is there sufficient access to resources?

  .. The Center for Computation and Technology hosts a virtual machine
     containing the software system, and has full-time IT staff dedicated to
     maintaining the servers and troubleshooting issues. Since both Castleberry
     and Brandt teach, there is a plenitude of students available to test the
     software and provide feedback on its features. Also, the LSU Computer
     Science department and Center for Computation and Technology have more
     than 30 faculty and instructors who may provide feedback on the system in
     the capacity of course instructor.

.. NOTE: Without some kind of letter of commitment from CS, it's probably
   better not to mention the 30 faculty)

**Broader Impact**. This project will advance discovery and understanding while
promoting teaching, training, and learning, for example, by training graduate
students, mentoring postdoctoral researchers and junior faculty, involving
undergraduates in research experiences, and participating in the recruitment,
training, and professional development of K-12 mathematics and science
teachers.

We believe that by combining these techniques we will be able to make a higher
percentage of students successful in computer science, particularly students
who have been disadvantaged by lesser exposure to scientific concepts and
training at an earlier age.


In addition, our ITS has the ability to aid students with disabilities, as it
offers the opportunity for a student to
self-teach in a way which stimulates initiative on the part of the student.
The ITS also offers further research potential in data-intensive educational
psychology, which may improve accessibility of STEM resources to women, low-SES
and minority groups, and persons with disabilities.

===================
Project Description
===================

----------
Prior Work
----------

Previous work by the authors support components of this research. A first
version of the database is already in place. A previous executable paper system
for scientific publications will form the basis for the executable paper
component :cite:`castleberry2013`. An executable paper system for statistical
analysis may be modified for automated experimentation
:cite:`castleberry2013b`.  Autograding scripts which use a parsing approach
have already been written, and may be appended to create a full-featured
autograder. 

**Intelligent Tutoring Systems and Pre-Testing**. Previous literature has shown
that pre-testing can identify students who are likely to succeed in a course
:cite:`katz2003`. Such pre-tests could be used by an ITS to construct a profile
for the student early on, so that the ITS takes into account the specific
capabilities and interests of the student at the onset of the course.

**Intelligent Tutoring Systems and Performance**.  A meta-analysis on ITS
concluded that ITS "outperformed, in aggregate, the other modes of instruction
to which it was compared in evaluative studies" :cite:`nesbit2014`. It has been
shown that the inclusion of context (student background, experiences, etc.) in
an ITS algorithm has a significant positive impact on student performance
:cite:`walkington2013`. 

A study has investigated community perceptions about stable and unstable
factors of students which predict success at learning how to code
:cite:`vivian2014`.  Of the important unstable attributes for successful
programming, the most frequently mentioned was confidence; of the stable
attributes, the most frequently mentioned were: motivation and interest,
patience, and language ability. This fact would be taken into account in the
development of an ITS.  An automated system which adjusts to the student's
learning rate is expected to improve confidence by scheduling problems which
are solveable; and may target the student's specific academic interests.

**Computer-Aided Testing and Bloom's Taxonomy**. Adaptive testing systems such
as PAT (Programming Adaptive Testing) have been created using multiple-choice
questions, which shifts difficulty level based on student responses
:cite:`chatzopoulou2010`; also CAT systems which use multiple-choice and
fill-in-the-blank and a taxonomy of difficulty resembling Bloom's
:cite:`sacristan2013`.  It has been proposed that Bloom's taxonomy can be
readily adapted to a learning analytics system :cite:`gibson2014`.  Our CAT
system will generate its problems to reduce the probability that a student will
see a problem more than once, an approach which has proven effective in
teaching students how to synthesize code :cite:`kumar2006`. Such a CAT could
also provide a disincentive to copy work. 

**Computer Aided Testing, Item Response Theory, and Factor Analysis**. IRT
holds the potential to validate assessments :cite:`sudol2010` as well as
estimate trait ability for on-line tests :cite:`merrouch`. IRT trait ability
estimates have been shown to correlate with Classical Test Theory estimates
while requiring fewer questions to assess trait ability :cite:`kim2014`.
Factor analysis can be used to group questions by concept and difficulty, as
well as student by trait level :cite:`lan2013`.  

**ITS/CAT hybrids**. ITS/CAT hybrid systems are relatively new.  *eTutor* is an
ITS/CAT hybrid which seeks to minimize *regret*, a function of final exam
score and time cost of teaching.  It proposes the ITS/CAT problem as a
scheduling problem; given a context (learning method, background), it should
schedule material appropriate to that context, then update the context based on
feedback from assessments :cite:`tekin2014`.  There was a 15.7\% improvement in
performance compared to the *random-rule* method of schedule, that is
scheduling a random test to everyone.

**Autograding**.  The use of machine learning in autograding is not new
:cite:`shashank2014`. In this
approach, features are counts of language constructs the program. Long feature
vectors with composite score labels are trained on neural networks, and have
proven effective in accurately estimating grade.  For short answer grading, a
method a method using dependency graph of words in the answers (using order of
the words) has been developed. Once a dependency graph is created, the degree
of alignment between the instructor and student solutions is measured
to yield a grade :cite:`mohler2011`. These systems have been shown to grade
approximately as well as humans, but are more consistent and less biased.

------------------
Introduction
------------------

The need for computer scientists and STEM education has never been been greater.
The Bureau of Labor and Statistics anticipates a growth of 22% in jobs for software
developers over the next decade :cite:`labor2012`. This need will be felt both
in research, in industry, and in national defense. In all three of these sectors,
simulation is driving science forward at an exponential pace and transforming
the world we live in.

And yet teaching, despite the progress that has been made in a number of relevant
technical areas, proceeds in much the way it has for hundreds of years. Even
with the advent of courses taught by web and quizzes and tests being delivered by
computer, the fundamental paradigm, which we call "the classical method of teaching,"
has continued largely unchanged:

.. The current paradigm for teaching an introductory computer science course is as
   follows, and may be called the classical method for teaching:

  + *Devise lesson plan*. In many cases, the learning objectives are
    spelled out flexibly. 
  
  + *Issue content* (i.e. lecture, or give text reading assignments) to the
    class; assume the students' trait abilities are equal.
  
  + *Devise questions* which are thought to measure trait ability for the
    content disseminated.  
  
  * *Create a rubric* after viewing the student solutions.
  
  + *Repeat* at step 2 according to the lesson plan for the next learning
    objective until the end of the course is reached.

  + *Assign grades*. Evaluate success per-student.
  
Unfortunately, this method has a few epistemic issues:  It does not define
objective criteria for satisfying the learning objectives.  The assumption that
students' trait abilities are equal is often false.  Without pre-validated
measures, there is no guarantee that the content or assessments issued will
fulfill the learning objectives, or at the pace needed by students,
preventing them from reaching their potential.  Rubricating the assessment *a posteriori*
invites bias into the grading procedures.  Most unfortunately, any scientific
observations on the course outcomes are resigned to the file cabinet.

The alternative is a method which converges the learning objectives to a
reasonable standard, the assessments to an acceptable validity, and the trait
ability of the student to an acceptable level as defined in the learning
objectives, as an effect of scheduling the content and assessments adaptively
to the students' needs.  What follows is a revision of the above method, which may be
called a scientific method for teaching: 

  + Clearly spell out learning objectives per-concept, using Bloom-taxonomic
    and trait ability levels as a reference.  For example, "the student should be
    able to write code using arrays at a mean performance level, where mean
    performance has been established using a validated assessment".

  + Pre-test to assess trait ability per-student to determine what content is
    necessary to issue to each student.  

  + Devise assessments from pre-validated, standardized, and rubricated item
    pools to ensure the validity of the assessments and objectivity in scoring
    them prior to issuing them.

  + Grade the assessments according to the rubric, preferably in an automated
    way.

  + Perform post-hoc analysis, including confirmatory factor analysis and
    comparisons-of-means tests to ensure that the correct questions were asked and
    that learning objectives were satisfied; and explain anomalies in the data.  

  + Evaluate the success of the course per-objective, and disseminate the
    findings so as to inform curriculum and lesson development for the next
    iteration.  If any novelties were found, publish them!

In spite of this method's epistemic virtues, the manual execution of it is a
time-consuming and laborious process.  Therefore, the proposed research
endeavors to automate it by means of a system whose components were heretofore
described.  


.. Since the project is a software system, this section will first give an
   overview of the system and how the components connect.  Following will be a
   more detailed description of the system components.  

---------------
System Overview
---------------

~~~~~~~~~~~~
Control Flow
~~~~~~~~~~~~

The system has four basic components: the *databases*, *auto-graders*,
*profilers*, and *schedulers*.

.. figure:: fig/system.eps
   :height: 200px
   :width:  200px
   :align:  center

   The system components. The data flow begins at the interface.

In a typical session, the student would log on to the interface, which would
then prompt the scheduler to examine the student's profile. The scheduler
selects a problem using its scheduling algorithm. When the student solves the
problem, it is auto-graded, and new information is added to the profile. This
cycle continues until the scheduler is satisfied, namely if cannot find any
more problems at the highest-level concept covered up to that point.

~~~~~
Terms
~~~~~

The databases consist of two types of content. The first type is
*information*, and the second is *assessment*.

.. A basic unit of information is an information item and for assessment, an
   assessment item. 

An *information item* is any atomic unit of information which may comprise a
lecture or reading assignment. It could take the form of a text block, diagram,
hyperlink, or code.  If it is a text block, it is self-contained, such that it
would make an apt paragraph or lecture slide.  If it is a code, it is compilable
and runnable. When grouped, information items form a *lesson*.

An *assessment item* is any atomic unit of assessment which may comprise a
homework, quiz, or test. An assessment item could be of a number of formats:
multiple-choice question, short answer question, freewriting, or code writing.
Many types of questions may be cast as short answer; for example,
fill-in-the-blank, crossword puzzles, or code completion problems.  When
grouped, assessment items form an *assessment*.

.. TODO: This next is too low-level. I like the part about the optimum schedule
   and maximizing performance, however.

Items may be presented in any order and at any time.  Let  :math:`a_i`
represent the index and :math:`t_i` the time of the :math:`i^{th}` item.  Then
a scheduled item could be represented as a 2-tuple: :math:`\langle a_i, t_i
\rangle`. The total ordering of all items and all their times, that is 

.. math::
  { 
  \langle a_1, t_1 \rangle, \ldots
  \langle a_i, t_i \rangle, \ldots
  \langle a_n, t_n \rangle
  }

is called the *schedule*. We assume that there is an optimal schedule of the
items; that is, the one that maximizes performance on assessment items in the
set. 

A *profile* of the student is a data structure containing the student's *trait
abilities*.  Our system uses IRT (item response theory) to measure trait
ability given a student's responses. For each question a student answers, the
lattice is updated with a new estimation of trait abilities.

What follows is a further explanation of the system components.

-----------------
System Components
-----------------

~~~~~~~~~
Databases
~~~~~~~~~

  + *Bloom level*.  This can be Knowledge, Comprehension, Application, Analysis,
    Evaluation, or Synthesis.  The Bloom level is decided when making the question
    (there is no automated means of obtaining it, but to some extent it is
    dependent on the format of the problem).
  
  + *Domain/subdomain*. This can be biology, chemistry, physics, mathematics,
    psychology, computer science, geography, art, music, etc. The domain is the
    primary field of study, and the subdomain is specified if the item is in
    some way related to another field.  For example, a computer program which
    transcribes RNA to DNA would lie in the domain of computer science and the
    subdomain of biology.
    
  + *Difficulty*.  That is, problem difficulty measured on a scale from -3 (very
    easy) to 3 (very difficult), with 0 being equal to the student's trait
    ability..

  + *Concept*.  This is the particular concept being tested.  For example,
    Variables, Expressions, Boolean Logic, For-Loops, etc. 

In addition, assessment items have:

  + *Format*.  This is the format of the problem; it can be True/False, Multiple
    Choice, Short Answer, Freewriting, or Code Writing. 

  + *Solution*. This is the minimum required information for the auto-grader to
    grade the student's response to an assessment item.


The databases will also have profile information for each student. The student
profile takes the form of a 3-dimensional *lattice* which will be described
in the section on profiling.

.. figure:: fig/data.eps
   :scale: 50%
   :align: center

   Database records. The similarly-tagged assessment and information items
   allow for automatic dependency calculation.


.. figure:: fig/lrotate.eps
   :scale:  70 %
   :align:  center

   An example problem. The upper-land-hand corner is tagged with details
   of the problem.


~~~~~~~~~~~~
Auto-graders
~~~~~~~~~~~~

*Code autograding*. A system which uses parsing has been created to grade
simple programs. Parsing expressions for output, source code, or error messages
are placed in a parsing expression grammar file. Rubrics are placed in a
corresponding grading scheme (scheme) file. If the expression is successfully
parsed, points are awarded (or deducted, if negative). Expressions may be
arbitrarily complex.  It is up to the user to write parsing expressions for the
autograder.

.. figure:: fig/log.eps
   :scale:  70%
   :align:  center

   Log output from an example LSU Autograde execution.

We propose to follow the work done by :cite:`shashank2014` and augment this system
to autograde programs applying machine learning :cite:`shashank2014` to
abstract syntax trees (AST). An AST may be readily obtained from various
existing projects, e.g. the Rose compiler for C++ :cite:`quinlan2000rose`, the
Eclipse JDT parser :cite:`eclipse-jdt`, etc.  In this approach, feature vectors
are created from ASTs and program output. They consist of counts of language
constructs in the program. Long feature vectors with composite score labels
will be trained on neural networks; then once sufficiently trained, the
networks will be used to auto-grade future student codes. The existing parsing
auto-grader may be used to validate the result of the machine-learning
approach for tightly constrained problems.

.. TODO: Say something about the success already achieved in this area, as
   people may be skeptical that any useful grading can be done using this
   technique.

.. NOTE: The following stuff is good.

*Short answer autograding*. The parsing autograder is not in principle limited
to code; it can grade short answers as well, provided expressions may be
written to parse the answer. However, not all correct short answers that a
student provides are conceivable at the time of writing an autograde rubric.
Thus we propose to extend the autograder to handle short answers in a more
dynamic fashion.

.. figure:: fig/stanford.eps
   :scale: 50%
   :align: center

   A dependency graph of the sentence "Lists of integers and characters were
   rotated by one element clockwise." The dependency graph gives a
   representation of the sentence structure, which may then be compared against
   a set of instructor solutions.

One method of grading short answer questions is to create a dependency graph of
words in the answers (using order of the words), then measure the degree of
alignment of the student and instructor graph :cite:`mohler2011`.  Dependency
graphs are created using the Stanford Dependency Parser, and node-to-node
matching is done using the Hungarian algorithm.  A score for graph-to-graph
alignment is then computed to yield a similarity measure.  Pearson's r for
manual vs. autograde for the best algorithm was .518, a moderate correlation.
The validity of such a method hinges on the allowed length of the response
and the quality of the training sets.  Thus we propose to replicate this
method, but experiment with constraints on the response length until the
algorithm converges to an acceptable Pearson's r.

.. TODO: Here too we must say something about the success already achieved in
   this area, as people may be skeptical that any useful grading can be done
   using this technique.

~~~~~~~~
Profiler
~~~~~~~~


.. TODO: Maybe pick a more advanced topic like Recursion.  Try to make this
   less detailed.

The student can be profiled by examining performance per-concept, Bloom level,
and difficulty level.  For example, a student may have high performance with
respect to Comprehension of For-Loops at Medium difficulty, but low performance
with respect to Application of Boolean Logic at Easy difficulty.  The percentage
of credit awarded for each *concept* ``x`` *Bloom level* ``x`` *difficulty* can
be calculated and loaded into a 3D matrix, a lattice-like structure which we
refer to as the student's performance lattice, or simply *lattice*. We refer to
each element of the lattice as a cell.

As an alternative to percentage-based calculation, Item Response Theory (IRT)
is used to provide estimates of a student's ability level for each cell.  IRT
provides a superior estimate of what is referred to as trait ability--that is,
whatever ability corresponds to the cell (e.g. Medium-difficulty Comprehension
of For-Loops). Whereas classical test theory (CTT) looks at the student's score
relative to the class distribution, IRT takes into account several other
factors. These include the item discrimination, item difficulty, and
probability of guessing. Item discrimination tells how good of an indicator the
question is of trait ability (it is based on how many well-performing students
pass it).  Item difficulty is based on the percentage of students who
satisfactorily pass the question. The probability of guessing applies to
True/False (.5) and Multiple Choice (1/n) questions, and is set to 0 for
open-ended questions.  The logic behind IRT is that poorly discriminating
questions should not count as much for estimating a student's trait ability,
higher-difficulty questions should count more for it, and success on questions
which have a high probability of guessing do not necessarily provide an
accurate measure of trait ability.  Scoring 50% on a true/false test of
knowledge test does not necessarily indicate that a student knows 50% of the
material; likely less than 50% is known, since the probability of guessing is
50% :cite:`embretson2000`.

.. figure:: fig/irt.eps
   :scale: 50%
   :align: center

   The probability curve as a function of the difference between the student's
   trait ability and the difficulty of the item. Higher item discrimination
   causes the curve to sharpen at (:math:`theta`-:math:`beta`)=0. A non-zero probability of guessing
   the answer (as in the case of multiple choice) raises the lower asymptote to
   that probability.

IRT may be summarized in a formula which gives the probability that the student
will correctly answer a question given the item discrimination :math:`\alpha`,
the difficulty :math:`\beta`, the probability of guessing :math:`\gamma`, and
the student's trait ability :math:`\theta`:

.. math::

   P(correct) = \gamma + (1 - \gamma) \frac{e^{\alpha(\theta-\beta)}}{1 + e^{\alpha(\theta-\beta)}}.

That is, if the student's trait ability is low relative to the difficulty, the
probability of answering correctly approaches the probability of guessing. If
the trait ability is high relative to the difficulty, the probability
approaches 1. If the item discrimination is high, the probability sharply
increases if the student's trait ability is just slightly higher than the
difficulty, and sharply decreases if just slightly lower.

Given this equation, it is possible to estimate the student's trait ability
given the item discriminations, difficulties, and probabilities of guessing all
for all the questions she has answered. We create a product of the P-equations
for her response set to generate a function which gives the probability that
she gave the response set she did given a certain trait ability. We then find
the maximum of this function, and the corresponding x-value gives the most
likely trait ability.


.. figure:: fig/max.eps
   :scale: 50%
   :align: center

   The likelihood that a student's difference (:math:`\theta`-:math:`\beta`) would be a certain value
   given her response set.  To find the most likely difference, we look at
   the maximum on the curve (approximately 2.02 in this graph).

The utility of profiling the student's performance with respect to the Bloom
levels, concepts, and domains is in scheduling problems which cover all the
Bloom levels and concepts while allowing for flexibility within domains.  The
end-goal of any programming course is Synthesis of code using the highest-level
concepts covered in the course.  Once a student performs satisfactorily on a
cell, the ITS need not schedule any more problems for that cell; it may proceed
to higher concepts, Bloom levels, or difficulties.  To ensure synchronization
with other students in the course, thresholds may imposed for given times (e.g.
it may require that halfway through the course, the student should have
mastered Medium-difficulty Synthesis of For-Loops).

.. figure:: fig/lattice.eps
   :scale: 50%
   :align: center

   The lattice shows trait abilities of the student relative to each concept,
   bloom level, and domain.  This lattice indicates that a physics context
   helps the student understand and apply knowledge of expressions.

It is likely that the student's response is more than a function of merely
Bloom level, concept, and domain. Therefore we propose to integrate a technique
known as factor analysis into the profiler.  Factor analysis is a technique
used to extract hidden, or latent, factors which may influence observed data.
For example, score may be a function of Bloom level, concept, and domain; but
it may also be due to that the problem has a strong verbal component, is worth
more points, targets previous experiences of the student, or is more engaging
for reasons not related to the existing data on the problem.  The student may
or may not know what it is about certain problems that enable her to solve
them.  In this case, an examination of the student's response data for all
problems will reveal commonalities among subsets of problems which are not able
to be explained by difficulty, Bloom level, concept, or domain.

.. TODO: Factor analysis is also what allows you to determine whether two
   questions really test different things. Correct? You could talk about that.

.. figure:: fig/factors.eps
   :scale: 50%
   :align: center

   The figure shows an example of observables (white circles) and hidden, or
   latent, factors which they depend upon (gray circles). Attendance, homework
   grades, or test scores may depend to varying extents on the number of hours
   of sleep the student has, the number of hours the student has studied, and
   the interest level of the student in the course. Factor analysis seeks to
   isolate the weights on (importance of) hidden factors given the observed
   data.

Factor analysis can then classify these problems as being more or less likely
to be solved by the student (for whatever reason). Since the factor loadings
are calculated to be independent of problem difficulty (i.e. not correlated to
difficulty), the scheduler may safely schedule those problems more likely to be
solved without compromising fairness to the student. With factor analysis, the
profiler can thus automatically account for the importance of other attributes
of problems without the instructor (or even student) necessarily knowing what
they are.

Factor analysis can also be used to confirm whether or not questions on a test
do, in fact, measure the constructs which they are supposed to measure. For
example, if a question which actually measures Analysis of a concept is placed
with questions which measure Application ability, factor analysis could be used
to detect that the question is miscategorized.

~~~~~~~~~
Scheduler
~~~~~~~~~

The scheduler resolves dependencies among assessment items via a topological
sort, so that those items which need to be solved first will be seen by the
student first.  Dependency information can automatically calculated from item
information. Concepts have an ordering, as do Bloom levels; and
higher-difficulty items depend on lower-difficulty ones.  Dependencies may also
be added manually.

.. figure:: fig/items.eps
   :align:  center
   :scale:  70%

   Dependency graph for three interrelated items.

The scheduler uses profile information to schedule problems which are suitable
for the student to solve. It is assumed that in the student's lattice, there is
a cell which represents the highest level that the student functions at for
that concept. We want the student to function at the highest level possible
(difficult Synthesis problems). Thus dependency lists may be generated for the
target cell and the student's current cell.  The solved problems may be
subtracted from the target cell list to produce a list of all problems which
the student needs to solve in order to arrive at that level. The scheduler
will schedule these problems.

.. figure:: fig/deps.eps
   :align: center
   :scale: 70%

   A dependency graph of items. A depends on B and C. However, B and its
   dependencies have been solved, so only C and its subtree will be scheduled.

If the item dependencies are specified correctly and the item content is
self-contained, a topological sort on the items may produce a free-flowing
text. For example, if one restricts the domain to Computer Science, and
includes items and problems of the Biology subdomain, one can create a text to
teach programming concepts from a course specifically to students of biology. 

With a large enough item database, a course could potentially be derived from a
query. Such a query would resemble course objectives outlined in a syllabus.
Since all content and assessment items are tagged with concepts and Bloom
taxonomic levels, any such set of derived material would be easily reviewable
by administration or accreditation boards; provided the tags are correct, it is
provable that the course content reflects the objectives in the "syllabus".

~~~~~~~~~
Interface
~~~~~~~~~

The ITS will feature a simple and clean web interface which allows for the
student to type in responses and receive immediate feedback from the
auto-grader, except in the case of freewriting questions. The student logs in
through a secure login interface, then may proceed to view a lesson or take an
assessment.

As discussed earlier, the scheduler may be used to produce a full item
schedule. The interface would allow the course instructor (or student) to
produce mini-texts, slides, worksheets, quizzes, homeworks, or tests, available
in a variety of formats.  To produce these, the course instructor need only
type the items into the database and write a query to constrain the item
schedule to a particular concept, level, difficulty, domain, and so forth.


.. figure:: fig/ws.eps
   :align: center
   :scale: 60%

   A worksheet produced by a query. 

The interface will have the capability to serve textbooks and study guides
which are adapted to the student's interests. For study guides, the profiler
may select questions for which the student has low trait ability, and the
scheduler may produce a sorted list of information items corresponding to these
trait abilities. For textbooks, the profiler contains information about the
student's strong areas, and may serve information items which are aligned
to the student's academic domain interests.

Since assessment items are linked to information items via dependencies, the
student will easily be able to backtrack to information necessary to solve the
problem.  The format is envisioned to be similar to a wiki; explanations of
solutions may also contain linked to the prerequisite information items.  The
instructor may also query solutions to obtain solution manuals for assessment
items. 

.. raw:: latex

   \pagebreak


==================
Intellectual Merit
==================

The need for computer scientists and STEM education has never been been greater.
The Bureau of Labor and Statistics anticipates a growth of 22% in jobs for software
developers over the next decade :cite:`labor2012`.

With regard to the scientific impact of the proposed work:

 + *The system*. The system itself would be the first in existence to ensure a
   smooth progression across all Bloom taxonomic levels while at the same time
   allowing code writing, short answer, and multiple-choice formats. 

 + *Autograding*. The system will combine cutting-edge techniques in code and
   short-answer autograding, and will improve on them by synthesizing a
   parsing-based approach to the machine learning approach (for code grading)
   and the dependency-graph approach (for short answer grading). The system
   would be the first to combine these features in an ITS.

 + *Profiler*. The system would be the first to profile a student over the
   total concept hierarchy for all Bloom-taxonomic levels for interdisciplinary
   subjects using IRT estimates.

 + *Scheduler*. The scheduler allows for a practical and efficient means of
   obtaining course content and assessments, both by use of the student 
   profile and by means of querying. 


Following is a description of the qualifications of the authors:

  + Brandt has been teaching computer science at Louisiana State University for
    over a decade. He has also been responsible for summer camps that introduced
    high school students to high performance computing, and incoming freshmen to
    the computer science department. While he has created and taught advanced
    courses, both at the graduate and undergraduate levels, he believes that the
    need for quality instruction is greatest at the introductory levels. It is
    there that the spark must be kindled to make a scientist, if it is to happen at
    all.

  + Castleberry is a level three teaching assistant and is fully qualified to teach
    courses as the instructor of record. He has two years of teaching experience
    and eight years of tutoring experience, and his work with autograding tools
    have made an impact on the Computer Science department.  He also holds a B.S.
    in Psychology with a focus in cognitive and social psychology, and has
    experience with both experimental methods and statistical techniques in the
    field of psychology. This enables him to create a system which utilizes results
    and methods of cognitive psychology.

.. raw:: latex

   \pagebreak

===================================
Broader Impact of the Proposed Work
===================================

.. NOTE: We want to talk about advances in learning, not saving time.

.. TODO: This section needs strengthening.

.. TODO: more on minorities.

The intelligent tutoring system may broaden participation of under-represented
groups by establishing collaborations with students and faculty from
institutions and organizations serving women, minorities, and other groups
under-represented in the mathematical sciences.

Self-efficacy is a major factor in engagement with material and problem-solving
performance, according to community perceptions :cite:`vivian2014`. It has been
shown that self-efficacy in STEM disciplines differs between women and men
:cite:`boy2013`:cite:`gonzalez2012`, low-SES and high-SES groups
:cite:`gonzalez2012`, and minority and majority groups; also that groups with
relatively low self-efficacy benefit from a mentoring program to raise it
:cite:`macphee2013`.  In the case of women in particular, an examination of
long-term evidence suggests that initiatives have had little impact on the
gendered patterns of participation  :cite:`smith2011`. Many women finish a
terminal bachelor's degree due to self-efficacy related reasons
:cite:`boy2013`.  It is possible that use of an ITS which schedules so as to
adapt to the student at the onset of an introductory-level course may bolster
self-efficacy, thus improving participation and retention :cite:`jraidi2011`. 

.. TODO: more on disabled.

The system may help disabled students. Those with physical disabilities who
reside in rural areas without transportation services may be able to use the
system remotely.  As one study by Hawley at al.  indicates, one of the problems
with transition from high school to higher education is "restricted access to
facilities in STEM environments": students with visual or speech impairments
often have barriers to participation in class which teachers do not know how to
accommodate; and some students with physical disabilities have lack of access
to reliable public transportation unless they live in the city
:cite:`hawley2013` :cite:`chapman2014`. An ITS can be used remotely by those
students with physical disabilities who could otherwise use computer
technology.  For those with mental disabilities, particularly those which
impair learning rate, the tutoring system may adapt to their learning rate.

The auto-grading component advances education at the graduate level. Graduate
assistants grade undergraduate work.  Writing autograde templates is a less
time-consuming but more cognitively demanding task; hence when grading, the
graduate student may learn more about parsing expressions or machine learning
techniques for autograding, while the remainder of her time may be freed for
tutoring undergraduates. Thus in the capacity of a teaching assistant, the
graduate student may learn more about teaching technologies while gaining more
hands-on experience with tutoring. Undergraduates in turn benefit from the
increased availability of teaching assistants.

Undergraduate students also benefit from the immediacy of auto-grading.  The
system may allow more feedback than would be possible otherwise.  Work may be
multiply auto-graded until the student converges to solution, if desired.
Since the system schedules different problems to each student at a rate adapted
to that student and potentially auto-grades until the student solves the
problem, it mitigates incentive to copy work, further ensuring that the
problem-solving process engages the student. 

The system may enhance infrastructure for research and education by
establishing collaborations with researchers in industry and government
laboratories, developing partnerships with international academic institutions
and organizations, and building networks of U.S. colleges and universities.
Item data may potentially be pooled to create collaborative efforts in STEM
course instruction; instructors may publish new content for the public and
be credited for their contributions.

.. figure:: fig/community.eps
   :align: center
   :scale: 20%

   A vision of the reach of the system through the south Louisiana education
   system.

The ITS may have benefits beyond the scope of undergraduate education. It may
broaden dissemination to enhance scientific and technological understanding by
presenting results of research and education projects in formats useful to
students, scientists and engineers, members of Congress, teachers, and the
general public. 

ITS offers further research potential in data-intensive educational psychology.
Its assessment items are not limited to the course content; it could also
intersperse psychological measures.  If a researcher were interested in finding
whether or not e.g. gender stereotype threat played a role in performance on
math tests, she could schedule questions from a psychological assessment to
measure gender stereotype threat.  Having ready electronic access to the
student’s raw responses to math questions, the researcher could easily perform
the analysis to answer her research question. The ITS is also, of course,
amenable to studies which examine effects of constructs such as stereotype
threat during problem-solving.

.. Benefits to society may occur, for example, when results of research and
   education projects are applied to other fields of science and technology to
   create startup companies, to improve commercial technology, to inform public
   policy, and to enhance national security.


.. raw:: latex

   \pagebreak

================
References Cited
================

.. raw:: latex

   \bibliographystyle{plain}
   \bibliography{iuse}

..
  =====================
  Biographical Sketches
  =====================
  
  ----------------
  Senior Personnel 
  ----------------
  
  ---------------
  Other Personnel 
  ---------------
  
  ===============================
  Budget and Budget Justification
  ===============================
  
  ==================
  Salaries and Wages
  ==================
  
  ===============
  Fringe Benefits 
  ===============
  
  =========
  Equipment  
  =========
  
  ==========================================
  Facilities, Equipment, and Other Resources
  ==========================================
  
  ===================================================
  Special Information and Supplementary Documentation
  ===================================================

.. raw:: latex

   \pagebreak

======================================
Postdoctoral Researcher Mentoring Plan  
======================================

A postdoctoral researcher will be funded for two years for this project. The
researcher will be guided through a postdoctoral mentoring plan, which will
include mentoring activities designed to improve the skillset and experience
necessary for professional and career advancement in academia.

The mentoring plan will include an individual development plan by the student
to be discussed with the PI and co-PIs of the project.  The plan will include a
list of long-term research objectives to be fulfilled through the course of
postdoctoral work, and the steps necessary to fill those objectives. An initial
meeting will be scheduled to review the plan.

In addition, the mentoring plan will include scheduled interactions with
mentors. These will take the form of regular meetings to discuss progress on
the project and career advancement topics for an academic position, such as:

  + the researcher's curriculum vitae
  + the application process for faculty positions
  + the search for funding for projects
  + effective mentorship of undergraduate students
  + scientific publication and presentation
  + professional networking

Here, the researcher will provide self-assessment according to
the fulfillment of objectives laid out in the development plan, and receive
feedback from mentors on the progress and direction of the work.

The postdoctoral researcher will review the Responsible Conduct of Research
training annually to encourage mindfulness of issues related to the integrity
of the research process, and be given opportunities to engage in open
discussion on responsible conduct.

The fulfillment of objectives in the development plan, as well as structured
discussions with the researcher on satisfaction with the mentoring program,
will provide an indication of success of the mentoring program. 

.. raw:: latex

   \pagebreak

====================
Data Management Plan  
====================

The Center for Computation and Technology (CCT) has two servers to support
data preservation and management: the file server for storing and publishing
data, and the database server for data-intensive applications.

The collected data consists of the following:

  + the student's raw response data, which will be stored as text strings
    (except codes, which will be stored as plain-text files) in a SQL database on
    CCT's database server
  
  + mouse cursor movement and idleness data, which will be stored on CCT's file
    server

Since the data involves human subjects, confidentiality and privacy will be
ensured by deleting any identifying information associated with the student's
raw response data.  To assign the participant extra credit as incentive, the
participant's name will be collected; however it will be removed from the
database server as soon as the credit is awarded. 

If the participant has agreed to have their data disclosed, the data will be
made available for the general public on the CCT's file server at a permanent
address after all identifying information is removed to minimize the risk of
the participant being uniquely identified.

Data products include the following:

  + derivative or pre-processed data, profile information

  + source codes for programs or scripts to analyze raw data

  + binary-encoded apparatus for performing classification and/or clustering
    tasks on data, such as neural networks

  + the results of statistical tests; also charts, diagrams, tables, graphs,
    etc., which describe the raw data or results obtained from the data

Also, in the interest of time-efficient documentation, hypotheses, experimental
designs, notes, drawings, and so forth will be collected in a laboratory
notebook by the graduate research assistant and postdoctoral researcher. These
will be dated in the margins, kept legible, and will be sufficiently
comprehensive so that the PI or co-PIs who read it could replicate the
procedures. The documents will be scanned into an electronic format at
conclusion of each phase of the study, and important notes may be typeset for
annual reports.

Results may be published in academic journals or in conference proceedings,
and presented at conferences or seminars.

