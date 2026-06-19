# Affective Computing and Engagement Modeling — Architecture Impact on EduOS

Affective computing and engagement modeling do not constitute a standalone subsystem; rather, they are cross-cutting capabilities that enrich the learner model and inform adaptive decisions across all EduOS components. They influence how the system perceives the learner, how it responds to emotional and motivational states, and how it safeguards learner well-being. This document maps the architectural implications across the eight core EduOS subsystems.

---

## ADS (Agent Directory Specification)

### New Agents
- **Affective State Detection Agent**: Processes behavioral, linguistic, and (optionally) physiological signals to infer current affective state (valence, arousal, discrete emotions: boredom, confusion, frustration, flow, delight) with confidence scores.
- **Engagement Monitoring Agent**: Tracks behavioral, emotional, and cognitive engagement dimensions; raises alerts for disengagement risk or sustained negative affect.
- **Affective Intervention Agent**: Selects and delivers affect-aware pedagogical responses (motivational message, difficulty reduction, worked example, break suggestion, alternative explanation) based on detected affective state.
- **Flow Calibration Agent**: Monitors flow indicators (challenge-skill balance, uninterrupted progress) and adjusts content difficulty and scaffolding to maintain or induce flow.
- **Cultural Affect Calibration Agent**: Adjusts affect detection thresholds and intervention strategies based on learner cultural context and self-reported emotional expression norms.
- **Emotional Privacy Agent**: Manages consent, opt-in/opt-out, data minimization, and emotional data deletion for affective sensing.

### Events
- `AffectiveStateDetected`, `EngagementLevelChanged`, `DisengagementRiskAlerted`, `AffectiveInterventionTriggered`, `FlowStateEntered`, `FlowStateExited`, `EmotionalPrivacyConsentRevoked`, `AffectDetectorConfidenceLow`

### Permissions
- Affective agents need read access to behavioral traces, optional read access to sensor/physiological feeds, and write access to the affective/engagement dimensions of the learner model.
- Affective intervention agents need write access to content delivery and scaffolding parameters, subject to safety and curriculum constraints.
- Learners retain granular permission to enable/disable affect monitoring per modality (behavioral only, webcam-based, etc.).

---

## AOS (Agentic Orchestration System)

### Orchestration Integration
- Affective and engagement data become primary inputs to the adaptive loop. The AOS must route affective state updates to tutoring, sequencing, scaffolding, and assessment agents in real time.
- The orchestration workflow gains an affective branch: `detect → infer → evaluate urgency → select intervention → coordinate with tutoring/content agents → log`. This branch runs alongside (and can override) cognitive-state-driven decisions.

### Context Assembly
- AOS enriches learner context with:
  - **Real-time affective state**: current and recent emotional trajectory (five-second/minute rolling window).
  - **Engagement profile**: behavioral (time-on-task, clickstream), emotional (valence, arousal), and cognitive (strategy use, self-regulation indicators).
  - **Affective triggers**: recent error spikes, prolonged pauses, help-seeking escalation, or dialog sentiment shifts.
  - **Intervention history**: what affective interventions have been attempted recently and their outcomes.

### Workflow Types
- **Affective surveillance workflow**: periodic (per-interaction or per-minute) inference pipeline that updates the learner model.
- **Disengagement escalation workflow**: when engagement drops below threshold, progressively escalate (nudge → scaffolding increase → strategy switch → instructor alert → pause/exit).
- **Flow maintenance workflow**: when flow is detected, minimize interruptions, maintain challenge level, avoid assessment, and log session boundaries for later analysis.
- **Affective intervention workflow**: trigger → select from intervention library → deliver → monitor for state change → log.
- **Emotional privacy workflow**: consent check → data minimization → anonymization → periodic deletion audit.

---

## KGS (Knowledge Graph Specification)

### Graph Enrichment
- New node types:
  - `AffectiveState`: Represents discrete emotional states or valence-arousal coordinates with temporal provenance.
  - `EngagementProfile`: Represents a learner's engagement pattern over a session or time window, with behavioral, emotional, and cognitive subcomponents.
  - `AffectiveIntervention`: Represents an intervention strategy (e.g., motivation boost, difficulty reduction, break) with context conditions and historical efficacy.
  - `FlowCondition`: Represents the preconditions (difficulty, scaffolding, novelty, autonomy) that support flow for specific domain concepts.
- New edge types:
  - `currently_feels`: Links learner node to an AffectiveState (temporal).
  - `engaged_with`: Links learner to content concept with engagement metrics.
  - `responds_to`: Links AffectiveState to AffectiveIntervention (bidirectional, efficacy-labeled).
  - `triggers`: Links content or interaction pattern to an AffectiveState (e.g., `DifficultProblem -> triggers -> Frustration`).
  - `supports_flow`: Links content concept to flow preconditions.
  - `culturally_calibrated_for`: Links AffectiveState or Intervention to cultural context.

### Reasoning Support
- KGS must support queries such as: "What interventions have worked for learners in state X on concept Y?"
- Graph reasoning should propagate affective likelihoods: e.g., if a learner is frustrated with concept A, and concept B historically triggers frustration when A is poorly understood, preemptively adjust B.
- Prerequisite pathfinding can incorporate emotional difficulty alongside cognitive difficulty.

---

## KIS (Knowledge Integration System)

### Multi-Source Fusion
- Affective computing dramatically expands the evidence sources KIS must fuse:
  - **Behavioral traces:** Keystrokes, navigation, time-on-task, help-seeking, clickstream.
  - **Linguistic signals:** Sentiment, self-efficacy language, confusion markers in dialogue or open response.
  - **Physiological signals (optional):** Webcam expressions, eye tracking (if available), EDA, heart rate.
  - **Self-reports:** Surveys, thumbs-up/down, retrospective interviews.
- KIS must resolve conflicts: e.g., a learner's text may indicate frustration while behavioral traces show persistence. The system should not overreact to any single inconsistent signal.

### Uncertainty Propagation
- Each affective/engagement signal carries modality-specific noise. KIS must propagate these uncertainties into the final learner model, flagging high-uncertainty states for conservative behavior (e.g., do not trigger an intervention if the system is unsure of the affective state).
- Temporal inconsistency (affective states change quickly) must be averaged or trend-analyzed rather than reacting to every transient fluctuation.

---

## MAS (Memory Architecture System)

### Memory Types
- **Episodic Memory**: Stores time-stamped affective traces per session — what was detected, what intervention was triggered, and the learner's subsequent behavior. Critical for personalizing affect detection (individual baselines) and for auditing affect-driven decisions.
- **Semantic Memory**: Stores normative knowledge about affect-concept relationships (e.g., "algebraic factoring often triggers frustration in novices"), intervention efficacy, and cultural expression norms.
- **Procedural Memory**: Compiled heuristics for rapid, low-latency affect intervention selection (e.g., "if high frustration and recent_hint_count > 2, switch to worked example").
- **Working Memory**: Holds the current session's active affective context — live estimates, recent trend, pending interventions, and flow state.

### Memory Lifecycle
- Raw sensory/behavioral data is converted into affective inferences, which are compressed into episodic traces for session-level analysis.
- Successful interventions are reinforced and compiled into procedural heuristics.
- Long-term engagement trajectories (weeks to years) are consolidated into the semantic learner profile to detect chronic disengagement or motivational shifts.

---

## RCS (Reasoning Core Specification)

### Affective-Aware Adaptive Reasoning
- RCS integrates affective and engagement state into all reasoning processes:
  - **Diagnosis**: Distinguish affect-driven performance drops (anxiety, boredom) from cognitive drops (lack of knowledge). Misdiagnosis leads to inappropriate remediation.
  - **Strategy selection**: Choose tutoring strategies that are emotionally supportive (e.g., motivational messages, autonomy support, collaborative framing) when negative affect is present.
  - **Scaffolding calibration**: Increase scaffolding when confusion/frustration is detected; decrease it when flow or mastery is detected.
  - **Content selection**: Avoid introducing new complex content during high arousal or negative valence; favor consolidation or review during low engagement.

### Multi-Objective Trade-offs
- Affective/engagement goals must be balanced with learning gain, time, and fairness:
  - Reducing difficulty to boost engagement may decrease learning gain.
  - Affect-aware pauses or breaks improve well-being but consume time.
  - The system must not systematically lower expectations for learner groups whose affect is mischaracterized.

### Conflict Resolution
- When cognitive state (mastery high) conflicts with affective state (frustration high), RCS must decide whether to challenge or support. Default to affective override when the learner's persistence is at risk.
- When multiple agents propose conflicting affect-driven actions, RCS must adjudicate using a learner-model-priority hierarchy.

### Explainability
- RCS must generate explanations for affect-driven interventions: "I gave you a worked example because you seemed stuck and frustrated, which can hinder learning."

---

## TAS (Technology Architecture System)

### Infrastructure Requirements
- **Real-time affect inference pipeline:** Low-latency (< 200 ms) processing of behavioral event streams; optional batch processing for post-hoc affect labeling.
- **Multimodal data ingestion:** APIs or streaming endpoints for webcam, audio, physiological sensor feeds (optional but supported).
- **Edge processing support:** Privacy-sensitive processing (e.g., facial expression analysis) should run on-device wherever possible, transmitting only inferred labels, not raw video.
- **Scalable behavioral log processing:** Stream processing for keystroke dynamics, clickstreams, and navigation events.
- **Intervention delivery latency:** Affective interventions must reach the learner quickly (sub-second for in-session hints, seconds for content adaptation) to be temporally relevant.

### Scalability
- Behavioral affect detection scales linearly with learner count and is lightweight.
- Webcam/facial analysis is computationally expensive per stream and should be optional, tiered, or offloaded to edge devices.
- Engagement trajectory models (deep learning) can be updated periodically rather than per-interaction to reduce cost.

### Security and Privacy
- All affective/physiological data must be encrypted at rest and in transit.
- Raw sensory data (video, sensor stream) should be deleted after inference; only inferred state labels should persist.
- Affect data access must be strictly permissioned and logged for audit.
- Emotional data should not be repurposed for advertising, profiling, or non-pedagogical analytics.

---

## LMS (Learner Model Specification)

### Model Inputs
- Inferred affective states (valence, arousal, discrete emotions, confidence) from the Affective State Detection Agent.
- Engagement levels (behavioral, emotional, cognitive) from the Engagement Monitoring Agent.
- Physiological baselines and individual calibration parameters (if opt-in sensor data is available).
- Self-reported affect and motivation data.

### Learner Model Dimensions
- **Affective trajectory**: Current and recent (session-level) emotional state history.
- **Engagement profile**: Multi-dimensional engagement scores with temporal resolution.
- **Affective baseline**: Individual-specific norms (some learners are naturally more anxious; some are more expressive), calibrated over time.
- **Intervention response history**: Which interventions have improved affect/engagement for this learner.
- **Flow state indicators**: Current flow probability, recent flow session history, factors that induced flow.
- **Privacy/consent flags**: Which modalities and data the learner has consented to.

### Open Learner Model
- Affective and engagement dimensions should be visible to the learner if they choose (with explanations and possible corrections).
- Learners must be able to override or correct affective inferences: "I wasn't frustrated—I was thinking." Such feedback refines individual calibration.

---

## Cross-Cutting Design Principles

1. **Consent-first sensing**: Affective data collection must always be opt-in, granular, and easily revocable.
2. **Multi-modal but lightweight default**: The default affect/engagement pipeline uses behavioral proxies only; richer sensing requires explicit consent.
3. **Uncertainty-aware action**: Never act solely on a single low-confidence affective inference.
4. **Culturally responsive calibration**: Affect detection and intervention selection must be culturally calibrated, not one-size-fits-all.
5. **Pedagogical response, not surveillance**: Affective state should be used to improve learning experiences, not to profile, penalize, or manipulate the learner.
