WITH asthma_visits AS (
  SELECT
    ed.subject_id,
    ed.stay_id,
    ed.intime,
    ed.outtime,
    ed.gender,
    ed.race,
    ed.arrival_transport,
    ed.disposition,
    diag.icd_code,
    TIMESTAMP_DIFF(ed.outtime, ed.intime, HOUR) AS ed_los_hours
  FROM
    `physionet-data.mimiciv_ed.edstays` ed
  JOIN
    `physionet-data.mimiciv_ed.diagnosis` diag
  ON
    ed.subject_id = diag.subject_id
  WHERE
    diag.icd_version = 10
    AND diag.icd_code LIKE 'J45%'  -- Asthma
),
triage_data AS (
  SELECT
    subject_id,
    stay_id,
    acuity,
    chiefcomplaint
  FROM
    `physionet-data.mimiciv_ed.triage`
),
comorbidity_flags AS (
  SELECT
    subject_id,
    MAX(CASE WHEN icd_code LIKE 'E11%' THEN 1 ELSE 0 END) AS has_diabetes,
    MAX(CASE WHEN icd_code LIKE 'I10%' THEN 1 ELSE 0 END) AS has_hypertension,
    MAX(CASE WHEN icd_code LIKE 'J44%' THEN 1 ELSE 0 END) AS has_copd
  FROM
    `physionet-data.mimiciv_ed.diagnosis`
  WHERE
    icd_version = 10
  GROUP BY subject_id
),
visit_counts AS (
  SELECT
    subject_id,
    COUNT(*) AS total_ed_visits
  FROM
    `physionet-data.mimiciv_ed.edstays`
  GROUP BY subject_id
)

SELECT
  a.*,
  t.acuity,
  t.chiefcomplaint,
  c.has_diabetes,
  c.has_hypertension,
  c.has_copd,
  v.total_ed_visits
FROM
  asthma_visits a
LEFT JOIN triage_data t
  ON a.subject_id = t.subject_id AND a.stay_id = t.stay_id
LEFT JOIN comorbidity_flags c
  ON a.subject_id = c.subject_id
LEFT JOIN visit_counts v
  ON a.subject_id = v.subject_id
ORDER BY
  a.intime DESC;
