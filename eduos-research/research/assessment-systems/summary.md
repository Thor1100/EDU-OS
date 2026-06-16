# Assessment Systems

## Overview

Assessment systems are the measurement and evaluation backbone of any educational platform. They define how learner knowledge, skills, and competencies are measured, tracked, and used to inform teaching decisions. In EduOS, assessment is not merely a terminal activity but a continuous, adaptive process that forms the primary feedback loop for knowledge tracing, learner modeling, and personalized tutoring.

## Foundational Theories

### Classical Test Theory (CTT)
CTT posits that every observed test score is composed of a true score plus error. It relies on aggregate statistics (mean, variance, reliability) and is straightforward to implement but limited in its ability to adapt to individual learners or provide detailed diagnostic information.

### Item Response Theory (IRT)
IRT models the relationship between a learner's latent trait (ability) and their probability of correctly answering an item. Key models include:
- **1PL (Rasch):** Models item difficulty.
- **2PL:** Models difficulty and discrimination.
- **3PL:** Adds a guessing parameter.
- **4PL:** Adds an upper asymptote parameter.

IRT enables adaptive testing, where item selection is tailored to the estimated ability level of the learner, improving measurement precision and reducing test length.

### Computerized Adaptive Testing (CAT)
CAT leverages IRT to dynamically select the next item based on the learner's current ability estimate. It aims to maximize information gain per item, providing efficient and precise assessment. Key algorithms include Maximum Likelihood Estimation (MLE) and Bayesian estimation (e.g., Expected A Posteriori, EAP).

## Types of Assessment

### Diagnostic Assessment
- **Goal:** Identify prior knowledge, misconceptions, and learning gaps before instruction.
- **Methods:** Pre-tests, concept inventories, misconception-driven diagnostic tests.
- **Role in EduOS:** Seeds the initial learner model; identifies which concepts need remediation vs. which can be skipped.

### Formative Assessment
- **Goal:** Monitor learning in real-time to provide ongoing feedback and adjust instruction.
- **Methods:** In-problem hints, step-level correctness, response-time analysis, self-explanations, dialog-based probing.
- **Role in EduOS:** Primary input to knowledge tracing and learner modeling; drives the adaptive loop.

### Summative Assessment
- **Goal:** Evaluate learning at the end of an instructional unit to certify mastery.
- **Methods:** Final exams, standardized tests, portfolio evaluation, project-based assessments.
- **Role in EduOS:** Updates long-term retention models; provides evaluation data for the effectiveness of tutoring strategies.

## Automated Assessment Techniques

### Selected-Response Auto-Grading
- Binary correctness (multiple-choice, fill-in-the-blank).
- Partial credit scoring for multi-step problems.
- Constraint-based evaluation for structured domains (e.g., SQL, programming).

### Constructed-Response Auto-Grading
- **Short Answer:** NLP-based semantic similarity, keyword matching, transformer-based scoring.
- **Essay Scoring:** Automated Essay Scoring (AES) using feature-based models (e.g., e-rater) or deep learning (BERT, GPT-based scorers).
- **Code Evaluation:** Static and dynamic analysis, test-case-based scoring, style analysis.

### Process-Based Assessment
- **Hint Request Patterns:** Distinguishing help-seeking from help-abuse.
- **Response Latency:** Fast responses may indicate guessing; slow responses may indicate struggle.
- **Error Pattern Analysis:** Mapping specific mistakes to known misconceptions.
- **Navigation Behavior:** Time-on-task, sequence of interactions, revisitation patterns.

## Assessment and the Adaptive Learning Loop

Assessment data is the fuel for the EduOS adaptive engine:
1. **Assessment Event** (e.g., a learner answers a problem).
2. **Knowledge Tracing Update** (e.g., BKT or DKT updates the probability that the learner has mastered the skill).
3. **Learner Model Update** (e.g., the learner's cognitive, affective, and motivational states are updated).
4. **Adaptive Decision** (e.g., the tutoring system selects the next problem, hint, or strategy based on the updated model).
5. **Instructional Delivery** (e.g., the system presents the next piece of content).

This closed loop ensures that the system is continuously learning about the learner and adapting to their needs.

## Validity, Reliability, and Fairness

### Validity
- **Content Validity:** Do the assessment items cover the intended learning objectives?
- **Construct Validity:** Does the assessment measure the intended construct (e.g., problem-solving, not just recall)?
- **Predictive Validity:** Do assessment scores predict future performance?

### Reliability
- **Internal Consistency:** Do items on the same test measure the same underlying construct?
- **Test-Retest Relibility:** Are scores stable over time for the same learner?
- **Inter-Rater Reliability:** Do different graders (human or automated) assign similar scores?

### Fairness
- **Differential Item Functioning (DIF):** Do items function differently for learners from different demographic groups with the same underlying ability?
- **Algorithmic Bias:** Do automated scoring systems penalize certain linguistic styles, dialects, or cultural references?
- **Accessibility:** Are assessments accessible to learners with disabilities (visual, auditory, motor, cognitive)?
