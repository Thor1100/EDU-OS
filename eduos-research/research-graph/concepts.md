# EduOS Research Knowledge Graph: Concepts

## Cognition & Learning Sciences

- [[knowledge-tracing]]: Probabilistic modeling of learner knowledge states over time; encompasses Bayesian Knowledge Tracing (BKT), Deep Knowledge Tracing (DKT), and advanced variants.
- [[learner-model]]: Representation of learner characteristics including knowledge state, preferences, behavior, affect, and goals; subsumes knowledge tracing and drives adaptive personalization.
- [[mastery]]: A learner's demonstrated proficiency in a skill or concept, often represented as a probability or score in adaptive systems.
- [[forgetting-curve]]: Mathematical model describing the decline of memory retention over time; critical for spaced repetition and retention modeling.
- [[cognitive-architecture]]: Unified theory of cognition (e.g., ACT-R, SOAR) that specifies how learning, memory, and reasoning interact.
- [[metacognition]]: Awareness and regulation of one's own learning processes, including self-assessment and learning strategies.
- [[cognitive-load]]: Mental effort required to process information; affects learning efficiency and instructional design.
- [[spaced-repetition]]: Learning technique involving review of material at increasing intervals to enhance long-term retention.

## Knowledge Representation

- [[knowledge-graph]]: Structured representation of concepts and relationships (prerequisites, dependencies, associations); central to EduOS KGS.
- [[prerequisite]]: A concept or skill that must be mastered before another can be effectively learned; forms directed edges in the knowledge graph.
- [[concept-mastery]]: The level of understanding a learner has about a specific concept, tracked over time via knowledge tracing.
- [[misconception]]: Incorrect or incomplete understanding of a concept; important for targeted remediation.
- [[skill-hierarchy]]: Hierarchical organization of skills from basic to complex, often with prerequisite relationships.
- [[ontology]]: Formal specification of a domain's concepts and relationships; can inform structured knowledge tracing.
- [[open-learner-model]]: Learner model made visible and editable by the learner to promote metacognition and agency.

## Educational Knowledge Graphs

- [[educational-knowledge-graph]]: Structured representation of domain concepts, skills, and their pedagogical relationships; central to EduOS KGS.
- [[prerequisite-detection]]: Automated or semi-automated inference of prerequisite relationships between concepts from data or text.
- [[learner-subgraph]]: Personalized projection of the global EKG enriched with individual learner state (mastery, misconceptions, goals).
- [[domain-graph]]: Global graph of all concepts and relationships in a subject area, independent of individual learners.
- [[graph-construction]]: Methods (expert curation, NLP, LLM, statistical) for building educational knowledge graphs.
- [[graph-reasoning]]: Inference over EKGs for pathfinding, gap detection, and recommendation (symbolic or neural).
- [[temporal-graph]]: Support for versioning, concept deprecation, and evolution of graph structure over time.
- [[misconception-graph]]: Graph representation of incorrect concepts and their relationships, supporting targeted remediation.

## Educational Technology

- [[intelligent-tutoring-system]]: Computer system providing immediate and customized instruction or feedback to learners.
- [[adaptive-learning]]: Educational approach that modifies content presentation based on learner performance and state.
- [[feedback-loop]]: Cycle of interaction (present → respond → assess → adapt) fundamental to adaptive education.
- [[learner-model]]: Representation of learner characteristics, including knowledge state, preferences, and behavior; updated via knowledge tracing.
- [[assessment]]: Process of evaluating learner knowledge; includes formative, summative, and diagnostic types.
- [[recommendation-system]]: System suggesting learning resources or next steps based on learner state and goals.
- [[personalization]]: Tailoring content, difficulty, and pacing to individual learner needs.
- [[digital-twin]]: Real-time digital representation of a learner that synchronizes state across environments.

## AI & Machine Learning

- [[bayesian-knowledge-tracing]]: Foundational probabilistic KT model using four parameters (pLearn, pForget, pGuess, pSlip).
- [[deep-knowledge-tracing]]: Neural network-based KT models (e.g., RNN, LSTM, Transformer) for capturing complex interaction patterns.
- [[graph-neural-network]]: Neural network operating on graph-structured data; used for incorporating prerequisite relationships into KT.
- [[meta-learning]]: Learning to learn; applied to KT for rapid adaptation to new learners (cold start mitigation).
- [[transfer-learning]]: Applying knowledge from one domain or learner to another; relevant for KT initialization.
- [[multi-modal-learning]]: Integrating data from multiple modalities (text, video, audio, interaction) into a single learning model.
- [[uncertainty-quantification]]: Providing confidence estimates alongside predictions; critical for risk-aware educational decisions.
- [[fairness]]: Ensuring AI models do not systematically disadvantage particular learner groups.
- [[interpretability]]: Making model-driven learner model decisions understandable to users; trade-off with predictive accuracy.
- [[ensemble-methods]]: Combining multiple models to improve robustness and generalization.
- [[affective-computing]]: Detection and response to learner emotions and engagement states.

## Learner Model Dimensions

- [[cognitive-state]]: Knowledge, skills, and conceptual understanding of a learner.
- [[affective-state]]: Emotional and engagement states (boredom, confusion, frustration, flow).
- [[motivational-state]]: Goals, self-efficacy, grit, and achievement motivation.
- [[behavioral-state]]: Interaction patterns, time on task, help-seeking, navigation.
- [[contextual-state]]: Device, location, time, and social setting of learning.

## Intelligent Tutoring Systems

- [[intelligent-tutoring-system]]: Computer system providing immediate and customized instruction or feedback to learners.
- [[model-tracing]]: Paradigm where the system maintains a cognitive model of skill execution and matches learner actions against it.
- [[constraint-based-tutoring]]: Approach modeling constraints that solutions must satisfy; violations indicate errors.
- [[dialog-based-tutoring]]: Natural language dialogue as the primary tutoring modality for open-ended interaction.
- [[scaffolding]]: Temporary support structures provided to learners, faded as competence increases.
- [[socratic-questioning]]: Tutoring technique using guided questions to help learners discover answers independently.
- [[worked-example]]: Step-by-step demonstration of a solved problem; effective for novices.
- [[pedagogical-strategy]]: High-level approach to instruction (direct instruction, discovery learning, Socratic, peer tutoring).
- [[hint-generation]]: Automated production of contextual, graduated hints to guide learners without giving answers.
- [[error-diagnosis]]: Real-time identification of the specific misconception or mistake underlying a learner's incorrect response.
- [[cognitive-tutor]]: Model-tracing tutor grounded in ACT-R cognitive architecture (e.g., Carnegie Learning's Cognitive Tutor).
- [[open-world-tutoring]]: Tutoring that incorporates uncontrolled, external learning experiences beyond a fixed content base.
- [[affective-tutoring]]: Adaptation of tutoring behavior based on detected learner emotions and engagement states.
- [[help-seeking]]: Learner behavior of requesting assistance; can indicate either productive self-regulation or help abuse.
- [[peer-tutoring]]: Collaborative learning arrangement where learners tutor each other, often orchestrated by an ITS.

## Data & Evaluation

- [[cold-start-problem]]: Difficulty of providing accurate recommendations/models for new users with minimal data.
- [[dataset]]: The ASSISTments, Junyi Academy, Cognitive Tutor, and other public datasets used for KT benchmarking.
- [[benchmark]]: Standardized evaluation protocol for comparing KT models; e.g., KT Benchmark Suite, Papers with Code leaderboards.
- [[auc]]: Area Under the ROC Curve; common metric for evaluating KT model performance.
- [[temporal-dynamics]]: Modeling how knowledge states change over time, including decay and consolidation.
- [[long-term-retention]]: Persistence of knowledge over extended periods; a key challenge for KT models.
- [[knowledge-decay]]: Decline in knowledge availability over time without reinforcement.
