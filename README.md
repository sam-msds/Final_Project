# Reproducibility- Classifying Unstructured Clinical Notes via AutomaticWeak Supervision
CS 598 Project Report
Susovan Samanta
susovan2@illinois.edu

#Introduction
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


#Running the code
#Dependencies
snorkel
sentence-transformers
transformers

### Automatic Dependency Installation

The bash script provided will automatically install all necessary dependencies.

### Data Download Instructions

All the required data for running the experiments is available as a `.zip` file hosted on Google Drive. As a result, there are no specific data download steps. The bash script will handle data retrieval and extraction to the appropriate directory. But you can run PreProcessing.ipynb if you would like to prepare the data and upload it to google drive. Please note that due processing limit we had to work with a subset of mimic datset.

### Pre-processing Code

This script(PreProcessing.ipynb) preprocesses MIMIC-III clinical text data. It connects to Google Drive, loads a subset of discharge summaries (mimic_subset.csv), and merges it with ICD-9 diagnosis codes (DIAGNOSES_ICD.csv). ICD-9 codes are processed to extract hierarchical levels (Level 2 and Top Level). The combined data is split into training (75%) and validation (25%) sets. Each sample's ICD-9 Top Level codes are converted to multi-hot vectors. The script saves training and validation texts and their labels to separate files (train.txt, train_labels.txt, test.txt, and test_labels.txt). Finally, it prints the distribution of Top Level ICD codes in the training set.

### Training and Evaluation Code

To execute the experiment, follow these steps:

#### Running the Code

### **Step-by-Step Summary of the Python Script:**

1. **Setup:**

   * Downloads a bash script (`keyclass_starter.sh`) using `gdown`.
   * Mounts Google Drive for file access.
   * Installs necessary libraries (`huggingface_hub`, `snorkel`, `sentence-transformers`, and `transformers`).

2. **Running the Bash Script:**

   * Executes the downloaded bash script (`keyclass_starter.sh`) using bash.
   * Captures and displays all logs and comments from the script for tracking.

3. **Results File Handling:**

   * Reads the results folder (`/content/drive/.../keyclass/results/mimic/`).
   * Converts any `.txt` files to `.json` format for consistency.
   * Reads each `.json` file and extracts metrics (`F1`, `Precision`, and `Recall`).
   * Categorizes metrics into two groups:

     * **Self-Trained Model:** Identified by filenames containing `"self_trained"`.
     * **Downstream Model:** Identified by filenames containing `"test_end"`.

4. **Saving and Displaying Results:**

   * Saves the extracted metrics for both self-trained and downstream models as separate CSV files.
   * Sorts and displays the top 19 entries by F1 score for each model type.

5. **Calculating and Displaying Averages:**

   * Calculates and prints the average `F1`, `Precision`, and `Recall` scores for both models (pre self-train and downstream).



