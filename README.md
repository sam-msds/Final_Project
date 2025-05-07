# Classifying Unstructured Clinical Notes via AutomaticWeak Supervision
CS 598 Project Report
Susovan Samanta
susovan2@illinois.edu

##Introduction
The study conducted by Gao et al. (2022), titled
“Classifying Unstructured Clinical Notes via
Automatic Weak Supervision,” addresses a critical
challenge in the healthcare domain: the manual
annotation and diagnostic coding of clinical
notes. This conventional process is not only timeconsuming
and resource-intensive but also vulnerable
to human error, making it inefficient at scale.
To overcome these limitations, the authors propose
KeyClass, a novel weakly supervised text
classification framework that eliminates the reliance
on manually labeled data.
KeyClass is designed to build accurate classification
models using only the textual descriptions
of class labels (e.g., ICD codes), without needing
access to annotated training datasets. This is
achieved through the combination of pretrained
language models, which understand semantic context,
and data programming techniques, which
synthesize multiple sources of weak supervision
to create noisy but useful training signals. One of
the core innovations of KeyClass lies in its ability
to generate interpretable heuristics by extracting
domain-relevant keywords from the corpus. These
heuristics guide the model’s label assignments in a
transparent manner, enhancing both performance
and explainability.
Copyright © 2025, Association for the Advancement of Artificial
Intelligence (www.aaai.org). All rights reserved.
In addition, the framework supports customization
through the use of domain-specific pretrained
language models, allowing it to be effectively applied
to other highly specialized fields beyond
clinical documentation, such as legal or scientific
texts. Experimental evaluations demonstrate that
KeyClass outperforms or matches other prominent
weakly supervised text classification methods
in terms of both accuracy and generalizability,
thereby highlighting its practical value and
methodological robustness.
