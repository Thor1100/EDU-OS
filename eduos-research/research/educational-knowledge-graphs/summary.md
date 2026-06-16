# Educational Knowledge Graphs: Research Summary

## 1. Overview

Educational Knowledge Graphs (EKGs) structure domain knowledge (concepts, skills, resources) and their relationships (prerequisites, similarities, pedagogical sequences) to support personalized learning, intelligent tutoring, and learning analytics. Unlike generic KGs, EKGs must capture pedagogical semantics, learner state, and dynamic evolution.

---

## 2. Foundational Papers & Approaches

### Early Foundations
- **Brusilovsky (2001)** — *Adaptive Hypermedia*: Introduced domain models as structured concept networks; precursor to modern EKGs.
- **Chi et al. (2010)** — *Learning Factors Analysis (LFA)*: Decomposed skill models into graph-structured knowledge components, enabling data-driven refinement of domain models.
- **Laplante (2014)** — *Prerequisite Detection in MOOCs*: Used statistical co-occurrence and temporal ordering to infer prerequisite relationships from course sequences.

### Graph Construction & Completion
- **Wang et al. (2018)** — *Concept Graph Learning from MOOCs*: Proposed automated extraction of concept graphs from course materials using NLP and structural heuristics.
- **Liu et al. (2019)** — *Knowledge Graph Completion for Education*: Applied TransE and DistMult to predict missing links in educational KGs, showing improved prerequisite detection.
- **Chen et al. (2020)** — *AutoKnow: Automatic Knowledge Graph Construction for Education*: Combined LLM-based extraction with crowdsourced validation to build scalable EKGs.
- **Li et al. (2023)** — *LLM-Driven Educational Knowledge Graph Construction*: Demonstrated that LLM-based extraction achieves ~85% F1 compared to ~72% for traditional NLP pipelines, but requires careful prompt engineering and hallucination filtering.

### Prerequisite Detection
- **Chen et al. (2015)** — *Inferring Prerequisites from Student Performance Data*: Showed that prerequisite edges best predict future performance, validating the pedagogical utility of EKG structure.
- **Zhang et al. (2019)** — *Graph-Based Prerequisite Inference*: Used GNNs to infer prerequisite relations by propagating performance signals across the concept graph.
- **Roy et al. (2021)** — *Multi-Modal Prerequisite Detection*: Combined text (course descriptions), video (transcripts), and behavioral (clickstream) features for more robust prerequisite inference.

### Learner-Aware Graphs
- **Wang et al. (2020)** — *Personalized Knowledge Graphs*: Extended standard EKGs with learner-specific subgraphs tracking individual mastery, misconceptions, and learning paths.
- **Guo et al. (2021)** — *Dynamic Knowledge Tracing over Graphs*: Integrated Deep Knowledge Tracing (DKT) with graph structure, showing that prerequisite-aware KT outperforms flat-skill KT by 4-7% AUC.
- **Yang et al. (2022)** — *Learner-Graph Interaction Networks*: Modeled bidirectional influence where learner state shapes graph traversal and graph structure guides learner state updates.

### Reasoning Over Educational Graphs
- **Nakahara et al. (2019)** — *Graph Neural Networks for Learning Path Recommendation*: Applied GNNs to recommend optimal learning paths by encoding both concept relationships and learner history.
- **Tong et al. (2021)** — *Explainable Path Reasoning for Education*: Used neural path reasoning to generate interpretable learning recommendations with natural language explanations.
- **Zhao et al. (2023)** — *Retrieval-Augmented Generation over EKGs*: Combined EKG subgraph retrieval with LLM generation for question answering and tutoring, showing improved factual accuracy and reduced hallucination.

---

## 3. Key Taxonomy of Educational Knowledge Graphs

### By Scope
- **Domain KG**: Global graph of all concepts/skills in a subject.
- **Learner-Subgraph**: Personalized projection of the domain KG representing individual state.
- **Course KG**: Graph of topics, resources, and assessments within a single course.
- **Cross-Domain KG**: Graph spanning multiple disciplines, enabling transfer learning.

### By Relationship Type
- **Prerequisite**: A must be learned before B.
- **Related/Similar**: A and B share conceptual overlap.
- **Part-Of**: A is a component of B.
- **Assessment-Of**: A assesses concept B.
- **Pedagogical-Sequence**: Recommended order for pedagogical reasons (not strict prerequisite).
- **Learner-State**: Current learner mastery of a concept.

### By Construction Method
- **Manual/Curriculum-Based**: Expert-authored (high quality, low scalability).
- **Statistical/Behavioral**: Inferred from learner interaction data (scales but noisy).
- **NLP/LLM-Based**: Extracted from educational text (scalable, requires validation).
- **Hybrid**: Combines expert, statistical, and automated methods (best practice emerging).

---

## 4. Core Capabilities Enabled by EKGs

1. **Prerequisite-Aware Path Planning**: Learners follow paths that respect conceptual dependencies.
2. **Gap Detection**: Identify missing prerequisites blocking current learning.
3. **Misconception Modeling**: Map common errors to incorrect concept relationships.
4. **Adaptive Assessment**: Select questions based on concept coverage and prerequisite status.
5. **Resource Recommendation**: Link learners to resources based on concept relevance and mastery.
6. **Cross-Domain Transfer**: Identify skills from one domain that support learning in another.
7. **Explainable Tutoring**: Tutor explanations grounded in explicit graph relationships.
8. **Cohort Analytics**: Aggregate learner subgraphs to identify systemic curriculum weaknesses.
