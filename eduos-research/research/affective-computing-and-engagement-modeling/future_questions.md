# Affective Computing and Engagement Modeling — Future Research Questions

## Detection and Sensing

### F1: Minimum Viable Behavioral Proxy Set
- Which small set of behavioral proxies (e.g., keystrokes, pause duration, help-seeking frequency, navigation events) can reliably approximate affective state and engagement without sensors?
- How do we validate that these proxies capture meaningful variance in emotional and motivational state rather than behavioral noise?
- Can LLM-based inference of affect from text/chat surpass or complement traditional behavioral proxies, and what are the costs/latency?

### F2: Real-Time Multimodal Fusion at Scale
- What fusion architectures (early, late, deep, or transformer-based) achieve the best accuracy-latency-cost trade-off for real-time educational affect detection?
- How do we handle temporal misalignment across modalities (e.g., behavior logs at millisecond resolution, webcam at 30fps, EDA at 4Hz)?
- Can on-device (edge) fusion maintain accuracy while preserving learner privacy?

### F3: Cultural Validity and Bias in Affect Detection
- Do facial affect models trained on Western datasets systematically misclassify emotions across East Asian, African, Latin American, and Indigenous learners?
- How do display rules (cultural norms about emotional expression) alter the mapping from observed behavior/facial expressions to internal affective state?
- Can adversarial or fairness-aware training eliminate demographic bias in affect detection, or do we need culturally separate models?

### F4: Individual Calibration and Baselines
- How many sessions or data points are needed to establish an individual's affective baseline reliably?
- Can meta-learning or transfer learning bootstrap individual calibration from sparse data?
- How do we handle learners whose emotional expression is atypical (e.g., neurodivergent learners, alexithymia)?

---

## Engagement and Affect Modeling

### F5: Longitudinal Engagement Trajectories
- How do engagement patterns evolve over weeks, months, and years of learning?
- What are the reliable early warning signals for chronic disengagement or dropout risk?
- Can engagement trajectories be predicted using only historical behavioral data, and with what lead time?

### F6: Causality of Affect-Aware Interventions
- Does responding to detected frustration cause better learning outcomes, or is it merely correlated with states that would resolve naturally?
- What are the pedagogical side effects of affective interventions (e.g., does too much scaffolding in response to frustration reduce learner resilience)?
- Can randomized or quasi-experimental designs establish the causal impact of specific affect-driven tutoring strategies?

### F7: Modeling Emotion Dynamics and Transitions
- How do emotions transition during a learning session (e.g., confusion → flow → boredom → frustration), and can these trajectories be predicted from early-session data?
- Are there universal vs. individual emotion-transition patterns during learning?
- How should a tutoring system react to rapid affective oscillation vs. sustained negative states?

### F8: Self-Report Integration
- How can we leverage intermittent, low-burden self-reports (e.g., one-word check-ins, emoji ratings) without learner fatigue while maximizing information gain?
- What is the optimal prompting schedule for self-reports (per problem, per session, per week)?
- Can active learning algorithms schedule self-reports where they would be most informative?

---

## Adaptive Systems and Affective Tutoring

### F9: Optimal Affective Intervention Timing and Selection
- What is the optimal delay between affect detection and intervention delivery to maximize effectiveness without interrupting productive struggle?
- Which affective intervention library (motivational messages, strategy switches, difficulty adjustments, break suggestions, social reframing) is most effective per affective state and concept type?
- Can reinforcement learning discover novel affect-aware tutoring policies faster than manual design?

### F10: Flow Maintenance and Recovery
- What system-level parameters (difficulty, pacing, content type, scaffolding, autonomy level) most reliably induce and maintain flow?
- How can a system recover flow once it has been disrupted (e.g., by an intrusive notification or overly difficult item)?
- Is flow always the right goal, or should some learning activities deliberately induce productive struggle or confusion?

### F11: Multi-Objective Balancing
- How should affect/engagement objectives be balanced with learning gain, time, fairness, and cognitive load in a multi-objective adaptive framework?
- Are there affective states for which sacrificing short-term engagement improves long-term learning (e.g., productive confusion)?
- What formal frameworks best represent this multi-objective optimization problem?

---

## Ethics, Privacy, and Fairness

### F12: Privacy-Preserving Affect Sensing
- Can differential privacy, federated learning, or homomorphic encryption enable secure affective modeling without exposing raw behavioral or sensor data?
- What is the minimum granularity of affective data that still enables pedagogically useful interventions?
- Can on-device inference reduce privacy risk enough to justify optional webcam-based sensing?

### F13: Surveillance and Autonomy Risks
- Does continuous engagement monitoring suppress learner curiosity, risk-taking, or self-regulation?
- What are the long-term psychological effects of being in an environment that always infers your emotional state?
- How can affect-aware systems be designed to increase learner autonomy rather than replace it?

### F14: Emotional Data Ownership and Governance
- Who owns inferred emotional data: the learner, institution, or platform?
- How can learners inspect, correct, and delete their emotional profiles?
- What governance structures prevent affective data from being repurposed for non-pedagogical profiling (e.g., employment screening, insurance risk)?

---

## Scalability and Integration

### F15: Cost-Effective Affect Detection at Scale
- What is the per-learner compute and storage cost of real-time affect detection using behavioral vs. visual vs. physiological data?
- Can compressed or distilled models maintain detection accuracy while meeting latency and cost constraints for millions of learners?
- What is the cost-effectiveness of affective computing compared to simpler adaptation strategies (e.g., performance-based scaffolding alone)?

### F16: Cross-Subsystem Coordination
- Should affect/engagement data be treated as a forcing function (can override cognitive decisions), an advisory input, or a weighting factor in multi-objective optimization?
- How do we prevent conflicting affect-driven and mastery-driven adaptive actions from confusing the learner?
- What consensus mechanisms reconcile recommendations from the Affective Intervention Agent and the Content Sequencing Agent?

---

## Priority Questions for Immediate Investigation

1. **F1 (Minimum Viable Behavioral Proxy Set)** — Critical for making affective computing feasible at scale without sensor hardware.
2. **F3 (Cultural Validity and Bias)** — Essential for equitable EduOS deployment across diverse global learner populations.
3. **F6 (Causality of Affect-Aware Interventions)** — Without causal evidence, affect-aware tutoring risks being expensive surveillance.
4. **F9 (Optimal Timing and Selection of Affective Interventions)** — Needed to translate detection into genuine pedagogical value.
5. **F12 (Privacy-Preserving Affect Sensing)** — Without strong privacy, affective computing will face adoption resistance.
