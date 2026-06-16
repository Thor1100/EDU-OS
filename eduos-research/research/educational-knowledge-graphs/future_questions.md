# Educational Knowledge Graphs: Open Research Questions

## 1. Graph Construction and Maintenance

### Q1: Automated, Low-Hallucination EKG Construction
- How can we reduce LLM hallucination in educational concept extraction below 5% without sacrificing scalability?
- What hybrid pipelines (LLM + retrieval + expert validation) offer the best cost-quality trade-off?
- Can domain-specific fine-tuned models outperform general LLMs for educational text?

### Q2: Dynamic Graph Updates
- How do we handle concept obsolescence and emergence in rapidly evolving fields (e.g., AI/ML)?
- What automated signals (learner confusion, dropout, new research) should trigger graph updates?
- How do we version graph history while maintaining query performance?

### Q3: Cross-Domain Alignment
- How do we align concept definitions and prerequisite semantics across domains with different granularities?
- Can we build a universal educational ontology that spans STEM, humanities, and professional skills?
- What is the role of large cross-domain knowledge bases (Wikidata, DBpedia) in EKG construction?

---

## 2. Prerequisite Detection and Validation

### Q4: Causal Prerequisite Inference
- How can we distinguish true pedagogical prerequisites from mere curriculum co-occurrence or instructor preference?
- What experimental designs (A/B tests, controlled curricula) can validate prerequisite edges?
- Can counterfactual reasoning ("what if learner skips A before B?") robustly infer prerequisites?

### Q5: Prerequisite Strength and Context
- Should prerequisite relationships be binary or graded? If graded, how do we calibrate weights?
- How do prerequisite strengths vary by learner population, pedagogical approach, or modality?
- Can we model soft prerequisites ("helpful but not strictly necessary") and their differential impact?

### Q6: Cross-Domain Prerequisite Transfer
- Which skills from one domain predict success in another? How do we identify these cross-domain links automatically?
- How do prerequisite chains transfer? If A → B in math, does A' → B' in physics when A' is the physics analogue of A?

---

## 3. Learner-Aware Graphs

### Q7: Granularity of Learner Subgraphs
- What is the optimal granularity for learner subgraphs? (Concept, subskill, learning objective?)
- How do we handle learner states for concepts not yet encountered vs. partially known vs. fully mastered?
- Should learner subgraphs include negative evidence (known misconceptions), and how should these be represented?

### Q8: Temporal Evolution of Learner Subgraphs
- How do learner subgraphs change over time as the global domain graph evolves?
- What is the right temporal resolution for updating learner subgraphs? (Per interaction, per session, per day?)
- How do we reconcile conflicting temporal signals (e.g., recent quiz failure vs. historical strong performance)?

### Q9: Privacy vs. Utility in Rich Learner Subgraphs
- As learner subgraphs become more detailed, what are the privacy implications?
- Can differential privacy or federated graph learning maintain utility while protecting learner data?
- What is the minimal learner subgraph needed for effective personalization vs. the maximal subgraph that is ethical to store?

---

## 4. Reasoning and Personalization

### Q10: Optimal Learning Path Algorithms
- Beyond shortest path, what objective functions (mastery gain per unit time, engagement, long-term retention) should guide pathfinding?
- How do we balance graph-prescribed paths with learner agency and exploration?
- Can multi-objective path optimization be made computationally feasible at scale?

### Q11: Explainable Graph Reasoning
- How can we make complex graph reasoning (GNNs, multi-hop paths) explainable to learners and educators?
- What natural language explanation templates are most effective for graph-derived recommendations?
- Should the system expose the full learner graph to the learner, or only selected views?

### Q12: Misconception Graphs
- Can we build graphs of misconceptions and their relationships (analogous to correct-concept graphs)?
- How do misconceptions propagate across concepts? Can we predict which misconceptions a learner is likely to develop next?
- What is the interplay between misconception graphs and correct knowledge graphs during remediation?

---

## 5. Evaluation and Benchmarks

### Q13: Pedagogical Impact Metrics
- What standardized downstream tasks (time-to-mastery, retention, transfer) should evaluate EKG quality?
- How can we run controlled experiments comparing EKG-based vs. non-EKG tutoring without confounding variables?
- Is there a "basket of concepts" test to measure whether an EKG captures pedagogically meaningful structure?

### Q14: Benchmark Creation
- Can we create an open, community-curated EKG benchmark with ground-truth prerequisite edges?
- Should benchmarks cover multiple domains and languages?
- How do we fairly compare automated EKG construction methods against expert-curated gold standards?

---

## 6. Integrative and Cross-Cutting Questions

### Q15: EKG + Knowledge Tracing Integration
- How should KT-derived mastery probabilities be encoded as graph edge weights or node properties?
- Can KT and EKG construction be jointly optimized? (Jointly learning learner state and domain structure.)
- How do prerequisite structures improve KT cold-start, and vice versa?

### Q16: EKG + LLM Integration
- How can EKGs best serve as structured retrieval sources for educational LLMs (RAG)?
- Can LLMs be fine-tuned to reason over EKG structures rather than just retrieve from them?
- What is the role of symbolic graph reasoning vs. neural LLM reasoning in complex tutoring scenarios?

### Q17: EKG + Cognitive Architecture
- How do EKGs align with cognitive theories of knowledge organization (mental models, schema theory)?
- Can EKGs model conceptual change (how learners restructure their mental models)?
- What is the relationship between external EKG structure and internal learner cognitive structure?

### Q18: Fairness and Bias in EKGs
- Do EKGs encode cultural, socioeconomic, or linguistic biases (e.g., favoring certain pedagogical traditions)?
- How do we audit prerequisite edges for disparate impact across learner populations?
- Can EKGs be used to actively identify and mitigate curriculum inequities?
