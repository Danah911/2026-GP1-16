# REPLICA
**Personalized Cognitive Digital Twin for Alzheimer's Progression**

## Overview

REPLICA is a web-based platform designed to support clinicians in monitoring and forecasting cognitive progression in patients with Mild Cognitive Impairment (MCI).

Using longitudinal clinical data from the Alzheimer's Disease Neuroimaging Initiative (ADNI), REPLICA aims to maintain an evolving patient-specific representation and forecast future Clinical Dementia Rating–Sum of Boxes (CDR-SB) scores at 6, 12, and 24 months.

The platform includes a clinician dashboard for accessing patient information, reviewing clinical assessments, and visualizing longitudinal changes. Caregiver-facing functionality is planned for subsequent development stages.

## Project Objectives

- Monitor patient-specific cognitive progression using longitudinal clinical assessments.
- Forecast future CDR-SB trajectories at 6, 12, and 24 months.
- Support irregularly spaced clinical observations and missing assessment values.
- Provide clinicians with centralized access to patient information and assessment history.
- Visualize historical and predicted cognitive progression to support clinical monitoring.

## Machine Learning Approach

REPLICA uses an adapted implementation of **GRU-ODE-Bayes**, a neural architecture designed for irregularly observed time-series data.

The model processes longitudinal clinical observations and updates its representation of patient progression as new assessments become available.

### Clinical Assessments

- **CDR-SB:** Clinical Dementia Rating – Sum of Boxes
- **MMSE:** Mini-Mental State Examination
- **ADAS-Cog 13:** Alzheimer's Disease Assessment Scale – Cognitive Subscale
- **FAQ:** Functional Activities Questionnaire

The primary forecasting target is CDR-SB.

### Baseline Comparison

The model is evaluated against two simple forecasting baselines:

1. **No-Change (Persistence):** Assumes the patient's future score remains equal to the latest observed score.
2. **Personal Linear Trend:** Extrapolates the patient's historical CDR-SB trend into the future.

Performance is evaluated using Mean Absolute Error (MAE) across the prediction horizons.

## System Components

### Clinician Interface
- Doctor authentication
- Doctor profile
- Assigned patient list
- Patient overview
- Longitudinal clinical assessment history
- Assessment visualizations

### Database

The initial database is designed using **Supabase PostgreSQL** and consists of three tables:

- **profiles:** User profiles and roles.
- **patients:** Patient information and assigned doctors.
- **visits:** Longitudinal clinical assessments.

Supabase Authentication manages user sign-in, while Row Level Security (RLS) restricts access to authorized patient records.

### Caregiver Interface

A caregiver interface is part of the planned system scope. Additional caregiver-specific functionality will be developed in later stages.

## Technologies Used

- **Programming Language:** Python
- **Data Processing:** Pandas, NumPy
- **Machine Learning:** PyTorch / actual implementation framework to be verified
- **Model Architecture:** GRU-ODE-Bayes
- **Database:** Supabase PostgreSQL
- **Authentication:** Supabase Auth
- **Web Application:** [Insert actual frontend framework]
- **Development Tools:** Jupyter Notebook, Google Colab, Git, GitHub
- **Dataset:** Alzheimer's Disease Neuroimaging Initiative (ADNI)

## Project Structure

The repository contains the implementation of the web application, machine learning pipeline, database integration, and supporting project documentation.

[Insert the actual repository directory structure.]

## Getting Started

### Prerequisites

Install the dependencies required by the project's actual web framework and machine learning implementation.

### Installation

1. Clone the repository:

   `git clone https://github.com/Danah911/Replica.git`

2. Navigate to the project directory:

   `cd Replica`

3. Install the dependencies and configure the environment variables according to the implementation.

4. Start the application using its configured development command.

[Replace steps 3–4 with verified commands from the repository.]

## Dataset and Privacy

REPLICA uses data from the Alzheimer's Disease Neuroimaging Initiative (ADNI). Access to ADNI data requires authorization, and restricted datasets are not distributed through this repository.

Any demonstration patient records must use synthetic data.

REPLICA is developed for research and clinical decision-support purposes and is not intended to provide autonomous medical diagnosis or treatment recommendations.

## Academic Project

**University:** King Saud University  
**Department:** Information Technology  
**Track:** Artificial Intelligence and Data Science  
**Academic Year:** 2026–2027

**Project Supervisor:** Dr. Sharefah Alghamdi


