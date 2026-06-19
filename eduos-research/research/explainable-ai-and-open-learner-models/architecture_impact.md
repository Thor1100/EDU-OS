# Explainable AI and Open Learner Models: Architecture Impact

## Overview

Explainability and openness are cross-cutting concerns that penetrate every EduOS subsystem. They are not a single module but a set of capabilities, interfaces, and governance mechanisms distributed across the architecture. This document maps the impact of XAI and OLM requirements onto each EduOS subsystem.

---

## ADS — Adaptive Delivery System

### Explainability Requirements
- Each agent must be able to produce explanations for its decisions alongside the decisions themselves.
- New agent: **Explanation Agent** — generates, selects, and formats explanations appropriate for the learner context.
- New agent: **Contestability Agent** — handles learner disputes, initiates belief revision, and logs recourse actions.
- New agent: **Model Card Agent** — maintains and serves up-to-date model documentation for all registered models.

### Agent-Level Changes
- Agent action schema extended with `explanation` field (structured: type, confidence, stakeholder, detail_level).
- New events: `ExplanationGenerated`, `LearnerContestedInference`, `ModelCardUpdated`, `ExplanationDismissed`, `ExplanationEngaged`.
- New permissions: `explanation.read`, `explanation.generate`, `learner_model.contest`, `model_card.read`.

---

## AOS — Adaptive Orchestration System

### Orchestration-Level Changes
- Workflows must explain branching decisions (e.g., "Why did I get a hint instead of the next problem?").
- Multi-step orchestration should produce compositional explanations that aggregate component-level explanations.
- New workflow type: **Explanation workflow** — triggered when learner requests clarification, when anomalous decisions occur, or proactively at key pedagogical moments.
- Conflict resolution between subsystems must produce explainable justifications for the chosen path.

### Context Assembly
- Context enriched with `explanation_context`: learner's past explanation engagement, preferred formats, comprehension indicators, and explanation literacy profile.
- Explanation generation and delivery decisions (when, what, to whom) are part of the orchestration plan.

---

## KGS — Knowledge Graph System

### Open Learner Model Integration
- Learner model data must be stored in a form that supports visibility and meaningful interpretation.
- New node types: `LearnerModelView`, `ModelInference`, `ExplanationArtifact`, `ContestRecord`, `ModelCard`.
- New edge types: `explained_by`, `contested_by`, `revised_by`, `sourced_from`, `justifies`.

### Graph Reasoning
- Graph queries for learner state should support "what-if" exploration (projected state under hypothetical conditions).
- Prerequisite and pathfinding queries should be explainable ("You need X before Y because Z").
- Uncertainty propagation across the graph should be visible and auditable.

---

## KIS — Knowledge Integration System

### Explanation-Aware Fusion
- Multi-source evidence fusion must produce not only a fused output but also a rationale for why certain sources were weighted as they were.
- Contradictory evidence should be surfaced in explanations ("Your recent quiz suggests mastery, but your homework shows gaps — we need more evidence") adequately.
- Provenance tracking per inference: every learner model fact must trace back to the evidence and fusion weights that produced it.

### Technical Requirements
- Fusion metadata (weights, confidence, conflict flags) must be stored alongside fused outputs.
- Explanation generation from fusion requires introspectable combination rules (e.g., Dempster-Shafer combination, Bayesian fusion with clear priors).

---

## MAS — Memory Architecture System

### Episodic Memory
- Store explanation delivery events (what was explained, when, to whom, learner reaction).
- Store contestation events with full provenance for audit and model improvement.

### Semantic Memory
- Maintain a catalog of explanation templates and their effectiveness per learner type and domain.
- Store model cards and their versions for all deployed models.

### Procedural Memory
- Cache common explanation generation patterns.
- Learn which explanation formats are most effective for which learners (adaptive explanations).

### Working Memory
- Current « explanation context » (what was just explained, what needs to be explained next, explanation queue).
- Active contestation handling state.

---

## RCS — Reasoning Core Specification

### Explanation Generation
- Integrate XAI techniques (LIME, SHAP, counterfactuals, attention visualization) into the reasoning pipeline.
- Support multi-granularity explanations: coarse (system-level), medium (decision-level), fine-grained (feature-level).
- Generate counterfactual explanations: "If you had scored higher on X, this content would not have been recommended."

### Contestability Reasoning
- Belief revision logic when learner contests inferences.
- Conflict resolution between learner contestations and other evidence sources.
- Formal update rules that preserve model consistency during contestation.

### Compositional Explanations
- Aggregate subsystem-level explanations into coherent narrative or visual explanations.
- Temporal explanation: reason about how learner state evolved and what events drove changes.
- Prerequisite-aware explanations: link decisions to underlying knowledge graph structure.

---

## TAS — Technical Architecture System

### Real-Time Explanation Infrastructure
- Explanation generation must not exceed latency budgets during live tutoring.
- Pre-computation and caching of common explanations (per common learner states and decisions).
- Model-serving tier extended to support explanation endpoints (LIME, SHAP, attention extraction).

### Audit and Logging
- All explanations must be logged with full provenance for regulatory and debugging purposes.
- Immutable explanation logs linked to the specific model version and input features.

### Model Cards and Registry
- Model registry extended to include explanation capability metadata.
- Automated model card generation from training metadata, performance metrics, and fairness audits.

---

## LMS — Learner Model System

### Open Learner Model Representation
- Learner model schema extended with `visibility_policy` per dimension (which aspects are visible to the learner, educator, admin).
- Query APIs for learner-facing model views with configurable granularity and formatting.
- Editable fields with validation, audit, and revision workflows.

### Explanation-Aware Updates
- Every learner model update should log: previous value, new value, triggering evidence, update confidence, and explanation of the update logic.
- Temporal revision history per model dimension for auditability.

### Contestation Handling
- Workflow for learner-initiated contestation: request → evidence review → belief revision or denial with explanation.
- Quality metrics: contestation acceptance rate, learner satisfaction with resolution, model accuracy impact of accepted contestations.

### New Learner Model Dimensions
- `explanation_preference`: text, visual, counterfactual, rule-based.
- `explanation_engagement`: frequency of explanation use, dismissal, or engagement.
- `contestation_history`: past disputes and their resolutions.
- `model_trust`: calibrated trust score based on explanation feedback.

---

## Cross-Cutting Architectural Principles

1. **Layered Transparency**: Raw model outputs → interpretable features → natural language summaries → actionable recommendations. Each layer is accessible to appropriate stakeholders.

2. **Provenance by Default**: Every inference, update, and explanation must be traceable to its source evidence and model version.

3. **Stakeholder-Appropriate Views**: Learners see actionable, simple explanations; educators see diagnostic details; administrators see aggregate audits; regulators see compliance artifacts.

4. **Progressive Disclosure**: Start simple, allow drill-down. Avoid overwhelming learners while empowering the curious.

5. **Explanation as First-Class Data**: Explanations are not ephemeral UI text but persistent, auditable, learnable artifacts that influence future system behavior.

6. **Contestation as Learning Signal**: Learner contestations are not just error corrections but valuable data for improving models and detecting model bias or drift.

7. **Technical and Pedagogical Fidelity**: Explanations must be both faithful to the model and pedagogically useful —sometimes requiring simplification that trades fidelity for comprehension within defined bounds.
