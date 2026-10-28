# Dataset

## Data Availability

REPLICA is built on data from the **Alzheimer's Disease Neuroimaging Initiative (ADNI)**. ADNI data is released only to approved applicants under a Data Use Agreement (DUA). The DUA prohibits redistributing the data in any form, including derived files that contain subject-level records.

For that reason, this repository contains **no ADNI data and no derived data files**:

- No raw `.rda` files
- No `observations_long.csv`


## Note for the Supervisor

We are aware that it's better for the dataset to be in the repository. We cannot do that without breaching the ADNI DUA that each of us signed, so we have instead committed:

- The data description (this file)
- The full preprocessing code
- Non-identifying aggregate results

If you would like to verify the pipeline end to end, we can walk through it on one of our ADNI-approved accounts in a meeting, or you can apply for ADNI access directly at [adni.loni.usc.edu](https://adni.loni.usc.edu).

We are happy to adjust this if the course has an approved way of handling restricted-access datasets.
