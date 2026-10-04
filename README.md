# REPLICA
**Personalized Cognitive Digital Twin for Alzheimer's Progression**

## Introduction
REPLICA is a web-based Digital Twin platform designed to support clinicians in monitoring and predicting cognitive and functional decline in patients with Mild Cognitive Impairment (MCI).

Using longitudinal data from the Alzheimer's Disease Neuroimaging Initiative (ADNI), REPLICA maintains an evolving patient-specific representation and predicts future Clinical Dementia Rating–Sum of Boxes (CDR-SB) trajectories. The platform also provides a clinician dashboard for monitoring progression and a caregiver interface for accessing shared reports and supportive resources.

## Technologies Used
- **Programming Language:** Python
- **Data Processing:** Pandas, NumPy
- **Machine Learning:** Scikit-learn, Statsmodels (LMM), XGBoost
- **Web Application:** Streamlit
- **Development Tools:** Jupyter Notebook, Google Colab, Git, GitHub
- **Dataset:** Alzheimer's Disease Neuroimaging Initiative (ADNI)

## Launch Instructions
1. Clone the repository:
   `git clone https://github.com/Danah911/Replica.git`
2. Navigate to the project directory:
   `cd Replica`
3. Install the required dependencies:
   `pip install -r requirements.txt`
4. Run the Streamlit application (once implemented, using its actual entry-point filename):
   `streamlit run app.py`

**Note:** ADNI data require authorized access and are not included in the public repository. REPLICA is developed for research and clinical decision-support purposes, not autonomous medical diagnosis or treatment decisions.
