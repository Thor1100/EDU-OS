# Learning Analytics — Architecture Impact on EduOS

Learning Analytics (LA) is not a standalone subsystem but a cross-cutting capability that enables and is enabled by nearly every EduOS component. This document maps LA's impact across the eight core EduOS subsystems: ADS, AOS, KGS, KIS, MAS, RCS, TAS, and LMS.

---

## ADS (Agent Directory Specification)

### New Agents
- **Analytics Agent**: Orchestrates data collection, processing, and reporting pipelines.
- **Visualization Agent**: Generates learner, educator, and administrator dashboards.
- **Alert Agent**: Monitors real-time streams for anomalies, at-risk signals, and intervention triggers.
- **Fairness Auditor Agent**: Periodically audits models and data pipelines for bias and disparate impact.
- **Report Agent**: Generates periodic (daily, weekly, termly) analytics reports.

### Events
- `LearnerEventLogged`, `AnalyticsPipelineComplete`, `AtRiskFlagRaised`, `DashboardGenerated`, `BiasDetected`

### Permissions
- Analytics agents need read access to interaction, assessment, and contextual data.
- Visualization agents need aggregated, potentially pseudonymized data.
- Fairness auditors need access to demographic and outcome data (with strict governance).

---

## AOS (Agentic Orchestration System)

### Orchestration Integration
- Analytics results (predictions, flags, summaries) become first-class inputs to orchestration workflows.
- Real-time analytics trigger conditional orchestration branches (e.g., if `AtRiskFlag` and `LowEngagement`, trigger `PeerSupportWorkflow`).
- Batch analytics inform periodic orchestration (e.g., weekly re-engagement campaigns, curriculum review cycles).

### Context Assembly
- AOS enriches agent context with analytics-derived attributes: engagement level, at-risk probability, mastery trajectory, affective state estimate.

### Workflow Types
- **Diagnostic workflows**: Triggered by analytics anomalies.
- **Predictive workflows**: Preemptive interventions based on forecasted outcomes.
- **Prescriptive workflows**: Optimization loops that use analytics feedback to refine agent behavior.

---

## KGS (Knowledge Graph Specification)

### Graph Enrichment
- Analytics-derived metrics attach to KGS nodes and edges:
  - `Concept` nodes: average mastery, difficulty, engagement decay.
  - `Learner` nodes: activity summaries, trajectory vectors.
  - `Content` nodes: effectiveness scores, dropout correlation, time-on-task distribution.
- Analytics validate and correct graph structure: e.g., if learners consistently fail at a purported prerequisite boundary, the edge may be misaligned.

### Query Support
- Analytics aggregates power KGS analytical queries:
  - "Which learners traversed path X and subsequently showed Y gain?"
  - "Which concepts have the highest prediction error for dropout?"
- Temporal analytics enable trend queries and longitudinal subgraph analysis.

---

## KIS (Knowledge Integration System)

### Multi-Source Fusion
- LA pipelines are a primary consumer of KIS-fused data. KIS normalizes heterogeneous data (LMS, assessment, video, forum, agent interaction) into a unified analytics event stream.
- Analytics feedback (e.g., concept effectiveness) retroactively refines KIS fusion weights and conflict resolution strategies.

### Data Quality
- LA metrics surface data quality issues: missing events, misaligned timestamps, inconsistent identifiers. KIS uses these to trigger data quality improvement workflows.

---

## MAS (Memory Architecture System)

### Memory Types
- **Episodic Memory**: Raw interaction events, assessment outcomes, and session logs are the primary memory traces. Analytics compress these into higher-level summaries.
- **Semantic Memory**: Analytics-derived facts ("Learner A struggles with fractions," "Content B has high dropout correlation") are stored as declarative memory.
- **Procedural Memory**: Analytics-derived heuristics ("If engagement drops for 3 days, activate re-engagement workflow") can compile into procedural rules.

### Memory Lifecycle
- Analytics govern memory retention: high-value memories (key learning moments, critical errors) are prioritized; low-utility raw events may be condensed or archived.
- Analytics informs memory retrieval: recently relevant memories are more likely to be activated during tutoring or assessment.

---

## RCS (Reasoning Core Specification)

### Diagnostic Reasoning
- LA provides the data substrate for abductive and inductive diagnosis. Pattern recognition in learner behavior (e.g., repeated help-seeking before incorrect answers) triggers hypothesis generation about underlying misconceptions.

### Predictive Reasoning
- Uncertainty quantification from predictive analytics feeds directly into RCS risk-aware reasoning. High-uncertainty predictions reduce confidence in subsequent pedagogical decisions.

### Prescriptive Reasoning
- Reinforcement learning and optimization from prescriptive analytics inform strategy selection. Analytics feedback creates a closed loop: action → outcome measurement → strategy refinement.

### Explainability
- Interpretable LA (SHAP, feature importance, counterfactual explanations) is critical for RCS explanation generation. Opaque deep learning analytics undermine learner and educator trust.

---

## TAS (Technology Architecture System)

### Infrastructure Requirements
- **Real-time streaming**: Event ingestion (Kafka/Pulsar), stream processing (Flink/Spark), real-time model serving (sufficient for sub-second scoring).
- **Batch processing**: Periodic ETL, large-scale model training, longitudinal aggregations.
- **Storage**: Multi-tier (hot event store, warm analytical db, cold archive); support for time-series, graph, and tabular data.
- **Visualization**: Evolving dashboards with role-based access control.

### Scalability
- LA is likely the most resource-intensive cross-cutting capability. Event volumes can reach millions per day for large deployments.
- TAS must support elastic scaling of analytics pipelines, model inference, and storage.

### Security and Privacy
- Data minimization at collection, pseudonymization in storage, encryption at rest and in transit, role-based data access, audit logging for all analytics queries.

---

## LMS (Learner Model Specification)

### Model Inputs
- Analytics outputs (engagement trajectories, at-risk scores, mastery aggregates) become primary inputs to the learner model.
- The learner model in turn becomes a data source for higher-level analytics, creating a symbiotic relationship.

### Longitudinal Tracking
- LA enables long-term learner model trajectories: how does the learner change across months and years? What events predict inflection points?

### Open Learner Model
- Analytics determine which aspects of the learner model are surfaced. Dashboards are the primary interface for open learner model access.
- Analytics measure the impact of making learner model information visible (Does it improve self-regulation? Does it increase anxiety?).

### Ethical LA Integration
- The LMS must encode fairness and privacy directly: e.g., demographic features may be excluded from predictive models, or fairness constraints may be applied at the LMS analytics layer.
