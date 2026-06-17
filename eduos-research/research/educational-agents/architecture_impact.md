# Educational Agents: Architecture Impact on EduOS

## Overview

Educational agents are the primary interface between EduOS and learners. They embody the tutoring, mentoring, assessment, and companionship functions across the platform. This document maps the architectural implications of educational agent research onto each of the eight EduOS subsystems: ADS, AOS, KGS, KIS, MAS, RCS, TAS, and LMS.

---

## 1. Agent Directory Service (ADS)

### New Agents
- **TutorAgent**: Primary instructional agent; delivers content, provides feedback, scaffolds learning
- **PeerAgent**: Simulates peer learners for collaborative problem-solving and learning-by-teaching
- **MentorAgent**: Provides long-term guidance, goal-setting, and career/academic advising
- **AssessorAgent**: Conducts formative and summative assessments; provides diagnostic feedback
- **CompanionAgent**: Emotional support, motivation, engagement monitoring, and wellness check-ins
- **MetaCognitiveAgent**: Prompts self-regulation, planning, monitoring, and reflection
- **OrchestratorAgent**: Manages multi-agent coordination, role assignment, and conflict resolution

### New Events
- `AgentSessionStarted / AgentSessionEnded`: Track agent-learner interactions
- `AgentRoleAssigned / AgentRoleRevoked`: Dynamic role changes in multi-agent scenarios
- `AgentConflictingAdviceDetected`: Conflict between agents requiring resolution
- `AgentLearnerModelUpdated`: Agent updates its local view of learner state
- `AgentPedagogicalActionTaken`: Record of hint, explanation, or question from an agent
- `AgentAffectiveResponseGenerated`: Emotional or motivational response from agent
- `AgentTurnRequested / AgentTurnTaken`: Turn-taking in multi-agent or mixed-initiative dialogue

### New Permissions
- `agent.tutor.instruction`: Permission to deliver instructional content
- `agent.peer.collaboration`: Permission to engage in collaborative problem-solving
- `agent.mentor.advising`: Permission to provide long-term guidance
- `agent.assessor.evaluation`: Permission to administer assessments
- `agent.companion.support`: Permission to provide emotional/motivational support
- `agent.metacognitive.prompting`: Permission to prompt self-regulation
- `agent.orchestrator.coordination`: Permission to manage other agents

---

## 2. Agent Orchestration System (AOS)

### Agent Selection Logic
- **Role-Based Matching**: AOS selects agents based on learner need and pedagogical context. For example, if the learner is stuck, a `TutorAgent` is selected; if the learner is disengaged, a `CompanionAgent` is invoked.
- **Dynamic Composition**: Multiple agents can be composed into a pedagogical team. AOS must manage which agents are active, their turn order, and their interaction with the learner.

### Workflow Adaptation
- **Pedagogical Phase Workflows**: Orchestration must support tutoring session phases (introduction, guided practice, independent practice, reflection) with different agent roles active in each phase.
- **Multi-Agent Turn-Taking**: Define clear protocols for when each agent speaks, how they hand off to each other, and how learner interruption is handled.
- **Conflict Resolution Workflows**: When two agents give contradictory advice (e.g., Tutor says "try hint A" while Peer says "try hint B"), AOS must resolve the conflict, either through hierarchy (Orchestrator decides), consensus (agents negotiate), or learner choice.

### Context Assembly
- **Learner State Context**: All agents must receive a consistent, real-time view of the learner model (cognitive, affective, motivational, behavioral) from the LMS.
- **Domain Context**: Agents must access the relevant subgraph of the KGS (knowledge graph) for the current learning objective.
- **Session History**: Agents must have access to recent interaction history (episodic memory in MAS) to maintain conversational and pedagogical coherence.

---

## 3. Knowledge Graph Service (KGS)

### New Node Types
- **Agent**: Represents an educational agent, with properties for role, capabilities, persona, and pedagogical strategies
- **PedagogicalStrategy**: A specific approach (scaffolding,NER, Socratic questioning) linked to agent roles
- **InteractionPattern**: Common interaction templates (e.g., "hint-then-explain-then-practice")
- **AgentPolicy**: Rules or policies that govern agent behavior in specific contexts

### New Edge Types
- **uses_strategy**: Agent → PedagogicalStrategy
- **specializes_in**: Agent → Skill/Concept (domains where the agent is competent)
- **interacts_with**: Agent ↔ Learner (session-level interaction records)
- **advises**: Agent → Learner (specific advice or guidance)
- **assesses**: Agent → Learner (assessment events)
- **collaborates_with**: Agent ↔ Agent (multi-agent team relationships)
- **replaces**: Agent → Agent (agent substitution or handoff)

### Reasoning Enhancements
- **Agent Capability Matching**: Given a learner's goal and current state, the KGS should recommend the most suitable agent or combination of agents.
- **Multi-Agent Pathfinding**: When multiple agents are involved, the graph can represent the sequence of agent interactions as a path through pedagogical strategies.
- **Conflict Detection**: The graph can model incompatible strategies or advice, enabling proactive conflict detection.

---

## 4. Knowledge Integration System (KIS)

### Multi-Agent Evidence Fusion
- KIS must fuse evidence from multiple agents about learner state. For example, the TutorAgent may estimate mastery at 0.8, while the AssessorAgent estimates 0.6. KIS must reconcile these.
- **Conflict Resolution**: Weighted averaging, Bayesian fusion, or domain-specific rules based on agent reliability and context.
- **Temporal Integration**: Agent assessments occur at different times; KIS must integrate them into a coherent temporal model.

### Agent Action Logging
- Every pedagogical action (hint, explanation, question, assessment) taken by an agent must be logged with context: which agent, what action, when, under what learner state, and with what outcome.
- This enables post-hoc analysis of agent effectiveness, A/B testing of agent strategies, and explanation of agent decisions.

### Learner Perception of Agents
- KIS can also integrate learner feedback about agents (satisfaction, trust, perceived helpfulness) into the learner model, enabling agent preference tracking.

---

## 5. Memory Architecture System (MAS)

### Episodic Memory
- **Agent Interaction Traces**: Every interaction with every agent is stored as an episodic trace, including the agent's action, learner's response, and resulting learner state change.
- **Long-Term Relationship Memory**: If a learner works with the same agent over months or years, episodic memory should support efficient retrieval of relevant past interactions for personalization (e.g., "You struggled with this concept three months ago; let's review it").
- **Cross-Agent Session Memory**: Episodes should be queryable by agent, by learner, by topic, and by time, enabling cross-agent continuity.

### Semantic Memory
- **Agent Knowledge Base**: Semantic memory stores agent capabilities, pedagogical strategies, and interaction patterns as declarative facts.
- **Pedagogical Ontology**: Formalization of teaching strategies, learner states, and agent roles enables reasoning about optimal agent behavior.
- **Agent Policy Memory**: Rules and heuristics governing agent behavior (e.g., "if learner is frustrated, switch to CompanionAgent") are stored as procedural or declarative knowledge.

### Procedural Memory
- **Agent Skills**: Over time, agents can learn more effective pedagogical strategies (via RL or feedback). These learned strategies are stored as procedural skills in MAS.
- **Compilation**: Frequently used pedagogical responses can be compiled into faster, more automatic patterns, reducing latency and cognitive load for the system.

### Working Memory
- **Session State**: Working memory holds the current session's active goals, active agents, current learner state, and pending pedagog图ical actions.
- **Agent Context Windows**: For LLM-based agents, working memory manages the token budget and context window for the current interaction.

---

## 6. Reasoning Core Specification (RCS)

### Pedagogical Strategy Selection
- RCS must support reasoning about which pedagogical strategy (and therefore which agent or agent combination) is optimal for a given learner state and learning objective.
- **Decision Framework**: Given learner model (cognitive, affective, motivational), domain state (mastery, misconceptions, prerequisites), and context (time, device, history), select the best agent role, strategy, and interaction modality.
- **Multi-Objective Optimization**: Strategies must balance learning effectiveness, engagement, motivation, and fairness.

### Agent Coordination Reasoning
- **Consensus Protocols**: Formal protocols for agents to agree on learner state and next actions.
- **Conflict Detection**: Logical rules for detecting contradictory advice or redundant interventions.
- **Delegation and Handoff**: Reasoning about when to transfer control from one agent to another (e.g., Tutor to Companion when learner is frustrated).

### Real-Time Diagnosis and Explanation
- **Agent Action Explanation**: RCS must generate human-understandable explanations for why an agent took a specific action ("The tutor suggested a hint because your mastery of 'slope calculation' is below threshold and you made two consecutive errors").
- **Causal Reasoning**: Reason about the causal effects of agent actions on learner state to inform future strategy selection.

### Pedagogical Constraint Satisfaction
- LLM-based agents must be constrained by curriculum, knowledge graph, and learning objectives. RCS should enforce these constraints, rejecting or modifying agent outputs that violate them.

---

## 7. Technical Architecture Service (TAS)

### Real-Time Agent Infrastructure
- **Low-Latency Communication**: Agent-learner interactions require sub-second response times. TAS must provide low-latency message passing between agents, orchestration, and learner interfaces.
- **Scalable Agent Pool**: Support for thousands or millions of concurrent agent sessions. Agents may be stateless (recreated per session) or stateful (persisting across sessions). TAS must handle both efficiently.
- **Session State Management**: Fast, reliable storage and retrieval of session state, including agent state, learner state, and interaction history.

### Multi-Modal Support
- Agents must support multiple interaction modalities (text, voice, visual/embodied). TAS must provide infrastructure for real-time audio/video streaming, avatar rendering, and gesture generation if embodied agents are used.
- **Latency Budgets**: Different modalities have different latency budgets. TAS should allow per-modality SLAs (e.g., text < 200ms, voice < 500ms, avatar gesture < 100ms).

### Cost Management
- **Model Serving**: LLM-based agents are expensive. TAS must support tiered model usage (cheaper/faster models for simple queries, expensive/capable models for complex reasoning).
- **Caching**: Cache common agent responses and strategies to reduce redundant computation.
- **Resource Throttling**: Graceful degradation under load (e.g., reduce avatar quality, switch to simpler agents).

### Security and Privacy
- **Agent Isolation**: Ensure agents cannot access unauthorized learner data or other agents' internal state.
- **Data Minimization**: Agents must only receive the learner data necessary for their role. A PeerAgent should not see sensitive assessment data.
- **Audit Logging**: All agent actions and decisions must be logged for transparency, debugging, and compliance.

---

## 8. Learning Management System (LMS)

### Learner Model Integration
- **Agent-Aware Learner Model**: The learner model must record not just what the learner knows, but which agents they've interacted with, how frequently, and with what outcomes.
- **Agent Preference Tracking**: Learners may prefer certain agents or agent styles. These preferences should be part of the learner model.
- **Agent Effectiveness**: The learner model can track per-agent effectiveness (e.g., "learns better from PeerAgent than TutorAgent for conceptual topics").

### Goal and Progress Tracking
- **Agent-Specific Goals**: Goals may be tied to specific agents (e.g., "complete three sessions with the MentorAgent about career planning").
- **Cross-Agent Progress**: Progress toward a goal should be visible across agents. If a learner completes a session with the TutorAgent, the CompanionAgent should know not to congratulate them redundantly.

### Feedback and Evaluation
- **Agent-Specific Feedback**: Learners should be able to rate and provide feedback on each agent. This feedback feeds back into the KIS for agent effectiveness tracking.
- **Fairness Auditing**: LMS should support per-agent fairness audits—checking whether certain learner demographics receive systematically different agent quality or behavior.

---

## Cross-Cutting Architectural Concerns

### Multi-Agent Consensus
All eight subsystems must support a coherent multi-agent consensus mechanism. The learner model (LMS), knowledge graph (KGS), and reasoning core (RCS) must agree on a single source of truth for learner state, even when multiple agents contribute competing assessments.

### Pedagogical Guardrails
Any subsystem that generates or modifies pedagogical content (especially LLM-based agents) must pass through pedagogical constraint checks. The KGS and RCS should jointly enforce curriculum alignment, misconception prevention, and knowledge graph consistency.

### Ethical and Fair Agent Behavior
Fairness, transparency, and learner agency must be enforced across all subsystems. ADS must ensure agents are auditable; AOS must ensure handoffs are transparent; KIS must detect biased evidence; MAS must log all agent actions; RCS must justify agent decisions; TAS must ensure equal resource allocation; and LMS must provide learner-facing explanations.

### Scalability and Resilience
With potentially millions of learners and dozens of agent types, EduOS must scale horizontally. TAS must manage agent pools; ADS must support efficient agent discovery; AOS must orchestrate without central bottlenecks; and all subsystems must degrade gracefully under load.
