# LLM Safety and Pedagogical Guardrails: Future Questions

## Foundational and Definitional

1. What is a principled, measurable definition of "pedagogical harm" in LLM tutoring, distinct from generic harmful output?
2. How do we operationalize "pedagogical alignment" as a formal constraint or optimization objective?
3. What is the minimal set of guardrails that still permits the flexibility that makes LLM tutoring valuable?
4. Can we define a "pedagogical safety" metric that correlates with long-term learning outcomes?

## Hallucination and Factuality

5. How effective is RAG in reducing pedagogical hallucinations compared to general-domain hallucinations?
6. What is the role of symbolic reasoning or theorem provers in verifying LLM-generated mathematical, logical, or scientific content?
7. Can LLMs be trained to reliably indicate their own uncertainty (calibrated confidence) for educational content?
8. How do we handle "appeal to authority" hallucinations where the LLM cites non-existent papers or experts?

## Bias and Fairness in Guardrails

9. Do content safety filters introduce disparate impact by being more restrictive for certain dialects or cultural contexts?
10. How can guardrails be made culturally responsive rather than defaulting to a dominant-culture baseline?
11. What is the trade-off between de-biasing LLM outputs and preserving culturally specific pedagogical traditions?
12. Can adversarial debiasing be applied at the guardrail layer without degrading pedagogical utility?

## Human-in-the-Loop and Oversight

13. What is the optimal human oversight model for real-time LLM tutoring (selective review, exception-based, post-hoc audit)?
14. How do we design teacher dashboards for LLM safety that avoid alert fatigue while catching high-risk interactions?
15. What is the latency cost of human-in-the-loop review, and what adaptive strategies maintain pedagogical continuity during human response delays?
16. Can a "virtual teacher assistant" LLM triage which interactions need human review, and how accurate is this triage?

## Scalability and Real-Time Performance

17. What is the practical throughput limit for a real-time guardrail pipeline (retrieval + generation + validation) at EduOS scale?
18. Can approximate or distilled safety models maintain guardrail effectiveness while reducing compute costs?
19. How do we design guardrails for edge-deployed LLMs where cloud-based moderation may not be available?
20. What is the cost/benefit trade-off of multi-model ensembles (generator + verifier + critic) for educational LLM interactions?

## Longitudinal and Developmental Safety

21. What are the long-term psychological and epistemic effects of sustained LLM tutoring on learners?
22. Does over-reliance on LLM tutors reduce cognitive effort, self-regulation, or critical thinking over time?
23. How should guardrails adapt as learners mature from K-12 through higher education to professional development?
24. Can we measure "guardrail fatigue"—learners becoming frustrated by overly restrictive or robotic LLM behavior—and what are the pedagogical consequences?

## Regulatory and Ethical

25. What technical standards should govern LLM safety in educational settings (e.g., model cards, safety scorecards, decision logs)?
26. How can EduOS comply with emerging regulations (EU AI Act, COPPA, FERPA) while maintaining adaptive flexibility?
27. What is the ethical boundary between protective guardrails and surveillance of learner thought processes?
28. Should learners have a right to an unfiltered LLM experience, and if so, under what informed consent conditions?

## Cross-Cutting and Emerging

29. How can guardrails be made dynamically composable so that different domains (math, humanities, emotional counseling) use different safety profiles?
30. What role can learner-generated feedback play in iterative refinement of guardrails, and how do we prevent gaming or manipulation?
31. Can peer review among multiple LLMs (e.g., debate, critique) improve safety and pedagogical soundness over single-model generation?
32. How do we adapt LLM guardrails for learners with disabilities, neurodivergence, or language barriers without introducing bias or paternalism?

## Evaluation and Red-Teaming

33. What standardized benchmark or leaderboard is needed specifically for educational LLM safety?
34. How do we evaluate guardrails against adaptive adversaries that learn to bypass them over multiple sessions?
35. What is the false positive rate of safety filters, and how much valid educational content is incorrectly blocked?
36. Can red-teaming be partially automated, and what coverage guarantees does automated red-teaming provide?
