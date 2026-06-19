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

## Adaptive Learning Relationships

- [[learner-model]] → drives → [[adaptive-learning]]
Multi-dimensional learner state (cognitive, affective, motivational, behavioral) determines what content, difficulty, and strategy are selected.

- [[knowledge-graph]] → constrains → [[adaptive-learning]]
Prerequisite, partonomic, and pedagogical relationships in the EKG define which content sequences are valid and optimal.

- [[knowledge-tracing]] → informs → [[adaptive-learning]]
Real-time mastery estimates from KT are the primary input for content selection and difficulty calibration.

- [[formative-assessment]] → feeds → [[adaptive-learning]]
Continuous assessment data drives micro-adaptation decisions during learning sessions.

- [[learning-analytics]] → enables → [[adaptive-learning]]
Predictive and prescriptive analytics inform macro-adaptation (pacing, curriculum) and trigger proactive interventions.

- [[intelligent-tutoring-system]] → implements → [[adaptive-learning]]
ITS architectures instantiate adaptive decisions through content delivery, dialogue, and feedback.

- [[educational-agent]] → enacts → [[adaptive-learning]]
Agents execute adaptive decisions (content presentation, scaffolding, strategy switching) in interaction with the learner.

- [[misconception]] → constrains → [[adaptive-learning]]
Detected misconceptions may require remediation before new content is introduced, altering the adaptive path.

- [[adaptive-learning]] → optimizes-for → [[mastery]]
The primary objective of content selection and sequencing is to bring the learner to mastery of target concepts.

- [[adaptive-learning]] → manages → [[exploration-vs-exploitation]]
Adaptive systems must balance known-effective content with novel content to discover better learning paths.

- [[adaptive-learning]] → triggers → [[adaptive-assessment]]
When mastery uncertainty is high, the adaptive loop initiates targeted assessment to reduce uncertainty.

- [[adaptive-learning]] → uses → [[reinforcement-learning]]
RL and bandit methods learn optimal sequencing policies from interaction data.

- [[adaptive-learning]] → requires → [[real-time-inference]]
Online adaptation depends on sub-second model updates and decision latency.

- [[cognitive-load-theory]] → constrains → [[adaptive-learning]]
Adaptation must respect working memory limits and avoid overwhelming or under-challenging the learner.

- [[zone-of-proximal-development]] → bounds → [[adaptive-learning]]
Effective adaptation stays within the learner's ZPD, providing challenge with adequate support.

- [[scaffolding]] → fades-as → [[mastery]]-increases
Adaptive scaffolding is withdrawn progressively as the learner demonstrates competence.

- [[human-override]] → can-modify → [[adaptive-learning]]
Teachers and learners may override adaptive decisions; the system must reconcile these with its model.

- [[adaptive-learning]] → audited-by → [[fairness-auditor]]
Adaptive decisions are continuously evaluated for disparate impact across learner populations.

## Digital Twin Relationships

- [[digital-twin]] subsumes → [[learner-model]] + [[knowledge-graph]] + [[temporal-dynamics]]
A digital twin integrates learner model, domain knowledge, and time-evolving state into a unified representation.

- [[assessment]] → updates → [[digital-twin]]
Assessment outcomes are a primary input stream for maintaining twin fidelity.

- [[knowledge-tracing]] → updates → [[digital-twin]]
KT-derived mastery probabilities continuously refine the cognitive dimension of the twin.

- [[learner-model]] → is-component-of → [[digital-twin]]
The learner model provides the core multi-dimensional state that the twin persists and synchronizes.

- [[digital-twin]] → informs → [[adaptive-learning]]
Real-time twin state drives adaptive content selection, sequencing, and scaffolding decisions.

- [[digital-twin]] → enables → [[intelligent-tutoring-system]]
ITS uses twin state for diagnosis, strategy selection, and personalization.

- [[digital-twin]] → enables → [[what-if-analysis]]
Simulation over the twin predicts outcomes of hypothetical interventions.

- [[learning-analytics]] → enriches → [[digital-twin]]
Analytics-derived insights (at-risk scores, engagement metrics) populate non-cognitive twin dimensions.

- [[educational-agent]] → reads/writes → [[digital-twin]]
Agents access and update twin state during tutoring interactions.

- [[misconception-detection]] → updates → [[digital-twin]]
Detected misconceptions are written into the twin's misconception profile.

- [[digital-twin]] → requires → [[cross-environment-persistence]]
A useful twin must maintain state across formal, informal, and multi-platform learning.

- [[digital-twin]] → requires → [[multi-modal-learning]]
Rich twins fuse cognitive, affective, behavioral, and physiological data.

- [[privacy-preservation]] → constrains → [[digital-twin]]
Comprehensive data collection for the twin is in tension with learner privacy and agency.

- [[digital-twin]] → must-support → [[right-to-be-forten]]
Ethical governance requires that learners can request complete twin deletion.

- [[digital-twin]] → benefits-from → [[federated-learning]]
Federated approaches reduce centralized data exposure while enabling rich twin models.

- [[cognitive-architecture]] → can-ground → [[digital-twin]]
The structure and processes of cognitive architectures can serve as the simulation substrate for the twin.

- [[digital-twin]] → supports → [[lifelong-learning]]
Persistent twin state enables seamless learning progression across years, institutions, and domains.

## Educational AGI Relationships

- [[narrow-ai-in-education]] → evolves-toward → [[educational-agi]]
Current narrow systems (KT, ITS, adaptive learning, LLM tutors) are precursors that may eventually compose into general educational intelligence.

- [[llm-tutor]] → is-a-component-of-but-not-sufficient-for → [[educational-agi]]
LLMs provide open-domain dialogue capability but lack persistent memory, pedagogical grounding, and reliable truthfulness required for AGI.

- [[cognitive-architecture]] → informs → [[educational-agi]]
Cognitive architectures (ACT-R, SOAR, CLARION) provide theoretical models of memory, reasoning, and learning that an educational AGI must instantiate.

- [[digital-twin]] → provides-canonical-learner-model-for → [[educational-agi]]
A comprehensive digital twin supplies the persistent, multi-dimensional learner representation an AGI tutor needs for coherent, long-term pedagogy.

- [[knowledge-graph]] → grounds-domain-knowledge-for → [[educational-agi]]
Educational knowledge graphs constrain and inform what an AGI can teach, ensuring alignment with curriculum and prerequisite structures.

- [[educational-agi]] → requires → [[theory-of-mind]]
Pedagogical reasoning at AGI scale requires modeling the learner's beliefs, misconceptions, and intentions.

- [[educational-agi]] → requires → [[values-alignment]]
Without alignment, an AGI optimized for test scores might teach test-taking rather than genuine understanding.

- [[educational-agi]] → requires → [[neuro-symbolic-agi]]
Hybrid neural-symbolic architectures may be necessary to combine the flexibility of neural models with the interpretability and planning capacity of symbolic systems.

- [[educational-agi]] → raises → [[augmentation-vs-replacement]] debate
The question of whether AGI should augment human teachers or replace them is unresolved and deeply consequential.

- [[human-in-the-loop]] → constrains → [[educational-agi]]
Ethical and practical frameworks require that even fully capable AGI systems preserve meaningful human oversight.

- [[open-ended-learning]] → enables → [[educational-agi]]
An AGI must autonomously explore teaching strategies, learn from novel learner behaviors, and improve its own pedagogical models over time.

- [[multi-agent-agi]] → is-an-alternative-to → [[monolithic-agi]]
Educational AGI could emerge from coordinated specialist agents rather than a single omniscient model.

## Cross-Domain Transfer and Lifelong Learning Relationships

- [[transfer-learning]] → connects → [[knowledge-graph]]
Transfer is enabled by explicit cross-domain edges (prerequisites, analogies) in the knowledge graph.

- [[positive-transfer]] → facilitates → [[adaptive-learning]]
Adaptive systems can leverage positive transfer to accelerate learning by recognizing and scaffolding cross-domain connections.

- [[negative-transfer]] → interferes-with → [[adaptive-learning]]
Adaptive systems must detect and mitigate negative transfer where prior knowledge conflicts with new learning.

- [[catastrophic-forgetting]] → threatens → [[learner-model]]
Continuous model updates risk overwriting prior learner knowledge, necessitating continual learning mechanisms.

- [[continual-learning]] → enables → [[lifelong-learning]]
Without mechanisms to prevent forgetting, neither human nor machine learning systems can sustain lifelong competence.

- [[dual-memory-system]] → supports → [[lifelong-learning]]
Separating fast-learning episodic memory from slow-learning semantic memory enables integration of new knowledge without forgetting.

- [[memory-consolidation]] → transforms → [[episodic-memory]] into [[semantic-memory]]
Consolidation processes gradually transform detailed episodic traces into stable, generalizable semantic knowledge.

- [[cross-domain-prerequisite]] → links → [[knowledge-graph]] across domains
Cross-domain prerequisites connect otherwise isolated domain structures into a unified learning space.

- [[structural-alignment]] → enables → [[far-transfer]]
Far transfer depends on recognizing deep structural similarities across domains, not just surface features.

- [[digital-twin]] → provides-persistence-for → [[lifelong-learning]]
A persistent digital twin is the substrate for maintaining coherent learner state across life stages and domains.

- [[learner-model]] → requires → [[domain-alignment]]
When crossing domain boundaries, the learner model must reconcile different terminology and conceptual frameworks.

- [[cognitive-architecture]] → informs → [[dual-memory-system]]
Cognitive architectures (ACT-R, SOAR) provide theoretical grounding for memory system design that supports transfer and lifelong learning.

- [[educational-agi]] → requires → [[transfer-learning]]
Any claim to general educational intelligence must demonstrate robust cross-domain transfer.

## Real-Time Scalable Adaptive Systems Relationships

- [[real-time-scalable-adaptive-system]] → enables → [[adaptive-learning]]
Real-time infrastructure (streaming, model serving, tiered storage) makes algorithmic adaptive learning responsive at production scale.

- [[event-driven-architecture]] → feeds → [[knowledge-tracing]]
Continuous event streams supply the data needed for incremental, online KT updates.

- [[feature-store]] → serves → [[learner-model]]
Low-latency feature stores provide point-in-time learner state required for millisecond-scale adaptive decisions.

- [[model-serving]] → supports → [[intelligent-tutoring-system]]
Production model-serving tiers deploy KT, learner model, and misconception detection models for real-time ITS inference.

- [[hot-cold-tiered-storage]] → persists → [[digital-twin]]
Tiered storage provides the infrastructure for synchronizing and archiving digital twin state across hot, warm, and cold tiers.

- [[edge-computing]] → offloads → [[learning-analytics]]
Edge processing reduces central infrastructure burden for real-time analytics while improving privacy by keeping raw data local.

- [[streaming-processing]] → feeds → [[educational-agent]]
Real-time event streams enable agents to react to learner state changes and coordinate with other agents via the event bus.

- [[continual-learning-pipeline]] → updates → [[knowledge-graph]]
Distributed continual learning pipelines incorporate new learner interaction data into global models without catastrophic forgetting.

- [[graceful-degradation]] → protects → [[assessment-system]]
Fallback heuristics and static sequencing preserve formative assessment continuity when real-time adaptive services fail.

- [[multi-agent-consensus]] → coordinates → [[educational-agent]]
Consensus protocols enable multiple autonomous agents to agree on shared learner state and pedagogical actions under latency constraints.

- [[observability]] → monitors → [[adaptive-learning]]
Streaming fairness and latency metrics detect inequity and performance degradation in adaptive decision-making before learners are harmed.
- [[fairness-audit-agent]] → audits → [[adaptive-learning]]
Continuous monitoring of adaptive decisions for disparate impact across learner populations.

## Fairness and Bias Relationships

- [[bias]] → propagates_through → [[knowledge-tracing]]
Biased training data or proxy variables in KT produce inequitable mastery estimates that drive downstream adaptive decisions.

- [[bias]] → propagates_through → [[learner-model]]
Learner models encode demographic and contextual bias when features correlate with protected attributes or when priors reflect historical inequity.

- [[bias]] → propagates_through → [[adaptive-learning]]
Adaptive sequencing, scaffolding, and content selection may systematically disadvantage certain learner groups if upstream models are biased.

- [[bias]] → propagates_through → [[assessment-system]]
Differential item functioning, culturally biased items, and algorithmic scoring disparities introduce bias at the assessment layer.

- [[bias]] → propagates_through → [[intelligent-tutoring-system]]
Tutoring strategies, agent personas, and generated explanations may carry cultural, linguistic, or demographic bias.

- [[bias]] → propagates_through → [[educational-knowledge-graph]]
Prerequisite structures, concept definitions, and curriculum pathways may encode cultural assumptions that privilege certain learner backgrounds.

- [[feedback-loop-bias]] → amplifies → [[bias]]
Adaptive decisions shape learner trajectories, which produce biased training data, reinforcing initial disparities over time.

- [[fairness]] → constrains → [[adaptive-learning]]
Fairness requirements limit the space of acceptable adaptive decisions, requiring multi-objective optimization that balances learning gain and equity.

- [[fairness]] → requires → [[transparency]]
Procedural fairness demands that adaptive decisions be explainable to learners and educators, especially when outcomes differ by group.

- [[fairness]] → requires → [[observability]]
Continuous fairness monitoring depends on streaming metrics, disaggregated performance data, and real-time alerting infrastructure.

- [[fairness-audit-agent]] → monitors → [[learner-model]]
Fairness auditing includes monitoring learner model predictions for group-wise calibration and accuracy disparities.

- [[fairness-audit-agent]] → monitors → [[assessment-system]]
Automated essay scoring, code evaluation, and adaptive testing are audited for differential item functioning and scoring bias.

- [[fairness-audit-agent]] → monitors → [[educational-agent]]
Agent behavior, personas, and generated content are evaluated for cultural sensitivity and equitable treatment across learner groups.

- [[proxy-variable]] → encodes → [[bias]]
Neutral-seeming features (zip code, device type, response latency) can serve as proxies for protected attributes, reviving bias even when demographics are excluded.

- [[intersectionality]] → complicates → [[fairness]]
Disadvantage at the intersection of multiple identities is not captured by single-attribute fairness metrics, requiring multi-dimensional auditing.

- [[temporal-fairness]] → evaluates → [[feedback-loop-bias]]
Longitudinal fairness metrics assess whether initial small biases compound into large trajectory divergences over time.

- [[open-learner-model]] → supports → [[procedural-fairness]]
Learner visibility into and contestation of their model promotes procedural fairness and trust in adaptive systems.

- [[cultural-context-node]] → enriches → [[educational-knowledge-graph]]
Cultural annotations enable adaptive systems to select culturally relevant examples without privileging dominant cultural norms.

- [[constrained-optimization]] → enables → [[fairness-aware-learning]]
Embedding fairness constraints into adaptive algorithm objectives produces decisions that trade off learning gain and equity explicitly.

## LLM Safety and Pedagogical Guardrails Relationships

- [[llm-safety]] → constrains → [[educational-agent]]
Safety guardrails restrict the space of permissible LLM-generated tutoring utterances.

- [[pedagogical-guardrails]] → enforce → [[curriculum]] alignment
Guardrails ensure LLM outputs map to approved learning objectives and prerequisite sequences.

- [[retrieval-augmented-generation]] → grounds → [[llm-tutor]]
RAG anchors tutoring LLM outputs in verified knowledge graph or textbook sources.

- [[knowledge-graph]] → constrains → [[llm-tutor]]
EKG structure limits what concepts and examples an LLM tutor may introduce.

- [[learner-model]] → informs → [[pedagogical-guardrails]]
Learner state (misconceptions, affect, mastery) customizes guardrail strictness per session.

- [[guardrail-agent]] → audits → [[llm-tutor]]
The guardrail agent validates, modifies, or blocks LLM outputs before learner exposure.

- [[human-in-the-loop]] → escalates → [[guardrail-agent]]
When automated checks are insufficient, human reviewers are engaged via the guardrail agent.

- [[content-moderation]] → filters → [[llm-tutor]] outputs
Moderation layers block toxic, unsafe, or age-inappropriate content before delivery.

- [[red-teaming]] → discovers → [[llm-safety]] gaps
Adversarial testing surface weaknesses in guardrails and safety policies.

- [[constitutional-ai]] → aligns → [[llm-tutor]] behavior
RLHF and constitutional training steer LLM tutors toward pedagogically preferred responses.

- [[misconception-graph]] → prevents → [[hallucination]] in tutoring
By injecting antidotes into prompts, the misconception graph mitigates misconception-reinforcing LLM outputs.

## Affective Computing and Engagement Modeling Relationships

- [[affective-computing]] → enriches → [[learner-model]]
Affective computing enriches the learner model beyond cognitive performance to include emotional and engagement states.

- [[engagement-modeling]] → informs → [[adaptive-learning]]
Engagement levels and trajectories guide macro and micro adaptation decisions such as pacing, difficulty, and strategy selection.

- [[affective-state]] → triggers → [[affective-intervention]]
Detected affective states (frustration, boredom, confusion, flow) drive pedagogical interventions.

- [[behavioral-proxy]] → estimates → [[affective-state]]
Behavioral traces serve as scalable, low-cost proxies for underlying emotional and motivational states.

- [[psychophysiological-sensing]] → measures → [[affective-state]]
Sensors provide direct (but intrusive) measurement of autonomic and central nervous system correlates of emotion.

- [[flow-state]] → optimizes → [[adaptive-learning]]
Maintaining flow requires calibrating challenge, scaffolding, and feedback in real time.

- [[disengagement-detection]] → triggers → [[early-warning-system]]
Early detection of disengagement enables proactive interventions before dropout.

- [[affective-tutoring]] → responds-to → [[affective-state]]
Affective tutoring systems adapt dialogue, content, and scaffolding based on inferred emotions.

- [[multimodal-affect-detection]] → improves → [[learner-model]]
Fusing behavioral, linguistic, and physiological signals yields more robust affective state estimates than any single signal.

- [[engagement-analytics]] → enriches → [[learning-analytics]]
Engagement modeling provides critical non-cognitive dimensions for comprehensive learning analytics.

- [[control-value-theory]] → grounds → [[affective-intervention]]
Appraisals of control and value guide which interventions are likely to produce positive achievement emotions.

- [[affective-state]] → moderates → [[cognitive-load]]
Negative affect (anxiety, frustration) can increase extraneous cognitive load and impair working memory performance.

- [[privacy-preservation]] → constrains → [[affective-computing]]
Continuous emotional monitoring creates surveillance risks; privacy mechanisms limit what can be collected and retained.

- [[cultural-context-node]] → calibrates → [[affective-intervention]]
Cultural norms for emotional expression and response shape how affective interventions should be tailored.

## Explainable AI and Open Learner Model Relationships

- [[explainable-ai]] → explains → [[adaptive-learning]]
XAI techniques provide reasons for adaptive content selection, difficulty calibration, and scaffolding decisions.

- [[explainable-ai]] → explains → [[knowledge-tracing]]
Post-hoc methods (LIME, SHAP) and interpretable architectures explain why KT infers a particular mastery probability.

- [[open-learner-model]] → promotes → [[metacognition]]
Visible learner models improve self-assessment accuracy, self-regulation, and learner agency.

- [[open-learner-model]] → requires → [[scrutability]]
Scrutability — the learner's ability to inspect the system's model of them — is a prerequisite for meaningful open learner model interaction.

- [[scrutability]] → enables → [[contestability]]
Learners must first understand the system's model before they can effectively dispute or correct it.

- [[contestability]] → feeds → [[learner-model]]
Accepted learner contestations update and refine the learner model, improving its accuracy and fairness.

- [[explainable-ai]] → supports → [[fairness]]
Transparent model decisions enable detection of bias, disparate impact, and discriminatory patterns.

- [[open-learner-model]] → supports → [[procedural-fairness]]
Learner visibility into model inferences and the ability to contest them supports procedural fairness.

- [[trust-calibration]] → depends-on → [[explainable-ai]]
Appropriate trust in adaptive systems depends on accurate, intelligible explanations of system behavior.

- [[model-card]] → documents → [[educational-agent]]
Model cards standardize documentation of agent capabilities, limitations, and safety properties.

- [[counterfactual-explanation]] → enables → [[learner-agency]]
Counterfactual explanations show learners what actions would change their trajectory, supporting goal-setting.

- [[compositional-explanation]] → aggregates → [[subsystem-explanations]]
Compositional explanations merge component-level rationales into coherent narrative or visual explanations for complex adaptive decisions.
