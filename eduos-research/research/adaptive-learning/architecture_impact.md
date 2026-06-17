# Adaptive Learning — Architecture Impact on EduOS

Adaptive learning is not a single subsystem but rather the central orchestration loop that connects diagnosis, modeling, decision-making, and delivery across all EduOS components. It is the mechanism by which the system translates learner state (from KT, learner modeling, and assessment) into personalized learning experiences. This document maps the architectural implications of adaptive learning across the eight core EduOS subsystems.

---

## ADS (Agent Directory Specification)

### New Agents
- **Adaptive Loop Controller Agent**: Central orchestrator of the adaptive cycle; consumes learner state, selects next content/action, and triggers downstream services.
- **Content Sequencing Agent**: Selects the next problem, concept, or activity based on KT-derived mastery, prerequisite constraints, and learner goals.
- **Scaffolding Manager Agent**: Determines when and how much support to provide (hints, worked examples, direct instruction) and when to fade support.
- **Strategy Selection Agent**: Chooses among pedagogical strategies (scaffolding, Socratic questioning, peer tutoring tutoring, direct instruction) based on learner traits and context.
- **Difficulty Calibration Agent**: Maintains item/topic difficulty parameters and maps them to learner ability estimates for optimal challenge matching.
- **Exploration Agent**: Manages exploration vs. exploitation trade-offs, deliberately introducing novel or challenging content to discover improved learning paths.
- **Adaptive Assessment Agent**: Determines when, what, and how to assess based on current uncertainty and information gain needs.
- **Fairness Auditor Agent**: Monitors adaptive decisions for disparate impact across learner groups and can trigger corrective overrides.

### Events
- `AdaptiveDecisionMade`, `ContentSelected`, `ScaffoldingAdjusted`, `StrategyChanged`, `DifficultyCalibrated`, `ExplorationTriggered`, `AssessmentScheduled`, `FairnessViolationDetected`, `HumanOverrideTriggered`

### Permissions
- Adaptive agents need read access to learner models, knowledge graphs, and assessment histories.
- Write permissions to content delivery channels, scaffolding state, and session state.
- Audit permissions for fairness and explainability logging.

---

## AOS (Agentic Orchestration System)

### Orchestration Integration
- The adaptive loop becomes the primary orchestration workflow of EduOS: observe → model → decide → act → evaluate, repeating on every learner interaction.
- AOS manages the lifecycle of adaptive sessions, including initialization (cold start handling), steady-state adaptation, and session termination (consolidation, review scheduling).
- Multi-objective trade-offs (learning gain vs. time vs. engagement vs. fairness) are resolved by the AOS via weighted scoring or constrained optimization.

### Context Assembly
- AOS assembles a rich adaptive context comprising:
  - **Learner state**: mastery vector, affective state, motivational state, behavioral patterns
  - **Domain context**: knowledge graph, prerequisite structure, concept difficulty, available content
  - **Session context**: elapsed time, recent performance, error history, help-seeking frequency
  - **System context**: exploration budget, fairness constraints, human override flags

### Workflow Types
- **Macro-adaptation workflows**: Course-level, module-level, and week-level sequencing decisions, typically triggered at session start or major milestones.
- **Micro-adaptation workflows**: Item-level, step-level, and turn-level decisions, triggered per interaction.
- **Scaffolding workflows**: Detect struggle → select support → deliver → monitor → fade/adjust.
- **Strategy workflows**: Assess learner profile → match to pedagogical strategy → enact → evaluate → switch if ineffective.
- **Exploration workflows**: Identify high-uncertainty regions → select probing content → collect evidence → update model.
- **Remediation workflows**: Triggered by misconception detection, low mastery, or at-risk predictions; may pause standard sequencing.
- **Fairness audit workflows**: Periodic batch analysis of decision logs to detect and correct bias.

---

## KGS (Knowledge Graph Specification)

### Graph Enrichment
- New node types:
  - `AdaptiveContentItem`: Represents a specific problem, activity, or resource with difficulty, format, and prerequisite tags.
  - `PedagogicalStrategy`: Represents a strategy (e.g., scaffolding, Socratic questioning) with applicability conditions.
  - `AdaptiveRule`: Represents an explicit rule (e.g., "if mastery < 0.6 and prerequisite met, assign worked example") for interpretable adaptation.
  - `ExplorationTarget`: Represents content or concepts selected for exploration to improve the learner model.
- New edge types:
  - `requires_mastery_of`: Links content to prerequisite concepts with threshold values.
  - `scaffolds`: Links support content to target content.
  - `adaptive_next`: Dynamic edge representing the adaptive system's chosen next step for a learner.
  - `effective_for`: Links strategy to learner profile features or concept types.
  - `explores`: Links exploration content to target concept for model improvement.
  - `calibrated_difficulty`: Links content to difficulty parameters per learner population or context.

### Reasoning Support
- Pathfinding must support "adaptive paths" that optimize for learning objectives (not just shortest path). Objective functions may include expected mastery gain, engagement maintenance, or retention probability.
- The KGS must support real-time updates to `adaptive_next` edges as learner state changes.
- Prerequisite validation is critical: adaptive decisions that violate prerequisite structure should be blocked or flagged.
- Graph queries must support: "What content is appropriate for learner X at concept Y given their current state?"

---

## KIS (Knowledge Integration System)

### Multi-Source Fusion
- Adaptive learning decisions require fused evidence from:
  - **Knowledge tracing outputs** (mastery probabilities, uncertainty)
  - **Learner model dimensions** (affective,泄 emotional, motivational, behavioral)
  - **Assessment events** (diagnostic, formative, summative)
  - **Learning analytics** (predictive risk scores, engagement metrics)
  - **Educational agent observations** (dialogue quality, help-seeking, frustration signals)
  - **Human inputs** (teacher overrides, learner preferences, parent goals)
- KIS must resolve conflicts: e.g., a learner may have high KT mastery but low self-efficacy; the adaptive system must decide whether to advance or provide reassurance.

### Uncertainty Propagation
- Adaptive decisions should be uncertainty-aware. When input signals conflict or are low-confidence, the system should either request more evidence, default to a safe action, or defer to human judgment.
- KIS must propagate uncertainty from KT, learner model, and assessment through to the adaptive decision layer.

---

## MAS (Memory Architecture System)

### Memory Types
- **Episodic Memory**: Stores detailed traces of adaptive decisions — what state triggered the decision, what content was selected, what scaffolding was provided, and the outcome. Essential for post-hoc analysis, fairness auditing, and RL policy improvement.
- **Semantic Memory**: Stores declarative knowledge about adaptive strategies, their effectiveness, and applicability conditions. Includes content metadata, difficulty parameters, and prerequisite structures.
- **Procedural Memory**: Stores compiled adaptive heuristics — fast, automatic rules for common adaptation scenarios (e.g., "if repeated errors on concept X, switch to worked example").
- **Working Memory**: Maintains the current adaptive context (learner state, session state, pending decisions) during active tutoring.

### Memory Lifecycle
- Short-term adaptive traces (per-interaction) are consolidated into episodic memory for session-level and long-term analysis.
- Successful adaptive strategies are reinforced and may compile into procedural heuristics.
- Failed strategies are tagged with context for later analysis and policy revision.

---

## RCS (Reasoning Core Specification)

### Adaptive Decision Reasoning
- RCS implements the core adaptive decision logic:
  - **Content selection**: Given learner state and domain constraints, select optimal next content.
  - **Difficulty matching**: Match content difficulty to estimated ability (IRT-style, or via KT-derived mastery).
  - **Scaffolding calibration**: Decide when to offer, maintain, or withdraw support based on performance trajectory.
  - **Strategy selection**: Choose pedagogical approach based on learner profile and concept characteristics.
  - **Exploration management**: Balance known-effective paths with targeted exploration.

### Multi-Objective Optimization
- RCS supports multi-objective decision frameworks that balance learning gain, time efficiency, engagement, and fairness. Weights may be learner-specific, context-specific, or system-wide.

### Uncertainty and Risk-Aware Reasoning
- When KT uncertainty is high, RCS defaults to safe actions (more scaffolding, prerequisite review, or assessment) rather than aggressive advancement.
- When multiple learner model dimensions conflict (e.g., high mastery but low motivation), RCS applies conflict-resolution heuristics or defers to human judgment.

### Explainability
- RCS generates explanations for adaptive decisions: "You were given this problem because you have mastered concept X but struggle with concept Y, which this exercise practices."
- Explanations must be calibrated to recipient: learners need actionable, non-technical explanations; educators need pedagogical rationale; administrators need fairness and efficacy summaries.

---

## TAS (Technology Architecture System)

### Infrastructure Requirements
- **Real-time adaptive inference**: The adaptive loop must complete end-to-end (state update → decision → content delivery) with sub-second latency for interactive tutoring.
- **Streaming data pipeline**: Learner interactions must flow through KT, learner model, and analytics in near-real-time to support adaptive decisions.
- **Graph database performance**: Prerequisite validation and adaptive pathfinding require fast graph traversals, potentially on learner-specific subgraphs.
- **Scalable learner model serving**: Per-learner model updates and inference must scale to millions of concurrent users.
- **Multi-tier content delivery**: Content may be static (cached), dynamic (generated on demand), or agent-mediated (real-time dialogue). The adaptive system must route to the appropriate tier.

### Scalability
- Adaptive decision computation must parallelize across learners.
- Model serving for KT and learner models should support batch and online inference modes.
- LLM-based adaptive content generation, if used, must be cost-managed (tiered models, caching, throttling).

### Security and Privacy
- Adaptive decisions are based on rich learner data; access control and audit logging are essential.
- Fairness audit logs must be preserved in a tamper-evident manner.
- Human override actions must be logged and reconciled with automated decisions.

---

## LMS (Learner Model Specification)

### Model Inputs
- Adaptive decision events (what was selected, when, and why) are inputs to the learner model, enriching the behavioral and interaction history.
- Outcomes of adaptive decisions (success, failure, time-on-task, help-seeking) feed back into KT, affective, and motivational submodels.

### Learner Model Dimensions
- **Adaptive preference**: Learner's response to different adaptation styles (some learners prefer more challenge, others more support).
- **Exploration tolerance**: Willingness to engage with novel or difficult content; informs exploration vs. exploitation balance.
- **Strategy effectiveness history**: Which pedagogical strategies have worked for this learner historically.
- **Session-level state**: Current adaptive context (current goal, pending decisions, active scaffolding level).

### Open Learner Model
- Adaptive history (what content was selected and why) should be visible to the learner in an understandable format to promote metacognition and trust.
- Learner control: allowing learners to adjust adaptation parameters (e.g., "I want more challenge," "I need more practice on basics") can improve agency and satisfaction.
