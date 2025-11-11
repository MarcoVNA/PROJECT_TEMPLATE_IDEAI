# Better Question Problem

### **1. The “Question of Life” Problem**

In  *Hitchhiker’s Guide* , they ask the supercomputer *Deep Thought* the most open-ended question possible:

> “What is the answer to life, the universe, and everything?”

> and it dutifully gives  *42* .

That isn’t the machine being stupid—it’s the *question* being underspecified.

There’s no context, metric, or boundary, so the answer is meaningless.

Most AI disappointment today looks exactly like that.

---

### **2. Why this happens in AI work**

| **Mistake Type**         | **Human Expectation**                                                     | **What the Model Actually Does**                                              |
| ------------------------------ | ------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| **Vague objective**      | “Make this document better.”                                                  | The model rewrites tone but misses intent or purpose.                               |
| **Hidden assumptions**   | “Summarize this.” (meaning:*for executives, <200 words, preserve numbers* ) | Model just produces a short paraphrase.                                             |
| **Mismatched scope**     | “Automate X.”                                                                 | Model does one subtask but fails to understand the whole workflow.                  |
| **Unstated constraints** | “Generate options.”                                                           | Model outputs unrealistic or unsafe results because constraints weren’t specified. |

**Models optimize for ** **pattern completion** **, not ** **philosophical inference** **.**

If the prompt doesn’t define  *what success looks like* , you get “42” every time.

---

### **3. The missing discipline:** ****

### **Problem Framing**

AI research and engineering teams often skip a crucial step:

 **translating a human goal into a measurable, bounded, and context-rich task** **.**

A well-framed AI problem usually includes:

1. **Intent:** what outcome matters (classification, decision, summary, etc.)
2. **Context:** what data or constraints are relevant
3. **Evaluation:** how we’ll know if the output is “good”
4. **Boundaries:** what the model *shouldn’t* do
5. **Iteration loop:** how humans will correct and refine

That’s why frameworks like **prompt engineering**, **system prompts**, or **chain-of-thought reasoning** exist—they’re modern versions of precise problem statements.

---

### **4. A quick mental model:** ****

### **Levels of question clarity**

| **Level**      | **Example**                                                                                         | **Model Outcome**     |
| -------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------- |
| 0 – Existential     | “What is truth?”                                                                                        | 42.                         |
| 1 – Vague goal      | “Write about leadership.”                                                                               | Generic platitudes.         |
| 2 – Contextualized  | “Write a memo about leadership challenges in distributed AI teams.”                                     | Useful.                     |
| 3 – Operationalized | “Draft a 1-page memo for CTOs about leadership in distributed AI teams, with 3 bullet recommendations.” | Excellent, reusable output. |

---

### **5. The Fix**

The best AI work starts with **“better questions”**, not “better models.”

Good questions have structure:  *intent → data → outcome → constraint* .

That’s why system architects, philosophers, and product designers often produce more valuable AI results than data scientists alone—they think deeply about the *frame* of the question.
