# Cognitive Architectures: Architecture Impact Assessment

## Summary

Cognitive architectures provide the **theoretical spine** of EduOS. Where previous topics addressed specific adaptive mechanisms (KT, learner modeling, knowledge graphs, tutoring), cognitive architectures specify the fixed mechanisms of memory, learning, and reasoning that those mechanisms should emulate. This assessment maps implications of ACT-R, SOAR, CLARION, and LIDA to each EduOS subsystem, identifying foundational design principles, required capabilities, and integration points.

---

## Impact on ADS (Agent Design Specification)

### New Capabilities Required
- **Cognitive Agent**: Models the learner's cognitive processes (perception, memory, reasoning, action) using production-rule or hybrid representations. Maintains declarative, procedural, and episodic memory structures.
- **Metacognitive Agent**: Monitors and regulates learning processes (self-assessment, strategy selection, effort regulation). Grounds metacognitive scaffolding in CLARION-like metacognitive subsystems.
- **Motivation Agent**: Models and responds to motivational state (self-efficacy, goal orientation, intrinsic/extrinsic drive). Informed by CLARION's drives and goals subsystem.
- **Working Memory Agent**: Simulates limited-capacity working memory; predicts cognitive load and mental effort to prevent overload.

### New Events
- `CognitiveStateUpdated`: Working memory contents or activation levels changed after an interaction.
- `CompilationCompleted`: Declarative knowledge transitioned to procedural skill (milestone event).
- `ImpasseReached`: Learner encountered a problem state with no applicable operator (SOAR-style subgoaling trigger).
- `SubgoalResolved`: A subgoal was successfully solved; potential for chunking / rule extraction.
- `MotivationalShiftDetected`: Drive state (approach/avoidance, intrinsic/extrinsic) changed significantly.
- `MetacognitivePromptTriggered`: System detected an opportunity to scaffold self-regulation.

### New Permissions
- **Cognitive Agent**: Read access to learner model, knowledge graph, and interaction history; write access to simulated cognitive state and memory buffers.
- **Metacognitive Agent**: Read access to learner model and cognitive state; write access to metacognitive strategy recommendations.
- **Motivation Agent**: Read access to affective and behavioral state; write access to motivational state estimates.

---

## Impact on AOS (Agent Orchestration System)

### Context Assembly
- **Cognitive Context**: AOS must assemble a cognitive-context payload that includes: working memory contents, current goal stack, active production rules, and memory activations. This context drives which agents are selected and how they behave.
- **Architectural Phase Context**: Tutoring workflows should map to cognitive phases: perceive → encode → consolidate → retrieve → apply → evaluate.

### Agent Selection
- **Architecture-Driven Selection**: The cognitive architecture determines agent composition:
  - *Encoding phase* → Knowledge Integration Agent dominates
  - *Consolidation phase* → Memory (MAS) and Spaced Repetition Agent dominate
  - *Retrieval/Apply phase* → Tutor Agent and Assessment Agent collaborate
  - *Impasse detected* → Scaffolding / Explanation Agent engaged; subgoaling workflow initiated
  - *Metacognitive prompt warranted* → Metacognitive Agent joins session

### Workflow Adaptation
- **Cognitively Plausible Workflows**: Workflows must respect working memory limits (chunking, step-by-step presentation) and cognitive load constraints (avoiding split attention, extraneous processing).
- **Impasse-Triggered Subgoaling**: When the learner model indicates an impasse (no applicable skill, repeated errors), AOS should trigger a subgoal workflow:
  - Diagnose prerequisite gaps
  - Present a simplified sub-problem
  - Provide worked example or direct instruction
  - Re-attempt original problem
- **Compilation Fading**: As declarative knowledge compiles into procedural skill (tracked via learner model), AOS should fade scaffolding and increase autonomy.

### Conflict Resolution
- **Working Memory Conflict**: When multiple agents demand working memory resources (e.g., complex explanation + real-time assessment + animation), AOS must prioritize based on cognitive load impact.
- **Goal Competition**: Multiple learner goals competing for attention should be managed via an attention/priority mechanism inspired by LIDA's global workspace.

---

## Impact on KGS (Knowledge Graph Specification)

### New Node Types
- **ProductionRuleNode**: Represents a procedural skill as a condition-action rule.
- **ChunkNode**: Represents a unit of declarative knowledge (fact, concept, association).
- **MemoryTraceNode**: Episodic memory of a specific learning event with temporal, contextual, and emotional tags.
- **CognitiveStateNode**: Snapshot of a learner's working memory and activation levels at a point in time.
- **SkillCompilationNode**: Tracks declarative → procedural transitions for a specific learner and skill.
- **ImpasseNode**: Represents a problem state where the learner's known operators were insufficient.
- **SubgoalNode**: A decomposed goal created to resolve an impasse.

### New Relationship Types
- `COMPILES_FROM(ProductionRule, Chunk)`: Declarative source of a procedural rule.
- `TRIGGERED_BY(ProductionRule, CognitiveCondition)`: Contextual conditions that activate a rule.
- `RETRIEVED_FROM(MemoryTrace, Chunk)`: Episodic memory linked to declarative knowledge.
- `RESULTS_IN(Impasse, Subgoal)`: Impasse generates subgoals in SOAR-style problem solving.
- `FADES_TO(MemoryTrace, SemanticPattern)`: Episodic details consolidate into semantic generalizations over time.
- `COGNITIVELY_DEPENDS_ON(Skill, Skill)`: Working memory requirements between skills.

### Query Patterns
- "What production rules are active given this learner's current goal and working memory contents?"
- "Which declarative chunks need more practice to trigger compilation into procedures?"
- "What episodic memories are most activated by the current context (priming)?"
- "What impasses has this learner encountered for this concept, and which subgoals resolved them?"
- "What is the cognitive load profile of this learning path (sum of working memory demands)?"

---

## Impact on KIS (Knowledge Integration System)

### Memory-Driven Evidence Fusion
KIS must integrate new learning interactions into multiple memory systems simultaneously:
- **Declarative updates** → Semantic memory (facts, concepts, chunk activations)
- **Procedural updates** → Production rule strengthening or weakening based on success/failure
- **Episodic updates** → Event traces with temporal, contextual, and affective tags

### Activation-Based Prioritization
Following ACT-R's base-level activation model, KIS should prioritize which knowledge to update based on:
- **Recency**: How recently was the knowledge used?
- **Frequency**: How often has it been used successfully?
- **Contextual match**: How relevant is the current context to the stored knowledge?
- **Retrieval threshold**: Minimum activation required for reliable recall.

### Compilation Tracking
KIS should detect signs of declarative-to-procedural compilation:
- Decreased response latency on previously slow skills
- Reduced error rate on previously error-prone tasks
- Decline in verbalized reasoning (learners skip steps they previously articulated)
- Increased transfer to novel problems
These signals should trigger updates in the learner model and scaffolding reduction.

---

## Impact on MAS (Memory Architecture System)

### Multi-System Memory Design
MAS should be structured around the memory systems posited by cognitive architectures:

- **Sensory/Perceptual Memory**: Transient buffers for incoming multi-modal data (text, video, audio). High capacity, fast decay (seconds).
- **Working Memory (Short-Term)**: Limited-capacity, fast-access buffer (4-7 chunks). Holds currently active goals, problem state, and retrieved knowledge. Corresponds to AOS context.
- **Long-Term Declarative (Semantic) Memory**: Facts, concepts, and structured knowledge. Activation-based retrieval. Corresponds to KGS content.
- **Long-Term Episodic Memory**: Time-tagged experiences. Supports case-based reasoning and personalized recall. Linked to learner interactions.
- **Procedural Memory**: Skills, habits, and condition-action rules. Governs automatic performance. Corresponds to tutoring strategy execution and learner skill models.

### Learning Mechanisms in MAS
MAS must support the learning mechanisms from cognitive architectures:
- **Encoding**: New declarative chunks from interaction
- **Consolidation**: Sleep-like processes that stabilize memory (can be simulated via batch processing during off-peak hours)
- **Compilation**: Declarative → procedural transition tracked by KIS
- **Tuning**: Strengthening/ weakening of production rules based on utility (success rate vs. cost)
- **Chunking**: SOAR-style creation of new rules from resolved subgoals
- **Generalization**: Extraction of abstract patterns from specific episodes

### MemoryDecay and Reactivation
- Forgetting should follow empirically validated decay functions (ACT-R's base-level decay, Ebbinghaus exponential, or power law).
- Spaced reactivation should boost base-level activation, making knowledge more retrievable over time.

---

## Impact on RCS (Reasoning Core Specification)

### Production-Rule Reasoning Engine
RCS should support a production-rule reasoning layer (influenced by ACT-R and SOAR):
- **Matching**: Find rules whose conditions match current working memory contents.
- **Conflict Resolution**: When multiple rules match, select based on specificity, recency, and utility.
- **Execution**: Fire selected rule, updating working memory and potentially triggering actions.
- **Learning from Execution**: Update rule utilities based on outcome.

### Goal-Driven and Impasse-Driven Reasoning
- **Goal Stack Management**: Maintain a hierarchy of learner goals (current problem, subgoals, study objectives). When an impasse is reached (no applicable rule), create a subgoal.
- **Universal Subgoaling**: Like SOAR, any failure to select an operator becomes a problem to solve, recursively.
- **Problem Space Search**: Define problems in terms of states and operators. Use heuristic search (A*, BFS, etc.) for open-ended domains.

### Dual-Process Reasoning
Inspired by CLARION and dual-process theory:
- **System 1 (Implicit)**: Fast, automatic, subsymbolic reasoning (pattern matching, statistical inference, neural networks). Used for familiar situations.
- **System 2 (Explicit)**: Slow, deliberate, symbolic reasoning (rule-based inference, planning, explanation). Used for novel or complex situations.
- **Integration**: Implicit processes provide suggestions; explicit processes verify and articulate them. Over time, explicit procedures compile into implicit skills.

### Cognitive Cycle Implementation
Implement a cognitive cycle inspired by LIDA (~5-10 Hz in humans; can be much faster in silicon):
1. **Perceive**: Gather sensory/input data from learner interaction.
2. **Attend**: Select the most salient/surgent elements given limited resources.
3. **Understand**: Retrieve relevant knowledge from declarative memory; bind to working memory.
4. **Act**: Select an action or tutoring intervention via production rules or planning.
5. **Evaluate**: Assess the outcome; update memory and rule utilities.

---

## Impact on TAS (Technical Architecture Specification)

### Memory Performance
- **Multi-Tier Memory**: Sensory (in-memory, volatile) → Working (fast cache, e.g., Redis) → Declarative/ Episodic (durable, queryable, e.g., graph DB + column store) → Procedural (compiled, e.g., in-memory rule engine).
- **Activation Computation**: Base-level activation requires scanning and updating many memory items. Use approximate algorithms (DeLTA, sampling) to keep real-time latency low.

### Cognitive Cycle Latency
- Each cognitive cycle must complete in << 1 second to support interactive tutoring.
- Parallelize: perception can run asynchronously while the reasoning cycle proceeds.
- Cache working memory state per active learner to avoid recomputing activations from scratch.

### Scale
- Episodic memory for millions of learners × years of interaction will be petabyte-scale.
  - Use compression (generalize old episodes into semantic patterns).
  - Tiered retention: hot (recent sessions), warm (last few months), cold (archived summaries).

### Modular Architecture
- The production-rule engine should be a swappable module, accommodating different architectures (ACT-R style, SOAR style, custom hybrid).
- Memory systems should be pluggable, allowing different backends for different memory types.

---

## Impact on LMS (Learning Modeling System)

### Cognitive-State-Driven Learner Model
LMS should extend the learner model to track cognitive architecture dimensions:
- **Declarative State**: Chunk activations, recency/frequency of access, context associations for each concept.
- **Procedural State**: Production rule utilities, compilation status (declarative vs. procedural), error rates, response latencies per skill.
- **Working Memory Profile**: Estimated cognitive load during interactions; capacity constraints; chunking ability.
- **Episodic State**: Recent experiences with their outcomes, affective valence, and contextual tags.

### Compilation Tracking
- **Skill Acquisition Stages**: Model the learner as progressing through declarative → associative → autonomous stages (ACT-R's learning stages).
- **Scaffolding Calibration**: Use compilation status to adjust scaffolding level—more support in declarative stage, more autonomy in autonomous stage.

### Metacognitive Layer
- **Self-Regulation State**: Track learner's metacognitive accuracy (do they know what they know?), strategy use (planning, monitoring, evaluating), and help-seeking calibration.
- **Metacognitive Prompts**: Trigger prompts when the cognitive architecture predicts a useful metacognitive action (e.g., "Are you sure? You haven't checked your answer.").

### Motivational Layer
- **Drive State**: Track approach/avoidance motivation, intrinsic vs. extrinsic goal orientation, and self-efficacy per domain/skill.
- **Goal Dynamics**: Model goal creation, subgoaling, and resolution. Goals should be explicit, hierarchically organized, and linked to knowledge graph nodes.

---

## Integration Summary

| System | Primary Impact |
|--------|----------------|
| **ADS** | New agents (Cognitive, Metacognitive, Motivation, Working Memory); new events (compilation, impasse, subgoal); cognitive permissions |
| **AOS** | Cognitively plausible workflows, impasse-triggered subgoaling, compilation-based fading, goal-driven orchestration |
| **KGS** | New cognitive nodes (production rules, chunks, memory traces, impasses, subgoals) and relationships (compiles-from, triggered-by, results-in) |
| **KIS** | Multi-memory evidence fusion, activation-based prioritization, compilation tracking |
| **MAS** | Multi-system memory (sensory, working, declarative, episodic, procedural); learning mechanisms (encoding, consolidation, compilation, tuning, chunking) |
| **RCS** | Production rule engine, goal/impasse-driven reasoning, dual-process reasoning, cognitive cycle implementation |
| **TAS** | Multi-tier memory, cognitive cycle latency, petabyte-scale episodic memory, modular pluggable architecture |
| **LMS** | Cognitive-state-driven learner model (declarative/procedural/working memory/episodic), compilation tracking, metacognitive/motivational layers |

---

## Recommended Implementation Priorities

1. **Phase 1: Core Memory Systems**
   - Implement declarative and procedural memory structures in MAS
   - Ground them in KGS (semantic) and LMS (learner state)
   - Support basic production rule representation and execution in RCS

2. **Phase 2: Cognitive Cycle and Tutoring Integration**
   - Implement the perceive-attend-understand-act-evaluate cycle in AOS/RCS
   - Connect to tutoring workflow (problem presentation, feedback, hinting)
   - Add working memory simulation for cognitive load estimation

3. **Phase 3: Learning Mechanisms**
   - Add encoding, consolidation, and reactivation to MAS
   - Implement compilation tracking in KIS and LMS
   - Add rule learning (tuning, chunking) to RCS

4. **Phase 4: Advanced Cognitive Modeling**
   - Dual-process reasoning (explicit + implicit)
   - Metacognitive and motivational modeling
   - Universal subgoaling and impasse-driven adaptation
   - Long-term, cross-domain learner modeling at cognitive architecture fidelity
