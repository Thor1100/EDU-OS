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

- [[educational-knowledge-graph]] → constrains → [[adaptive-learning]]
EKG structure (prerequisites, partonomies) constrains what content can be presented next.

- [[learner-model]] + [[educational-knowledge-graph]] → [[learner-subgraph]]
The learner model is projected onto the domain graph to produce a personalized learner-specific graph.

- [[educational-knowledge-graph]] → enables → [[intelligent-tutoring-system]]
An ITS reasons over the graph to provide prerequisite-aware, gap-sensitive tutoring.

- [[intelligent-tutoring-system]] → integrates → [[knowledge-tracing]]
KT provides real-time mastery estimates that drive problem selection and feedback.

- [[intelligent-tutoring-system]] → integrates → [[learner-model]]
The learner model provides holistic state (cognitive, affective, motivational) for pedagogical decisions.

- [[intelligent-tutoring-system]] → selects → [[pedagogical-strategy]]
Strategy selection adapts instruction to learner state, domain, and context.

- [[model-tracing]] → requires → [[cognitive-architecture]]
Model-tracing tutors ground diagnosis in unified theories of cognition (ACT-R production rules).

- [[scaffolding]] → fades-as → [[mastery]]-increases
Support is withdrawn gradually as learner competence grows.

- [[socratic-questioning]] → promotes → [[metacognition]]
Guided questioning encourages reflection on one's own understanding.

- [[error-diagnosis]] → identifies → [[misconception]]
Precise error diagnosis maps incorrect reasoning to known misconception patterns.

- [[affective-tutoring]] → responds-to → [[affective-state]]
Tutoring behavior adjusts based on detected emotions (frustration, boredom, confusion, flow).

- [[cognitive-architecture]] → informs → [[intelligent-tutoring-system]]
Unified theories of cognition provide theoretical grounding for tutoring system design (ACT-R → Cognitive Tutors).

- [[declarative-memory]] → compiles-to → [[procedural-memory]]
In ACT-R, repeated practice transforms declarative knowledge into fluent procedural skills.

- [[working-memory]] → constrains → [[cognitive-load]]
Limited working memory capacity imposes bounds on what learners can process simultaneously.

- [[cognitive-cycle]] → drives → [[feedback-loop]]
The recurring sequence of perceive-understand-act-evaluate structures the tutoring interaction loop.

## Temporal Relationships

- [[assessment]] → updates → [[knowledge-tracing]] → updates → [[learner-model]]
Observations flow from interaction to model to state representation.

- [[concept-mastery]] changes over time due to → [[knowledge-decay]] and → [[learning-events]]
Mastery is dynamic, influenced by time and practice.

- [[learner-model]] evolves across → [[forgetting-curve]] and → [[spaced-repetition]] cycles
Long-term learner state is shaped by retention and review patterns.

## Assessment Relationships

- [[assessment]] → updates → [[knowledge-tracing]]
Assessment outcomes (correctness, confidence, time) are the primary evidence for updating knowledge state models.

- [[assessment]] → informs → [[learner-model]]
Assessment results update cognitive, affective, and motivational dimensions of the learner model.

- [[diagnostic-assessment]] → seeds → [[learner-model]]
Pre-instruction assessments initialize the learner's knowledge state and identify prior misconceptions.

- [[formative-assessment]] → drives → [[adaptive-learning]]
Real-time formative data is the primary input for the system's adaptive decision-making loop.

- [[summative-assessment]] → validates → [[knowledge-graph]]
End-of-unit assessments can reveal flaws in prerequisite structures or concept mappings.

- [[computerized-adaptive-testing]] → optimizes → [[assessment]]
CAT tailors item difficulty to learner ability, maximizing information gain per item.

- [[process-based-assessment]] → enriches → [[learner-model]]
Behavioral data (latency, help-seeking, errors) provides a richer signal than final outcome alone.

- [[automated-assessment]] → feeds → [[knowledge-integration]]
Multi-modal assessment signals must be fused and normalized by the knowledge integration layer.

- [[assessment-validity]] + [[assessment-reliability]] → constrain → [[adaptive-learning]]
Only valid and reliable assessments should drive high-stakes adaptive decisions.

- [[differential-item-functioning]] → flags → [[fairness]]
DIF analysis is a key tool for detecting and mitigating algorithmic bias in assessments.

- [[assessment]] → triggers → [[feedback-loop]]
Assessment events initiate the core perceive-understand-act-evaluate cycle of adaptive tutoring.

- [[item-response-theory]] → enables → [[computerized-adaptive-testing]]
IRT provides the mathematical foundation for adaptive item selection in CAT.

- [[auto-essay-scoring]] → risks → [[bias]]
AES systems can encode biases from training data, penalizing certain linguistic styles.

- [[auto-code-evaluation]] → requires → [[knowledge-graph]]
Effective code assessment requires mapping problem features to specific skills and concepts.

## Scale & Implementation Relationships

- [[scalability-challenge]] impacts → [[knowledge-tracing]] in large-concept spaces
High-dimensional domains (programming, language) strain KT parameter growth.

- [[cold-start-problem]] affects → [[knowledge-tracing]] accuracy for new learners
Limited initial data reduces initial estimate reliability.

- [[interpretability]] requirements constrain → [[deep-knowledge-tracing]] adoption in production
Practical systems often require explainable mastery estimates.

- [[privacy-preservation]] constrains → [[learner-model]] richness
Richer models require more data, creating tension with privacy goals.

## Cognitive Architecture Relationships

- [[cognitive-architecture]] → informs → [[MAS]]
Cognitive architectures provide the theoretical blueprint for memory system design (declarative, procedural, episodic, working memory).

- [[cognitive-architecture]] → informs → [[RCS]]
Production rules, problem spaces, and dual-process reasoning from architectures directly shape the reasoning core.

- [[cognitive-architecture]] → constrains → [[adaptive-learning]]
Learning adaptations must be cognitively plausible (respect working memory, cognitive load, and skill acquisition stages).

- [[impasse]] → triggers → [[subgoaling]]
When no operator applies, a subgoal is generated to resolve the impasse.

- [[subgoal-resolution]] → produces → [[chunking]]
Solving a subgoal creates a new production rule, speeding future similar problem solving.

- [[compilation]] → enables → [[scaffolding-fading]]
As declarative knowledge compiles into procedural skill, external support can be gradually removed.

- [[working-memory]] → constrains → [[tutoring-presentation]]
Chunking, step-by-step presentation, and reduced extraneous load are necessary due to limited working memory capacity.

- [[activation-based-retrieval]] → governs → [[knowledge-access]]
The probability of retrieving a given knowledge chunk depends on its base-level activation (recency, frequency, context).

## Educational Agent Relationships

- [[educational-agent]] → embodies → [[intelligent-tutoring-system]]
Educational agents make ITS capabilities concrete through specific persona, role, and interaction design.

- [[pedagogical-agent]] → requires → [[learner-model]]
Pedagogical agents need accurate, multi-dimensional learner models to personalize instruction.

- [[multi-agent-educational-system]] → coordinates → [[educational-agent]]
Multi-agent systems require coordination, consensus, and conflict resolution among constituent agents.

- [[conversational-agent]] → uses → [[natural-language-processing]]
Conversational agents rely on NLP/NLU/NLG (including LLMs) for understanding and generating dialogue.

- [[embodied-agent]] → enhances → [[social-presence]]
Embodied agents improve engagement and trust through non-verbal cues (gesture, gaze, expression).

- [[teachable-agent]] → promotes → [[learning-by-teaching]]
Teachable agents leverage the pedagogical benefit of having learners explain concepts to another entity.

- [[peer-agent]] → enables → [[collaborative-learning]]
Peer agents scaffold collaborative problem-solving and discussion.

- [[mentor-agent]] → provides → [[long-term-guidance]]
Mentor agents go beyond immediate instruction to support goal-setting and career/academic advising.

- [[companion-agent]] → responds-to → [[affective-state]]
Companion agents monitor and respond to learner emotions, motivation, and well-being.

- [[metacognitive-agent]] → prompts → [[self-regulated-learning]]
Metacognitive agents encourage planning, monitoring, and reflection strategies.

- [[assessor-agent]] → updates → [[learner-model]]
Assessor agents provide evaluative data that feeds into the learner model and knowledge tracing systems.

- [[agent-orchestrator]] → manages → [[multi-agent-educational-system]]
Orchestration services manage agent lifecycles, role assignment, and conflict resolution.

- [[pedagogical-guardrails]] → constrain → [[llm-based-agent]]
Guardrails prevent LLM-based agents from producing hallucinations, misconceptions, or unsound pedagogy.

- [[intelligent-tutoring-system]] → integrates → [[educational-agent]]
ITS architectures increasingly incorporate one or more educational agents as the primary interaction layer.

- [[knowledge-graph]] → guides → [[educational-agent]]
The knowledge graph constrains and informs what an agent can teach, explain, or assess.

- [[cognitive-architecture]] → informs → [[educational-agent]]
Cognitive architectures provide theoretical grounding for how agents model and respond to learner cognition.

- [[assessment-system]] → validates → [[educational-agent]]
Assessment outcomes validate whether agent interventions actually improve learning.

- [[educational-agent]] → generates → [[pedagogical-strategy]]
Agents select and enact strategies (scaffolding, Socratic questioning, worked examples) based on learner state.

- [[learner-model]] → drives → [[agent-selection]]
The learner model determines which agent (or combination) is most appropriate at any given moment.

## Learning Analytics Relationships

- [[learning-analytics]] → enables → [[adaptive-learning]]
Data-driven insights from LA inform content sequencing, difficulty adjustment, and intervention timing.

- [[learning-analytics]] → feeds → [[learner-model]]
Analytics outputs (engagement, at-risk scores, mastery aggregates) are primary inputs to the learner model.

- [[predictive-analytics]] → triggers → [[early-warning-system]]
Predicted at-risk or disengagement signals initiate proactive interventions.

- [[predictive-analytics]] → informs → [[adaptive-learning]]
Forecasts of learner states guide preemptive pedagogical adjustments before problems crystallize.

- [[prescriptive-analytics]] → drives → [[pedagogical-strategy]] selection
Optimization and RL determine which instructional strategies to deploy based on predicted outcomes.

- [[assessment]] → generates → [[learning-analytics]] data
Assessment outcomes are among the richest and most reliable data sources for analytics.

- [[knowledge-graph]] → contextualizes → [[learning-analytics]]
Graph structure enriches analytics with prerequisite, difficulty, and conceptual relationship context.

- [[learning-analytics]] → validates and corrects → [[knowledge-graph]]
Aggregate analytics reveal structural flaws (e.g., unexpected failure clusters at a prerequisite link) in the knowledge graph.

- [[multimodal-learning-analytics]] → enriches → [[learner-model]]
Multimodal signals improve affective, behavioral, and engagement estimates beyond interaction logs alone.

- [[diagnostic-analytics]] → identifies → [[misconception]]
Error pattern analysis and clustering can surface misconceptions that can then be explicitly modeled and remediated.

- [[engagement-analytics]] → detects → [[affective-state]]
Interaction patterns (pauses, speed changes, help-seeking frequency) serve as behavioral proxies for emotions.

- [[differential-privacy]] + [[federated-learning]] → preserve → [[privacy]]
Privacy-preserving techniques constrain what analytics can centrally collect while enabling distributed model improvement.

- [[bias-in-learning-analytics]] → undermines → [[fairness]]
Biased predictions can systematically misdirect interventions, amplifying inequity.

- [[learning-dashboard]] → surfaces → [[open-learner-model]]
Dashboards make learner model information visible, supporting metacognition and agency.

## Misconception Detection Relationships

- [[misconception-detection]] → feeds → [[learner-model]]
Detected misconceptions rocking misconceptions enrich the learner model beyond simple mastery tracking.

- [[misconception]] → constrains → [[adaptive-learning]]
Misconceptions may require remediation before new content is introduced, altering the adaptive path.

- [[assessment]] → reveals → [[misconception]]
Assessment outcomes, especially error patterns, are primary evidence for misconception detection.

- [[knowledge-tracing]] → can be extended to track → [[misconception]]
Misconception-aware KT jointly models correct mastery and incorrect understanding over time.

- [[educational-knowledge-graph]] → can include → [[misconception-graph]]
The knowledge graph can be enriched with misconception nodes and remediation relationships.

- [[intelligent-tutoring-system]] → detects and remediates → [[misconception]]
ITS effectiveness depends in part on accurate real-time misconception detection.

- [[error-diagnosis]] → identifies → [[misconception]]
Precise error diagnosis maps incorrect reasoning to known misconception patterns.

- [[remediation-strategy]] → addresses → [[misconception]]
Remediation strategies are selected based on misconception type, learner state, and domain.

- [[diagnostic-analytics]] → identifies → [[misconception]]
Error pattern analysis and clustering surface misconceptions for explicit modeling and remediation.

- [[cognitive-diagnosis-model]] → classifies learners into → [[misconception]]
CDMs probabilistically assign learners to latent misconception categories.

- [[refutation-text]] → targets → [[misconception]]
Refutation text explicitly confronts and corrects specific misconceptions.

- [[cognitive-architecture]] → informs → [[misconception-detection]]
Cognitive architectures provide theoretical grounding for how misconceptions form and persist.
