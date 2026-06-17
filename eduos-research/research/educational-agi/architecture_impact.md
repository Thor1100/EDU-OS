# Educational AGI — Architecture Impact

## Overview

Educational AGI is not a near-term subsystem but a **design horizon** that shapes how EduOS subsystems are decomposed, interfaced, and evolved. The critique of educational AGI research concludes that "cross-domain adaptive competence" is a more useful engineering target than "AG手捧AGI." This document maps how that horizon impacts each of EduOS's eight subsystems, focusing on **architectural provisions** (what we must design now to avoid painting ourselves into a narrow-AI corner) rather than implementation.

The core principle is **evolutionary readiness**: every subsystem should be designed so that incremental capability growth is possible without re-architecture.

---

## ADS (Agent Design Specification)

### AGI-Driven Design Principles
- **From fixed roles to emergent roles**: Current ADS defines static agents (Tutor, Peer, Mentor, Assessor). AGI readiness requires agents that can dynamically assume hybrid roles based on context.
- **Meta-cognitive agents**: Agents that model not just the learner but their own effectiveness (self-reflective agent architecture).
- **Agent genesis**: The ability to spawn new specialist agents on demand (e.g., "create a Chemistry-Organic-Stereochemistry specialist").

### Architectural Provisions
- Agent definition framework must support **runtime role negotiation** and **dynamic capability advertisement**, not just static role assignment
- Permission model must scale to agents with emergent (not pre-declared) capabilities
- Communication protocols (ACL, blackboard, direct API) must support **recursive delegation** (an agent can delegate to another, which delegates further)
- Agent identity and provenance tracking for explainability when emergent behavior arises

### Critical Constraints
- Human-in-the-loop must remain architecturally enforced: no agent can autonomously remove human oversight mechanisms
- Agent creation and role modification must be auditable and reversible

---

## AOS (Agent Orchestration System)

### AGI-Driven Design Principles
- **From orchestration to self-organization**: Current AOS is a scheduler. AGI-ready AOS must support emergent coordination where agents self-organize around learner needs.
- **Cross-domain workflow generation**: The AOS must be able to synthesize workflows across domains without pre-authored templates.
- **Reflexive orchestration**: The orchestrator itself learns from past workflow successes and failures.

### Architectural Provisions
- Workflow definition must be **data-driven and generative**, not just template-based
- Context assembly must support **multi-scale reasoning** (second-level turn-taking to year-long curriculum planning)
- Conflict resolution must handle **value-pluralistic conflicts** (e.g., efficiency vs. equity vs. engagement) with explicit trade-off modeling
- Support for **deliberative planning**: the AOS can pause to reason about long-term consequences before acting

### Critical Constraints
- All emergent workflows must be inspectable and interruptible by human operators
- Value-pluralistic trade-offs must be surfaced to learners/educators, not hidden in optimization functions

---

## KGS (Knowledge Graph System)

### AGI-Driven Design Principles
- **From static curriculum graphs to evolving, self-extending knowledge structures**: An educational AGI must discover, validate, and integrate new knowledge in real time.
- **Cross-domain abstraction**: The graph must support analogical reasoning (e.g., "this concept in physics is structurally similar to this concept in economics").
- **Self-aware graphs**: The graph encodes its own uncertainty, provenance, and confidence levels.

### Architectural Provisions
- Graph schema must support **emergent nodes and edges** that are algorithmically discovered, not just engineered
- Temporal versioning must allow rollback and branching ("what if we taught X before Y?")
- Cross-domain link types for analogical and metaphorical relationships
- Automated validation pipelines that test graph integrity against learner outcome data

### Critical Constraints
- Emergent graph additions must be quarantined until validated; never auto-promoted to production
- All graph mutations must be explainable and attributable (human or algorithm)

---

## KIS (Knowledge Integration System)

### AGI-Driven Design Principles
- **From fusion to epistemic synthesis**: Current KIS fuses signals from known sources. AGI-ready KIS must integrate novel, unexpected information sources (new modalities, new domains, learner-generated content).
- **Self-modeling uncertainty**: The integration system must model its own uncertainty and gaps explicitly.
- **Adversarial robustness**: Must detect and reject attempts to poison the knowledge base (e.g., a learner trying to teach the system a misconception).

### Architectural Provisions
- Extensible ingestion framework that accepts new data types without recompilation
- Uncertainty-aware fusion with confidence propagation across the entire pipeline
- Adversarial detection layer for anomalous or conflicting inputs
- Support for **contradictory evidence handling** (holding multiple hypotheses simultaneously)

### Critical Constraints
- Novel data source integration must be gated by human approval
- Epistemic synthesis must not override validated domain knowledge without explicit override protocols

---

## MAS (Memory Architecture System)

### AGI-Driven Design Principles
- **Rich, multi-scale memory**: Current MAS targets episodic, semantic, and procedural memory. AGI readiness requires prospective memory, autobiographical memory, and meta-cognitive memory.
- **Lifelong persistence**: Memory must scale to decades of learner history without degradation.
- **Memory-driven learning**: The system itself learns from its own memory (meta-learning from episodic traces).

### Architectural Provisions
- Memory store design must scale to petabyte-scale per learner over a lifetime
- Multi-tier storage (hot/warm/cold) with intelligent retrieval based on relevance prediction
- Mechanisms for **memory co-location** (clustering related memories for efficient access)
- Forgetting and consolidation mechanisms that improve signal-to-noise over time
- **Self-reflective memory**: Episodic traces of the system's own decision-making for post-hoc analysis and improvement

### Critical Constraints
- Learner right to deletion (right to be forgotten) must be enforceable at all memory tiers, including derived memories
- Memory access must be auditable; no opaque indexing that hides what the system remembers

---

## RCS (Reasoning Core System)

### AGI-Driven Design Principles
- **From domain-specific to general pedagogical reasoning**: Current RCS reasons within defined pedagogical constraints. AGI-ready RCS must reason across domains, discover new pedagogical strategies, and evaluate its own reasoning.
- **Theory of mind in reasoning**: The RCS must model the learner's model of the system (higher-order theory of mind).
- **Self-modifying reasoning**: The system can propose and test modifications to its own reasoning rules.

### Architectural Provisions
- Reasoning engine must support **abstraction and analogical transfer** across domains
- Meta-reasoning layer that evaluates the quality of reasoning itself (confidence, bias, gaps)
- Theory-of-mind module explicitly representing learner beliefs, goals, and misconceptions about the system
- Counterfactual reasoning engine for "what if" pedagogical decision analysis
- Integration of symbolic (explainable) and neural (flexible) reasoning components

### Critical Constraints
- Self-modification of reasoning rules must be sandboxed and human-approved
- All reasoning chains must remain inspectable; no fully neural, unexplainable reasoning paths for high-stakes pedagogical decisions

---

## TAS (Technology Architecture System)

### AGI-Driven Design Principles
- **Unbounded scalability**: The infrastructure must support the computational demands of general intelligence (massive model serving, real-time simulation, lifelong data storage).
- **Self-healing and self-optimizing infrastructure**: The system monitors and optimizes its own resource allocation, model placement, and data routing.
- **Multi-modal, multi-device, multi-context**: Seamless operation across all learner environments.

### Architectural Provisions
- Serverless/elastic compute that scales to AGI-level inference costs without prohibitive expense
- Edge-to-cloud continuum for low-latency interaction and high-capacity batch processing
- Self-monitoring infrastructure with automated anomaly detection and recovery
- Support for massive-scale simulation (digital twin what-if analysis) as a first-class workload
- Cost governance mechanisms that prevent runaway computational expenditure

### Critical Constraints
- Cost transparency: every AGI-level operation must have a visible cost and budget ceiling
- No autonomous infrastructure decisions that compromise privacy, security, or human oversight
- Graceful degradation: the system must function at reduced capability when AGI-level resources are unavailable

---

## LMS (Learner Model System)

### AGI-Driven Design Principles
- **From learner model to learner portrait**: Current LMS tracks cognitive, affective, motivational, and behavioral dimensions. AGI readiness requires modeling the learner's evolving identity, values, and self-concept.
- **Multi-learner modeling**: The system models not just individual learners but their relationships (peers, mentors, family), enabling social learning optimization.
- **Predictive learner modeling**: The model anticipates future learner states (career interests, life events) to proactively adapt.

### Architectural Provisions
- Learner model schema must be **extensible** to accommodate dimensions not yet conceived
- Temporal modeling across multiple timescales (moment-to-moment interaction to decade-long life trajectories)
- Social graph integration: modeling learner relationships and group dynamics
- Predictive models for long-term learner development, not just immediate performance
- **Identity continuity**: The model maintains coherence as the learner matures from K-12 through higher education to professional development

### Critical Constraints
- Learner agency: the learner must always have visibility into and control over their model
- Predictive modeling must not become deterministic profiling; predictions are hypotheses, not destinies
- Social modeling must respect privacy and consent of all parties (not just the primary learner)

---

## Cross-Cutting Architectural Themes

### 1. Values Pluralism
All subsystems must encode **configurable value frameworks** rather than hardcoded single-objective optimizations. The architecture should allow educators and learners to select, inspect, and modify the pedagogical values that drive system behavior.

### 2. Human-in-the-Loop as Permanent Feature
Every subsystem must preserve meaningful human oversight:
- Inspectability: humans can see what the system is doing and why
- Interruptibility: humans can pause or override any process
- Configurability: humans can change the rules and see the effects
- Accountability: every decision is attributable to a human or an auditable algorithm

### 3. Composability and Interoperability
Subsystems must communicate through open, well-defined interfaces. No subsystem should be allowed to become a monolithic black box. This ensures that future AGI components can integrate without re-engineering existing infrastructure.

### 4. Staged Competence Levels
EduOS should define explicit maturity levels for each subsystem (analogous to SAE levels for autonomous driving):
- **Level 1**: Human-directed, system assists
- **Level 2**: Human-supervised, system suggests
- **Level 3**: Conditional autonomy, human available
- **Level 4**: High autonomy, human notified of anomalies
- **Level 5**: Full autonomy, human override always available

Current EduOS targets Level 1–2 across all subsystems, with architectural provisions for evolution to Level 3–4.
