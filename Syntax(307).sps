* Encoding: UTF-8.
VARIABLE LABELS
 Respondent_ID "id"
 Q1_Age_Group "age"
 Q2_Gender "gender"
 Q3_Generation_Group "generation"
 Q4_Educational_Level "education"
 Q5_Role_Traditional_Music "music role"
 Q6_Years_Experience_Engagement "experience"
 Q7_Digital_Technology_Frequency "digital frequency"
 Q8_DTU "digital access"
 Q9_DTU "digital learning"
 Q10_DTU "online learning"
 Q11_DTU "digital sharing"
 Q12_DTU "digital resources"
 Q13_IMKT "knowledge sharing"
 Q14_IMKT "knowledge exchange"
 Q15_IMKT "skill sharing"
 Q16_IMKT "practice communication"
 Q17_IMKT "knowledge transfer"
 Q18_IMKT "intergeneration transfer"
 Q19_TMLE "learning interest"
 Q20_TMLE "learning time"
 Q21_TMLE "learning participation"
 Q22_TMLE "learning motivation"
 Q23_CC "music continuity"
 Q24_CC "tradition maintenance"
 Q25_CC "cultural identity".


* ============================================================
* VALUE LABELS
* ============================================================.

VALUE LABELS Q1_Age_Group
 1 "18-25"
 2 "26-35"
 3 "36-45"
 4 "46-55"
 5 "above 55".

VALUE LABELS Q2_Gender
 1 "male"
 2 "female"
 3 "other"
 4 "prefer not".

VALUE LABELS Q3_Generation_Group
 1 "younger"
 2 "older".

VALUE LABELS Q4_Educational_Level
 1 "secondary"
 2 "diploma"
 3 "undergraduate"
 4 "postgraduate"
 5 "doctoral+".

VALUE LABELS Q5_Role_Traditional_Music
 1 "learner"
 2 "teacher"
 3 "performer"
 4 "practitioner"
 5 "other".

VALUE LABELS Q6_Years_Experience_Engagement
 1 "less 1 year"
 2 "1-3 years"
 3 "4-6 years"
 4 "7-10 years"
 5 "above 10 years".

VALUE LABELS Q7_Digital_Technology_Frequency
 1 "never"
 2 "rarely"
 3 "sometimes"
 4 "often"
 5 "very often".

VALUE LABELS Q8_DTU Q9_DTU Q10_DTU Q11_DTU Q12_DTU
 Q13_IMKT Q14_IMKT Q15_IMKT Q16_IMKT Q17_IMKT Q18_IMKT
 Q19_TMLE Q20_TMLE Q21_TMLE Q22_TMLE
 Q23_CC Q24_CC Q25_CC
 1 "strongly disagree"
 2 "disagree"
 3 "neutral"
 4 "agree"
 5 "strongly agree".

EXECUTE.

* ============================================================
* COMPUTE CONSTRUCT VARIABLES
* ============================================================.

COMPUTE DTU = MEAN(Q8_DTU,Q9_DTU,Q10_DTU,Q11_DTU,Q12_DTU).

COMPUTE IMKT = MEAN(Q13_IMKT,Q14_IMKT,Q15_IMKT,Q16_IMKT,Q17_IMKT,Q18_IMKT).

COMPUTE TMLE = MEAN(Q19_TMLE,Q20_TMLE,Q21_TMLE,Q22_TMLE).

COMPUTE CC = MEAN(Q23_CC,Q24_CC,Q25_CC).

EXECUTE.
