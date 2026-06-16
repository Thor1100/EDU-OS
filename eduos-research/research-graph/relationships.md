# EduOS Research Knowledge Graph: Relationships

## Causal & Dependency Relationships

- [[knowledge-tracing]] → informs → [[learner-model]]
KT outputs (mastery probabilities) are the primary data source for maintaining the learner model.

- [[learner-model]] → drives → [[adaptive-learning]]
The learner model determines content difficulty, pacing, and next steps.

- [[learner-model]] → constrains → [[intelligent-tutoring-system]]
ITS pedagogical decisions are constrained by the learner's current state.

- [[prerequisite]] → constrains → [[learning-path]]
Prerequisite relationships define valid and optimal learning trajectories.

- [[cognitive-load]] → influences → [[knowledge-tracing]]
High cognitive load can affect performance, which KT must account for to avoid misestimating mastery.

- [[forgetting-curve]] → governs → [[long-term-retention]] modeling in [[knowledge-tracing]]
Retention patterns inform how KT should model knowledge decay over time.

- [[spaced-repetition]] ← requires → [[temporal-dynamics]] understanding
Effective scheduling depends on accurate temporal modeling of forgetting.

- [[affective-state]] → influences → [[cognitive-state]]
Learner emotions and engagement affect cognitive performance and knowledge acquisition.

- [[motivational-state]] → moderates → [[adaptive-learning]]
Motivation levels determine the effectiveness of different pedagogical strategies.

## Compositional Relationships

- [[intelligent-tutoring-system]] comprises → [[knowledge-tracing]] + [[learner-model]] + [[recommendation-system]]
These three components form the core adaptation loop of an ITS.

- [[learner-model]] comprises → [[cognitive-state]] + [[affective-state]] + [[motivational-state]] + [[behavioral-state]]
Holistic learner representation requires multiple dimensions.

- [[knowledge-graph]] subsumes → [[prerequisite]] + [[concept-mastery]] + [[misconception]]
The knowledge graph integrates structural and learner-specific knowledge.

- [[deep-knowledge-tracing]] subsumes → [[bayesian-knowledge-tracing]] in terms of expressive power
DKT generalizes BKT but sacrifices interpretability.

- [[digital-twin]] subsumes → [[learner-model]] + [[knowledge-graph]] + [[temporal-dynamics]]
A digital twin is a comprehensive, time-evolving learner representation.

## Comparative/Alternative Relationships

- [[bayesian-knowledge-tracing]] vs. [[deep-knowledge-tracing]]: interpretability vs. accuracy trade-off
BKT is transparent but limited; DKT is expressive but opaque.

- [[knowledge-tracing]] vs. [[cognitive-diagnosis]]: temporal tracking vs. fine-grained static diagnosis
CDMs identify specific attribute mastery; KT tracks how mastery evolves.

- [[spaced-repetition]] vs. [[adaptive-learning]]: complementary strategies
Spaced repetition optimizes retention timing; adaptive learning optimizes content selection.

- [[open-learner-model]] vs. [[black-box-model]]: transparency vs. predictive power trade-off
Open models promote trust and agency; black-box models may achieve higher accuracy.

## Synergistic/Integrative Relationships

- [[knowledge-tracing]] + [[knowledge-graph]] → [[hierarchical-kt]]
Combining KT with graph structure (prerequisites) produces more accurate, sparse-skill friendly models.

- [[knowledge-tracing]] + [[metacognition]] → [[self-regulated-learning]]
KT data can inform learners about their own knowledge, enabling better self-regulation.

- [[multi-modal-learning]] + [[knowledge-tracing]] → [[multi-modal-kt]]
Fusing diverse evidence sources (text, video, interaction) into unified mastery estimates.

- [[uncertainty-quantification]] + [[knowledge-tracing]] → [[risk-aware-adaptation]]
Using KT uncertainty to make cautious, safe learning recommendations.

- [[fairness]] + [[knowledge-tracing]] → [[equitable-kt]]
Ensuring KT does not systematically disadvantage any learner group.

- [[learner-model]] + [[affective-computing]] → [[emotion-aware-personalization]]
Incorporating emotional states into adaptive learning decisions.

- [[learner-model]] + [[digital-twin]] → [[lifelong-learning-infrastructure]]
Continuously updated learner representation enabling seamless education across contexts.

## Temporal Relationships

- [[assessment]] → updates → [[knowledge-tracing]] → updates → [[learner-model]]
Observations flow from interaction to model to state representation.

- [[concept-mastery]] changes over time due to → [[knowledge-decay]] and → [[learning-events]]
Mastery is dynamic, influenced by time and practice.

- [[learner-model]] evolves across → [[forgetting-curve]] and → [[spaced-repetition]] cycles
Long-term learner state is shaped by retention and review patterns.

## Scale & Implementation Relationships

- [[scalability-challenge]] impacts → [[knowledge-tracing]] in large-concept spaces
High-dimensional domains (programming, language) strain KT parameter growth.

- [[cold-start-problem]] affects → [[knowledge-tracing]] accuracy for new learners
Limited initial data reduces initial estimate reliability.

- [[interpretability]] requirements constrain → [[deep-knowledge-tracing]] adoption in production
Practical systems often require explainable mastery estimates.

- [[privacy-preservation]] constrains → [[learner-model]] richness
Richer models require more data, creating tension with privacy goals.
