# Future Questions: Assessment Systems

## P48: Automated Assessment in Open-Ended Domains
**Status:** Active research area with significant progress in code and essays, but remains unsolved for creative tasks, complex problem solving, and collaborative work.
**Impact:** High — EduOS must support a wide range of learning activities beyond multiple-choice questions.
**Questions:**
- How can LLM-based scoring be made robust against adversarial or "gaming" strategies (e.g., using sophisticated but vacuous language)?
- What is the role of human-in-the-loop verification for high-stakes, open-ended assessments?
- Can process data (e.g., keystroke dynamics, version control history for code) improve the reliability of automated assessment in ill-structured domains?

## P49: Real-Time Formative Assessment and the Adaptive Loop
**Status:** Formative assessment is well-understood in principle but poorly integrated with adaptive systems in practice. Most systems treat it as a separate event rather than a continuous process.
**Impact:** High — the speed and quality of the adaptive feedback loop is the primary differentiator for an effective learning system.
**Questions:**
- How can we minimize the latency from learner action to model update and pedagogical response?
- What is the optimal granularity of real-time assessment (per-action, per-problem, per-session)?
- How do we balance the intrusive nature of frequent formative assessment with its diagnostic value?

## P50: Ensuring Fairness and Mitigating Bias in Automated Assessment
**Status:** A rapidly growing research area, but practical, scalable solutions for production systems are still nascent.
**Impact:** High — equity is a core requirement for EduOS.
**Questions:**
- How can we automatically detect and flag items with high Differential Item Functioning (DIF) before they are used in production?
- Can we build automated essay scoring systems that are provably fair across different linguistic and cultural backgrounds?
- What are the best practices for auditing assessment algorithms for bias, and how often should these audits be conducted?

## P51: Integrating Affective and Motivational States into Assessment
**Status:** Largely unexplored. Most assessment systems treat the learner as a purely cognitive agent.
**Impact:** Medium-High — a learner's emotional state significantly impacts their performance.
**Questions:**
- How can we unobtrusively measure affective state (frustration, anxiety, flow) during an assessment and use it to adjust the assessment or provide support?
- Should assessments be paused or modified if a learner is detected to be in a highly negative affective state?
- How can motivational data (e.g., self-efficacy) be used to interpret assessment results (e.g., a low score due to low self-efficacy vs. low ability)?

## P52: Long-Term Retention and Transfer Assessment
**Status:** Most assessments measure immediate or near-term performance. Measuring durable learning and transfer to novel contexts is expensive and rarely done at scale.
**Impact:** High — EduOS targets lifelong learning.
**Questions:**
- What assessment designs (e.g., spaced retrieval tests, novel problem types) are most effective for measuring long-term retention and transfer?
- How can we use the knowledge graph to design assessments that specifically test for cross-domain transfer?
- What is the optimal trade-off between assessment frequency (to measure retention) and learner burden?

## P53: The Role of Assessment in Knowledge Graph Validation
**Status:** Underexplored. Assessment data is typically used to update the learner model, but not to validate the underlying domain model.
**Impact:** Medium — a flawed knowledge graph will lead to flawed adaptive recommendations.
**Questions:**
- How can we use assessment outcomes to automatically detect and correct errors in the prerequisite structure of the knowledge graph?
- Can we use counterfactual reasoning (e.g., "what if the learner had been taught skill X before skill Y?") to evaluate the validity of the knowledge graph?
- What is the optimal balance between using assessments for learner evaluation and for knowledge graph validation?

## P54: Assessment Personalization and the Cold Start Problem
**Status:** The cold start problem (lack of data for new learners) affects all personalized systems, but is particularly acute for assessments where high-stakes decisions may be made with little data.
**Impact:** Medium-High — all new learners face this.
**Questions:**
- What demographic, psychometric, or prior-knowledge priors can be used to initialize a learner's ability estimate for CAT without introducing bias?
- Can we use transfer learning from other learners or other domains to bootstrap the assessment process for a new learner?
- How many items are needed before a CAT engine can reliably estimate a learner's ability in a new domain?
