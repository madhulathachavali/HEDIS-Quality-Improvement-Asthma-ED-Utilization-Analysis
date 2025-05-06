# 📊 HEDIS-Quality-Improvement-Asthma-ED-Utilization-Analysis

**Project Summary:**
This project utilizes MIMIC-IV emergency department (ED) data to analyze frequent ED visits among asthma patients, in alignment with the HEDIS measure EDU (ED Utilization for Asthma). The dataset consists of 19,223 records and 16 features, providing a detailed view of asthma-related ED utilization patterns. The primary focus is on developing patient risk stratification based on factors such as:

- ED Length of Stay (LOS)

- Comorbidities (including diabetes, hypertension, COPD)

- Total ED visits

### Project Goals:

* Stratify asthma patients by ED utilization risk and evaluate care disparities.
* Summarize comorbidity burden and examine its relationship with ED utilization.
* Provide insights into how ED LOS and acuity metrics correlate with patient risk levels.

### Key Insights:

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


  
#### 📚 References

1. Johnson, A., Bulgarelli, L., Pollard, T., Gow, B., Moody, B., Horng, S., Celi, L. A., & Mark, R. (2024). MIMIC-IV (version 3.1). PhysioNet. https://doi.org/10.13026/kpb9-mt58.
2. Johnson, A.E.W., Bulgarelli, L., Shen, L. et al. MIMIC-IV, a freely accessible electronic health record dataset. Sci Data 10, 1 (2023). https://doi.org/10.1038/s41597-022-01899-x
3. Goldberger, A., Amaral, L., Glass, L., Hausdorff, J., Ivanov, P. C., Mark, R., ... & Stanley, H. E. (2000). PhysioBank, PhysioToolkit, and PhysioNet: Components of a new research resource for complex physiologic signals. Circulation [Online]. 101 (23), pp. e215–e220.
