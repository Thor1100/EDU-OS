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

## Cognitive Architectures

- [[cognitive-architecture]]: Unified theory of cognition specifying fixed mechanisms for perception, memory, learning, reasoning, and action (e.g., ACT-R, SOAR, CLARION, LIDA).
- [[act-r]]: Adaptive Control of Thought–Rational; production-rule architecture with declarative, procedural, and working memory.
- [[soar]]: State, Operator, And Result; problem-space architecture with universal subgoaling and chunking.
- [[clarion]]: Connectionist Learning with Adaptive Rule Induction ON-line; dual-process (implicit/explicit) architecture with motivational and metacognitive subsystems.
- [[lida]]: Learning Intelligent Distribution Agent; biologically inspired architecture with global workspace theory and multiple memory systems.
- [[production-rule]]: Condition-action rule (IF condition THEN action) used in symbolic cognitive architectures to model procedural knowledge.
- [[declarative-memory]]: Memory for facts, concepts, and episodes; corresponds to semantic and episodic memory in cognitive architectures.
- [[procedural-memory]]: Memory for skills, habits, and condition-action rules; enables automatic, fluent performance.
- [[working-memory]]: Limited-capacity, fast-decay system holding currently active information for cognitive processing.
- [[universal-subgoaling]]: SOAR's mechanism of automatically creating subgoals when an impasse is reached during problem solving.
- [[chunking]]: Learning mechanism in SOAR where solving a subgoal creates a new production rule, speeding future similar problem solving.
- [[global-workspace-theory]]: Theoretical framework (Baars, Dehaene) implemented in LIDA where multiple processes compete for conscious attention.
- [[dual-process-theory]]: Theory positing two cognitive systems—fast, automatic, implicit processes and slow, deliberate, explicit processes.
- [[cognitive-cycle]]: Recurring sequence of perception, attention, understanding, action selection, and motor action in architectures like LIDA.
- [[model-tracing]]: Diagnosis technique where a system simulates learner problem solving using a cognitive architecture and compares predictions to observed behavior.
- [[impasse]]: State in problem solving where no applicable operator exists, triggering subgoaling.
- [[subgoal]]: A decomposed goal created to resolve an impasse in hierarchical problem solving.
- [[compilation]]: The process by which declarative knowledge transforms into procedural skill through practice (ACT-R).
- [[cognitive-cycle]]: Recurring sequence of perception, attention, understanding, action selection, and motor action in architectures like LIDA.
- [[dual-process-theory]]: Theory positing two cognitive systems—fast, automatic, implicit processes and slow, deliberate, explicit processes.
- [[global-workspace-theory]]: Theoretical framework (Baars, Dehaene) implemented in LIDA where multiple processes compete for conscious attention.
- [[activation-based-retrieval]]: Memory retrieval mechanism based on activation levels (recency, frequency, context) rather than direct addressing.
- [[metacognitive-state]]: Awareness and control of one's own cognitive processes, including planning, monitoring, and evaluation.
- [[motivational-state]]: Drives, goals, and self-efficacy that modulate cognitive engagement and effort allocation.

## Assessment Systems

- [[assessment-system]]: The methods and tools used to evaluate learner knowledge, skills, and competencies. Central to the adaptive learning loop in EduOS.
- [[classical-test-theory]]: A psychometric theory that posits an observed test score is composed of a true score and an error term.
- [[item-response-theory]]: A family of models describing the relationship between a latent trait (ability) and the probability of a specific response to an item.
- [[computerized-adaptive-testing]]: A testing paradigm where the next item is dynamically selected based on the learner's estimated ability, aiming for maximum precision with minimum items.
- [[diagnostic-assessment]]: Pre-instruction assessment to identify prior knowledge, misconceptions, and learning gaps.
- [[formative-assessment]]: Ongoing, real-time assessment to provide feedback and adjust instruction during the learning process.
- [[summative-assessment]]: End-of-unit assessment to certify mastery and evaluate learning outcomes.
- [[automated-assessment]]: Use of algorithms to score learner responses without human intervention. Includes selected-response, short-answer, essay, and code scoring.
- [[process-based-assessment]]: Evaluation of learner behavior during a task (e.g., response time, hint use, error patterns) in addition to final outcomes.
- [[differential-item-functioning]]: A statistical property where items function differently for learners from different groups with the same underlying ability, indicating potential bias.
- [[assessment-validity]]: The degree to which an assessment measures what it claims to measure (content, construct, predictive, consequential validity).
- [[assessment-reliability]]: The consistency and stability of assessment scores (internal consistency, test-retest, inter-rater).
- [[auto-essay-scoring]]: Automated grading of essays using NLP, feature-engineering, or deep learning models.
- [[auto-code-evaluation]]: Automated assessment of programming solutions using static/dynamic analysis and test-case execution.

- [[cold-start-problem]]: Difficulty of providing accurate recommendations/models for new users with minimal data.
- [[dataset]]: The ASSISTments, Junyi Academy, Cognitive Tutor, and other public datasets used for KT benchmarking.
- [[benchmark]]: Standardized evaluation protocol for comparing KT models; e.g., KT Benchmark Suite, Papers with Code leaderboards.
- [[auc]]: Area Under the ROC Curve; common metric for evaluating KT model performance.
- [[temporal-dynamics]]: Modeling how knowledge states change over time, including decay and consolidation.
- [[long-term-retention]]: Persistence of knowledge over extended periods; a key challenge for KT models.
- [[knowledge-decay]]: Decline in knowledge availability over time without reinforcement.

## Educational Agents

- [[educational-agent]]: Autonomous or semi-autonomous software entity that interacts with learners to support educational goals; can adopt roles such as tutor, peer, mentor, assessor, or companion.
- [[pedagogical-agent]]: Agent specifically designed to deliver instruction, provide feedback, or scaffold learning; often embodied or conversational.
- [[multi-agent-educational-system]]: A system where multiple specialized educational agents coordinate to provide rich, social, and role-diverse learning experiences.
- [[conversational-agent]]: Agent that uses natural language as its primary interaction modality; may employ NLP, dialog management, or LLM-based generation.
- [[embodied-agent]]: Animated or visual agent that communicates through gesture, facial expression, and body language as well as speech or text.
- [[teachable-agent]]: Agent that acts as a novice learner, requiring the human learner to explain, correct, or teach it; leverages the learning-by-teaching effect.
- [[peer-agent]]: Agent that simulates a peer learner for collaborative problem-solving, discussion, or social learning.
- [[mentor-agent]]: Agent that provides long-term guidance, goal-setting, career advice, or met Предыдущийcontextual mentoring beyond immediate instruction.
- [[companion-agent]]: Agent focused on emotional support, motivation, engagement monitoring, and learner well-being.
- [[metacognitive-agent]]: Agent that prompts and supports self-regulated learning through planning, monitoring, and reflection prompts.
- [[assessor-agent]]: Agent specializing in formative and summative evaluation, providing diagnostic feedback and adaptive assessment.
- [[agent-orchestrator]]: Agent (or service) responsible for managing multi-agent coordination, role assignment, turn-taking, and conflict resolution.
- [[agent-persona]]: The character, role, and communicative style adopted by an educational agent; influences learner trust and engagement.
- [[persona-effect]]: The phenomenon where learners perform better simply because an animated or personable agent is present, even when tutoring content is identical.
- [[agent-consensus]]: Agreement among multiple agents on learner state or the next pedagogical action; a core challenge in multi-agent educational systems.
- [[pedagogical-guardrails]]: Constraints (curriculum, knowledge graph, learning science) that prevent agents (especially LLM-based) from producing unsound or misaligned output.
- [[learning-by-teaching]]: Educational mechanism where learners deepen understanding by teaching or explaining concepts to others (including agents).
- [[mixed-initiative-dialogue]]: Dialogue where both the agent and the learner can steer the conversation, requiring flexible dialogue management.

## Learning Analytics

- [[learning-analytics]]: The measurement, collection, analysis, and reporting of data about learners and their contexts to understand and optimize learning and the environments in which it occurs.
- [[educational-data-mining]]: Application of data mining, machine learning, and statistical methods to educational data; closely related to and overlapping with learning analytics.
- [[descriptive-analytics]]: What happened? Summarizes past and current learner behavior via dashboards, counts, and summary statistics.
- [[diagnostic-analytics]]: Why did it happen? Identifies root causes of learning outcomes through correlation, clustering, and error pattern analysis.
- [[predictive-analytics]]: What will happen? Forecasts future learner states and outcomes using classification, regression, and temporal models.
- [[prescriptive-analytics]]: What should be done? Recommends or applies optimal actions using reinforcement learning, optimization, and rule-based systems.
- [[multimodal-learning-analytics]]: Integration of video, audio, physiological, and interaction data for richer learner understanding than interaction logs alone.
- [[at-risk-prediction]]: Classification of learners likely to fail, dropout, or disengage; a core predictive analytics task.
- [[dropout-prediction]]: Temporal or static prediction of learner attrition; used for early warning systems.
- [[engagement-analytics]]: Measurement and modeling of learner engagement patterns, including time-on-task, session frequency, and interaction depth.
- [[learning-dashboard]]: Visualization interface for learners, educators, or administrators displaying analytics-derived insights.
- [[bias-in-learning-analytics]]: Systematic unfairness in predictions, recommendations, or insights due to historical data, feature proxies, or model design.
- [[fairness-in-learning-analytics]]: Ensuring analytics predictions and interventions do not systematically disadvantage particular learner groups.
- [[differential-privacy]]: Mathematical framework ensuring aggregate statistics do not reveal individual information; used for privacy-preserving analytics.
- [[federated-learning]]: Distributed training approach where models are updated locally and only summaries are shared, reducing central data collection.

## Misconception Detection

- [[misconception-detection]]: Automated identification of incorrect or incomplete learner understandings from behavior, responses, and interaction patterns.
- [[misconception]]: A robust, systematically incorrect understanding of a concept; distinct from slips or guesses.
- [[bug-library]]: Curated collection of known procedural errors and their underlying misconceptions in a domain.
- [[procedural-misconception]]: Systematic error in executing a multi-step process (e.g., carrying in addition, order of operations).
- [[conceptual-misconception]]: Fundamental misunderstanding of a domain concept (e.g., heavier objects fall faster).
- [[ontological-misconception]]: Incorrect categorization of entities or processes (e.g., heat as a substance rather than a process).
- [[preconception]]: Misconception rooted in everyday experience rather than formal instruction.
- [[error-pattern-analysis]]: Clustering and classification of learner errors to surface recurring systematic patterns.
- [[misconception-graph]]: Graph structure representing misconceptions and their relationships (causal, co-occurrence, prerequisite).
- [[misconception-aware-knowledge-tracing]]: Extension of KT models to jointly track skill mastery and misconception activation.
- [[refutation-text]]: Instructional text that explicitly states and then refutes a common misconception.
- [[predict-observation-explanation]]: Instructional activity where learners predict an outcome, observe the actual outcome, and explain the discrepancy; proven effective for conceptual change.
- [[slip-vs-misconception]]: The challenge of distinguishing transient errors from persistent incorrect understanding.
- [[cognitive-diagnosis-model]]: Probabilistic models (DINA, DINO, G-DINA) that classify learners into latent attribute/misconception states.
- [[rule-space-method]]: Technique mapping learner response patterns to specific knowledge states and misconceptions.
- [[remediation-strategy]]: Pedagogical approach for addressing a detected misconception (feedback, re-teaching, POE, Socratic dialogue, analogy).
