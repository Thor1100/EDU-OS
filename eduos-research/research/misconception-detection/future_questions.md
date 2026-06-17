# Misconception Detection — Future Research Questions

## Detection

1. **Real-time vs. Post-hoc Detection Trade-offs**
   - How quickly can misconceptions be detected with acceptable accuracy during live tutoring sessions?
   - What is the optimal latency-accuracy trade-off for triggering in-session remediation?

2. **Generalizable Misconception Detection**
   - Can domain-agnostic detection frameworks be developed, or is per-domain engineering unavoidable?
   - How much domain knowledge (bug libraries, expert annotations) is needed to bootstrap detection in a new domain?

3. **Slip vs. Misconception Discrimination**
   - What behavioral or response features best distinguish systematic misconceptions from transient slips?
   - How many observations are needed for reliable discrimination?

4. **Multi-Modal Misconception Detection**
   - Can combining text, interaction, and performance signals improve detection accuracy beyond any single modality?
   - What fusion architectures best support multi-modal misconception detection?

5. **LLM-Based Detection Robustness**
   - How do LLM-based detectors perform on learner-generated text with typos, code-switching, and informal language?
   - Can LLMs hallucinate misconceptions that do not exist? How do we guard against this?
   - What is the privacy-preserving alternative to Lebanon sending student data to third-party LLM APIs (federated fine-tuning, on-premise deployment)?

6. **Cold Start in Misconception Detection**
   - How do we detect misconceptions for new learners with limited interaction history?
   - Can transfer learning from similar learners or domains bootstrap misconception models?

## Representation

7. **Unified Misconception Representation**
   - What formal representation best supports reasoning, remediation, and transfer across domains?
   - How do we integrate bug libraries, neural embeddings, and probabilistic models into a coherent representation?

8. **Misconception Dynamics**
   - How do misconceptions evolve over time — do they strengthen, weaken, morph, or compete with correct knowledge?
   - Can we model the "half-life" of a misconception after remediation?

9. **Misconception Graphs at Scale**
   - How do we construct, validate, and maintain large-scale misconception graphs across diverse domains?
   - What graph reasoning algorithms best support remediation pathfinding over misconception structures?

## Remediation

10. **Personalized Remediation Strategy Selection**
    - What learner features (cognitive, affective, motivational) predict response to different remediation strategies?
    - Can we learn optimal remediation policies from interaction data using RL or bandit methods?

11. **Durability of Conceptual Change**
    - Which remediation strategies produce long-term conceptual change rather than short-term compliance?
    - How should spaced retrieval and transfer tasks be designed to verify durable change?

12. **Remediation Timing**
    - Is immediate remediation always best, or are there benefits to delayed, consolidated correction?
    - How does remediation timing interact with affective state (e.g., frustration, confusion)?

13. **Multi-Agent Remediation**
    - How can multiple pedagogical agents (tutor, peer, mentor) coordinate remediation without overwhelming or confusing the learner?
    - What are the benefits and risks of peer-based vs. tutor-based remediation for different misconception types?

## Evaluation

14. **Standardized Benchmarks**
    - Can we create a cross-domain misconception detection benchmark with shared datasets and metrics?
    - What evaluation protocol distinguishes detection accuracy, false positive rate, and remediation effectiveness?

15. **Long-Term Evaluation**
    - How do we measure whether a misconception is truly resolved (not just suppressed for the current assessment)?
    - What assessment designs specifically target misconception robustness (e.g., transfer to novel problems, delayed post-tests)?

16. **Fairness and Bias**
    - Do misconception detection systems perform equally well across languages, cultures, and educational backgrounds?
    - How do we ensure that bug libraries and detection models do not encode cultural or linguistic biases?

## Integration

17. **Misconception-Aware Knowledge Tracing**
    - How should KT models explicitly represent and reason about misconceptions, not just mastery?
    - What are the computational and data requirements for joint KT + misconception modeling?

18. **Misconception Detection in LLM Tutors**
    - How can LLM-based tutors be guarded against generating or reinforcing misconceptions?
    - Can LLM tutors effectively detect and remediate misconceptions in real-time dialogue?

19. **Open-World Misconceptions**
    - How do we handle novel misconceptions that are not in the bug library or training data?
    - Can unsupervised or semi-supervised methods discover new misconception categories from learner behavior?

20. **Misconception and Knowledge Graph Co-Evolution**
    - Can analytics from misconception detection automatically correct or refine the knowledge graph?
    - How do prerequisite and misconception structures interact, and can one inform the other?
