# LLM Safety and Pedagogical Guardrails: Architecture Impact

## ADS (Agent and Dialogue System)

- **Guardrail Agent**: New dedicated agent responsible for pre-generation prompt assembly, output validation, and post-hoc fact-checking of LLM tutor responses.
- **Moderation Agent**: Real-time content moderation agent interfacing with safety classifiers (toxicity, PII, age-appropriateness).
- **Curriculum Conformance Agent**: Verifies that LLM outputs map to approved knowledge graph nodes, curriculum objectives, and prerequisite constraints.
- **Learner Model Safety Gate**: Before LLM generation, checks learner state (e.g., known misconceptions, affect) to inject appropriate guardrails into the system prompt.
- **Events**: `LLMOutputValidated`, `GuardrailTriggered`, `SafetyIntervention`, `CurriculumViolationDetected`, `MisconceptionReinforcementRiskFlagged`.
- **Permissions**: Granulated so that different agents can generate, validate, or veto LLM outputs based on role and trust tier.

## AOS (Adaptive Orchestration System)

- **Guardrail-Aware Workflow Branching**: Orchestrator routes high-risk tutoring interactions (e.g., assessment explanation, misconception remediation) through stricter multi-stage validation pipelines.
- **Human-in-the-Loop Escalation**: Workflow automatically escalates LLM outputs that fail safety or pedagogical checks to a human reviewer queue before delivery to the learner.
- **Fallback Orchestration**: When LLM guardrails trigger repeatedly, the orchestrator falls back to rule-based or template-based tutoring strategies to maintain continuity.
- **Context Assembly with Safety Metadata**: Assembled context for LLM calls includes rich safety metadata: learner age, known vulnerabilities, session risk score, and curriculum scope.

## KGS (Knowledge Graph System)

- **Curriculum-Aware Generation**: LLM prompts are constrained by KGS subgraphs that define permitted concepts, approved explanations, and canonical examples.
- **Misconception Antidote Repository**: Knowledge graph enriched with refutation nodes linked to misconceptions; guardrails retrieve these to counteract LLM-generated misconceptions.
- **Provenance and Versioning**: Every LLM-generated fact that touches the knowledge graph (e.g., auto-generated explanations, examples) is tagged with model version, prompt ID, and verification status.
- **Constraint Enforcement Queries**: Graph validation queries ensure LLM outputs do not introduce circular prerequisites, out-of-scope content, or contradictory pedagogical claims.

## KIS (Knowledge Integration System)

- **Multi-Source Verification Fusion**: KIS fuses signals from RAG retrievals, symbolic validators, and secondary LLM critics into a unified confidence score for each generated utterance.
- **Contradiction Detection**: Identifies when an LLM output contradicts the knowledge graph, the learner model, or a previously validated explanation.
- **Provenance Tagging**: All LLM-derived knowledge is tagged with source (model, prompt, retrieval chunks) to enable downstream audit and retraction.
- **Temporal Consistency**: Ensures that LLM-generated content remains aligned with the current curriculum version and learner progression stage.

## MAS (Memory Architecture System)

- **Episodic Safety Log**: Every LLM interaction (prompt, output, guardrail decisions, learner reaction) stored as an immutable episodic trace for audit, debugging, and post-hoc analysis.
- **Semantic Guardrail Memory**: Persistent store of validated safe/unsafe prompt templates, effective misconception antidotes, and red-team adversarial examples.
- **Procedural Safety Heuristics**: Compiled rules that trigger guardrails based on learner state combinations (e.g., high frustration + low mastery → stricter output validation).
- **Working Memory for Conversation State**: Maintains multi-turn conversation state to detect drift, recursion into unsafe topics, or learner manipulation attempts across turns.

## RCS (Reasoning Core System)

- **Pedagogical Constraint Satisfaction**: RCS validates LLM plans (e.g., scaffolding sequence, next question) against pedagogical rule bases before execution.
- **Counterfactual Safety Reasoning**: Evaluates "what if" scenarios (e.g., what if the learner had been taught X first?) to preemptively identify unsafe content ordering.
- **Bias and Fairness Auditing Reasoning**: Reasoning module that audits LLM outputs for demographic bias, linguistic bias, and cultural appropriateness before delivery.
- **Adversarial Reasoning**: Simulated adversarial learner probes LLM to discover weak guardrail boundaries; results feed back into guardrail refinement.
- **Explainability Generation**: Produces learner-facing and educator-facing explanations for why a particular LLM response was modified or blocked.

## TAS (Technical Architecture System)

- **LLM Gateway / API Proxy**: Centralized routing layer with rate limiting, cost controls, retry/fallback logic, and circuit breakers.
- **Real-Time Safety Pipeline**: Sub-200ms end-to-end latency budget for prompt assembly, generation, retrieval, and validation; parallelized where possible.
- **Sandboxed Execution**: LLM inference containers isolated from sensitive educational data; PII redaction pre-processing and post-processing.
- **Audit Infrastructure**: Immutable logging of all LLM prompts, outputs, guardrail triggers, and safety decisions to tamper-resistant storage.
- **A/B Canary Infrastructure**: Safe deployment of new LLM versions or prompt templates to small learner cohorts with automated rollback on safety metric degradation.
- **Multi-Modal Moderation**: Extends text safety pipeline to image, audio, and video LLM outputs if multi-modal tutoring is enabled.

## LMS (Learner Model System)

- **Misconception Risk Profile**: Learner model includes a "misconception susceptibility" dimension to personalize guardrail strictness (e.g., learners with known misconceptions receive more constrained LLM outputs).
- **Trust and Agency Calibration**: Tracks learner reliance on LLM tutors; if over-reliance is detected, the system reduces direct answer provision and increases Socratic scaffolding.
- **Affective Safety Override**: If the learner model detects high frustration or anxiety, the system may relax or tighten LLM output constraints depending on pedagogical context.
- **Longitudinal Safety Tracking**: Monitors whether repeated LLM tutoring correlates with reduced self-regulation, increased hallucination acceptance, or epistemic complacency over time.
- **Open Learner Model Safety View**: Learners can see how and why LLM outputs were modified, fostering trust and metacognitive awareness.
