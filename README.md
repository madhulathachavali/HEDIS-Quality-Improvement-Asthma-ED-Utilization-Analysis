# 📊 HEDIS-Quality-Improvement-Asthma-ED-Utilization-Analysis

**Data Source:** MIMIC-III Clinical Database obtained via Physionet using Bigquery 

**Project Summary:**
This project utilizes MIMIC-IV emergency department (ED) data to analyze frequent ED visits among asthma patients, in alignment with the HEDIS measure EDU (ED Utilization for Asthma). The dataset consists of 19,223 records and 16 features, providing a detailed view of asthma-related ED utilization patterns. The primary focus is on developing patient risk stratification based on factors such as:

- ED Length of Stay (LOS)

- Comorbidities (including diabetes, hypertension, COPD)

- Total ED visits

### Project Goals:

* Stratify asthma patients by ED utilization risk and evaluate care disparities.
* Summarize comorbidity burden and examine its relationship with ED utilization.
* Provide insights into how ED LOS and acuity metrics correlate with patient risk levels.

### Methodology

#### 1. Data Extraction & Preprocessing

- Queried MIMIC-IV edstays, diagnoses_icd, patients, and admissions tables via BigQuery.

- Filtered for asthma patients using ICD-9 codes starting with J45.

- Merged patient-level features including demographics, diagnosis codes, and comorbidities (e.g., diabetes, COPD).

#### 2. Feature Engineering

- Generated frequent_ed_user flag (≥4 ED visits per patient).

- Bucketed ed_los_hours into clinically relevant categories: <2h, 2-4h, 4-8h, 8-12h, >12h.

- Counted total ED visits and comorbidities for each patient.

#### 3. Descriptive & Comparative Analysis

- Calculated prevalence of comorbidities across LOS categories and ED visit frequency.

- Explored patient demographics (race, gender) to assess equity in ED usage.

- Aggregated acuity scores and LOS by risk levels.

#### 4. Visualization

- Created bar charts, pie charts, and comparative plots using Python’s matplotlib and seaborn to highlight disparities and utilization patterns.

- Constructed cross-tabulations to show the distribution of frequent ED use across LOS and comorbidity strata.

#### 5. HEDIS Measure Alignment

- Mapped findings to HEDIS EDU criteria, focusing on actionable insights for care quality improvement and population health management.

### Results:

* **Comorbidity Prevalence in Asthma ED Visits:**

  * Diabetes: 26.85%
  * Hypertension: 50.85%
  * COPD: 13.60%

  <img width="476" alt="image" src="https://github.com/user-attachments/assets/8bb766ac-2e1a-486e-b350-660d0ae5ba38" />


* **Gender Breakdown:**

  * Female (F): 70.60%
  * Male (M): 29.40%

  <img width="476" alt="image" src="https://github.com/user-attachments/assets/8bdf7297-13c8-408a-b2be-ef2f9ff9a7b6" />


* **Race Breakdown:**

  * Black/African American: 42.54%
  * White: 31.30%
  * Hispanic/Latino - Puerto Rican: 10.80%
  * Other racial/ethnic categories make up the remaining 15.36%.

  <img width="476" alt="image" src="https://github.com/user-attachments/assets/a7160e9a-f23a-43d7-886d-699b72156838" />

* **ED Length of Stay (LOS) by Risk Level:**

  * High Risk: Mean LOS = 7.30 hours, Median LOS = 6.0 hours
  * Moderate Risk: Mean LOS = 6.49 hours, Median LOS = 5.0 hours
  * Low Risk: Mean LOS = 6.34 hours, Median LOS = 5.0 hours

  <img width="476" alt="image" src="https://github.com/user-attachments/assets/a3ce8c57-e698-4341-986a-3b37d557294d" />


* **ED Acuity by Risk Level:**

  * High Risk: Mean Acuity = 2.72, Median Acuity = 3.0
  * Moderate Risk: Mean Acuity = 2.75, Median Acuity = 3.0
  * Low Risk: Mean Acuity = 2.69, Median Acuity = 3.0

  <img width="476" alt="image" src="https://github.com/user-attachments/assets/2b479b36-f51f-4eee-b9ad-e5d4fd654394" />

*  **📊 Key Insights from ED Utilization Analysis**
  
| **Metric**                          | **Insight**                                                                              |
| ----------------------------------- | ---------------------------------------------------------------------------------------- |
| **Frequent ED Users**               | 93% of patients (17,881 out of 19,223) are frequent ED users (≥4 visits).                |
| **ED Length of Stay Distribution**  | 46% of visits lasted 4–8 hours. 3.6% were under 2 hours.                        |
| **Comorbidity Distribution**        | 42% of patients had 2 or more comorbidities (e.g., diabetes, COPD).                      |            |
| **Highest Burden Group**            | Patients staying 4–8 hours and frequent users had the highest comorbidity total (8,023). |

<img width="476" alt="image" src="https://github.com/user-attachments/assets/e2d534a3-ecf9-44fe-9cb6-55e5aa53b16b" />

* **How this project improves HEDIS Measures**
### ✅ How This Project Supports HEDIS Improvement

| **Focus Area**                   | **HEDIS Measure Alignment**                                        | **Improvement Strategy in Analysis**                                                                                                          |
|----------------------------------|---------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| **Identify Frequent ED Users**   | HEDIS EDU flags high ED use as a care quality issue                | Identifies patients with ≥4 ED visits to flag potentially preventable overuse of emergency care.                                               |
| **Length of Stay (LOS) Insight** | Extended LOS may indicate poorly managed asthma or comorbid burden | Categorizes ED LOS; 46% of visits fall in the 4–8 hour range, helping to assess care delays and system burden.                                |
| **Comorbidity Burden**           | HEDIS promotes managing comorbidities to prevent ED reliance       | Frequent ED users show high comorbidity counts (e.g., diabetes, COPD), highlighting the need for better chronic disease management.           |
| **Disparity Analysis Potential** | HEDIS encourages equity in care delivery                           | Includes race and gender data to enable stratification.                                |
| **Risk Stratification**          | HEDIS improvement requires targeting high-risk patients            | Segments patients by ED use, LOS, and comorbidities to prioritize high-risk groups for outreach and intervention.                   |
| **Actionable Metrics**           | Measures must be clear, monitorable, and linked to outcomes        | Defines `frequent_ed_user`, `ed_los_category`, and `comorbidity_count` for use in quality monitoring.                   |

### Conclusion:

This project successfully identifies frequent ED users among asthma patients, correlating ED utilization patterns with comorbidities and patient demographics. Interventions should include frequent follow-up after ED visits, management of comorbidities, and education on recognizing signs that lead to severe conditions. By implementing these strategies, healthcare providers can improve asthma management, reduce unnecessary ED visits, and enhance patient outcomes, particularly for high-risk groups
  
#### 📚 References

1. Johnson, A., Bulgarelli, L., Pollard, T., Gow, B., Moody, B., Horng, S., Celi, L. A., & Mark, R. (2024). MIMIC-IV (version 3.1). PhysioNet. https://doi.org/10.13026/kpb9-mt58.
2. Johnson, A.E.W., Bulgarelli, L., Shen, L. et al. MIMIC-IV, a freely accessible electronic health record dataset. Sci Data 10, 1 (2023). https://doi.org/10.1038/s41597-022-01899-x
3. Goldberger, A., Amaral, L., Glass, L., Hausdorff, J., Ivanov, P. C., Mark, R., ... & Stanley, H. E. (2000). PhysioBank, PhysioToolkit, and PhysioNet: Components of a new research resource for complex physiologic signals. Circulation [Online]. 101 (23), pp. e215–e220.
