# Educational Knowledge Graphs: Architecture Impact Assessment

## Summary

720 Educational Knowledge Graphs (EKGs) are the structural backbone of EduOS. They provide the semantic scaffolding upon which all other systems reason. This assessment maps EKG research to each EduOS subsystem, identifying required capabilities, new integrations, and implementation recommendations.

---

## Impact on ADS (Agent Design Specification)

### New Capabilities Required
- **Knowledge Graph Agent**: New agent responsible for EKG construction, validation, and maintenance. Owns the global domain graph.
- **Learner Graph Agent**: Manages per-learner subgraphs, melding global structure with individual state. Queries global graph to project personalized views.
- **Prerequisite Validation Agent**: Verifies prerequisite edges using performance data, flagging statistical anomalies or curriculum drift.
- **Curriculum Agent**: Designs and updates course-level subgraphs, aligning EKG structure with pedagogical goals.

### New Events
- `KnowledgeGraphUpdated`: Domain graph changed (new concepts, relationships deprecated).
- `LearnerSubgraphModified`: Per-learner graph updated (mastery, misconception, goal edges added/removed).
- `PrerequisiteEdgeValidated`: Statistical or expert confirmation of a prerequisite edge.
- `ConceptGapDetected`: Missing prerequisite identified for a learner attempting advanced material.

### Permissions
- **Knowledge Graph Agent**: Read/write access to global domain graph; read access to aggregate learner subgraphs for validation.
- **Learner Graph Agent**: Read access to global domain graph; read/write access to per-learner subgraphs.
- **All Tutor/Assessment Agents**: Read access to learner subgraphs and relevant global graph subgraphs.
- **Learners**: Read access to own subgraph; restricted read access to global graph (public concepts only).

---

## Impact on AOS (Agent Orchestration System)

### Context Assembly
- EKG provides the "what is being discussed" context. Agents must resolve utterances to graph nodes (concept disambiguation).
- Learner subgraph enriches context with learner-specific mastery, misconceptions, and goals.
- Prerequisite-aware context assembly: when a learner asks about a topic, AOS includes prerequisite status in the assembled context.

### Agent Selection
- **Gap Agent**: Automatically included when a concept gap is detected.
- **Prerequisite Review Agent**: Selected when the learner is about to engage with a concept for which prerequisites are unmastered.
- **Advanced Tutor Agent**: Selected when the learner has high mastery and seeks deeper material.

### Workflow Adaptation
- EKG structure influences workflow templates:
  - If prerequisites missing → Insert prerequisite review workflow before main content.
  - If learner has known misconception → Insert misconception remediation workflow.
  - If learner demonstrates full mastery → Skip to application/enrichment workflow.
- Dynamic workflow scaling: breadth/depth of coverage adapts to the size and complexity of the current EKG subgraph.

### Conflict Resolution
- When agents disagree on learner state, the learner subgraph provides canonical evidence.
- Domain graph structure resolves "what should be taught next" disputes by grounding agents in prerequisite constraints.

---

## Impact on KGS (Knowledge Graph Specification)

### Core Role
- KGS becomes the canonical store and reasoning engine for EduOS knowledge representation.
- EKG research directly shapes KGS data model, query language, and reasoning capabilities.

### New Node Types
- **ConceptNode**: A concept or skill in the domain. Has properties: domain, difficulty, granularity, source (manual/LLM/statistical).
- **SkillNode**: A procedural skill, distinct from declarative knowledge.
- **ResourceNode**: Educational content (video, text, quiz, simulation) linked to concepts.
- **AssessmentNode**: An assessment item or task linked to the concept(s) it evaluates.
- **MisconceptionNode**: A known incorrect concept or typical error pattern.
- **LearnerMasteryNode**: A per-learner, per-concept node capturing current mastery estimate (from KT).
- **LearnerMisconceptionNode**: A per-learner, per-misconception node tracking likelihood.
- **GoalNode**: A learner-defined or system-suggested learning goal.

### New Relationship Types
- `HAS_PREREQUISITE(Concept, Concept)`: Directed, weighted edge indicating prerequisite strength.
- `IS_RELATED_TO(Concept, Concept)`: Undirected or bidirectional; conceptual similarity.
- `IS_PART_OF(Concept, Concept)`: Partonomy (subtopic → topic).
- `ASSESSES(Assessment, Concept)`: Links assessment to concept(s).
- `TEACHES(Resource, Concept)`: Links resource to concept coverage.
- `HAS_MASTERY_OF(Learner, Concept)` → weight from KT.
- `IS_PRONE_TO(Learner, Misconception)` → weight from error analysis.
- `HAS_GOAL(Learner, Goal)`.
- `REQUIRES_FOR(Goal, Concept)`: Goal-concept dependency.

### Query Patterns
- **Prerequisite Path**: "What must this learner master before topic X?"
- **Gap Analysis**: "What prerequisites for topic X is this learner missing?"
- **Learning Path**: "Optimal sequence for this learner given current state and goal."
- **Coverage Analysis**: "Which concepts are not well-covered by resources?"
- **Misconception Chains**: "Which misconceptions co-occur and should be remediated together?"

### Reasoning Engine Requirements
1. **Prerequisite Closure**: Compute transitive prerequisite sets efficiently.
2. **Shortest Path / Learning Path**: Weighted pathfinding incorporating learner mastery, time estimates, and goal alignment.
3. **Misconception Propagation**: If misconception A is prevalent, identify related concepts at risk.
4. **Consistency Checking**: Detect cycles in prerequisite graph, conflicting prerequisite edges, or orphaned concepts.
5. **Temporal Reasoning**: Handle concept versioning (domain changes) and mastery evolution over time.

---

## Impact on KIS (Knowledge Integration System)

### Multi-Source Graph Construction
- KIS must fuse concept data from:
  - **Expert sources**: Curriculum documents, learning standards (manually curated edges).
  - **NLP/LLM pipelines**: Automated extraction from textbooks, articles, video transcripts.
  - **Behavioral data**: Clickstream, assessment performance, time-on-task (statistical edges).
- Each source must be tagged with provenance, confidence, and update timestamp.

### Temporal Consistency
- As learner subgraphs evolve, KIS must maintain temporal consistency: old mastery edges are not deleted but versioned or decay-weighted.
- Concept nodes and relationships in the global graph may be deprecated; learner subgraphs referencing them must be gracefully migrated.

### Uncertainty Propagation
- Edge confidence (from automated extraction or statistical inference) must propagate to queries and recommendations.
- If a prerequisite edge is low-confidence, the system should verify before enforcing it in learning paths.

---

## Impact on MAS (Memory Architecture System)

### Semantic Memory Enrichment
- The domain graph is the primary content of Semantic Memory.
- Learner subgraphs provide the "current state" overlay on semantic structures.
- Concept nodes must support multi-granularity (fine-grained subskills to broad domains) to align with memory hierarchies.

### Episodic Memory Linkage
- Learning episodes (quizzes, projects, conversations) link to concept nodes, providing provenance for learner state changes.
- Episodic traces enable temporal graph queries: "Show me all interactions related to concept X."

### Forgetting and Consolid
- Conceptual forgetting: if a learner hasn't practiced a concept, mastery edge weight decays; relearning episodes reactivate with lower consolidation thresholds.
- Graph-based spaced repetition: use prerequisite and relatedness edges to schedule review of not just the forgotten concept, but its neighbors (structural spacing).

---

## Impact on RCS (Reasoning Core Specification)

### Graph Reasoning Engine
- **Prerequisite-Aware Planning**: Planning engine must respect prerequisite constraints; cannot suggest B before A if A is required.
- **Counterfactual Reasoning**: "What if the learner had mastered X earlier?" Simulate alternative learner subgraphs.
- **Abductive Reasoning**: Given a learner's error, trace back along prerequisite and misconception edges to hypothesize root causes.

### Educational Reasoning Layer
- **ZPD (Zone of Proximal Development) Identification**: Find concepts where learner has prerequisite mastery but is not yet fully proficient — the optimal learning frontier.
- **Misconception Diagnosis**: Use graph structure to map error patterns to specific misconception nodes.
- **Transfer Detection**: Identify when mastery of concept A in one domain supports learning concept B in another.

### Confidence Framework
- Confidence in pedagogical recommendations depends on:
  - Edge confidence in the EKG (how sure are we that A → B is a prerequisite?).
  - Learner model confidence (how sure are we the learner has mastered A?).
- For low-confidence edges or states, RCS should gather more evidence (assess, quiz) before proceeding.

### Multi-Agent Reasoning
- Shared EKG provides common ground for agent consensus.
- **Example**: Tutor Agent proposes teaching X; Prerequisite Agent checks `HAS_PREREQUISITE`; Learner Model Agent checks mastery of A, B; only if all agree does the recommendation proceed.

---

## Impact on TAS (Technical Architecture Specification)

### Data Architecture
- **Graph Database**: Native graph store (e.g., Neo4j, ArangoDB, TigerGraph) or property graph layer on relational DB.
- **Schema Design**: Support for both global domain graph and per-learner subgraphs (must scale to millions of learners).
- **Temporal Versioning**: Every concept node, edge, and learner state must support versioning for audit and rollback.

### Scalability
- **Global Graph**: Read-heavy, expert-curated. Cache aggressively.
- **Learner Subgraphs**: Write-heavy, per-learner. Shard by learner ID.
- **Query Optimization**: Prerequisite closure, shortest path, and gap detection must complete in <100ms for real-time tutoring.
- **Approximate Querying**: For large learner subgraphs, consider approximate graph algorithms or graph neural network embeddings for speed.

### Security & Privacy
- Learner subgraphs contain highly sensitive learning data.
- Access control at graph-edge granularity (who can see which learner's mastery of which concept?).
- Anonymization for aggregate graph analytics (e.g., cohort-level gap detection).

---

## Impact on LMS (Learning Modeling System)

### Knowledge Model Integration
- LMS Knowledge Model stores learner mastery as graph edges (`HAS_MASTERY_OF`).
- Supports multi-granularity mastery: learner may master "TCP handshake" (sub-concept) but not "TCP protocol" (parent concept).
- Prerequisite-aware gap detection: LMS identifies missing prerequisite edges blocking learner progress.

### Skill Model Integration
- Skills are nodes in the graph; skill hierarchies are part-whole or prerequisite relationships.
- Learner's "skill graph" is a projection of the full EKG limited to skills and their relationships.

### Goal Model Integration
- Goals are nodes linked by `REQUIRES_FOR` to concept/skill nodes.
- Goal feasibility analysis: compute shortest critical path from current learner state to goal, considering prerequisites and time estimates.

### Behavior Model Integration
- Learner navigation patterns (e.g., visiting concept pages out of order, skipping prerequisites) provide behavioral evidence for graph validation or learner state inference.
- Repeatedly attempting advanced material without prerequisite mastery may indicate overconfidence or poor graph visibility.

### Student Digital Twin
- The learner subgraph is a core layer of the digital twin.
- Enables "what-if" simulation: simulate mastery trajectories under different learning path choices.
- Supports twin-to-twin comparison: learners with similar subgraph structures may benefit from peer learning.

---

## Integration Summary

| System   | Primary Impact |
|----------|----------------|
| **ADS**  | New agents (Knowledge Graph, Learner Graph, Prerequisite Validation); new events; graph-access permissions |
| **AOS**  | Prerequisite-aware context assembly, agent selection, and workflow adaptation |
| **KGS**  | Canonical EKG store and reasoning engine; new node/edge types; temporal reasoning |
| **KIS**  | Multi-source graph construction; fusion of expert, NLP, and behavioral evidence |
| **MAS**  | Semantic memory enriched with EKG; episodic memory linked to concept nodes; forgetting applied to graph edges |
| **RCS**  | Prerequisite-aware planning; abductive diagnosis; ZPD identification; multi-agent consensus grounded in graph |
| **TAS**  | Graph-native database; learner-subgraph sharding; temporal versioning; privacy-preserving graph queries |
| **LMS**  | Learner model as graph overlay; goal feasibility via graph pathfinding; digital twin with learner subgraph |

---

## Recommended Implementation Priorities

1. **Phase 1: Core EKG (Domain Graph)**
   - Implement global domain graph in KGS.
   - Support ConceptNode, HAS_PREREQUISITE, IS_PART_OF, IS_RELATED_TO.
   - Integrate with LMS to store learner mastery as `HAS_MASTERY_OF` edges.

2. **Phase 2: Learner Subgraphs**
   - Generate per-learner subgraphs from global graph + learner model.
   - Implement prerequisite gap detection and ZPD identification in RCS.
   - Add graph-based learning path recommendation.

3. **Phase 3: Automated Construction**
   - Add NLP/LLM pipelines in KIS for automated concept extraction.
   - Implement statistical prerequisite inference from behavioral data.
   - Build human-in-the-loop validation workflow (expert review of automated edges).

4. **Phase 4: Advanced Reasoning**
   - Deploy GNN-based reasoning for complex path recommendation.
   - Implement counterfactual reasoning for "what-if" simulation in digital twin.
   - Add temporal versioning and concept deprecation handling.
