# Learner Modeling: Architecture Impact Assessment

## Summary

Learner modeling is the central intelligence layer of EduOS. It is not a single module but a cross-cutting concern that affects every system: how agents reason, what the knowledge graph stores, what the LMS maintains, how memory is organized, and how the orchestrator coordinates. This assessment maps learner modeling implications to each EduOS subsystem.

---

## Impact on ADS (Agent Design Specification)

### New Capabilities Required
- **Student Agent**: Must maintain and update the canonical learner model. Becomes the primary owner of learner state.
- **Tutor Agent**: Queries learner model to personalize explanations, difficulty, and pedagogical strategy.
- **Assessment Agent**: Uses learner model to generate appropriately challenging questions and to avoid repeat assessment of mastered skills.
- **Career Agent**: Consults learner model for skill gaps and career alignment.

### New Events
- `LearnerModelUpdated`: Fired whenever any dimension of the learner model changes.
- `MasteryThresholdCrossed`: Fired when a skill moves from partial to mastered.
- `AffectiveShiftDetected`: Fired when learner engagement or frustration changes significantly.
- `MisconceptionIdentified`: Fired when a persistent incorrect belief is detected.

### Permissions
- **Student Agent**: Read/write access to full learner model.
- **Tutor Agent**: Read access to cognitive, behavioral, and goal dimensions.
- **Assessment Agent**: Read access to cognitive and skill dimensions.
- **Career Agent**: Read access to goals, skills, and career model.
- **All other agents**: Read access to dimensions relevant to their function.

---

## Impact on AOS (Agent Orchestration System)

### Context Assembly
- The learner model becomes the primary source of "who is asking" context.
- Context builder must assemble relevant learner dimensions (not all dimensions are relevant for all interactions).

### Agent Selection
- Learner model may influence which agents participate. Example: if frustration is high, a motivational support agent may be included.

### Conflict Resolution
- When agents disagree (e.g., Tutor says mastery is 80%, Assessment says 50%), the learner model's uncertainty representation provides evidence for conflict resolution.

### Workflow Adaptation
- Learner state (e.g., cognitive load, affect) may change workflow. Example: high cognitive load triggers simplified, step-by-step workflows.

---

## Impact on KGS (Knowledge Graph Specification)

### New Node Types
- **Learner Profile Node**: Central node for each learner, linking to all dimensions.
- **Mastery State Node**: Captures current and historical mastery for each concept/skill.
- **Misconception Node**: Represents persistent incorrect beliefs.
- **Goal Node**: Represents learner-defined or system-inferred goals.
- **Affective State Node**: Represents emotional/engagement states.

### New Relationship Types
- `HAS_MASTERY_OF` (Student → Concept)
- `IS_PRONE_TO_MISCONCEPTION` (Student → Misconception)
- `HAS_GOAL` (Student → Goal)
- `IS_CURRENTLY_FEELING` (Student → AffectiveState)
- `REQUIRES_PREREQUISITE` (Concept → Concept)
- `INFLUENCED_BY` (Mastery → AffectiveState)

### Query Patterns
- "What are this learner's weak topics?"
- "What is this learner's current affective state?"
- "What goals is this learner closest to achieving?"
- "Which misconceptions has this learner repeatedly exhibited?"

---

## Impact on KIS (Knowledge Integration System)

### Data Fusion
- KIS must fuse evidence from multiple sources into unified learner state:
  - Quiz results → Cognitive dimension
  - Interaction logs → Behavioral dimension
  - Self-reports → Affective/motivational dimension
  - External APIs → Contextual dimension

### Temporal Consistency
- KIS must handle updates arriving at different frequencies (real-time clicks, periodic assessments, rare self-reports).
- Must maintain temporal consistency across dimensions.

### Uncertainty Propagation
- When fusing multi-source evidence, KIS must propagate uncertainty correctly (e.g., if quiz confidence is low, affective inference from the same interaction should also be uncertain).

---

## Impact on MAS (Memory Architecture System)

### Learner Memory
- The learner model is the primary content of Learner Memory in MAS.
- Must support both fast reads (for real-time personalization) and rich writes (for evidence accumulation).

### Episodic Memory Integration
- Learning episodes (quizzes, projects, conversations) must be linked to learner model updates.
- Episodes provide provenance: "Why does the model believe the learner knows TCP?"

### Semantic Memory
- General learner characteristics (learning style, preferences) stored in semantic memory.
- Distinguish fixed traits from dynamic states.

### Consolidation
- Working memory updates (current session) must be consolidated into long-term learner model.
- Consolidation triggers should include assessment results, project completions, and explicit learner feedback.

### Forgetting
- MAS Forgetting System must model both knowledge decay and learner model confidence decay.
- Old interaction data should not be deleted but down-weighted.

---

## Impact on RCS (Reasoning Core Specification)

### Graph Reasoning
- RCS must reason over the learner-aware knowledge graph.
- Prerequisite reasoning must consider *this* learner's state, not just generic prerequisites.
- Example: "Teaching BGP to this learner requires reviewing OSPF because their mastery is low."

### Planning Engine
- Planning must be learner-aware. The same goal (e.g., "Become an AI Engineer") yields different plans for different learners based on their model.
- Learner model provides constraints and heuristics for plan generation.

### Confidence Framework
- RCS confidence in pedagogical decisions must include model confidence.
- If learner model is uncertain, RCS should plan verification (e.g., additional assessment) before acting.

### Multi-Agent Reasoning
- Agent consensus should be weighted by their specific access to learner model dimensions.
- Example: AssessmentAgent has stronger evidence for cognitive state; StudentAgent has broader context.

---

## Impact on TAS (Technical Architecture Specification)

### Data Architecture
- Learner Database schema must support multi-dimensional, versioned learner state.
- Support for efficient temporal queries ("What was this learner's state 3 months ago?").

### API Design
- REST/GraphQL APIs for learner model read/write.
- Event streaming for real-time model updates.

### Scalability
- Learner model storage grows with: users × dimensions × concepts × time.
- Must support millions of learner models with sub-second read latency.
- Consider: per-learner model sharding, hot/cold data separation, summary statistics for cohort analysis.

### Security & Privacy
- Learner models contain highly sensitive data.
- Encrypt at rest and in transit.
- Support learner-managed consent (what is modeled, who can access).
- Anonymization for aggregate/population models.

---

## Impact on LMS (Learning Modeling System)

### Primary Owner
- LMS is the canonical owner of the learner model (as already reflected in architecture).
- All other systems read from or write to the LMS learner model.

### Digital Twin Realization
- The existing LMS digital twin architecture (KnowledgeModel, SkillModel, GoalModel, BehaviorModel, CareerModel) already captures the multi-dimensional learner model vision.
- This research validates and sharpens the existing LMS design.

### New Requirements
- **Misconception Model**: Must be explicit, not just absence of knowledge.
- **Affective Model**: Integrate engagement, frustration, boredom signals.
- **Motivational Model**: Track streaks, dropout risk, self-efficacy.
- **Uncertainty Model**: Every dimension should have confidence/uncertainty estimates.

### State Engine Enhancement
- The Learning State Engine must support multi-source evidence fusion.
- Must handle asynchronous updates from multiple agents/tools.
- Must maintain causal provenance: what evidence led to what state change.

---

## Integration Summary

| System | Primary Impact |
|--------|--------------|
| **ADS** | New agent responsibilities, events, permissions |
| **AOS** | Learner-aware context assembly, workflow adaptation |
| **KGS** | Learner-specific nodes and edges in the knowledge graph |
| **KIS** | Multi-source, temporal evidence fusion |
| **MAS** | Learner Memory as primary content, episodic-semantics linking |
| **RCS** | Learner-aware reasoning, planning, and confidence |
| **TAS** | Scalable, secure learner data architecture |
| **LMS** | Canonical learner model owner, digital twin |

---

## Recommended Implementation Priorities

1. **Phase 1**: Cognitive learner model (knowledge + skills) integrated with KT and KGS.
2. **Phase 2**: Behavioral model (session patterns, engagement, help-seeking).
3. **Phase 3**: Goal and career model alignment.
4. **Phase 4**: Affective and motivational modeling.
5. **Phase 5**: Full digital twin with uncertainty quantification and open learner model features.
