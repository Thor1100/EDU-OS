# Explainable AI and Open Learner Models: Future Questions

## Methodological Questions

1. **Adaptive Explanations**
   - Can we dynamically adjust explanation complexity based on learner cognitive development, domain expertise, or explanation literacy?
   - What is the minimum viable explanation for different educational decisions (e.g., content selection vs. long-term trajectory prediction)?

2. **Multimodal Explanations**
   - How do we explain decisions that involve multimodal inputs (video, audio, text, interaction) in ways that are faithful to the model's multimodal reasoning?
   - Can visual, auditory, or embodied explanations improve comprehension over textual explanations for certain learners or contexts?

3. **Temporal Explanations**
   - How do we explain why a learner model changed over time, not just what it currently says?
   - What is the most effective way to present longitudinal learner model trajectories and their causes?

4. **Contestation and Belief Revision**
   - What formal framework handles belief revision when learners contest model inferences, especially when contestations conflict with other evidence?
   - How do we prevent malicious or mistaken contestations from corrupting the learner model?
   - What is the minimum viable contestability architecture for an early-stage adaptive system?

5. **Compositional Explanations**
   - When a decision involves multiple subsystems (e.g., KT + affect + engagement → content choice), how do we compose subsystem-level explanations into coherent, non-overwhelming user-facing explanations?
   - What is the algorithmic complexity of generating compositional explanations in real time?

## Empirical Questions

6. **Pedagogical Utility of Explanations**
   - Which explanation formats (text, visualization, counterfactual, rule-based) most improve trust calibration, metacognition, and learning outcomes?
   - Do explanations improve outcomes for all learner groups, or do they widen achievement gaps?

7. **Long-Term OLM Effects**
   - Do open learner model benefits sustain over months and years, or do they habituate?
   - What is the optimal frequency and granularity of OLM access for different learner populations?

8. **Explanation and Equity**
   - Do current XAI techniques produce equally useful explanations across linguistic, cultural, and socioeconomic groups?
   - Can explanation accessibility become a new dimension of the digital divide?

## Technical Questions

9. **Real-Time Explanation Generation**
   - What is the latency budget for generating explanations during live tutoring, and which techniques meet it?
   - Can explanation generation be pre-computed, cached, or approximated without losing fidelity?

10. **Explanation Fidelity vs. Pedagogical Utility**
    - Should we always prioritize the most faithful explanation, or can pedagogically useful but technically approximate explanations be justified?
    - What are the ethical limits of simplifying explanations for comprehension?

11. **Model Card Standardization**
    - What model card schema is most useful for educational AI, and how should it be surfaced to stakeholders?
    - Can automated model card generation keep pace with continuous model updates?

## Ethical and Governance Questions

12. **Transparency Theater**
    - How can we distinguish genuine accountability through explanation from "transparency theater" that creates an appearance of accountability without substance?
    - What metrics measure genuine accountability rather than explanation quantity?

13. **Right to Not Know**
    - What learner model inferences should be optionally suppressible (e.g., dropout risk, predicted IQ, affective state)?
    - How do we balance transparency with the learner's right to not be reduced to a model?

14. **Explanation and Surveillance**
    - Can detailed explanations become tools for learner surveillance or coercion by instructors or institutions?
    - What governance prevents explanation data from being weaponized?

15. **Regulatory Compliance**
    - What technical infrastructure is required to comply with GDPR Article 22, EU AI Act, and emerging educational AI regulations?
    - How do cross-border learners' regulatory rights interact with centralized adaptive systems?

## Integration Questions

16. **XAI Across All Subsystems**
    - How do we ensure every EduOS subsystem can explain its decisions, not just the ones with natural interpretability?
    - What cross-cutting explanation framework unifies subsystem-specific explanation capabilities?

17. **OLM and Learner Agency**
    - How do editable OLMs interact with knowledge tracing updating rules? Can learners accidentally corrupt their own model?
    - What is the optimal degree of learner control over model inferences?

18. **Explanation-Adaptation Feedback Loop**
    - Can learner reactions to explanations (dismissal, engagement, confusion) improve future explanation generation?
    - Does better explanation translate to better adaptive outcomes, or merely to better user satisfaction?
