# Association Models in Epidemiology

Study Designs, Modeling Strategies, and Analytic Methods 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/68021f4c67c7022649f5fb94bf94ef6a67890e491d9ce603222d174811f3c5d4.jpg)


Hongjie Liu 

# Association Models in Epidemiology

Association Models in Epidemiology: Study Designs, Modeling Strategies, and Analytic Methods is written by an epidemiologist for graduate students, researchers, and practitioners who will use regression techniques to analyze data. It focuses on association models rather than prediction models. The book targets students and working professionals who lack bona fide modeling experts but are committed to conducting appropriate regression analyses and generating valid findings from their projects. This book aims to offer detailed strategies to guide them in modeling epidemiologic data. 

## Features:

• Custom-Tailored Models: Detailed association models specifically designed for epidemiologic study designs. 

• Epidemiologic Principles in Action: Learn how to apply and translate epidemiologic principles into regression modeling techniques. 

• Model Specification Guidance: Offering guidance on model specifications to estimate exposure-outcome associations, accurately controlling for confounding bias. 

• Accessible Language: Elaborate regression intricacies in user-friendly language, accompanied by real-world examples that make learning easier. 

• Step-by-Step Approach: Follow a straightforward step-by-step approach to master strategies and procedures for analysis. 

• Rich in Examples: Benefit from 120 examples, 77 figures, 86 tables, and 174 SAS® outputs with annotations to enhance your understanding. 

Crafted for two primary audiences, this text benefits graduate epidemiology students seeking to understand how epidemiologic principles inform modeling analyses and public health professionals conducting independent analyses in their work. Therefore, this book serves as a textbook in the classroom and as a reference book in the workplace. A wealth of supporting material is available for download from the book’s CRC Press webpage. Upon completing this text, readers should gain confidence in accurately estimating associations between risk factors and outcomes, controlling confounding bias, and assessing effect modification. 

Hongjie Liu is a professor of epidemiology at the School of Public Health, University of Maryland, College Park. He earned his doctoral degree in epidemiology from the School of Public Health at the University of California, Los Angeles (UCLA). His research focuses on the epidemiology of infectious diseases and research methodology. He has served as the principal investigator, co-investigator, and biostatistics consultant in over 30 research projects and published 125 peer-reviewed papers. Over the past two decades, Dr. Liu has taught intermediate and advanced epidemiology to master’s and doctoral students. His courses emphasize the integration of epidemiologic principles with regression techniques. 

## Chapman & Hall/CRC Biostatistics Series

Series Editors 

Shein-Chung Chow, Duke University School of Medicine, USA 

Byron Jones, Novartis Pharma AG, Switzerland 

Jen-pei Liu, National Taiwan University, Taiwan 

Karl E. Peace, Georgia Southern University, USA 

Bruce W. Turnbull, Cornell University, USA 

## Recently Published Titles

Statistical Analytics for Health Data Science with SAS and R 

Jeffrey Wilson, Ding-Geng Chen and Karl E. Peace 

Controlled Epidemiological Studies 

Marie Reilly 

Statistical Methods in Health Disparity Research 

J. Sunil Rao, Ph.D. 

Case Studies in Innovative Clinical Trials 

Edited by Binbing Yu and Kristine Broglio 

Value of Information for Healthcare Decision Making 

Edited by Anna Heath, Natalia Kunst, and Christopher Jackson 

Probability Modeling and Statistical Inference in Cancer Screening 

Dongfeng Wu 

Development of Gene Therapies: Strategic, Scientific, Regulatory, and Access Considerations 

Edited by Avery McIntosh and Oleksandr Sverdlov 

Bayesian Precision Medicine 

Peter F. Thall 

Statistical Methods Dynamic Disease Screening Spatio-Temporal Disease 

Surveillance 

Peihua Qiu 

Causal Inference in Pharmaceutical Statistics 

Yixin Fang 

Applied Microbiome Statistics: Correlation, Association, Interaction and 

Composition 

Yinglin Xia and Jun Sun 

Association Models in Epidemiology: Study Designs, Modeling Strategies, 

and Analytic Methods 

Hongjie Liu 

For more information about this series, please visit: https://www.routledge.com/ 

Chapman–Hall-CRC-Biostatistics-Series/book-series/CHBIOSTATIS 

# Association Models in Epidemiology

Study Designs, Modeling Strategies, and Analytic Methods 

Hongjie Liu 

First edition published 2025 

by CRC Press 

2385 NW Executive Center Drive, Suite 320, Boca Raton FL 33431 

and by CRC Press 

4 Park Square, Milton Park, Abingdon, Oxon, OX14 4RN 

CRC Press is an imprint of Taylor & Francis Group, LLC 

© 2025 Hongjie Liu 

Reasonable efforts have been made to publish reliable data and information, but the author and publisher cannot assume responsibility for the validity of all materials or the consequences of their use. The authors and publishers have attempted to trace the copyright holders of all material reproduced in this publication and apologize to copyright holders if permission to publish in this form has not been obtained. If any copyright material has not been acknowledged please write and let us know so we may rectify in any future reprint. 

Except as permitted under U.S. Copyright Law, no part of this book may be reprinted, reproduced, transmitted, or utilized in any form by any electronic, mechanical, or other means, now known or hereafter invented, including photocopying, microfilming, and recording, or in any information storage or retrieval system, without written permission from the publishers. 

For permission to photocopy or use material electronically from this work, access www.copyright.com or contact the Copyright Clearance Center, Inc. (CCC), 222 Rosewood Drive, Danvers, MA 01923, 978-750-8400. For works that are not available on CCC please contact mpkbookspermissions@tandf.co.uk 

Trademark notice: Product or corporate names may be trademarks or registered trademarks and are used only for identification and explanation without intent to infringe. 

ISBN: 9781032353401 (hbk) 

ISBN: 9781032353456 (pbk) 

ISBN: 9781003326441 (ebk) 

DOI: 10.1201/9781003326441 

Typeset in Palatino 

by KnowledgeWorks Global Ltd. 

To my parents, Xiangyuan, my wife, 

Chang, my daughter, and Jeff, my son-in-law 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/a56db4b23eb2c9d54ccd8fde97675480117032dc7b8af0e04e02e71434c7ebaf.jpg)


## Taylor& Francis

Taylor&Francis Group 

http://taylorandfrancis.com 

## Contents

Preface.. .xv 

Acknowledgments .. . xix 

## 1 Association Models in Analytic Epidemiologic Research:

Principles and Methods . 

1.1 Overview of Epidemiologic Studies.......... 

1.2 Two Categories of Regression Models .. 

1.2.1 Prediction Models... 3 

1.2.2 Association Models ............. 5 

1.3 Type of Populations in Epidemiologic Studies .. 

1.4 Confounder and Confounding . 8 

1.4.1 Counterfactual Theory. 8 

1.4.2 Manifestation of Confounding . 10 

1.4.3 Positive versus Negative Confounding Effects . 11 

1.4.4 Control of Confounding at Two Stages.. 12 

1.5 Overview of Regression Models. . 13 

1.5.1 Binary and Multivariable Regression . 13 

1.5.2 Causation and Association. 14 

1.5.3 Regression Models in Analytic Epidemiology . 15 

1.5.4 General Steps in Association Modeling Process .. 16 

1.5.5 p-Value and Significance. 18 

1.5.6 Confidence Interval and Compatibility Interval. 19 

1.6 Model Specification in Association Models . . 21 

1.6.1 Selection of Variables Based on Causal Diagrams........... .22 

1.6.2 Selection of Appropriate Functional Form of Variables.. 29 

1.6.3 Selection of Appropriate Regression Model . 31 

1.7 Data-Driven Methods for Confounder Selection . 32 

1.7.1 Stepwise Selection . . 32 

1.7.2 Change-in-Estimate Selection. .33 

1.7.3 Meaning of Adjustment in Regression Models.. . 35 

1.7.4 Confounders and Collinearity.. .38 

1.8 Data-Driven Methods for Effect Modification Assessment. . 41 

1.8.1 Search for Effect Modification.. . 41 

1.8.2 Assessment of Effect Modification. . 41 

1.8.3 Effect Modification versus Confounding Effect........ .43 

1.8.4 Challenges and Recommendations in Modification Assessment 45 

1.9 Generalized Linear Models .. .48 

1.9.1 Overview... .48 

1.9.2 Maximum Likelihood Estimation.. 49 

1.9.3 Key Assumptions.......... .50 

1.10 Evaluation of Association Models ......... .. 52 

1.10.1 Evaluation of Model Compatibility with Data ......... 52 

1.10.2 Evaluation of Model Compatibility with Assumptions ........... .54 

1.10.3 Evaluation of Model Compatibility with Causal Structures ................... 55 

1.11 Recommendations for Association Model Analysis.. .57 

1.12 Summary.. . 61 

Additional Readings... . 62 

References . . 62 

## 2 Modeling for Cohort Studies: Incidence Rate Ratio, Risk Ratio, and Risk Difference ... ..68

2.1 Review of Cohort Study Design........ .68 

2.2 Features of Data Collected from Cohort Studies......... .69 

2.2.1 Censoring Events in Cohort Studies .. .69 

2.2.2 Data with Losses to Follow-Up.. ........ 69 

2.2.3 Competing Risks............. . 70 

2.2.4 Age-Related Effect .. . 70 

2.3 Review of Frequency and Association Measures in Cohort Studies................... 70 

2.3.1 Frequency Measures............... . 70 

2.3.2 Association Measures 73 

2.4 Recommended Regression Models for Cohort Studies.......... .75 

2.5 Generalized Linear Models in Cohort Studies .. .. 75 

2.6 Poisson Regression Model . . 76 

2.6.1 Poisson Distribution and Poisson Model . 76 

2.6.2 Assumptions Related to Poisson Regression Model .80 

2.6.3 Overdispersion.. .80 

2.6.4 Pearson Dispersion Factor .. .82 

2.6.5 Adjustment of Standard Errors to Account for Overdispersion. 82 

2.6.6 Negative Binomial Regression ........... .85 

2.6.7 Overdispersion in Binomial Data............ .86 

2.6.8 Robust Poisson Regression Model for Binomial Data .. .86 

2.6.9 Assessment of Linearity. .89 

2.7 Use Robust Poisson Regression Model to Estimate Incident Rate Ratio . .95 

2.7.1 Estimate of Crude Incident Rate Ratio............ .95 

2.7.2 Adjustment of a Confounding Variable ........ 97 

2.7.3 Assessment of Interaction Effect . .98 

2.7.4 Conducting Multiple Robust Poisson Regression Model . 101 

2.7.5 Performing Deviance Test to Compare Models ......... . 102 

2.7.6 Estimating Rate Ratios Considering Effect Modification . . 105 

2.8 Use Robust Poisson Regression to Estimate Risk Ratio ........ ... 107 

2.8.1 Estimate of Crude Risk Ratio ............ 

2.8.2 Adjustment of a Confounding Variable . .. 109 

2.8.3 Assessment of Interaction Effect .. 110 

2.8.4 Estimate Risk Ratio in Multiple Robust Poisson Regression Model...........115 

2.9 Use Standardization to Estimate Standardized Measures . ... 117 

2.9.1 Direct Standardization............. 118 

2.9.2 Indirect Standardization............. .123 

2.10 Log-Binomial Regression Model to Estimate Risk Ratio....... .. 126 

2.10.1 Estimate of Crude Risk Ratio . . 127 

2.10.2 Adjustment of a Confounding Variable . ........ .. 129 

2.10.3 Assessment of Interaction Effect ............ .. 129 

2.10.4 Estimate Risk Ratio in Multiple Log-Binomial Regression Model. 131 

2.10.5 Convergence Issues and Alternatives to the Log-Binomial Model. 131 

2.11 Linear Binomial Regression Model to Estimate Risk Difference........ . 132 

2.11.1 Estimate of Crude Risk Difference ........... 

2.11.2 Estimate of Adjusted Risk Difference....... .... 133 

2.11.3 Assessment of Modification Effect .......... .. 134 

2.11.4 Estimate of Multiple-Adjusted Risk Differences......... ...... 137 

2.12 Summary..... . 139 

Additional Readings.. . 139 

References . 139 

3 Modeling for Cohort Studies: Time-to-Event Outcome ................... ...... 143 

3.1 Survival Analysis .......... . 143 

3.1.1 Censoring.. . 144 

3.1.2 Survival Time and Function............ . 145 

3.1.3 Hazard Function .............. 

3.1.4 Simple Method for Risk Estimation . .. 148 

3.1.5 Life-Table Method of Risk Estimation ........ .. 151 

3.1.6 Kaplan–Meier Method for Risk Estimation .......... ..... 153 

3.2 Assumptions in the Estimation of Survival Probabilities and Risks ... . 157 

3.2.1 Assumption of Independence between Censoring and Survival Probability. . 157 

3.2.2 Assumption of Approximate Uniformity of Events and Losses. . 159 

3.2.3 Assumption of Lack of Secular Trends........... .... 159 

3.3 Estimation and Comparison of Survival Curves .. . 160 

3.3.1 Visualization of Survival Curves... 161 

3.3.2 Estimating Kaplan–Meier Survival Probabilities.......... ..... 162 

3.3.3 Log-Rank Test.. . 164 

3.4 Cox Proportional Hazard Model . 172 

3.4.1 Cox Proportional Hazard Model as a Semiparametric Model.. .......... 172 

3.4.2 Estimate Hazard Ratio in Simple Cox PH Model . .. 175 

3.4.3 Estimate Hazard Ratio in Multiple Cox PH Model . . 179 

3.4.4 Age Attained to Event as Timescale.. . 183 

3.4.5 Tied Event Time . 188 

3.5 Proportional Hazard Assumption in Cox Model.. . 189 

3.5.1 Violation of Proportional Hazard Assumption......... . 189 

3.5.2 Graphical Examination of Kaplan–Meier Curves .. . 191 

3.5.3 Graphical Examination of Log-Log Survival Plots ............. .. 191 

3.5.4 Kolmogorov-Type Supremum Test......... . 194 

3.6 Models That Address the Violation of PH Assumption.. .. 195 

3.6.1 Stratified Cox Model. . 195 

3.6.2 Extended Cox Model .. .200 

3.7 Parametric Survival Models ......... ... 205 

3.7.1 Weibull Distribution and Weibull Model... .. 205 

3.7.2 Weibull PH Model . ..206 

3.7.3 Weibull AFT Model .. ..206 

3.7.4 Check for Assumptions ...... .. 208 

3.8 Summary ......... . 210 

Additional Readings......... . 210 

References . . 210 

4 Modeling for Cohort Studies: Propensity Score Method.. . 213 

4.1 Propensity Score Analysis .. .. 213 

4.1.1 Propensity Score and Conditional Exchangeability. . 214 

4.1.2 Sparsity, Overlap, and Positivity.. .. 215 

4.1.3 Two Models Used in Propensity Score Analysis.. .. 217 

4.1.4 Assumptions in PS Analysis .. . 217 

4.2 Step 1: Selection of Covariates.......... . 219 

4.3 Step 2: Estimation of Propensity Score .. .. 220 

4.4 Step 3: Assessment of Common Support Region . .. 221 

4.5 Step 4: Balancing Propensity Scores... .. 223 

4.5.1 Matching .. . 223 

4.5.2 Stratification. .225 

4.5.3 Weighting .................... ..226 

4.6 Step 5: Balance Diagnosis . .. 230 

4.7 Step 6: Estimation of Exposure Effect on Outcome .. .. 231 

4.7.1 Estimate of Exposure Effects in Matched Data ............ . 231 

4.7.2 Estimate of Exposure Effects in Stratified Data .. .. 232 

4.7.3 Estimate of Exposure Effects in Weighted Data.......... . 232 

4.7.4 Estimate Exposure Effect Using Propensity Score Adjustment.... ..233 

4.7.5 Estimate Exposure Effect Using Doubly Robust Method.. .. 233 

4.8 Examples . .. 234 

4.8.1 Selection of Covariates .............. .235 

4.8.2 PS Estimating Model and Common Region ....... .. 235 

4.8.3 Matching . . 239 

4.8.4 Stratification.. . 245 

4.8.5 Weighting....... . 253 

4.8.6 Estimate Exposure Effect Using Doubly Robust Method. .263 

4.8.7 Estimate Exposure Effect Using Propensity Score Adjustment . 264 

4.9 Suggestions and Summary.. .268 

4.9.1 Selection of Individual-Based Balance......... .268 

4.9.2 Issues and Suggested Solutions ..... . 269 

4.9.3 Reporting of Propensity-Score Analysis ........ . 270 

4.10 Summary ......... .. 272 

Additional Readings.. .. 272 

References . .. 272 

5 Modeling for Traditional Case-Control Studies . . 276 

5.1 Review of Case-Control Study Design ......... .. 276 

5.1.1 Principles for Control Selection . . 276 

5.1.2 Cumulative Sampling of Controls in Non-Population Case-Control Design . 277 

5.1.3 Density Sampling of Controls in Nested Case-Control Design............ 279 

5.1.4 Baseline-Cohort Sampling in the Case-Subcohort Design .......... .280 

5.2 Measures of Exposure Effect.. . 281 

5.2.1 Traditional Case-Control Studies ............ . 282 

5.2.2 Matched Case-Control Studies .......... .... 284 

5.2.3 Case-Subcohort Studies ........ .. 285 

5.2.4 Nested Case-Control Studies .............. .. 286 

5.3 Basics of Logistic Regression Analysis for Traditional Case-Control Study.. .288 

5.3.1 Simple Binary Logistic Regression Model . .288 

5.3.2 Maximum Likelihood Estimation .......... .. 291 

5.3.3 Likelihood Ratio Test and Wald Test .... .. 292 

5.3.4 Confidence Interval for Odds Ratio . .. 295 

5.3.5 Mantel–Haenszel Method and Logistic Regression Analysis............... 297 

5.4 Multiple Logistic Regression Model for Traditional Case-Control Study. .300 

5.4.1 Use Logistic Regression to Control for Confounding . .302 

5.4.2 Use Logistic Regression Model to Assess Interaction Effect... .. 310 

5.4.3 Key Assumptions in Logistic Regression Model . . 316 

5.5 Ordinal Logistic Regression: The Proportional Odds Model . .. 318 

5.5.1 Ordinal Outcome . . 318 

5.5.2 Proportional Odds Assumption . . 319 

5.5.3 Use of the Ordinal Logistic Regression. . 321 

5.6 Multinomial Logistic Regression.. .. 324 

5.6.1 Nominal Outcome .. . 324 

5.6.2 Use of Multinomial Logistic Regression Model.. ... 325 

5.7 Summary ......... .. 328 

Additional Readings.. .. 328 

References . . 329 

6 Modeling for Matched Case-Control Studies......... .. 331 

6.1 Review of the Matched Case-Control Study Design ......... .. 331 

6.1.1 Matching in Cohort Studies . . 331 

6.1.2 Matching in Case-Control Studies ............. . 332 

6.1.3 Types of Matching .. ..334 

6.1.4 Statistical Efficiency of Matching . .. 334 

6.1.5 Selection Bias by Matching.. ..335 

6.1.6 Illustration of Selection Bias and Statistical Efficiency . 337 

6.2 Simple Conditional Logistic Regression.. .. 342 

6.2.1 Sparse-Data Bias and Conditional Logistic Regression . ..342 

6.2.2 Dealing with Matched Variables ............ .. 342 

6.2.3 Use of Simple Conditional Logistic Regression ...... .. 343 

6.3 Multiple Conditional Logistic Regression.. .. 348 

6.3.1 General Form of Multiple Conditional Logistic Regression Model........... 349 

6.3.2 Adjustment of Confounding.. .. 349 

6.3.3 Bias Due to Ignorance of Matching Structure ........... . 352 

6.3.4 Assessment of Interaction Effect ........... .353 

6.4 Analysis of Frequency-Matched Case-Control Study . ... 354 

6.5 Summary..... .. 356 

Additional Readings......... . 357 

References .......... . 357 

## 7 Modeling for Population-Based Case-Control Studies ........ ..359

7.1 Modeling for Nested Case-Control Studies .. .359 

7.1.1 Features of Nested Case-Control Data . .359 

7.1.2 Conditional Cox Proportional Hazard (PH) Model . .360 

7.1.3 Use of Conditional Cox PH Model to Analyze Data ............. . 361 

7.1.4 Counter-Matching in Nested Case-Control Study . .. 366 

7.2 Modeling for Case-Subcohort Studies .......... ... 371 

7.2.1 Feature of Case-Subcohort Data ............. .. 371 

7.2.2 Robust Logistic Regression Model to Estimate Risk Ratio.. .. 372 

7.2.3 Weighted Cox Model to Estimate Incidence Rate Ratio.. . 376 

7.2.4 Testing of the Proportional Hazards Assumption.. .. 384 

7.3 Summary..... . 387 

Additional Readings......... . 387 

References .......... .388 

## 8 Modeling for Cross-Sectional Studies ...................... ...... 390

8.1 Review of Cross-Sectional Study Design ........ .. 390 

8.1.1 Cross-Sectional Studies. .390 

8.1.2 Data Collected from Cross-Sectional Studies............ . 391 

8.1.3 Measure of Exposure-Outcome Association . . 392 

8.2 Use Regression Models to Estimate Prevalence Ratio.. .. 394 

8.2.1 Log-Binomial Regression Model . . 394 

8.2.2 Using the COPY Method to Solve Non-Convergence Problem ....... ... 398 

8.2.3 Using the Poisson Regression Model to Address Convergence Problem . . 399 

8.2.4 Using of Logistic Regression Model . . 401 

8.3 Data Analysis for Repeated Cross-Sectional Data . . 401 

8.3.1 Combing Cross-Sectional Data. .402 

8.3.2 Analyzing Repeated Cross-Sectional Data . . 402 

8.4 Data Analysis for Cross-Sectional Data with Complex Sampling Design .......405 

8.4.1 Overview of Multistage Sampling . . 405 

8.4.2 Weighted Poisson Regression Model. . 406 

8.5 Summary.. . 408 

Additional Readings.. . 409 

References .......... .409 

## 9 Modeling for Ecologic Studies......... . 411

9.1 Review of Ecologic Studies ......... . 411 

9.1.1 Multiple-Group Ecologic Study . . 411 

9.1.2 Time-Trend Ecologic Study.. . 411 

9.1.3 Mixed-Design Ecologic Study. . 412 

9.2 Feature of Ecologic Data.. . 412 

9.3 Ecologic Effect versus Individual Effect . . 414 

9.4 Ecologic Bias and Ecologic Fallacy . . 414 

9.5 Ecologic Regression Analysis........ ... 417 

9.5.1 Linear Ecologic Regression.. . 417 

9.5.2 Log-Linear Ecologic Model.. . 418 

9.5.3 Illustration of Ecologic Fallacy in Ecologic Regression Models. . 419 

9.6 Ecologic Confounding.. . 424 

9.6.1 Regression Models for Adjustment.. . 424 

9.6.2 Challenges in Confounding Control. . 426 

9.6.3 Remedies for Improvement.. .427 

9.7 Examples of Ecologic Regression Analysis . .428 

9.7.1 Multiple Linear Ecologic Model . . 428 

9.7.2 Time-Series Regression Model. .430 

9.7.3 Poisson Regression Model. . 431 

9.7.4 Exercise Caution in Interpreting Findings.. . 432 

9.8 Summary. .433 

Additional Readings.......... .433 

References . . 433 

10 Spline Regression Models: Beyond Linearity and Categorization ......... ..435 

10.1 Modeling Non-Linear Association: From Naïve to Appropriate Methods. . 436 

10.1.1 Categorical Analysis of Continuous Exposure Variable .. .436 

10.1.2 Spline Function and Spline Regression . . 438 

10.1.3 Linear Spline Regression Model. .438 

10.1.4 Quadratic Spline Model .. .441 

10.1.5 Restricted Cubic Spline Model. .444 

10.1.6 Assessment of Model Fit and Linearity. .447 

10.2 Modeling Non-Linear Association in Restricted Cubic Spline Models . .448 

10.2.1 Estimate of Risk Ratio by the Log-Binomial Regression Model. .448 

10.2.2 Estimate of Odds Ratio by Logistic Regression Model . . 450 

10.2.3 Estimate of Incidence Rate Ratio by Poisson Regression Model.. . 451 

10.2.4 Estimate of Hazard Ratio in Cox Proportional Hazard Model .453 

10.2.5 Selection of Knots ................ .... 454 

10.3 Adjustment of Continuous Confounding Variables .. . 455 

10.3.1 Estimate of Adjusted Risk Ratio .. . 456 

10.3.2 Estimate of Odds Ratio . . 457 

10.3.3 Estimate of Incidence Rate Ratio ..... . 457 

10.3.4 Estimate of Hazard Ratio............. .458 

10.4 Summary ......... .458 

Additional Readings.. . 459 

References . .459 

Index .... . 461 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/5f8999ab78e229d496e33d126ed6a134afb444f60d012c83ff58d5bf21cba9f8.jpg)


## Taylor& Francis

Taylor&Francis Group 

http://taylorandfrancis.com 

## Preface

This book is written by an epidemiologist for graduate students, researchers, and public health practitioners who will use regression modeling techniques to analyze data. My motivation for writing this book stems from decades of experience teaching analytical epidemiology and conducting data analysis for both my own research and that of my colleagues. The contents of the book are not intended for highly skilled statisticians or biostatisticians. Instead, the book targets students and public health professionals who lack bona fide modeling experts but are committed to conducting appropriate regression analysis and generating valid findings from their research projects. This book aims to provide detailed strategies to guide them in modeling epidemiologic data. 

## Features of This Book

1. Focus on association models: This book concentrates on association models commonly used in causal inference in epidemiologic research, rather than prediction models. While most available statistical books emphasize prediction models, the methods used in prediction models cannot be directly applied to association models. Specific statistical models are tailored to analyze data collected from different epidemiologic study designs, highlighting model specification, effect estimation, control of confounding, and assessment of modification and mediation effects. 

2. Application of epidemiologic principles: The book emphasizes the application of epidemiologic principles in data analysis. Each chapter overviews relevant epidemiologic theories and principles before introducing modeling techniques, illustrating how these principles can be translated into analytic practice. The description of each modeling technique is illustrated from the epidemiologic perspective, rather than the biostatistics paradigm. 

3. Model specification: The focus is on model specification that guides the selection of an appropriate regression model and the choice of variables, such as confounders, modifiers, or mediators. These selections are made based on the features of data collected from different study designs and the potential role of variables in the expected causal path from exposure to outcome. Correct model specification relies on subject knowledge about the relationships among variables and empirical findings rather than statistical tests. 

4. Car-driving approach: The book adopts a car-driving approach to teach regression analysis, similar to learning to drive a car. Being the end users of statistical models, epidemiologists and other applied researchers do not need a deep understanding of the mathematical intricacies of each regression model. Instead, they need to learn how to select the most appropriate model for data analysis, check the assumptions required by each model, and navigate the choice of an alternative model if the data do not align with the assumptions inherent to a specific model, similar to making a detour. 

5. User-friendly language and real-world examples: Following the car-driving approach, the book uses plain language and epidemiologic terminology to illustrate regression modeling techniques with real-world examples. Each chapter includes detailed ${ \mathrm { S A S } } ^ { \mathbb { \mathrm { \infty } } }$ syntaxes and annotated outputs (SAS Institute Inc 2016). The book presents 120 examples, 77 figures, 86 tables, and 174 SAS outputs with annotations, providing a straightforward, step-by-step approach to developing analytic plans for research projects in real-world settings. 

## Contents of the Book

When students or researchers have data at hand, the first question is, “What is the most appropriate regression model to use for the data collected from a specific study design?” To assist in this decision-making process, the coverage of various regression models in this book is organized by the study designs most frequently used in epidemiologic research. The following table summarizes regression models that can be used to estimate associations by epidemiologic study designs. This book offers valuable information and reasoning to assist analysts in selecting the appropriate model for their research projects. I strongly recommend that readers thoroughly review Chapter 1, as it provides essential epidemiologic principles and statistical strategies for modeling the exposure-outcome association. 


Summary of Regression Model Selection According to Study Designs


<table><tr><td>Study Designs</td><td>Association Estimates</td><td>Regression Models</td><td>Chapter</td></tr><tr><td rowspan="3">Closed cohort studies</td><td>Risk ratio</td><td>Log-binomial</td><td>2</td></tr><tr><td>Risk difference</td><td>Linear binomial</td><td>2</td></tr><tr><td>Standardized risk ratio</td><td>Poisson</td><td>2</td></tr><tr><td rowspan="7">Open cohort studies</td><td>Rate ratio</td><td>Robust Poisson</td><td>2</td></tr><tr><td>Hazard ratio</td><td>Cox PH</td><td>3</td></tr><tr><td>Hazard ratio</td><td>Stratified Cox</td><td>3</td></tr><tr><td>Hazard ratio</td><td>Extended Cox</td><td>3</td></tr><tr><td>Hazard ratio</td><td>Weibull PH</td><td>3</td></tr><tr><td>Acceleration factor</td><td>Weibull AFT model</td><td>3</td></tr><tr><td>Standardized rate ratio</td><td>Poisson regression</td><td>2</td></tr><tr><td>Cohort studies</td><td>Risk ratio/rate ratio/hazard ratio</td><td>Propensity score</td><td>4</td></tr><tr><td rowspan="3">Traditional case-control studies</td><td rowspan="3">Odds ratio</td><td>Logistic</td><td>5</td></tr><tr><td>Ordinal logistic</td><td>5</td></tr><tr><td>Multinomial logistic</td><td>5</td></tr><tr><td>Matched case-control studies</td><td>Odds ratio</td><td>Conditional logistic</td><td>6</td></tr><tr><td>Nested case-control studies</td><td>Hazard ratio/rate ratio</td><td>Conditional Cox PH</td><td>7</td></tr><tr><td>Counter-matching in nested case-control studies</td><td>Hazard ratio</td><td>Conditional Cox PH</td><td>7</td></tr><tr><td rowspan="2">Case-subcohort studies</td><td>Risk ratio</td><td>Robust logistic</td><td>7</td></tr><tr><td>Rate ratio/hazard ratio</td><td>Weighted Cox PH</td><td>7</td></tr><tr><td rowspan="2">Cross-sectional studies</td><td>Prevalence ratio</td><td>Log-binomial</td><td>8</td></tr><tr><td>Ecologic risk difference</td><td>Ecologic linear</td><td>9</td></tr><tr><td rowspan="2">Ecologic studies</td><td>Ecologic risk ratio</td><td>Ecologic Poisson</td><td>9</td></tr><tr><td>Ecologic coefficient</td><td>Ecologic time-series</td><td>9</td></tr><tr><td>All study designs</td><td>Risk ratio/rate ratio/hazard ratio/odds ratio</td><td>Spline</td><td>10</td></tr></table>

## Use of This Book in the Classroom

This book can be utilized over two consecutive semesters for doctoral and second-year master’s students who have completed introductory and intermediate courses in epidemiologic and biostatistics methods. The first course encompasses Chapters 1–4, while the second covers Chapters 5–10. By completing both courses, students are expected to comprehensively understand regression modeling and acquire a solid skill set for applying epidemiologic principles to regression analysis. 

I have used the teaching materials covered in this book in two courses for Master of Public Health (MPH) students and doctoral students in epidemiology, namely EPIB612: Epidemiologic Study Design and EPIB740: Advanced Methods in Epidemiology, spanning nearly two decades. The Department of Epidemiology and Biostatistics at the UMD School of Public Health offers three methodological courses to MPH students: EPIB610, EPIB611, and EPIB612. EPIB612 primarily delves into epidemiologic principles and methods, with lecture handouts distributed to students and two classical textbooks recommended: Epidemiology: Beyond the Basics (Szklo and Nieto 2019) and Epidemiology: Study Design and Data Analysis (Woodward 2014). On the other hand, EPIB740 is tailored for doctoral and second-year MPH students who have completed EPIB612, focusing on regression analyses for epidemiologic data by study designs. In addition to lecture handouts, the gold standard book on epidemiology, Modern Epidemiology (Lash et al. 2021, Rothman, Greenland, and Lash 2008), is recommended to students. 

## Use of the Book in the Workplace

This book has been crafted with two key audiences in mind: graduate students in epidemiology who aim to comprehend how epidemiologic principles drive appropriate modeling analyses and working epidemiologists and researchers who independently conduct accurate analyses as part of their professional responsibilities. It is designed to aid readers in developing analytic strategies guided by epidemiologic principles and offers a step-bystep approach to illustrate modeling methods through detailed examples. As such, the book serves both as a textbook in academic settings for teachers and students, and as a desktop reference for professionals in their workplaces. Alumni from my graduate courses have noted the enduring value of these materials as a reliable reference in their professional endeavors. 

## Cautionary Notes

In this book, for simplicity, no explicit distinction is made between parameters and their estimates in the notation, but the context will clarify this difference. The book demonstrates modeling techniques and processes, illustrated by numerous examples that estimate the exposure-outcome associations, adjust for confounding variables, and assess effect modifications by modifying variables. It is important to note that the selection of these variables in examples is just for illustration purposes and may not always have substantial subject-matter justification, unless stated otherwise. Additionally, this book encourages the use of compatibility or confidence intervals to quantify the compatibility of effect estimates with the data. It discourages reliance solely on significance tests for making modeling decisions and on p-values for quantifying the strength of associations. However, it is worth acknowledging that significance tests have an important place in statistics, albeit with evident limitations, as discussed in Chapter 1. For instance, several chapters describe hypothesis tests for evaluating model complexity, such as nonlinearity, effect homogeneity, and predictability. 

## References



Lash, T. L., T. J. VanderWeele, S. Haneuse, and K. J. Rothman. 2021. Modern epidemiology. 4th edition ed. Philadelphia: Wolters Kluwer. 





Rothman, K. J., S. Greenland, and T.L. Lash. 2008. Modern Epidemiology. 3rd ed. Philadelphia, PA: Lippincott Williams & Wilkins. 





SAS Institute Inc. 2016. SAS® software 9.4 (SAS/STAT 15.1). Cary, NC: SAS Institute Inc. 





Szklo, M., and F. Javier Nieto. 2019. Epidemiology: beyond the basics. In. Burlington, Massachusetts: Jones & Bartlett Learning. 





Woodward, M. 2014. Epidemiology: study design and data analysis. In. Boca Raton: CRC Press. 



# Acknowledgments

I take this opportunity to acknowledge the debt owed to the pioneers of the statistical and epidemiologic methods presented in this book and to those who imparted their knowledge to me. In particular, I am deeply thankful to the esteemed professors from the Department of Epidemiology at the University of California, Los Angeles, where I received my doctoral degree in epidemiology. 

I wish to underscore, with profound gratitude, the pivotal role played by Dr. Roger Detels. His mentorship and unwavering support have been the cornerstone of my academic journey. I could not have reached this point in academia without his guidance and generosity. 

I would also like to express my appreciation to my school and department for their support during the summer effort devoted to writing this book. Furthermore, I extend my thanks to the graduate students who offered invaluable comments and suggestions during the development and teaching of the two epidemiology courses. Their contributions were instrumental in shaping this work. Additionally, I would like to acknowledge and thank Dr. Jay Kaufman for reviewing Chapter 1 and providing useful comments and suggestions. 

I warmly encourage readers to provide feedback, identify errors, or suggest improvements. Your insights are invaluable and will contribute to the ongoing refinement of this work. Please feel free to email me any such suggestions or comments to the following: hliu1210@umd.edu or hongjie76@gmail.com. A wealth of supporting material, including example datasets and SAS syntaxes, can be downloaded from the book’s CRC Press web page. 

Hongjie Liu 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/999cb3b49aca3f59bce350566ed2895d5964694a0d7c656fb8be3bb04b8594c8.jpg)


## Taylor& Francis

Taylor&Francis Group 

http://taylorandfrancis.com 

## 1

# Association Models in Analytic Epidemiologic Research: Principles and Methods

This chapter presents a comprehensive overview of epidemiologic principles and the application of commonly used regression models in analytic epidemiology. It lays out the essential theoretical and technical foundations for a comprehensive understanding and application of regression analysis. A key focus of the chapter is the delineation between prediction models and association models in data analysis. This distinction is crucial, particularly in the context of etiological studies, which primarily aim to estimate the associations between exposures and outcomes and to draw causal inferences. Special emphasis is placed on the use of subject knowledge in conceptualizing causal structures, facilitated through the construction of causal diagrams. Furthermore, the chapter addresses vital aspects such as model specification, the underlying assumptions of different models, and the evaluation of association models. It also provides an in-depth review of various techniques and methods used in generalized regression modeling analysis, offering insights into their applications and limitations in epidemiological research. 

## 1.1 Overview of Epidemiologic Studies

Epidemiology can be broadly classified into two categories: descriptive epidemiology and analytic epidemiology (Lash et al. 2021, Szklo and Nieto 2019). Descriptive epidemiology involves the observation of disease occurrence patterns over time, or across different locations within one or more groups of people. The primary aim of descriptive epidemiology is to generate hypotheses regarding the causes of these patterns and identify potential factors contributing to an increased or decreased risk of disease. To rigorously test these hypotheses and delve deeper into causal relationships, researchers turn to analytic epidemiology. 

The primary aim of analytic epidemiology is to quantitatively estimate the effect of one or more exposures on disease occurrence in a well-defined study population and to rigorously test hypotheses for causal inferences. It focuses on making comparisons, often evaluating the incidence of disease or other health events between groups that are exposed and unexposed to a particular factor. Alternatively, it may compare levels of exposure among cases and non-case controls. Analytic epidemiology can further be classified into two categories based on whether or not randomization is involved: experimental and observational studies. 

A typical research hypothesis that is tested in analytic epidemiologic research is that a specific exposure, such as heavy smoking, increases the risk of a particular outcome, such as coronary atherosclerosis (CAD). Randomized controlled trials are considered the gold standard study design for testing this hypothesis. However, in most analytic epidemiologic studies, it is not feasible to randomly assign participants to different exposure groups, for example, smoking vs. non-smoking. Therefore, researchers rely on the natural history of exposure to examine the relationship between exposure and outcome in observational studies, such as cohort studies, case-control studies, or cross-sectional studies. Without randomization, the association between exposure and outcome can be confounded by other variables. Failure to adequately control for confounding effects can introduce bias and significantly compromise the validity of an observational study (Woodward 2014). 

In line with the objectives of analytic epidemiology, statistical analysis aims to accurately estimate the effect of exposure on disease risk and enable causal inference by accounting for effect modification and confounding factors. To achieve this goal, it is essential to select an appropriate model for estimating exposure-outcome associations while considering the potential impact of effect modification and confounding. 

## 1.2 Two Categories of Regression Models

Depending on the study objective and research question, models can be broadly categorized into two groups: prediction models, which predict disease occurrence, and association models, which examine disease etiology (Shmueli 2010, Sainani 2014, Twisk 2019). Table 1.1 summarizes and compares the key characteristics of these two types of models. While both models employ multivariable analysis, they differ substantially in terms of their underlying research aims, model specification, modeling strategies, model evaluation, and interpretation of results (Arnold et al. 2020, Tredennick et al. 2021, van Diepen et al. 2017). 


TABLE 1.1 Comparison of Prediction Models and Association Models in Key Characteristics


<table><tr><td></td><td>Prediction Models</td><td>Association Models</td></tr><tr><td>Research type</td><td>Outcome prediction</td><td>Ecologic causal association</td></tr><tr><td>Analytic goal</td><td>To identify the combination of variables that “best” predict the occurrence of an outcome</td><td>To accurately (validly and precisely) estimate the effect of exposure on disease occurrence</td></tr><tr><td>Example research Question</td><td>What is the probability of COVID-19 occurrence in the next 6 months for men aged 60 or older with specific characteristics?</td><td>Does the presence of chronic diseases increase the risk of COVID-19 among men aged 60 or older?</td></tr><tr><td>Model construction</td><td>Data-driven</td><td>Driven by existing subject knowledge and data</td></tr><tr><td>Causal inference</td><td>Not involved</td><td>Involved and essential</td></tr><tr><td>Pre-knowledge of causal structures</td><td>Not necessary or minimal</td><td>Essential</td></tr><tr><td>Control of confounding</td><td>No</td><td>Yes</td></tr><tr><td>Assessment of effect modification</td><td>No or yes</td><td>Yes</td></tr><tr><td>Assessment of mediation effect</td><td>No</td><td>Yes</td></tr><tr><td>Multivariable analysis</td><td>Regression analysis (e.g., generalized linear models)</td><td>Regression analysis (e.g., generalized linear models)</td></tr></table>

Understanding the distinctions between association models and prediction models is crucial for determining how we analyze data, interpret results, and report findings. 

The conflation of two types of modeling analyses – prediction modeling and association modeling – is common in observational studies. This can lead to biased estimations and erroneous conclusions. For example, Ramspek et al. (2021) reported that the most frequent conflation in etiologic causal research using association models is the selection of adjustment covariates based on their ability to predict the outcome, rather than their causal relationship. Similarly, in prediction studies that use prediction models, conflations often arise when predictability to the outcome is interpreted as a causal relationship. To enhance the validity of data analysis and improve the quality of observational studies, it is crucial to distinguish between these types of conflations and work to reduce their occurrence. 

In response to this issue, scholars have advocated for the integration of causal and prediction modeling analyses into educational curricula. Such integration ensures students understand the distinctive roles of causal and prediction research, thereby equipping them to apply the appropriate statistical methods to address research questions (Hernán, Hsu, and Healy 2019, Ramspek et al. 2021, Shmueli 2010). This calls for the creation of new textbooks that clearly delineate the differences between prediction models and association models. These textbooks should provide accessible explanations of the application of association models in analyzing epidemiological data, specifically catered for non-statisticians. 

Since analytic epidemiologic research focuses on causal inference for exposure-outcome associations, etiologic data analysis should primarily employ association models rather than prediction models. This book utilizes the framework of association models to analyze data from various epidemiologic study designs. 

## 1.2.1 Prediction Models

Prediction models aim to construct the most optimal and parsimonious models that accurately forecast outcomes based on a selected set of predictors. These models utilize multivariable regression analysis to capture the independent associations between predictors and outcome variables (Steyerberg 2019). In prediction models, all variables are treated as equal and are collectively used to achieve the “highest” level of predictability. Consequently, the objective of prediction models is to identify the combination of variables that most effectively predict the occurrence of the outcome. These models do not specify any specific exposure factor or distinguish confounders from non-confounders, as confounders themselves can also act as risk factors for the outcome variable (Schooling and Jones 2018). 

There are two commonly employed strategies for constructing a prediction model: forward selection and backward selection procedures. These procedures are utilized to select a set of predictors that maximize the predictability of the model. Therefore, the predictive variables do not necessarily need to have a causal relationship with the outcome. The selection of predictive variables in the final model is based on their independent predictability and a pre-defined p-value threshold for statistical significance, usually set at 0.05. Consequently, a prediction model may include variables that are causally associated with the outcome, as well as those that are not. 

Furthermore, variables that are causally related to an outcome may not be included in the final model due to complex relationships among the covariates included in the model (MacKinnon, Krull, and Lockwood 2000). For instance, during stepwise selection process, a covariate may be excluded from the model if its association with the outcome is suppressed by another variable (known as a suppressor) that is not included in the model (see Section 1.4.3 for discussion of suppressors). As a result, it is crucial not to interpret the results of a prediction model as providing causal explanations. 

Assessments of prediction involve comparing the observed outcomes with the predicted outcomes. Various techniques are used to assess predictability, including the coefficient of determination (R2 ), penalized likelihood-based measures such as the Akaike information criterion (AIC) and Schwarz criterion (SC), as well as sensitivity, specificity, and receiver operating characteristic (ROC) curves (Allen 1997, Holford 2002). These prediction models can be useful in risk classification, such as distinguishing populations at high risk from those at low risk for heart attacks, and in supporting clinical decision-making, such as the diagnosis of COVID-19. 

## Example 1.1

To illustrate, consider a 5-year cohort study aiming to identify the optimal set of independent variables for predicting the occurrence of the first episode of a heart attack. In this study, a total of seven potential predictors are measured and examined. Figure 1.1 depicts the prediction model. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/66d7563ccb903c5152a4ff02df6f384645e3cd0fbeb4b7b65369a9ee4b5fbfc4.jpg)



FIGURE 1.1



Diagram of a prediction model predicting occurrence of heart attack.


Based on this diagram, an initial prediction model is constructed as follows: 

$$
\operatorname{Log} (\text { risk   of   heart   attack }, R) = \beta_ {0} + \beta_ {1} \times \text { age } + \beta_ {2} \times \text { sex } + \beta_ {3} \times \text { race } + \beta_ {4} \times \text { smoking } \tag {1.1}
$$

$$
+ \beta_ {5} \times \text { alcohol } + \beta_ {6} \times \text { BMI } + \beta_ {7} \times \text { blood }.
$$

After applying either the forward selection or backward selection procedure, the model is simplified to: 

$$
\operatorname{Log} (\text { risk   of   heart   attack }, R) = \beta_ {0} + \beta_ {1} \times \text { age } + \beta_ {2} \times \text { race } + \beta_ {3} \times \text { smoking } + \beta_ {4} \times \text { BMI }. \tag {1.2}
$$

This prediction model provides information about the expected value (or risk) of the outcome (heart attack) based on the available covariate data. It attempts to answer this research question: which individuals are most likely to develop a heart attack? 

It is important to note that the prediction model primarily focuses on the individual associations between each predictor and the outcome, disregarding the relationships among the predictors. The process of fitting a prediction model does not make any assumptions about causality, and it does not support drawing causal inferences. Therefore, prediction models are not recommended for epidemiological studies that specifically aim to establish causal relationships (Robins and Greenland 1986). 

## 1.2.2 Association Models

In contrast to prediction models, association models focus on effect estimation for causal inference and explanation of the etiologic association between an exposure and an outcome. Causal inference refers to the process of drawing conclusions about “cause-andeffect” relationships between variables or events based on observational or experimental data. The aim is to uncover the causal relationship between an independent variable, referred to as the exposure, and a dependent variable, known as the outcome. 

Association models analyze the association between an exposure variable and a specific outcome variable. These models seek to determine how the outcome variable changes as a direct result of altering the exposure variable, such as transitioning from non-exposure to exposure. The objective of association models is to accurately estimate the effect of the exposure on disease occurrence by controlling or adjusting for other variables. To ensure this estimation is both precise and valid, causal inference methods are employed to identify and address confounders, modifiers, and mediators. The most appropriate statistical model is then specified and selected to estimate the effect of the exposure. To achieve an accurate estimate, all other hypothesized associations that may distort the exposureoutcome association must be eliminated or reduced. Additionally, presumed causal mechanisms such as mediation effects and effect modification must be taken into consideration. 

In analytic epidemiology, the exposure variable serves as the central independent variable in association models. These models are typically used to address research questions concerning the causal effect of a specific exposure on a specific outcome, such as the impact of underlying chronic diseases on the risk of COVID-19-related mortality. The effect of an exposure in association models is often expressed as a relative risk, such as risk ratio, incidence rate ratio, hazard ratio, prevalence ratio, or odds ratio. The analysis of an etiologic association between an exposure factor and an outcome involves constructing an association model and applying it to the data to test the association hypothesis. 

The construction of association models relies on subject-matter knowledge (Greenland and Pearce 2015, Hernán et al. 2002). The subject-matter knowledge, or simply, the subject knowledge, is defined to include relevant causal theories (e.g., theories of behavioral changes), biological plausibility, and empirical knowledge derived from previous research on causal relationships. This information illuminates the relations of potential confounders, modifiers, and mediators to the study exposures and outcomes of interest, as well as the relations of study exposures to the outcomes. Unlike prediction models, association models require prior causal knowledge for building a regression model and making causal inferences. 

Similar to prediction models, regression models, particularly generalized linear models (GLMs), are commonly used for analyzing the exposure-outcome associations and making causal inferences. Association models provide a framework for estimating causal effects, controlling for confounding, and assessing effect modification and mediation effects. They enable hypothesis testing and quantification of association measures. To illustrate the use of an association model, we revisit Example 1.1. Unlike the prediction modeling analysis described earlier, the objective of the association modeling analysis using the 5-year cohort data is to estimate the effect of smoking as the exposure factor on the occurrence of the first episode of heart attack as the outcome. 

## Example 1.2

Based on prior subject knowledge, we hypothesize that age, sex, alcohol drinking, and body mass index (BMI) act as confounding variables in the causal pathway from smoking to heart attack, while race serves as a potential modifier that potentially modifies the association between smoking and heart attack. Additionally, based on previous studies, blood types are not considered to play a role in the causal pathway from smoking to heart attack, so this variable will not be included in the association model. Accordingly, we present the following causal diagram, depicting the causal relationships among the variables of interest (Figure 1.2). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/8ef52e46a71b98b8781f51571e9ff0c33be5f32b6d528a4bc8ce621f370a4fe8.jpg)



FIGURE 1.2 Causal diagram depicting the causal relationships among variables of interest.


The association model is expressed as: 

$$
\operatorname{Log} (\text { risk   of   heart   attack }, R) = \beta_ {0} + \beta_ {E} \times \text { smoking } + \beta_ {1} \times \text { age } + \beta_ {3} \times \text { sex } + \beta_ {4} \times \text { race } \tag {1.3}
$$

$$
+ \beta_ {5} \times \text { alcohol } + \beta_ {6} \times \text { BMI } + \beta_ {7} \times \text { smoking } \times \text { race }.
$$

This association model addresses the research question: to what extent does smoking increase the risk of heart attack, and how does this effect differ between individuals of different races? This research question fundamentally differs from the one posed in the prediction model. The association model is applied to the data to estimate the exposure effect of smoking on the risk of a heart attack. The degree of the causal association of interest is represented by the regression coefficient of the exposure variable, $\beta _ { E } ,$ and its corresponding confidence interval. To properly address confounding bias, a sufficient set of confounding variables is included in the regression model. In this example, we assume that race is not a confounding variable but a modifier. If there are substantial evidence to document its confounding effect on the anticipated casual path from smoking to heart attack, it should be adjusted in an association model. 

In summary, the objective of prediction models is to create an accurate model that predicts the likelihood of an outcome using multiple predictors in combination. The selection of the final prediction model is typically based on statistically significant associations, although they may not be causal. On the other hand, association models aim to establish the causal relationship between a specific risk factor and an outcome while controlling for confounding variables selected based on existing knowledge of causal relationships. The inclusion of variables in the association model is guided by causal linkages, rather than statistical significance, in order to minimize confounding bias. 

This book covers the strategies and methods employed in association models and introduces regression analysis techniques for constructing association models using data from various epidemiological study designs. 

## 1.3 Type of Populations in Epidemiologic Studies

Causal inference in epidemiology, focusing on the relationship between exposure and disease outcomes at the population level, heavily relies on the concept of populations (Morgenstern and Thomas 1993). Understanding the distinctions between different types of populations is crucial in designing valid epidemiological studies, conducting data analysis, and making causal inferences. In this book, we distinguish the following types of populations: 

1. Study population (or study sample) 

This refers to the group of subjects on whom observations are made and data is collected for statistical analysis. It is a subset of the source population. A study population is obtained through a sampling process, with the objective of learning about the characteristics of the source population. The study population is randomly sampled from the source population. 

2. Source population (or sampling frame) 

This refers to the group of individuals who are identified based on personal, geographic, or temporal characteristics as eligible to be subjects in the study. The source population is the population from which the study population is sampled. 

3. Base population (or reference population) 

This is the group of individuals who are at risk of developing the disease of interest. If they were to develop the disease, they would become cases in the study (Miettinen 1985). The base population represents the population for which causal inference is sought. A valid estimate of a causal parameter is one that is expected to accurately represent the true value of the parameter in the base population, aside from chance (Morgenstern and Thomas 1993). 

4. Target population 

It refers to the group of individuals to whom the findings of a study can be applied or generalized. This population is defined by the investigator based on the study’s objectives. In most cases, the investigator does not directly observe the target population. Challenges related to generalization may arise when the base population, from which the study population is drawn, differs from the target population. 

In cohort studies and population-based case-control studies, the entire study population consists of individuals who are free of the disease outcome of interest (i.e., at risk) at the start of the study. They are then followed to detect all incident cases or deaths. Therefore, in these study designs, the base population is identical to the study population. The study population is typically randomly sampled from the source population based on pre-defined eligibility criteria. Causal inference can be directly applied to the base population in these two study designs since the study population is the base population. 

However, in non-population-based case-control studies and cross-sectional studies, the investigators are unable to identify the base population from which study cases arise. The study population is sampled, either randomly or non-randomly, from a pre-defined source population. Due to the inability to identify the base population that generates the cases, controls cannot be selected from the same base population. Consequently, making valid causal inferences for a base population becomes challenging for the investigators, and selection bias is an inherent problem in such study designs. 

## 1.4 Confounder and Confounding

Confounders have the potential to distort the association between exposure and outcome, which may result in biased results. This distortion is defined as “confounding.” Confounding represents a form of bias that can make the relationship between exposure and outcome appear stronger or weaker, or even reverse the actual direction. 

## 1.4.1 Counterfactual Theory

The presence of both the exposure variable and confounding variables makes it challenging to disentangle the effect of the exposure from the influence of confounding variables that can distort the relationship between the exposure and the outcome under investigation. Therefore, the identification of confounding variables and the elimination or reduction of their potential bias are key tasks for researchers in observational studies. The counterfactual theory of causation provides a theoretical framework that helps us understand the causes and consequences of confounding and allows us to anticipate, identify, and address confounding bias at both the study design and data analysis stages (Greenland 2000, Morgan and Winship 2015, Naimi and Kaufman 2015). 

According to the counterfactual theory of causation, establishing a causal relationship between an exposure and an outcome involves comparing the potential outcomes under two different exposure conditions. One condition is real and observable, while the other is hypothetical and cannot be directly observed. For instance, if the observed situation involves exposure, the question becomes, “What would the outcome have been if the exposed individuals had not been exposed?” Therefore, an exposure is considered to have a causal effect on an outcome in a specific population only if there is a difference in the occurrence of the outcome between the exposed individuals and the same individuals under a hypothetical scenario where they were not exposed. This comparison is valid because the two contrasting exposure states occurred within the same population, allowing for comparability (in fact, they are identical), and all extraneous factors, including confounding variables, would be identical in these two conditions (Bours 2020). The exposure that individuals do not actually receive is referred to as the counterfactual exposure, while the outcome under this counterfactual exposure condition is known as the counterfactual outcome. 

## Example 1.3

To demonstrate causal inference using the counterfactual framework, let’s consider the estimation of the breast cancer mortality rate that would have been observed if all women in a study population had received mammogram screening for breast cancer compared to if they had not received such screening. In this example, one outcome is observed, while the other is counterfactual and cannot be directly observed. The difference between the outcomes (mortality rate) estimated from the two exposure conditions (observed vs. counterfactual) measures the average causal relationship at the population level. 

Applying the counterfactual framework to define a causal effect in an individual $i ,$ we assume that we assess the effect of an exposure variable $x _ { i }$ (e.g., receiving mammogram screening) compared to non-exposure of $x _ { i }$ on an outcome variable $y _ { i } \ ( \mathrm { e . g . }$ , breast cancer mortality). The outcome variable can be binary or quantitative. Under the counterfactual inference, we assume that at the time of assignment, individual i could have been assigned to both exposure levels $( x _ { i } = 1 \mathrm { o r } x _ { i } = 0 )$ , and the outcome $y _ { i }$ exists under both $x _ { i } = 1$ (denoted as $y _ { i } | \ x _ { i } = 1 )$ and $x _ { i } = 0$ (denoted as yi| $x _ { i } = 0 )$ . A causal effect of exposure level 1 $( x _ { i } = 1 )$ versus exposure level $0 \left( x _ { i } = 0 \right)$ in individual i exists if the outcomes differ under both conditions: $( y _ { i } | x _ { i } = 1 ) \neq ( y _ { i } | x _ { i } = 0 )$ . The magnitude of the effect can be expressed as the causal difference in outcomes between the two exposure levels: $( y _ { i } | x _ { i } = 1 ) - ( y _ { i } | x _ { i } = 0 )$ , or the causal ratio of the outcomes: $( y _ { i } | x _ { i } = 1 ) \ ⁄ ( y _ { i } | x _ { i } = 0 )$ . Obviously, the outcome can only be observed under one condition, not both conditions. If individual i is exposed to $x \ ( x = 1 )$ , the outcome of $y _ { i } | x _ { i } = 0$ is unobservable, and similarly, if individual i is not exposed to $X ( x = 0 )$ , the outcome of $y _ { i } | x _ { i } = 1$ is unobservable. 

To illustrate this theory at the group level, consider the following example. Suppose a total of 500 subjects received a COVID-19 vaccine on May 1, 2021, and 50 of them reported muscle pain within $7$ days following the vaccination (from May 1 to May 7). Both the vaccination event and the muscle pain event are actual occurrences observed in this study population. Now, imagine the same group of the 500 individuals had not received the vaccine (counterfactual condition) before May 8, and 10 individuals reported muscle pain during the same period (counterfactual event). The causal risk difference would be calculated as $( 5 0 / 5 0 0 ^ { \circ } - 1 0 / 5 0 0 ) = ( 0 . 1 - 0 . 0 2 ) = 0 . 0 8$ or $8 \% ,$ and the causal risk ratio would be 5 (0.1/0.02). These measures of exposure effect, such as the risk difference and risk ratio, are free of confounding and accurately represent the causal effect of the exposure (vaccine) on the outcome (muscle pain), given that the two comparison groups (vaccinated vs. counterfactual) are identical and thus comparable. 

However, in practice, once subjects have received the vaccine, their counterfactual condition can no longer be manipulated, and counterfactual events remain unobservable. Hence, within the counterfactual framework, it becomes necessary to identify an observable substitute that mimics the counterfactual condition (usually the unexposed condition), where counterfactual events can be observed. This necessity underscores the importance of an unexposed group in analytic epidemiologic studies. In observational studies, where subjects cannot be randomly assigned to the exposed and unexposed conditions, it proves challenging to find an ideal substitute group that could generate the same counterfactual events as the actually exposed group. Confounding arises when this substitute population does not yield the same outcome that would have been generated in the counterfactual condition. 

To continue with the previous example of the COVID-19 vaccination, if we select another 500 subjects who have not received the COVID-19 vaccine and observe muscle pain within 

7 days (i.e., from May 1 to May 7), the observed risk for muscle pain is 0.04, which deviates from the counterfactual risk of 0.02. It is evident that this substitute population fails to accurately mimic the counterfactual condition, and as a result, confounding occurs. 

## 1.4.2 Manifestation of Confounding

In the context of the counterfactual framework, confounding arises due to the comparison between the exposed population and a substitute population (unexposed), where the substitute population does not represent the “outcome in the exposed population without the exposure” (Pearl 2003). However, there is no direct empirical method to verify the correctness of the comparability assumption that defines confounding. Instead, we attempt to identify and control for empirical manifestations of confounding (Miettinen and Cook 1981, Morgenstern and Thomas 1993). This involves searching for differences in the distribution of extraneous risk factors for the disease between exposure groups in a study population. Such differences could lead to a violation of the comparability assumption, biasing (confounding) the expected estimate of the exposure effect. These extraneous risk factors responsible for confounding are referred to as confounders or confounding variables, and they serve as a means for the identification and control of confounding. 

Confounding exists in the base population from which a study population is sampled. In a study population, a confounder is manifested or observed as an extraneous factor that meets three criteria (Rothman, Greenland, and Lash 2008, Woodward 2014): 

1. It must be associated with the outcome within the reference level of the exposure (i.e., unexposed group). 

2. It must be associated with the exposure among the study population in a cohort study or among subjects in the control group in a case-control study, provided that subjects in the control group represent the base population where cases originate. 

3. It must not be affected by either the exposure or the outcome. 

While this definition offers a practical approach to identify confounding and confounders in a study sample, solely relying on observed associations within a study sample to define confounding variables, without considering the causal relationships that exist in the base population from which the sample is drawn, may lead to bias and misleading conclusions (Miettinen and Cook 1981, VanderWeele and Shpitser 2013). This becomes particularly crucial when discerning temporal relationships that ensure potential confounders are not affected by either the exposure or the outcome. Such temporal sequences, which document a factor preceding exposure and outcome, might not be readily apparent in a study sample. Therefore, subject-matter knowledge about the causal context should always be employed when attempting to identify potential confounders of the exposureoutcome relationship under study (Hernán et al. 2002, Robins and Morgenstern 1987). This knowledge includes information about the relations of potential confounders to the study exposures and diseases, the relations of potential mediators from the exposure to the disease, the relations of modifiers on the causal path from the exposure to the disease, and, most importantly, their etiologic sequence under study. Directed acyclic graphs (DAGs) (Greenland, Pearl, and Robins 1999) provide a useful tool for graphically presenting these relationships and will be discussed in Section 1.6.1. 

## 1.4.3 Positive versus Negative Confounding Effects

Confounding can lead to two types of biased effects in epidemiological studies: positive and negative. Positive confounding occurs when the effect of an exposure on an outcome is overestimated, while negative confounding results in an underestimation of this effect (Mehio-Sibai et al. 2005, Szklo and Nieto 2019). These effects depend on the direction of the associations between the confounder and both the exposure and outcome. Confounders may either amplify (in positive confounding) or diminish (in negative confounding) the observed association, thereby distorting the true relationship between exposure and outcome. Correctly identifying and adjusting for these effects is essential for the accuracy and validity of research conclusions. 

The nature of positive and negative confounding effects can be illustrated through causal diagrams (Figure 1.3). In scenarios where the exposure factor (E) is a risk factor for the outcome (D), diagrams A and B illustrate a positive confounding effect. This effect arises when both the confounder-exposure (C-E) and confounder-outcome (C-D) associations are in the same direction. Positive confounding biases the E-D association away from the null. As a result, the association between E and D is exaggerated if the confounding variable (C) is not properly adjusted. For instance, a study might report an unadjusted risk ratio of 3.25, which could be reduced to 2.56 after accounting for the confounder, indicating that the unadjusted E-D association was overestimated. Conversely, diagrams C and D demonstrate negative confounding effects, where the C-E and C-D associations are in opposite directions, biasing the E-D association toward the null. This means that an unadjusted risk ratio of 1.03 might actually increase to 2.07 upon adjusting for the confounder, revealing that the initial association between E and D was underestimated. 

In cases where the E-D association is negative, indicating that exposure E is a preventive or protective factor, the interpretation shifts. Diagrams A and B would now illustrate negative confounding. Negative confounding biases the E-D association toward the null, so an unadjusted risk ratio of 0.75 might decrease further to 0.45 after adjustment, indicating a larger adjusted preventive effect than the unadjusted. Conversely, diagrams C and D would represent positive confounding effects. Positive confounding biases the E-D association away the null, where an unadjusted risk ratio of 0.55 could increase to 0.85 after adjustment, showing a smaller adjusted preventive effect. In this case, a false spurious preventive effect of E on D is estimated if the confounding variable (C) is not properly adjusted. 

Negative confounding variables that diminish the strength of the association between an risk factor (E) and an outcome (D) are also termed “suppressors” (Tzelgov and Henik 1991). These suppressors can significantly obscure or “suppress” the E-D association (MacKinnon, Krull, and Lockwood 2000). In crude analyses, where suppressors are not accounted for, the E-D association might appear negligible or significantly weaker than it actually is. However, including these suppressors in a regression model often reveals a more strong E-D association. For example, an unadjusted risk ratio of 1.03 might jump to 2.07 upon adjusting for a suppressor (C), unveiling a previously masked association between E and D due to the uncontrolled negative confounding variable. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/e8cb9bc147f3e3120d114c4729cb3b75abed93f288e66b77fd35603f28f172db.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/6049430572356de785da14d76c4cc2fb119a8ba79566dee6fa172b55c08667ee.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/0ed733e06d5bfdede294d92f192df39fcb41271350910e0ce22dc5e02b5387c9.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/1eafc3616055ed5bf40af445443c7a12fe075bb224d816cea6116527eb577e0a.jpg)



FIGURE 1.3 Causal diagrams depicting positive and negative confounding effects.


This suppression effect has implications in statistical analyses, particularly during the selection of independent variables for multivariate analysis (Sun, Shook, and Kay 1996). When binary analysis is used for this purpose, the presence of suppressors can inadvertently lead to the exclusion of important predictors. This occurs because the suppressive influence of these variables can render significant E-D associations weak or invisible in initial binary analyses. Therefore, caution is advised against relying solely on binary analysis for screening potential confounding variables, as it may overlook critical associations caused by suppressors. 

In some extreme cases, confounding may reverse the direction of the association, known as qualitative confounding. For instance, a case-control study on workplace eye injuries in Hong Kong initially found that pre-employment safety training was associated with a higher occurrence of eye injuries (crude odds ratio (cOR) = 2.13, 95% CI: 1.48–3.07) (Yu, Liu, and Hui 2004). However, after adjusting for confounding variables, the association reversed, indicating that those who received training were less likely to have eye injuries (adjusted Odds Ratio (aOR) = 0.53, 95% CI: 0.28–0.99). This shift in direction could be attributed to significant differences in the work-related exposure distributions between those who received safety training and those who did not. Specifically, those who were injured were much more likely to be employed in higher-risk settings, which were typically associated with occupation-related exposures. Consequently, these individuals were more frequently provided with pre-employment safety training. 

## 1.4.4 Control of Confounding at Two Stages

Confounding poses significant challenges to causal inference in observational studies. Therefore, one of the crucial components of observational studies is the identification and reduction of confounding effects. To obtain valid results, epidemiologists deploy various methods at different stages to control for confounding. In observational studies, confounding can be addressed and controlled in two stages: the study design stage and the data analysis stage. 

In the study design stage, efforts are made to restrict the eligibility of subjects based on potential confounders. Matching is a common technique employed in observational studies to control for confounders. Investigators restrict the eligibility of comparison subjects by making them similar or comparable to index subjects in terms of one or more matching variables (confounders). However, in many cases, restriction alone is insufficient to completely eliminate confounding in observational studies (for further details, refer to Chapter 6). Additionally, there are instances where matching is not feasible. 

In the second stage, analytic adjustment methods are utilized to reduce confounding bias in the assessment of the exposure-outcome association. The counterfactual theory guides the use of multiple regression, stratification, standardization, and propensityscore methods to control for confounding. These analytical methods are utilized to adjust for an imbalanced distribution of confounders between exposure groups, ensuring that such a distribution is balanced between the exposed and unexposed groups. This adjustment eliminates or reduces the association between the exposure variable and confounders and ensures comparability between the two groups. For instance, when a Poisson regression model is used to adjust for three confounding variables, the model’s goal is to equalize or balance the joint distribution of these three variables between the exposed and unexposed groups. It is important to note that analytical methods can only adjust for confounding variables that are accurately measured, and the selection of these variables should be guided by presumed causal relationships depicted in a causal diagram (see Section 1.7.3 for more information about the meaning of statistical adjustment). 

This textbook specializes in the utilization of regression model techniques tailored for the analysis of data collected from various epidemiological studies. Its core emphasis lies in employing these techniques to control for confounding bias and estimate effect modifications. 

## 1.5 Overview of Regression Models

In this section, we provide a brief overview of regression models, with a focus on the estimation of exposure effects as an example. More comprehensive information and analytical approaches can be found in the subsequent chapters, which delve into modeling techniques specific to each study design. In this book, a “model“ is defined as a specific regression model, such as the Poisson regression model or Cox proportional hazard model. “Modeling“ refers to the process of utilizing data and statistical models to explain etiological relationships and make causal inferences. 

## 1.5.1 Binary and Multivariable Regression

Regression analysis involves examining the relationship between a variable Y and a variable X, describing how the average value of Y changes across different subgroups of the population defined by X. This relationship is expressed as E(Y|X = x), which represents the expected average of Y when X takes on the specific value x. The $^ { \prime \prime } E ^ { \prime \prime }$ denotes the expected population mean. In a binary linear risk regression model with a single regressor x, the relationship can be represented as: 

$$
E (Y | X = x) = \beta_ {0} + \beta_ {x} x \tag {1.4}
$$

This model quantifies the average risk for subpopulations defined by different levels of x in a linear and additive manner. $\beta _ { 0 }$ represents the average risk when x = 0, while $\beta _ { x }$ represents the difference in risk between the subpopulation defined by X = x and the subpopulation defined by $X = x + 1$ . The linearity assumption implies that a one-unit increase in x leads to the same change in risk $( \beta _ { x } )$ . For example, a linear risk regression model can be used to estimate the average risk of stroke for a one-unit increase in pulse pressure (systolic blood pressure minus diastolic pressure). The model assumes that the risk increases by the same amount for each one-unit increase in pulse pressure, regardless of the starting value. However, linear risk models may yield risk values that are impossible, such as less than 0 or greater than 1. 

In epidemiological studies, exponential risk regression models are commonly used to estimate risks or rates and the multiplicative association between exposure and outcome. The binary exponential risk model can be expressed as: 

$$
E (Y \mid X = x) = \operatorname * {P r} (Y \mid X = x) = \exp (\beta_ {0} + \beta_ {x} x) \tag {1.5}
$$

The estimated average risk is always positive due to the exponential function. This model can be transformed into a log-linear risk model: 

$$
\operatorname{Log} (\text { risk }, R) = \log \left[ \operatorname * {P r} (Y | X = x) \right] = \beta_ {0} + \beta_ {x} x \tag {1.6}
$$

The coefficient $\beta _ { x }$ estimated from this multiplicative model represents the log risk ratio comparing the subpopulation defined by $X = x + 1$ to the subpopulation defined by $X = x .$ Similarly, $\beta _ { 0 }$ represents the log risk for the subpopulation with $X = 0 ,$ assuming X can take on the value of zero. Exponential risk models face a technical challenge where certain combinations of $\beta _ { 0 }$ and $\beta _ { 1 }$ can result in risk values exceeding 1, which is theoretically impossible. Nevertheless, this concern should not be of practical importance if all the estimated risks and their associated confidence limits consistently remain below 1 (Greenland 2008b). 

The concept of binary regression described above can be extended to multivariable or multiple regression, which involves two or more regressors. Regressors can include confounders, effect modifiers, or other variables of interest. For instance, the following exponential risk model includes an exposure variable $x ,$ two confounding variables c and $z ,$ and one modifier m: 

$$
\operatorname{Log} (\text { risk }, R) = \log [ \operatorname * {P r} (Y | X = x) ] = \beta_ {0} + \beta_ {x} x + \beta_ {m} m + \beta_ {x m} x m + \beta_ {c} c + \beta_ {z} z \tag {1.7}
$$

This model enables the assessment of effect modification by the modifier variable m while controlling for confounding variables c and z. 

In addition to modeling average risks in epidemiologic studies, this book provides detailed explanations of modeling techniques for estimating incidence rates, hazard rates, odds, as well as resulting rate ratios, hazard ratios, and odds ratios. 

## 1.5.2 Causation and Association

Causation and association are fundamentally different concepts. Causal relationships imply a direction: one variable directly affects another. In contrast, associations are nondirectional or symmetric; they simply indicate a relationship between variables without specifying a cause-effect direction. While associations can be directly observed in a study sample, causation is inferred rather than directly observed. Typically, causation implies association, but association does not necessarily imply causation. For instance, if X causes Y, an association between X and Y is expected. However, in a sample where X and Y are observed without error, the relationship might be influenced by confounding variables or selection bias. These factors can lead to an apparent association between X and Y that does not stem from a causal relationship. Thus, unlike causation, association is symmetric in time and non-directional. This means that an association between X and Y could suggest Y causing X, rather than X causing Y. 

Regression models are commonly used to quantify the strength of the association between an exposure and an outcome and to make causal inferences. However, it is important to recognize that these models do not inherently account for the causal structure of the data. In other words, when a regression model is fitted, it does not operate under assumptions of causality, nor does it inherently provide conclusive causal insights. The interpretation of regression outputs as indicative of causality requires additional robust assumptions. One key assumption is the absence of confounding in the causal structure, as can be depicted in graphical causal models (as detailed in Section 1.6.1). Another important assumption is the absence of selection bias and information bias. The interpretation of a regression coefficient as a causal effect is contingent upon the model fulfilling these causal structure assumptions. 

Consequently, to draw causal conclusions from observational studies, there needs to be substantial evidence supporting a true causal effect. This often involves satisfying the criteria laid out in established causality models, such as the causal conditions outlined in Rothman’s causality model (VanderWeele and Rothman 2021). It is essential to approach the results of regression analyses with a critical understanding of these underlying assumptions and limitations, especially when attempting to establish causality. 

The modeling process in regression does not inherently incorporate assumptions about the temporal sequence or causal relationships between the outcome variable (Y) and the exposure variables (X). Consequently, the regression coefficients estimated from them should be interpreted as measures of association rather than causal effects. To align the measure of association more closely with the measure of causal effect, it is vital to identify and appropriately control for confounding variables which distort the estimated association between an exposure and an outcome in the regression model. However, identifying and controlling all potential confounders in observational studies is challenging. The presence of uncontrolled confounders can significantly influence the interpretation of regression results, emphasizing the need for careful consideration of potential confounders. 

Thus, while observational studies allow us to observe associations between exposures and outcomes, they generally do not enable us to definitively establish causal relationships based on a single study. It is important to note that throughout this book, the term “exposure effect“ is used for simplicity. However, it more accurately refers to the “exposure association” observed between the variables of interest. This distinction highlights the limitations of observational studies in determining causal effects conclusively. 

## 1.5.3 Regression Models in Analytic Epidemiology

Regression models play a key role in analytic epidemiology as they enable researchers to analyze epidemiological data and quantify the associations between exposures and outcomes. These models are used to estimate exposure effects, test causal hypotheses, and adjust for confounding variables in epidemiologic research. By employing regression models, researchers can control for confounding, evaluate effect modification, and estimate measures of association. This allows for a deeper understanding of the factors contributing to disease occurrence and the development of evidence-based public health interventions. 

In epidemiological research, exposure effects can be estimated using either additive models or multiplicative models. Additive models are commonly used when investigating risk differences or population-attributable fractions, while multiplicative models estimate relative effects such as risk ratios, hazard ratios, or odds ratios. The choice of modeling paradigm depends on the research question, data characteristics, and desired interpretation of effect measures. 

Regression models offer several advantages over simpler analytic approaches, such as crude measures of association or stratified analyses. They allow for the simultaneous consideration of multiple variables, capturing their joint effects on the outcome. Additionally, regression models provide estimates of uncertainty through confidence intervals or compatibility intervals. Moreover, regression models can accommodate various types of outcome variables, including continuous, binary, count, and time-to-event outcomes, making them versatile tools in epidemiologic analysis. 

However, it is important to note that using regression methods correctly and effectively requires a strong foundation in epidemiological principles and a careful consideration of the data features specific to each study design. Success in utilizing modeling to assess exposure-outcome associations relies on understanding the underlying causal structures, the characteristics of the data collected in a particular study design, and the appropriate selection of regression models. This book covers these aspects to enhance the understanding and application of regression models in epidemiologic analysis. 

## 1.5.4 General Steps in Association Modeling Process

The process of association modeling translates a causal theoretical model into a regression model. The process involves the following general steps, and each step is illustrated using an example. Suppose the objective of a hypothetical cohort study is to investigate the association between social support received from network peers and adherence to preexposure prophylaxis (PrEP) use among men who have sex with men (MSM). 

Step one: Use subject knowledge to develop and justify causal hypotheses 

Subject knowledge is used to formulate a precise and specific research question that reflects causal hypotheses. Based on our understanding of existing subject knowledge, we formulate the following research question: will MSM who receive higher social support from their network peers be more likely to adhere to PrEP within the next 5 years compared to MSM who receive little or no support? Dictated by this question, four hypotheses are developed based on our subject knowledge: 

$\operatorname { H } _ { 1 } { \mathrm { : } }$ MSM who receive higher social support from their network peers are more likely to adhere to PrEP within the next 5 years compared to MSM who receive little or no support. 

$\operatorname { H } _ { 2 } { \mathrm { : } }$ The association in $\mathrm { H } _ { 1 }$ is confounded by both HIV-related stigma and education. 

$\operatorname { H } _ { 3 } { \mathrm { : } }$ Subjective norms about adherence to PrEP use mediate the causal pathway in $\mathrm { H } _ { 1 }$ . 

$\operatorname { H } _ { 4 } { \mathrm { : } }$ Race (white vs. nonwhite) modifies the causal association in $\mathrm { H } _ { 1 }$ 

Step two: Graph the causal structure of the hypothesized relations in a causal diagram 

Based on the four hypotheses, a causal diagram is constructed, as shown in Figure 1.4. This diagram represents the presumed causal and temporal relationships between the exposure and the outcome, along with additional variables that may affect the exposure-outcome association. The diagram serves as the basis for building the regression model. In other words, the diagram provides the causal directions for selecting the dependent and independent variables in a regression model, and the regression model quantifies the degree of association between the exposure and outcome while adjusting for confounding variables such as HIV stigma and education. 

Step three: Measure all variables represented in the above diagram in an empirical study 

To accurately estimate the exposure effect, all variables depicted in the diagram need to be accurately measured. However, in many cases, empirical data have already been collected for analysis, such as secondary data analysis. In such cases, we select the relevant variables of interest from the dataset. It is possible that some of the variables listed in the diagram were not measured or were measured inadequately. Any resulting information biases must be addressed before proceeding with the modeling analysis. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/24bbc71085ec12d72cbfaf1f010b5dae111eb888f184d680b3b8639ad86bc0d1.jpg)



FIGURE 1.4 Causal diagram depicting the hypothesized causal relationships.


## Step four: Perform univariate statistics and bivariate analysis

As prerequisites for multivariate modeling analysis, thoroughly conducting both univariate and bivariate analysis is essential for investigators and analysts to gain a comprehensive understanding of their data and variables of interest. Univariate statistical analysis is initiated to explore the intricate structure of each variable individually, including the exposure variable, outcome variable, confounding variables, as well as mediators and modifiers. This analysis carefully examines the distributions of variables, identifying any inconsistencies or irregularities such as implausible values, obvious deviations from the normal distribution for continuous variables, unexpected gaps, missing values, or outliers. 

Following the univariate analysis, the analytical focus shifts to bivariate analysis, which examines the relationships among the outcome, exposure, and all other covariates, including confounding variables, mediators, or effect modifiers. This examination plays a crucial role in identifying potential associations between each covariate and the outcome variable, revealing complex relational structures within the dataset, such as the presence of heterogeneity or homogeneity of effect measures across strata. Bivariate analysis also assists in transforming covariates into more appropriate functional forms if necessary, such as reentering, rescaling, and categorization. For example, univariate analysis can be employed to examine the distribution of social support and estimate its mean and standard deviation (SD) if it follows a normal distribution. In the bivariate analysis, we examine the distribution of social support among subjects who adhere to PrEP and those who do not. We also assess whether the cell numbers in a cross-tabulation of exposure and outcome are adequate for more complex statistical analyses, such as largesample-based modeling. It is important to note that the primary objective of bivariate analysis is not to draw inferences, so it should not incorporate statistical tests, such as t-test or Chi-square test. 

Both univariate and bivariate analyses act as evaluative tools, allowing for the assessment of data quality and the identification of potential issues such as data sparsity or missing data. The results obtained from these analyses not only provide the foundation for subsequent modeling analyses but also offer valuable insights to guide the selection of the most appropriate multivariate regression model, including the selection of appropriate forms of variables. Through this iterative process, a strong foundation is established for the multivariate modeling analysis, ensuring the production of robust and reliable results. 

## Step five: Proceed with the modeling process for causal inference

In this step, we use the measured variables to conduct the statistical modeling process, with guidance from the causal diagram to inform model selection. The selected model will be used to test the presumed hypotheses represented in the causal diagram and quantify the exposure effect of social support on adherence in this example. The focus of modeling is on minimizing bias to obtain an accurate estimate of the exposure effect. To correctly test the hypotheses and estimate the exposure effect, a proper model must be selected and well-specified (see Section 1.6). Throughout the modeling process, it is essential to meticulously scrutinize the assumptions associated with the chosen model, and if the analyzed data fails to align with these assumptions, it becomes imperative to explore alternative models. In this example, significance-based statistical tests cannot be used to test H since confounding is not a random error but a systematic error (see Section 1.7). Confounders are identified based on subject knowledge in conjunction with evidence of an association between HIV stigma and social support, as well as adherence to PrEP in the study sample. These confounders should be adjusted for in the regression model. 

## Step six: Present and interpret the results of the multiple regression analysis

This step involves interpreting the results of the multiple regression analysis and effectively communicating these findings to the intended audience. The analysis may produce several statistics, including coefficients for each independent variable, standard errors, confidence intervals, and a p-value for each hypothesis test. The coefficients need to be transformed into epidemiologic measures such as risk difference, risk ratios, rate ratios, rate difference, and their confidence or comparability intervals (see Section 1.5.5). The interpretation of these values and confidence intervals should align with epidemiologic principles. 

The findings should be presented in a clear, concise manner, ideally supplemented by easily understood visualizations like graphs or tables. Discussing these results within the context of the research question is critical, highlighting their implications, limitations, and potential avenues for future research. Emphasizing the practical significance and realworld applications of the findings can also help make the analysis more relatable and understandable to those unfamiliar with statistics. Detailed information on interpretation and reporting can be found in Section 1.11. 

Successful completion of the modeling process requires a good understanding of subject knowledge (Steps 1 and 2), epidemiologic principles (Steps 1, 3, and 6), and skills in applying statistical models to analyze data for testing causal hypotheses of the causal structures (Steps 4 and 5). In the following chapters, this book offers practical examples showcasing the application of these six steps in data analysis. 

## 1.5.5 p-Value and Significance

The p-value represents the probability that a calculated statistic derived from the data, such as a t-statistic or Chi-square statistic, will be greater (or less) than or equal to its observed value, assuming three key conditions: (1) the correctness of the tested hypothesis, (2) the absence of any biases in the data collection or analysis processes, and (3) validity of all other assumptions about the test or the model. It is important to note that a p-value is a probability statement about the observed sample within the context of a specific hypothesis $\mathrm { ( H } _ { 0 } ) ,$ , rather than a statement about the hypothesis itself. 


TABLE 1.2 Relation Between p-Value and Sample Size


<table><tr><td rowspan="2"></td><td colspan="3">Sample Size = 100</td><td colspan="3">Sample Size = 300</td></tr><tr><td colspan="3">Disease</td><td colspan="3">Disease</td></tr><tr><td></td><td>Yes</td><td>No</td><td>Total</td><td>Yes</td><td>No</td><td>Total</td></tr><tr><td>Exposed</td><td>8</td><td>42</td><td>50</td><td>24</td><td>126</td><td>150</td></tr><tr><td>Unexposed</td><td>4</td><td>46</td><td>50</td><td>12</td><td>138</td><td>150</td></tr><tr><td></td><td colspan="3">RR = 2; 95% CI: 0.64–6.22</td><td colspan="3">RR = 2; 95% CI:1.04–3.85</td></tr><tr><td></td><td colspan="3">Chi-square = 1.5, p = 0.22</td><td colspan="3">Chi-square = 4.53, p = 0.03</td></tr></table>

To illustrate this concept, let’s consider an example in which we investigate whether vitamin D deficiency is associated with weight gain. In this scenario, we use a t-test to statistically assess the difference in mean weight between two groups: one with vitamin D deficiency and the other with adequate vitamin D level. Suppose we obtain a t-value of 5 and a corresponding p-value of 0.04. The p-value, in this context, represents the probability (4%) that a t-value as extreme (either greater or less) as the observed one $( t = 5 )$ could arise from a random sample if vitamin D deficiency had no effect on the mean weight, assuming all other test assumptions are met. It’s important to note that the p-value of 0.04 does not imply that the null hypothesis $\mathrm { ( H ) } \mathrm { : }$ both comparison groups have equal mean weight) has a probability of only 0.04. 

Importantly, a p-value is only a measure of the consistency or compatibility of the tested hypothesis with the observations, and should not be used to determine whether an association exists or not. Thus, the statement, “Because the p-value is larger than 0.05, there is no association,” should not be used (Greenland et al. 2016). Regrettably, this statement is frequently articulated, either explicitly or implicitly, in students’ presentations and investigators’ reports. It’s important to note that the p-value does not provide any information about the magnitude of an association between an exposure and an outcome, and it is confounded by the sample size. As depicted in Table 1.2, even though the risk and risk ratio remain constant between two studies, the p-value in the study of 300 subjects is considerably smaller (and thus “statistically significant”) than that in the study with 100 subjects (which is “not statistically significant”). As shown here, p-values refer to the size of the test statistics, which are the values of the two Chi-squares in this example (1.5 and 4.53), rather than indicating the strength or size of the estimated associations, which are the RRs (2 in each case). 

Hence, the conventional practice of categorizing p-values into significant and nonsignificant groups, typically using a threshold alpha level of 0.05, has faced criticism and is now advised to be refrained from. 

## 1.5.6 Confidence Interval and Compatibility Interval

In association model analysis, it is recommended to use the point estimate of the exposure effect, such as the risk ratio or risk difference, complemented by its confidence interval (CI) or compatibility interval (Greenland, Mansournia, and Joffe 2022). While the compatibility interval is recommended to be used in data analysis, it is particularly useful when a study yields non-statistically significant results. A critical question in such a study is whether the lack of statistical significance is due to a genuine absence of difference between the exposed and unexposed, or if it results from insufficient statistical power (or random error). A careful examination and interpretation of confidence intervals as compatibility intervals can aid in interpreting non-significant findings across all study designs (Hawkins and Samuels 2021). Although the 95% confidence interval is renamed as the 95% compatibility interval, their interpretations differ. In fact, a confidence interval does not encompass “confident values” from the study under analysis but rather values that are compatible with the data. To maintain consistency with tradition, this book will use the two terms interchangeably. 

A 95% compatibility interval encompasses a range of potential effect sizes for the treatment or exposure effect (such as risk ratio, rate ratio, risk difference, or rate difference) associated with a p-value greater than 0.05. Under the model employed to compute the interval and its related statistical assumptions, the effect sizes within this interval are compatible with the data as per their respective p-values. Nevertheless, it is important to note that not all values within the interval demonstrate an equal level of compatibility with the data. The point estimate is the most compatible, and values proximal to it are more compatible than those nearer to the interval’s limits (Amrhein, Greenland, and McShane 2019). This interval indicates that if a null hypothesis of no exposure effect yields a p-value > 0.05 and is thereby included within the interval, this inclusion only suggests that it is one among numerous effect sizes that are reasonably compatible with our data when applying a 0.05 cutoff (Rafi and Greenland 2020). 

For instance, consider a well-designed and well-executed retrospective cohort study that investigates whether chronic kidney disease is a risk factor for COVID-19 in an older study population aged 60 years or older. After adjusting for known confounding variables in a Poisson regression model, the risk ratio of COVID-19 for subjects with kidney disease versus those without is estimated to be 1.75 with a 95% compatibility interval of 0.96–2.55. This interval includes all risk ratios (0.96–2.55) with a p-value exceeding 0.05 that are compatible with the data. The estimated risk ratio (RR) of 1.75 is the most compatible with the data, with the compatibility decreasing gradually as the RRs deviate further from this point estimate. Since the non-effect risk ratio of 1.00 is far from the point estimate (1.75) and closer to the lower limit (0.96), it is less compatible with the data. 

According to this 95% compatibility interval, the risk may decrease by up to 4% ((1−0.96) ×100%), or increase by as much as 155% ((2.55−1) × 100%). Given that the majority of the RR values within this interval suggest an increased risk, we cannot dismiss the possibility of an exposure effect on the outcome. A thoughtful and informative interpretation of these findings might be written as follows: “Our study estimates a risk ratio of 1.75, indicating a 75% increase in COVID-19 risk among older individuals with chronic kidney disease compared to those without. This suggests a potential positive association between chronic kidney disease and COVID-19 risk. However, our data allows for a range of risk changes from a marginal negative association (indicated by a slight 4% decrease) to a substantial positive association (reflected by a considerable 155% increase). This range is reasonably comparable with our data.” 

Alternatively, a simpler interpretation can be provided as follows: “The estimated risk ratio of 1.75 estimated from our study suggests a 75% increase in COVID-19 risk among older individuals with chronic kidney disease relative to those without, but the magnitude of increase is not precisely estimated (95% CI: 0.96–2.55).” 

The two interpretations carefully explain the point estimate and its compatibility interval, while thoughtfully acknowledging its uncertainty and imprecision, thereby preventing the investigators from making misleading claims of “no association.” It’s important to note that the accuracy of the interpretations relies on the assumption that the Poisson model is correctly used and there is no bias present in the data. 

For a study to indicate the absence of an exposure effect, two key conditions must be met: the upper limit of the comparability interval should closely approach the null value, and the statistical model must be correctly specified (Rothman and Lash 2021). For instance, consider a study that yields a risk ratio (RR) of 1.03, with a 95% comparability interval ranging from 0.98 to 1.11. In this scenario, strong evidence of an exposure effect on the occurrence of an outcome is lacking because the upper limit is in close proximity to the null value of 1. Similarly, if a study produces an RR of 1.04, accompanied by a 95% comparability interval of 1.04–1.12, it may not signify a meaningful association between the exposure and the outcome, even though it achieves statistical significance at an alpha level of 0.05. 

Nevertheless, the p-value remains a valuable metric in data analysis, serving as an indicator of how compatible a given hypothesis or model is with the observed data. This concept can be further elucidated by viewing the confidence interval as a “compatibility interval,” as previously described. This compatibility interval highlights effect sizes that are most compatible with the data, as determined by their respective p-values. These p-values are calculated under the model employed to compute the interval (Amrhein, Trafimow, and Greenland 2019, Greenland 2019). 

## 1.6 Model Specification in Association Models

A regression model is a theoretical or mathematical statement about the causal relationship between one or more independent variables and a dependent variable (Allen 1997). Model specification refers to the process of constructing an appropriate regression model that includes carefully selected variables. The goal of model specification is to accurately specify a model that can validly estimate the association between the exposure and the outcome. The specification of a regression model should be primarily driven by subject knowledge in conjunction with the available data. In addition to the outcome and exposure variables that must be included in the model, other variables such as potential confounders, effect modifiers, or mediators may also be incorporated depending on the research objectives. Through proper model specification, researchers can construct a model that captures the causal relationships among covariates and accurately estimates the strength of the exposure-outcome association. 

The estimates of the model parameters and their interpretation depend on the correct specification of the model. If a regression model is misspecified, the validity of the modeling analysis will be compromised. Model misspecification can occur in several ways: (1) inclusion of variables that are theoretically irrelevant to the causal path from the exposure variable to the outcome variable, (2) exclusion of an important variable that is theoretically relevant to the causal path, (3) misspecification of the functional form of one or more variables, and (4) misspecification of the regression model itself. All of these misspecifications can lead to estimation and interpretation problems. Therefore, the success of association model specification depends on three crucial aspects: the selection of variables, the selection of appropriate functional forms for the variables, and the selection of an appropriate regression model. 

## 1.6.1 Selection of Variables Based on Causal Diagrams

As mentioned previously, there are two main steps in using an association model to analyze the exposure-outcome association: constructing an association model and applying it to data collected from a study. The selection of relevant covariates is a crucial step in the model specification as it forms the foundation for measuring the strength of the exposureoutcome association and testing for causal inference by addressing interaction effects and confounding biases. 

In analytic epidemiologic studies, while the outcome and exposure variables are typically well-defined in the conceptualization of a research project, selecting additional covariates can present challenges. The guiding principle for selecting covariates is based on their potential roles on the causal path from the exposure to the outcome, such as mediation, modification, or confounding. Covariates that have no potential role on the causal path should be excluded from the model as their inclusion would introduce bias and lead to unreliable and unstable estimates with large standard errors of the estimated regression coefficients. Similarly, variables that are mediators or are caused by the outcome should not be included in the model, as the inclusion of a mediator in a model would also lead to biased estimates of the exposure-outcome relationship if the goal is to estimate the total exposure effect rather than the direct effect of an exposure (VanderWeele 2016). 

As mentioned before, one approach to identifying the potential roles of covariates on the causal path from the exposure as a risk factor to the occurrence of an outcome is to evaluate their clinical or biological plausibility by conducting a review of relevant literature and creating a causal diagram that illustrates possible causal relationships (Hernán et al. 2002). Additionally, in social and behavioral epidemiology research, models or theories of social or behavioral changes can be used to identify the roles of covariates in causal structures, such as the potential causal relationships presented in the Theory of Planned Behavior (Ajzen 1991) and the model of Information-Motivation-Behavioral Skills (Fisher, Fisher, and Shuper 2009). 

Causal diagrams, such as directed acyclic graphs (DAGs), are commonly employed in epidemiologic research to visually depict the causal structures involving confounders, modifiers, and mediators. These diagrams graphically convey theory-driven or contextdriven assumptions about the roles of variables along the causal path from exposure to outcome, facilitating model specification by helping researchers select relevant variables based on their theoretical relevance and potential causal links (Greenland, Pearl, and Robins 1999). DAGs offer graphical insights into variable roles within presumed causal structures, aiding in the visualization of covariate relationships and informing decisions about data collection and variable inclusion or exclusion in regression analyses. The subsequent sections provide a concise introduction to DAGs, outlining their role in presenting causal structures and serving as a strategy for model specification. For more indepth information on DAGs, consult other sources (Digitale, Martin, and Glymour 2022, Glymour and Greenland 2008). 

A DAG uses nodes and arrows to depict the presumed or hypothesized causal structures of covariates that play a role on the pathway from the exposure factor to the occurrence of an outcome in the base population from which the study sample is drawn (Figure 1.5). Variables of interest are represented by nodes, and the direction of the suspected relationships is indicated by arrows connecting the nodes. An arrow starting from one variable (e.g., X) and ending at another variable (e.g., Y) indicates that X is assumed to cause Y or that X has a causal effect on Y. The absence of an arrow connection implies no effect between the variables (e.g., between L and M). The term “acyclic” means that there are no feedback loops between two nodes (e.g., X and M). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/8440b4d42c097aa1640e47590689fd02dab4a1d215d5c253bc8b4179b6860e25.jpg)



FIGURE 1.5 Causal structures in a directed acyclic graph.


A DAG visually represents the causal structures in a non-parametric nature, capturing the presumed causal relationships regardless of the form of variables, the type of data, or the analytical methods used in data analysis. Ideally, a DAG should include all relevant variables, whether measured or unmeasured, within the causal structures of a study. The presumed causal relationships depicted in the DAG structures can be assessed and verified using the available data, but it is possible that one or more causal relationships may not be observed in the empirical data being analyzed (Lipsky and Greenland 2022). 

## 1. Causal paths

Causal paths illustrate the specific causal mechanisms or pathways through which the exposure causes the outcome. They represent the intended or hypothesized causal relationships. In this causal structure (Figure 1.5), there are two causal paths linking the exposure (X) and the outcome (Y): 

a. X Y→  and 

b. ${ \mathrm { X } } \to { \mathrm { M } } \to { \mathrm { Y } } .$ 

In this DAG, the exposure causes the outcome through two causal mechanisms: a direct effect (X → Y) and an indirect effect (X → M → Y). The indirect mechanism involves changes in the exposure variable leading to changes in intermediate variables (M), which, in turn, lead to changes in the outcome variable (Y). Due to the mediation mechanism, the total effect of X on Y can be decomposed into a direct effect and an indirect effect (MacKinnon 2012). Nevertheless, obtaining accurate estimates of these direct and indirect effects mainly relies on the assumptions of the absence of confounding (Richiardi, Bellocco, and Zugna 2013), Kaufman, Maclehose, and Kaufman 2004. 

The goal of data analysis is to accurately estimate these two effects by isolating the causal paths from the non-causal paths and blocking the non-causal paths that may confound the X-Y association, either directly or indirectly. 

## 2. Non-causal paths

Non-causal paths from the exposure to the outcome represent associations between variables that are not directly caused by the exposure but are instead influenced by other variables, including confounders and colliders. These paths do not represent the intended causal relationship between the exposure and outcome but can create an association or correlation between them due to the presence of other variables. The DAG in Figure 1.5 has five non-causal paths linking X to Y: 

a. ${ \cal X } \left. { \cal C } \right. \Upsilon ,$ 

b. ${ \cal X } \gets { \cal C } \gets { \bf U } \to { \sf Y } ,$ 

c. ${ \tt X } \gets { \tt C } \gets { \tt U } \to { \tt M } \to { \tt Y } ,$ 

d. $\mathrm { X \to M  U \to Y , a n d }$ 

e. ${ \mathrm { X } }  { \mathrm { L } }  { \mathrm { H } }  { \mathrm { Y } } .$ 

Paths a and b confound the total effect of X on Y, while paths c and d confound the direct and indirect effects of X on Y. However, path e does not confound the effect of X on Y because H serves as a collider on this path. To obtain unbiased effect estimates, it is necessary to ensure that the non-causal paths linking the exposure and outcome do not transmit associations and influence the observed effect; this is referred to as “blocking” a path. 

## 3. Confounder

A confounder is a variable, denoted as C, that acts as a common cause of both the exposure variable, E, and the outcome variable, Y (Figure 1.6). This relationship creates a backdoor path from E to Y through C (E←C→Y). A backdoor path is a pathway where the initial line has an arrow pointing toward the exposure variable, E (Pearl 1995). Associations transmitted through a backdoor path introduce confounding bias, with C being the confounding variable in this case. C introduces bias in the observed association between E and Y. To accurately estimate the association between E and Y, C must be adjusted for in a regression model. 

According to the DAG shown in Figure 1.5, there are two confounded paths: X←C→Y and X←C←U→Y, when estimating the total effect of X on Y. In the first path, there are two arrows originating from C, one pointing toward the exposure variable X and the other toward Y. Hence, in this causal structure, C acts as a common cause or parent of both X and Y. By definition, C confounds the association between X and Y. In the second path, an unmeasured variable U also confounds the causal path from X to Y as it directly causes Y and indirectly causes X through C. To address confounding, the confounded paths can be “blocked” by employing matching during the design stage and stratification or regression modeling during the analytical stage. 

The term “blocked“ means that the confounded paths are severed through stratification, conditioning, or matching on confounders, preventing the flow of information through C and/or U in the diagram. Since U only affects X through C, controlling for C will block the two confounded paths (Figure 1.5). Consequently, even though U is unmeasured and cannot be controlled in a regression model, controlling for the measured variable C can eliminate or reduce the confounding effects caused by both C and U, enabling a proper estimation of the total effect of 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/a22ff7e3c80f041a44355a5816359c8bf48df4c146b94236d4c4a826983f5def.jpg)



FIGURE 1.6



Diagram of confounding.


X on Y. However, both the direct and indirect effects of X and Y remain confounded by U. Statistical methods such as regression or stratification can be employed to estimate the association between the exposure and outcome by conditioning on or adjusting for the confounding variable. Conditioning on a confounder blocks the backdoor path formed by the confounder, thereby eliminating it as a source of bias. 

## 4. Collider

In a causal structure, a variable is referred to as a collider if it is caused by at least two other variables. A collider itself does not introduce bias in the observed association between X and Y. However, when it is adjusted for in a model, the association between X and Y becomes biased (Greenland and Brumback 2002). For the sake of simplicity and didactic purposes, let’s assume that poor quality of life (QOL) is determined by two factors: suffering from chronic obstructive pulmonary disease (COPD) and receiving low support from a retirement pension (pension). The QOL variable acts as a collider on the path that follows a parent (COPD)-child (QOL)-parent (pension) sequence (Figure 1.7). QOL blocks the path from COPD to pension and does not confound the association between COPD and pension. However, if QOL is adjusted in a regression model, the blocked path becomes open, and the adjustment leads to a spurious or biased association between COPD and pension, resulting in collider bias. When the analysis is restricted to subjects with poor QOL, they either suffer from COPD or have low pension support. In this case, a negative spurious association is created between COPD and pension. 

Identifying colliders has significant implications in regression analysis. In Figure 1.5, the two non-causal paths, X←L→H←Y and X→M←U→Y, do not confound the total effect of X on Y because M and H act as colliders, blocking the two non-causal paths. When conditioning on or adjusting for them in a regression model, the blocked paths become open, resulting in collider bias. For instance, to estimate the direct effect of X on Y, a regression model needs to include the mediator M. Since M is a collider with two parents (X and U), adjusting for M creates a spurious association between X and U. Similarly, adjusting for H in a regression would create an association between L and Y, making L a confounding variable on the causal path from X to Y. 

Therefore, it is important to differentiate between confounders and colliders, as methods used to control for confounding can introduce bias when applied to colliders. Identifying colliders requires a knowledge-based understanding of potential causal structures, as temporal sequences are involved and cannot be determined solely through statistical methods. The problem with relying solely on the traditional definition or manifestation, as described in 1.4.2, to define a confounder is its incapability to differentiate between colliders and confounders. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/2b9cf619fa361d9d962e9ddae40fcb73eaccdc9c2101fd822a26ee5e359d7d21.jpg)



FIGURE 1.7 Structure of collider in a directed acyclic graph.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/a42551651b2d431e4aa4baead188a5cd976b86d5c9f11315267663bf09077eb6.jpg)



FIGURE 1.8



Diagram of mediation effect.


## 5. Mediator

As shown in Figure 1.8, M is an effect of E and a cause of Y. Due to the presence of M, the total effect of E on Y can be decomposed into a direct effect (E→Y) and an indirect effect mediated by M (E→M→Y). As a mediator, M does not introduce bias. 

Back to the DAG depicted in Figure 1.5, the variable M acts as a mediator on the causal path from X to Y as it mediates, at least partially, the effect of X on Y. The total effect of X on Y can be conceptually divided into a direct effect from X to Y and an indirect (or mediated) effect from X to Y through M. If the objective of the study is to examine the total effect of X on Y, adjusting for M will introduce overadjustment bias because the indirect effect of X on Y through M will be blocked or eliminated, leading to an underestimation of the total effect. If the goal is to investigate the direct effect of X on Y, the regression model should include the mediator in addition to adjusting for two confounders (C and U). To accurately estimate the total exposure effect of X on Y, the regression model should only include X and C: 

$$
\operatorname{Log} (\text { risk   of   having } Y, R) = \beta_ {0} + \beta_ {x} \times X + \beta_ {c} \times C. \tag {1.8}
$$

Since the variable U is not measured, both the direct and indirect effects of X on Y are confounded and cannot be adjusted in a regression model. However, if U were measured, the direct effect of E on Y would be captured by: 

$$
\operatorname{Log} (\text { risk   of   having } Y, R) = \beta_ {0} + \beta_ {x} \times X + \beta_ {m} \times M + \beta_ {c} \times C + \beta_ {u} \times U. \tag {1.9}
$$

As illustrated in the DAG, when estimating the direct effect, the mediator is adjusted in the regression model. Adjusting for the collider M, along with the path from U (X→M←U), opens the path from U to X, making U a confounding variable (X←U→Y). Thus, if U were measured, it would also need to be adjusted in the model. In mediation analysis, the temporal relationship between the exposure and a variable is crucial in determining whether it acts as a mediator. If M occurs before E, it would not be considered a mediator but a confounder. 

## 6. Modifier

An arrow from the variable I to Y indicates that I potentially modifies the effect of X on Y (Figure 1.9). It is important to note that effect modification by a modifier, unlike confounding, does not require an association between that variable and the exposure in the base population from which the study population is sampled. 

For example, let’s consider “race” as a modifier variable I. It is possible that the strength of the association between X and Y differs between the black and white populations. Researchers are advised to have prior knowledge when selecting a variable that hypothetically modifies the X-Y association. In practice, when analyzing effect modification, investigators typically assess statistical interaction by introducing a product term involving an exposure variable and the modifier into a regression model. They also specify the scale at which the effect modification occurs, such as the additive scale (e.g., risk difference) or multiplicative scale (e.g., risk ratio), as this can be scale-specific. To gain insight into how a modifier modifies the X-Y association, it is necessary to estimate the effect of the exposure (X) on Y at each level of the modifier if it is measured categorically. For example, the strength of the X-Y association should be appropriately estimated and reported separately for the black and white populations (see Section 1.8 for additional details). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/094e123129fd367f8f2deadeca56caef312aca3198ccfff2e1d84070f33d96a6.jpg)



FIGURE 1.9 Diagram of effect modification.


## 7. Minimal sufficient adjustment set of confounding variables

When confounding is present, it is not necessary to control for all confounding variables in a regression model. Instead, we can use a DAG to identify a subset of variables that is sufficient for addressing confounding through adjustment. This subset is known as the “minimal sufficient adjustment set.” Referring to the causal diagram (Figure 1.10) as an example, where the association between the exposure X and the outcome Y is confounded by covariates A, B, and C. 

In this case, we do not need to control for all three variables in the regression model. There are two minimal sufficient adjustment sets for estimating the effect of X on Y: A and C, and B and C. This means that adjusting for either A and C or B and C is sufficient to address confounding. It is important to note that there can be multiple minimal sufficient sets on the path from X to Y. When selecting the adjustment set, it is advisable to include variables that are accurately measured while avoiding the inclusion of unmeasured confounders or variables with measurement inaccuracies. For example, if variable B is either not measured or measured inaccurately, it is advisable to choose the A-C adjustment set. Selecting and adjusting for the minimal sufficient set will result in a more precise estimate of the exposure effect in the multivariable regression analysis. 

Therefore, within the DAG framework for estimating the exposure-outcome association, we should (1) not block any causal paths, (2) block all confounding paths, and (3) not open any colliding paths. Next, we will use the following example to further illustrate the application of DAGs in regression analysis. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/10a52ba54e37d714b407b823511db66a79d9f3c59bf4de29c620ed314f29856f.jpg)



FIGURE 1.10 Diagram of three confounding variables.


## Example 1.4

The aim of the regression analysis is to examine the presumed causal relationship between obesity and renal disease (Figure 1.11). If hypertension is included in the model, it would diminish the association between obesity and renal disease. This is because hypertension acts as a mediator on the causal path from obesity to renal disease, and adjusting for the mediator removes the indirect effect (i.e., the effect of obesity on disease risk through hypertension). Similarly, if hospitalization is included in the model, it would be treated as a confounder, and the risk ratio for obesity estimated from this model would be adjusted for hospitalization. However, including hospitalization in the model would weaken the association between obesity and renal disease since hospitalization is strongly and positively associated with renal disease. If obesity is also a risk factor for hospitalization, hospitalization becomes a collider, resulting in even more pronounced bias. Thus, it is crucial to select covariates in the model based on their potential roles on the causal path from exposure to outcome in order to avoid bias and ensure model stability. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/c97732ea59cec72fd0dba90c292ce79a3eac5bbf655a52f651a02b9a30d78f9f.jpg)



FIGURE 1.11 Causal diagram of relationship between obesity and the occurrence of renal disease.


In this causal structure, there are two causal paths: the direct-effect path (obesity → renal disease) and the indirect-effect path (obesity → hypertension → renal disease). To accurately estimate both effects, all non-causal paths that confound the two causal paths must be blocked using a regression adjustment approach. To estimate the total effect of obesity on renal disease, the following regression model should be used: 

$$
\operatorname{Log} (\text { risk   of   renal   disease }, R) = \beta_ {0} + \beta_ {E} \times \text { obesity } + \beta_ {1} \times \text { age } + \beta_ {2} \times \text { sex }. \tag {1.10}
$$

To estimate the direct effect of obesity on renal disease, the following regression model should be used: 

$$
\operatorname{Log} (\text {risk of renal disease}, R) = \beta_ {0} + \beta_ {E} \times \text {obesity} + \beta_ {1} \times \text {hypertension} \tag {1.11}
$$

$$
+ \beta_ {2} \times \text { age } + \beta_ {3} \times \text { sex } + \beta_ {4} \times \text { smoking }.
$$

Based on the causal assessment and causal diagrams, a regression model should include a set of presumable confounding variables. The number of variables included should be minimal but sufficient to control for confounding. The use of a minimal sufficient adjustment set helps to prevent inflated effect estimates and unnecessarily wide confidence intervals due to issues such as data sparsity and collinearity between the controlled variables and the exposure in the model (Kleinbaum and Klein 2010, Robins and Greenland 1986) (see Section 1.7.4). 

Furthermore, it is important to note that the widely-used approaches for variable selection in prediction models, such as forward selection, backward elimination, and stepwise selection, are not recommended for variable selection in association models. These approaches search for the most parsimonious predictors that explain the most variation in the outcome, based on an arbitrary cutoff α-level for the coefficient p-value (e.g., 0.05), disregarding causal relationships. Such approaches may result in the selection of nonconfounding variables if they are strong predictors of the outcome but not associated with the exposure. Conversely, confounding variables may not be selected if they are weak predictors of the outcome. 

In summary, the selection of relevant and important variables is crucial for constructing a valid regression model. The selection of variables, including confounders, mediators, or modifiers, should be guided by subject-specific knowledge and chosen carefully by investigators based on their potential causal roles on the path from exposure to outcome. Directed acyclic graphs provide a formal framework for variable selection and causal inference. 

## 1.6.2 Selection of Appropriate Functional Form of Variables

The selection of the functional form of a variable depends on the nature of the variable, the hypothesis being tested, and the assumptions of the model. In order to accurately estimate the association between the exposure and the outcome and make the estimate more meaningful, it is often necessary to transform variables into different functional forms. A quantitative variable can be transformed into a centered, rescaled, binary, categorical, or spline variable depending on the specific research question and data characteristics. Different functional forms of the same variable can yield different strengths of association. 

For example, the variable “alcohol drinking” can be measured or transformed into various forms such as binary (alcohol drinking vs. non-alcohol drinking), categorical (heavy alcohol drinking, moderate drinking, and non-alcohol drinking), or continuous (number of glasses of alcohol consumed per day for a certain number of years). Each form of the variable may produce different estimates of association. The choice of variable form also has an impact on the validity of modeling analysis. An ideal functional form of a variable should capture relevant aspects such as the magnitude, duration, and frequency of the exposure under investigation, such as the above continuous variable for alcohol drinking. The appropriate selection of functional form allows for a more comprehensive representation of the exposure and enhances the validity and interpretability of the modeling results. 

## Example 1.5

For example, data collected from a cohort study are used to test the following hypothesis: a random sample of residents in a city, aged 40–69, who report a higher score of depression will be more likely to die within the next 5 years than those who have a lower depression score. The outcome variable is all-cause death during the follow-up period, and depressive symptoms are measured using the Centers for Epidemiologic Studies Depression (CES-D) Scale (Eaton et al. 2004) at the baseline. To test this hypothesis, investigators control for confounding effects due to sex (1: male and 0: female) and age as a continuous variable. 

In this hypothesis, the outcome variable (death) and the confounder of sex are naturally measured as binary variables. The exposure variable of depression (CESD) and the confounder of age are originally measured as continuous variables. When the exposure of depression is treated as a continuous variable in a log-binomial regression model, the model for estimating risk ratio assumes that exposure is exponentially related to disease risk in a linear pattern, with each additional unit of exposure multiplying the relative risk by a constant value (Checkoway, Pearce, and Kriebel 2004). The exponential risk model can be expressed as: 

$$
\operatorname{Log} (\text { risk   of   death }, R) = \beta_ {0} + \beta_ {E} \times \mathrm{CESD} + \beta_ {1} \times \text { age } \times \beta_ {2} \times \text { sex }. \tag {1.12}
$$

Suppose the coefficient for a one-unit increase in depression score is 0.08 $( \mathrm { i . e . , }$ $\beta _ { E } = 0 . 0 8 )$ . Exponentiating this yields a risk ratio of 1.08, which remains constant for any one-unit change in exposure. $\beta _ { 0 }$ measures the baseline risk in the log scale when all three variables equal to 0. 

However, there are three potential problems with using a continuous variable in the model in the above example. First, the scope of the exposure-outcome association by a oneunit increase in exposure is tiny and not practically meaningful. Second, this linear association between exposure and outcome is rarely observed in epidemiological data. Finally, the variable of age cannot be zero, and no subjects in the study have a CESD value of zero. 

To avoid the first problem, we may rescale continuous variables into more meaningful units so that the measure of the exposure-outcome association becomes meaningful. For instance, we may estimate the exposure effect of depression on a 5-score increase, instead of a 1-score increase. In this scenario, the risk of death for subjects who have a depression score of 20 is approximately 1.5 times higher than those who have a depression score of 15, as the risk ratio is estimated to be 1.5; e $\begin{array} { r } { \mathrm { { \langle x p ( } } 5 \mathrm { { \times } } 0 . 0 8 \mathrm { { ) } } = 1 . 5 , } \end{array}$ , compared to subjects with a score of 15. Note that rescaling by the sample SD should be avoided, as it can hinder the direct comparison of regression coefficients for rescaled variables estimated from one study with those from other studies when the two study samples have different SDs (Greenland, Schlesselman, and Criqui 1986). 

To address the linearity assumption and make the association more meaningful, we can transform the depression variable into a categorical or binary variable. However, categorization may obscure significant changes in risk within categories (see Chapter 10). In fact, the CES-D provides cutoff scores (e.g., 16 or greater) that aid in identifying individuals at risk for clinical depression, with good sensitivity and specificity and high internal consistency (Lewinsohn et al. 1997, Park and Yu 2021). Study subjects are considered to have depression if their CES-D score is equal to or greater than 16, and those with scores below 16 are defined as not having depression. When it is used as a binary variable, the study compares the risk of all-cause death among depressed subjects with that among non-depressed subjects. 

To address the third problem, we center variables so that the value of zero is scientifically meaningful. In model 1.12, $\beta _ { 0 }$ is the average risk in the log scale for death among subjects whose values of CESD, age, and sex equal to 0. However, age cannot be 0 according to the eligibility criteria, and no subjects have a value of 0 for CESD. Thus, $\beta _ { 0 }$ has no meaningful interpretation in this study. To correct this problem, we need to center the two variables by subtracting a frequently observed value from each before entering them into the model. For example, the CES-D uses 16 as the cutoff score to categorize subjects into clinical depression. We redefine the score by subtracting 16 from each subject’s original score. Similarly, we can redefine the age variable by subtracting 50 and then dividing by 5. With this centering, $\beta _ { 0 }$ is the average risk in the log scale among female subjects who have a score of 16 for CESD and are 50 years old. The coefficient $( \beta _ { 1 } )$ for a 1-year increase in age is rescaled to represent a 5-year increase. Centering and rescaling are also important for the interpretability of the coefficient of a product term in the model when examining the modification effects of two or more variables (Greenland and Pearce 2015), which is further discussed in Section 1.8. 

If an independent variable, either an exposure or a confounder, is used as a continuous variable in a regression model, the linearity assumption of relationships must be verified. Violation of this assumption may lead us to transform a continuous variable into a categorical variable, a binary variable, or a variable in a log scale. However, any such transformation from continuous to categorical or binary should be grounded in scientific context and facilitate a straightforward interpretation of the findings. More advanced approaches, such as the use of spline variables, may also be considered (see Chapter 10). 

## 1.6.3 Selection of Appropriate Regression Model

Numerous regression models have been developed to estimate the exposure-outcome association, including linear regression for continuous outcomes, logistic regression for binary outcomes, Cox regression for time-to-event data, Poisson regression for frequencies and rates, and the log-binomial model for risks. However, the selection of the most appropriate regression model must be guided by the proposed frequency measure (risk, rate, hazard, or odds), association measure (risk ratio, rate ratio, hazard ratio, or odds ratio), and, most importantly, the nature of the data collected from different study designs (i.e., cohort study, case-control study, cross-sectional study, and ecological study). 

For instance, data collected from a cohort study with a 5-year follow-up period include the number of subjects at risk for the disease outcome of interest, number of incident cases of the disease, time to disease occurrence, or person-time each subject accrued. Given the longitudinal nature of a cohort study, we can use this data to estimate risk, rate, and hazard for each of the two comparison groups (exposed vs. non-exposed) and measure the resultant risk ratio, incident rate ratio, and hazard ratio. To correctly estimate the 5-year risk, risk difference, or risk ratio, all subjects should have the same maximum observation time, and all subjects who did not develop the disease remain observable throughout the closed cohort study. 

However, if many subjects were lost to follow-up or died of other competing diseases, the estimated risks and risk ratio would be significantly biased. More appropriate association measures, in this case, would be the hazard ratio and rate ratio, as they consider the time to event and person-time. The primary model for modeling time-to-event data is the Cox proportional hazards model. Nevertheless, GLMs, such as the Poisson regression model, offer an important alternative to the Cox model. These models provide flexible and versatile methods for the direct estimation of exposure effects, taking into account confounding and interaction effects, especially when the proportional hazards assumption in the Cox model is not met (see Chapter 3). 

Although logistic regression can also be used with cohort data, it should be avoided because odds do not equal risk, but represent a function of risk. When the occurrence of a disease or another form of outcome is frequent (i.e., more than 10%), the estimated odds ratio usually overestimates the exposure-outcome association. More problematic is that logistic regression model cannot handle bias due to censoring, a frequent issue in cohort studies, especially those with a long follow-up period. Likewise, logistic regression model should not be used to analyze data collected from cross-sectional studies because the primary measure of disease frequency is prevalence, and the association measure is the prevalence ratio, which can be directly estimated from the log-binomial model or Poisson regression model. The odds ratio estimated from a logistic regression model for cross-sectional data would overestimate the prevalence ratio, particularly when the disease of interest is not rare, a common reason for using the cross-sectional study design. 

The selection of appropriate models can also be based on the choice of an additive model or multiplicative model. If the goal of analysis is to model risk additively, investigators may use linear binomial regression and report risk differences. In contrast, investigators who model risk on a multiplicative scale will generally use a log-binomial regression model or logistic regression and report a risk ratio or odds ratio. Epidemiological research investigating disease etiology typically employs multiplicative models, while research focused on public health impact is more likely to use an additive risk model. 

In summary, to accurately assess the exposure-outcome association, association models must be well-specified to answer a research question and tailored to meet the needs of data collected from different study designs. Investigators must actively leverage their understanding of the scientific context and subject-knowledge to guide model specification. Model specification needs to be made independently from the dataset at hand; in other words, we should not consider the empirical association of independent variables with the outcome variable in the dataset. Instead, we should first specify the potential roles of covariates in the causal path from exposure to outcome, express these in a regression model, and then use empirical data to ascertain whether the hypothesized roles exist in a given study. Investigators must assess and compare modeling strategies in analyzing their empirical study, guided by the goal of the study and the characteristics of the data, and select the one that yields contextually sensible results (Greenland and Pearce 2015). 

Given that the primary research interest in analytic epidemiology is to investigate the effect of exposure on disease risk, a binary outcome variable has been predominantly used in epidemiological research. Therefore, this book focuses on regression analysis for a binary outcome. The selection of a regression model according to study designs is summarized in the table in the Preface. 

## 1.7 Data-Driven Methods for Confounder Selection

While the counterfactual theory and causal graphs provide an important theoretical framework and tool for selecting confounding variables, subject-knowledge about the underlying causal structure or relations for certain variables may not always be readily available. This is especially true when investigating the exposure-outcome relationships for new diseases, such as COVID-19. In such instances, we must rely on data-driven methods that utilize information derived from the data under analysis. Two commonly used data-driven methods in confounder selection are stepwise variable selection and changein-estimate (CIE) selection. 

## 1.7.1 Stepwise Selection

Like prediction models, stepwise selection techniques, i.e., forward selection, backward selection, or a combination of the two, are used to select covariates based on their predictability of the outcome variable (McNamee 2005). Because stepwise selection picks variables that have high predictive power for the outcome and are significant at a preset α-level (i.e., 0.05), while ignoring the associations between covariates and exposure, this significancebased method may lead to mis-exclusions and/or mis-inclusions in a regression model (Robins and Greenland 1986). If we do not consider the underlying causal relationships among the three variables in each of the four scenarios (Figure 1.12), the stepwise methods could erroneously select I (a modifier), M (a mediator), and L (a result of Y) as “confounders” simply because they all have associations with the outcome Y. Moreover, the model could incorrectly exclude the true confounder C due to its weak association with the outcome Y. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/6f2d9e6f8f97c6f40871da3b3d51ea72a855c1a24662440c7248cede8d2c3a60.jpg)



FIGURE 1.12 Causal diagrams of four causal structure scenarios.


Since confounding bias is a systematic error rather than a random one, statistical tests should not be used in the selection of confounding variables. If a variable is a confounder, it needs to be controlled for, regardless of statistical significance. Conversely, if a variable is not a confounding variable, it should not be adjusted for in a model, even if it has a statistically significant relationship with the disease. 

## 1.7.2 Change-in-Estimate Selection

One of the most popular approaches for assessing confounding is the change-in-estimate (CIE) method (Talbot and Massamba 2019). According to this data-driven criterion, a covariate is defined as a confounder if its inclusion in a model causes a change in the value of the exposure effect estimate derived from another model without that covariate. This observed change is presumed to measure the covariate’s confounding effect. The change in estimate criterion is also referred to as the non-collapsibility criterion (Greenland 1996, Miettinen and Cook 1981). By this criterion, confounding occurs when the estimate for an adjusted (e.g., stratified or conditional) effect parameter (e.g., aRR) does not equal the estimate for an unadjusted (crude) parameter (cRR) obtained when a covariate is not adjusted (unstratified or unconditional). We use the concept of regressor orthogonality and non-orthogonality to explain how the change in estimate criterion works in variable selections. 

Independent variables in a multiple regression model can be categorized as orthogonal or non-orthogonal (Chatterjee and Hadi 2012). An orthogonal independent variable is one that is not correlated with other independent variables in the model. Conversely, a nonorthogonal independent variable is one that is correlated with one or more independent variables in the model. By definition, confounding variables are non-orthogonal as they are associated with the exposure variable which is also an independent variable in the model. The partial regression coefficients for a set of orthogonal independent variables in a multiple regression equation are equal to their respective simple regression coefficients. Hence, the addition or deletion of an orthogonal independent variable does not affect the regression coefficients of the other independent variables in the regression model (Allen 1997). In reality, however, due to random or measurement error of independents, the independent variables in a multiple regression equation often exhibit some degree of correlation. This may be one of the reasons why a 10% change has been proposed and used to define a confounding variable in the CIE approach. However, like all other cut-off values in statistics, such as the p-value for the significance level (either 0.05 or 0.01), this cut-off value is arbitrary. 

In contrast, if a model includes one or more non-orthogonal independent variables that are correlated with other independent variables in that model, their inclusion or exclusion will change the partial regression coefficients of the other independent variables in the model. For instance, the inclusion of a confounding variable into a model will alter the value of the regression coefficient of the exposure variable due to the correlation between the two. The degree of the change in partial regression coefficients is determined by the degree of correlation among these independent variables. Similarly, the exclusion of one or more non-orthogonal independent variables from a model will also change the partial regression coefficients of the exposure variables in the model. 

## Example 1.6

This analysis considers three variables: the dependent variable, y, and three independent variables, $x _ { 1 } , z _ { 1 } ,$ and $z _ { 2 } .$ . To simplify, let’s assume all three are continuous variables. The variable $x _ { 1 }$ is the exposure variable of interest. In the data, $x _ { 1 }$ and $z _ { 1 }$ are correlated, with a Pearson correlation coefficient of 0.8. Meanwhile, $z _ { 2 }$ is an orthogonal variable. Four linear regression models can be constructed. 

Model 1, which includes only $x _ { 1 }$ as the independent variable, estimates the coefficient of $x _ { 1 }$ to be 11.1. Model 2 includes $x _ { 1 }$ and $z _ { 1 } ,$ , estimating the partial coefficient of $x _ { 1 }$ to be 7.4 and that of $z _ { 1 }$ to be 4.5. Model 3 includes $x _ { 1 }$ and $z _ { 2 } ,$ yielding a partial coefficient of $x _ { 1 }$ at 11.1 and $z _ { 2 }$ at −2.7. Finally, model 4 incorporates all three independent variables, and estimates the partial coefficients to be 7.0 for $x _ { 1 } ,$ , 5.0 for $z _ { 1 } ,$ and $^ { - 3 }$ for $z _ { 2 }$ . 

This example highlights that the coefficient of the exposure variable, $x _ { 1 } ,$ changes substantially when a non-orthogonal covariate is either included or excluded from models (from 11.1 in model 1 to 7.4 in model 2 and 7.0 in model 4). The change in the regression coefficient of $x _ { 1 }$ is almost 60%, due to the high correlation between $x _ { 1 }$ and $z _ { 1 }$ . Thus, without adjusting for $z _ { 1 } ,$ , the model overestimates the exposure-outcome association. The inclusion and exclusion of an orthogonal variable $( z _ { 2 } )$ changes the coefficient of the exposure variable by less than 6% (from 11.1 in model 1 to 11.1 in model 3, and from 7.4 in model 2 to 7.0 in model 4). 

While a confounding variable is a non-orthogonal variable, a non-orthogonal variable may not necessarily be a confounding variable. It can be a mediator, collider, or modifier as long as it correlates with other independent variables, including the exposure variable itself. Therefore, before using the CIE approach, we must ensure that a variable cannot be a mediator, collider, or modifier. 

It should be noted that non-collapsibility is a potential issue when comparing adjusted ORs with unadjusted ORs. Non-collapsibility on the logistic scale can occur even when the distributions of another risk factor for the outcome are the same between the exposed and unexposed groups, indicating a lack of confounding. In such cases, the cOR, which is not adjusted for the covariate, may not be equal to the aOR, even if the adjusted variable is not a confounding variable (Greenland and Robins 2009). Consequently, the CIE approach may not be appropriate for determining whether a variable is a confounder. However, in practice, unless the outcome under study is common or the exposure effect is strong, noncollapsibility generally does not lead to substantial bias (Greenland, Daniel, and Pearce 2016, Pang, Kaufman, and Platt 2016, Spiegelman and VanderWeele 2017). It is important to note that non-collapsibility typically occurs when using odds ratios, incidence rate ratios, or hazard ratios to measure the exposure-outcome association. Conversely, it does not occur with risk ratios and prevalence ratios (Greenland 1996, Miettinen and Cook 1981). 

The CIE approach is often viewed more favorably than methods reliant on statistical significance. Research using simulation studies suggests that using a low change in estimate threshold (e.g., 10%) with the CIE approach can provide exposure effect estimates with minimal bias and confidence intervals that offer appropriate coverage (Greenland and Pearce 2015, Maldonado and Greenland 1993). However, this approach may not always lead to substantial improvements in estimate precision compared to a fully adjusted model. In some cases, there may be little to no gain, or even a decrease in precision (Lee 2014, Weng et al. 2009). Furthermore, the CIE strategy defines a confounding bias based on the observed change, lacking a strong theoretical foundation for confounder selection. 

The CIE approach has several extensions, including the combination of CIE and mean squared error (MSE) (Greenland, Daniel, and Pearce 2016) and the combination of CIE with DAGs (Evans et al. 2012, Weng et al. 2009). While the use of DAGs is usually based solely on subject knowledge or assumptions about causal structures among variables of interest in the base population, the CIE method depends on the relations of variables in a study sample drawn from the base population. Therefore, combining these two methods could address some limitations inherent in each. For instance, while DAGs do not consider sampling variations, the CIE does not take underlying causal structures into account. Given that we often do not have enough knowledge of the causal structure to draw a DAG, we might construct a conservative model that includes genuine confounding variables and variables that cause either the exposure or outcome variable (VanderWeele and Shpitser 2011). The obvious drawback to this strategy is the problem posed by collinearity (see Section 1.7.4). 

## 1.7.3 Meaning of Adjustment in Regression Models

As we previously discussed, a vital application of regression modeling is estimating exposure-outcome associations by “adjusting” for confounding variables. To fully comprehend the confounder-adjusted estimate of the exposure-outcome association, it is essential to understand the mathematical mechanisms that a regression model uses to control for confounding. 

In a non-technical sense, regression modeling employs a common value of a confounding variable to mathematically “equalize” the distribution of confounders between exposure groups $( \mathrm { e . g . } ,$ , exposed vs. unexposed). This process eliminates their potential to confound the exposure-outcome associations. To illustrate the process of statistical adjustment, let’s consider a linear regression model. 

The linear regression model incorporates three variables: outcome (y), exposure (x), and confounder (z). For an easy explanation, all three variables are continuous and are standardized to a mean of zero and unit variance. In such a standardized setting, the regression equation without the confounder is expressed as: 

$$
y = \beta_ {0} + \beta_ {x} ^ {*} x \tag {1.13}
$$

When both $y$ and x are standardized, the regression coefficient $\beta _ { x } ^ { * }$ is equivalent to their correlation coefficient $R _ { x y } ,$ , i.e., $\beta _ { x } ^ { * } = R _ { x y } . \beta _ { x } ^ { * }$ is an unadjusted estimate. 

Upon introducing the confounding variable $\mathbf { Z } ,$ Equation 1.13 extends to: 

$$
y = \beta_ {0} + \beta_ {x} x + \beta_ {z} z \tag {1.14}
$$

In this model, the partial regression coefficient $( \beta _ { x } )$ for the exposure (x) in the presence of a single confounder (z) in Equation 1.14 is defined as (Kutner et al. 2005): 

$$
\beta_ {x} = \left(R _ {x y} - R _ {z y} R _ {z x}\right) / \left(1 - R _ {z x} ^ {2}\right) \tag {1.15}
$$

Here, $R _ { x y }$ is the correlation between the outcome and exposure, $R _ { z y }$ is the correlation between the outcome and confounder, and $R _ { z x }$ and $R _ { z x } ^ { 2 }$ are the correlation and coefficient of determination between the exposure and confounder, respectively. Notably, when $R _ { z x }$ equals 0, indicating no correlation between the exposure x and confounder $z ,$ the adjusted coefficient of the exposure variable x will be equal to the unadjusted coefficient of x in Equation 1.13, i.e., $\beta _ { x } = \beta _ { x } ^ { * }$ . However, if there is any association between x and $z ,$ these coefficients will differ. By definition, a confounding variable is a non-orthogonal variable that must be associated with the exposure variable. 

Let’s consider a case where we want to examine the association between depression and hypertension, assuming that age is the only confounding variable that could distort this association. To estimate the log-risk of hypertension, we use the following regression equation: 

$$
\log \text { risk   of   hypertension } = \beta_ {0} + \beta_ {x} \text { dep } + \beta_ {z} \text { age } \tag {1.16}
$$

By definition, a confounding variable has different distributions between exposed and unexposed groups. Consequently, we use $\mathrm { M A } _ { 1 }$ to denote the mean age of the depressed group, and $\mathrm { M A } _ { 0 }$ for the mean age of the non-depressed group, where $\begin{array} { r } { \mathsf { M A } _ { 1 } \neq \mathbf { M A } _ { 0 } . } \end{array}$ . We can estimate the log-risk of hypertension separately for each exposure group, similar to stratification analysis, as follows: 

Log-risk of hypertension among depressed subjects $\big ( \mathrm { d e p } = 1 \big ) = \beta _ { 0 } + \beta _ { x } + \beta _ { z } M A _ { 1 } ,$ (1.17) 

and 

$$
\text { Log - risk   of   hypertension   among   non - depressed   subjects } (\mathrm{dep} = 0) = \beta_ {0} + \beta_ {z} M A _ {0}. \tag {1.18}
$$

We can estimate the difference in the log-risks of hypertension between the two groups using the formula: 

$$
\left(\beta_ {0} + \beta_ {x} + \beta_ {z} M A _ {1}\right) - \left(\beta_ {0} + \beta_ {z} M A _ {0}\right) = \beta_ {x} + \beta_ {z} \left(M A _ {1} - M A _ {0}\right). \tag {1.19}
$$

This equation shows that the difference in log-risk is determined by two components: $\beta _ { x } ,$ the actual difference in the log-risk of hypertension between the depressed and nondepressed groups; and $\beta _ { \mathrm { z } } ( M A _ { 1 } - \bar { M } A _ { 0 } )$ , the difference in the mean age of the two groups, multiplied by the association $( \beta _ { z } )$ between age and the outcome variable (hypertension). If $M A _ { 1 }$ and $M A _ { 0 }$ can be made equal, we can eliminate the confounding bias. 

To adjust for age as a confounder using the modeling approach, we need to compare the two groups at the same value of age or a common value of age. Typically, this is done by using the overall mean age of both groups, denoted by MA. We then replace both $M A _ { 1 }$ and $M A _ { 0 }$ with MA. The difference in log-risk between the exposed and unexposed groups then equals $\beta _ { x } ,$ which represents the true difference in log-risk between the two exposure groups: 

$$
\left(\beta_ {0} + \beta_ {x} + \beta_ {z} M A\right) - \left(\beta_ {0} + \beta_ {z} M A\right) = \beta_ {x} + \beta_ {z} (M A - M A) = \beta_ {x}. \tag {1.20}
$$

The above expression suggests that we can use any age value to estimate $\beta _ { x } ,$ as long as it is equal in both the exposed and unexposed groups. This requirement signifies that the age distribution must be equivalent between the two exposure groups to eliminate its potential confounding effect. When this equal-distribution condition is met, the difference in log-risk between the exposed and unexposed groups $( \beta _ { x } )$ reflects the true difference in the log-risk of hypertension between the two exposure groups, undistorted by the potential confounding effect of age. 

In summary, a regression model employs mathematical algorithms to equalize the values of confounding variables between exposure groups $( \mathrm { i . e . , \ : } M A _ { 1 } = M A _ { 0 } )$ . The model achieves this by using common values of confounding variables, even though these are not explicitly specified by the model. This is the mathematical mechanism by which a regression controls for confounding, and it underpins the concept of statistical adjustment for confounding variables. 

A close examination of the expression $\beta _ { x } + \beta _ { z } ( M A _ { 1 } - M A _ { o } )$ reveals that age doesn’t confound the association between depression and hypertension if two conditions are met: (1) there’s no association between age and hypertension, indicated by $\beta _ { \mathrm { z } } = 0 ,$ , and/or (2) the mean age of the two groups is identical $( M A _ { 1 } - M A _ { 0 } = 0 )$ . Age serves as a confounder only when both $\beta _ { z }$ and $( M \bar { A } _ { 1 } - \bar { M } A _ { 0 } ) \neq 0$ . Hence, we can’t determine whether age is a confounder by merely testing the statistical significance of $\beta _ { z }$ (Hosmer, Lemeshow, and Sturdivant 2013). Confounding is not a random error and depends on the values of both $\beta _ { z }$ and $( M A _ { 1 } - M A _ { 0 } )$ . 

To further explain why we can’t solely rely on a statistical approach to identify a variable as a confounding variable, let’s consider a categorical variable, sex, as the covariate. 

## Example 1.7

Consider a case-control study designed to evaluate the effect of social network support on depression (DEP). The study includes 200 individuals diagnosed with depression (cases) and 300 without depression (controls). The exposure variable in this study is the level of social network support, which is binary: $^ { \prime \prime } 1 ^ { \prime \prime }$ stands for low support, and $\prime \prime 0 \prime \prime$ *represents adequate support. Sex is also incorporated into the analysis as a covariate, depicted by another binary variable where $" 1 \prime $ represents female and $\prime \prime 0 \prime \prime$ denotes male, as demonstrated in Table 1.3. 


TABLE 1.3 Network Support and Depression Stratified by Sex in a Case-Control Study


<table><tr><td rowspan="2"></td><td colspan="2">Low Support (1)</td><td colspan="3">Adequate Support (0)</td></tr><tr><td>Cases</td><td>Controls</td><td>Cases</td><td>Controls</td><td>OR</td></tr><tr><td>Male (0)</td><td>26</td><td>55</td><td>57</td><td>139</td><td>1.15</td></tr><tr><td>Female (1)</td><td>37</td><td>30</td><td>80</td><td>76</td><td>1.17</td></tr><tr><td>Total</td><td>63</td><td>85</td><td>137</td><td>215</td><td>1.16</td></tr></table>

We start by calculating the cOR for depression in individuals who have low social network support versus those who have adequate support: 

$$
c O R = (6 3 \times 2 1 5) / (8 5 \times 1 3 7) = 1. 1 6.
$$

Next, logistic regression is used to estimate the odds ratio adjusted for sex. As per Output 1.1, this adjusted odds ratio is also 1.16. 


SAS Output 1.1 Analysis of maximum likelihood estimates and odds ratio estimates


<table><tr><td colspan="6">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-0.8937</td><td>0.1452</td><td>37.8578</td><td>&lt;.0001</td></tr><tr><td>support</td><td>1</td><td>0.1500</td><td>0.2044</td><td>0.5387</td><td>0.4630</td></tr><tr><td>sex</td><td>1</td><td>0.9475</td><td>0.1877</td><td>25.4860</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>support</td><td>1.162</td><td>0.778</td><td>1.734</td></tr><tr><td>sex</td><td>2.579</td><td>1.785</td><td>3.726</td></tr></table>

While sex is acknowledged as a risk factor for depression (as shown in this example), it does not appear to act as a confounding variable here. There’s no detectable relationship between sex and support level among the control group. This lack of association is confirmed by calculating the odds ratio (OR) for sex and support level among controls, which is: 

$$
O R = (5 5 \times 7 6) / (3 0 \times 1 3 9) = 1.
$$

Further confirmation of the absence of confounding is provided by the identical values of the cOR and the sex-adjusted odds ratio $( \mathrm { i . e . , \bar { O R } = 1 . 1 6 } )$ for the level of support and depression. 

This example underscores the limitations of using statistical tests of regression coefficients to identify confounding variables. Here, even though the coefficient for sex is statistically significant (with a $p \mathrm { - v a l u e } < 0 . 0 0 0 1$ and an OR of 2.58; 95% CI: 1.79–3.73), it doesn’t confound the association between the level of support and depression. 

## 1.7.4 Confounders and Collinearity

Collinearity represents a strong interdependence among the covariates in a regression model, which may hinder the accurate estimation of distinct covariate effects on the outcome variable. When covariates are highly correlated, disentangling their individual effects becomes challenging. This may alter coefficient values and inflate standard errors. Let’s re-examine the Equation 1.15 in Section 1.7.3: 

$$
\beta_ {x} = \left(R _ {x y} - R _ {z y} R _ {z x}\right) / \left(1 - R _ {z x} ^ {2}\right) \tag {1.15}
$$

Here, $R _ { x y }$ and $R _ { z y }$ represent the correlation between the dependent variable y and exposure $x ,$ and between y and the confounder $z ,$ respectively. $R _ { z x }$ and $R _ { z x } ^ { 2 }$ are the correlation and the coefficient of determination between z and x. 

In a scenario without collinearity, where there’s no correlation between exposure and confounder, $R _ { z x }$ equals $0 ,$ making $\beta _ { x }$ equivalent to the unadjusted coefficient of $x ~ ( \beta _ { x } ^ { * } )$ . However, when collinearity is present, the partial regression coefficient of x decreases nonlinearly with increased collinearity (Petraitis, Dunham, and Niewiarowski 1996), and a difference between $\beta _ { x }$ and $\beta _ { x } ^ { * }$ arises even if the collinearity between x and z is weak (Graham 2003). Due to collinearity, an exposure with a known strong relationship to the outcome variable will not necessarily have their regression coefficients accurately estimated. 

Furthermore, the standard error of the coefficient $\beta _ { x }$ increases linearly with increasing $R _ { z x } ^ { 2 }$ (Kutner et al. 2005), leading to a non-linear decrease in the power to detect a significant effect as collinearity rises. Simulation studies suggest that even slight collinearity $( R _ { z x } \stackrel { \textstyle } { \geq } 0 . 2 8 )$ can lower statistical power and lead to the exclusion of variables with substantial predictive power (Graham 2003). This exposes a significant limitation of the stepwise method for variable selection. 

Confounding variables by definition must be correlated with exposure variables. If they are highly correlated, collinearity may occur, making it difficult to accurately estimate the effect of exposure on the outcome. This can especially become a problem when trying to control for the effect of a confounding variable that is also highly correlated with the outcome. For instance, if exposure variable x is highly correlated with a confounding variable $z ,$ it becomes challenging to control for the effect of z while assessing the impact of x on an outcome y. This challenge becomes particularly pronounced if z is also strongly correlated with y. In such cases, the standard error of the regression coefficient for the exposure variable is likely to increase as its degree of freedom is reduced. 

Nonetheless, even if z is not or is weakly associated with y, adding z into the model is likely to alter the regression coefficient of the exposure variables, provided z is correlated with the exposure variable. The extent of this alteration is determined by the degree of correlation between z and x. Collinearity can become more severe when there are multiple confounding variables included in the model, especially if some of them exhibit high correlations. This phenomenon, known as multicollinearity, can have a substantial impact on the precision and accuracy of the estimated regression coefficients. 

In a study examining the impact of diabetes on renal disease, obesity is a confounding variable in the association between diabetes and renal disease, given its strong correlation with diabetes. It becomes particularly challenging to estimate the effects of diabetes when adjusting for obesity. This is because adjusting for obesity necessitates the establishment of a fixed obesity status (having obesity vs. not having obesity) across exposure groups (having diabetes vs. not having diabetes). The estimation of diabetes effects is then derived from subjects who fall within the fixed obesity status. When the two variables are highly correlated, nearly all subjects within a fixed obesity status have a concordant status of the two variables, i.e., they either possess both diabetes and obesity or have neither. Only a few subjects have a discordant status. Hence, estimating the effects of diabetes becomes challenging. The ideal circumstance for an effective adjustment of confounding variables and a valid estimation of the exposure effect is when there are sufficient subjects with a discordant status, thereby providing adequate variability. 

When a confounding variable is highly correlated with the exposure variable, it can serve as a proxy for the exposure variable. In such extreme situations, the regression coefficient that estimates the exposure effect may be significantly reduced, or even reduced to zero. Table 1.4 demonstrates the impact of collinearity on the estimated coefficient of the exposure variable x in a logistic regression model. The estimated coefficient of x is 


TABLE 1.4



Illustration of Collinearity in Modeling Analysis


<table><tr><td>Model</td><td>Dependent</td><td>Independent</td><td>Coefficient</td><td>Standard Error</td></tr><tr><td>1</td><td>y</td><td>x</td><td>0.81</td><td>0.37</td></tr><tr><td>2</td><td>y</td><td><eq>x, z_1, z_2</eq></td><td>0.01</td><td>0.50</td></tr><tr><td>3</td><td>x</td><td><eq>z_1</eq></td><td>2.23</td><td>0.43</td></tr><tr><td>4</td><td>x</td><td><eq>z_2</eq></td><td>0.41</td><td>0.09</td></tr></table>

0.81 (cOR = 2.25, 95%CI: 1.08–4.67) in model 1 when $z _ { 1 }$ (a binary variable) and $z _ { 2 }$ (a continuous variable) are not adjusted. However, after adjusting for $z _ { 1 }$ and $z _ { 2 }$ in model 2, the estimated coefficient of x drastically changes to 0.01 (aOR = 1.02, 95%CI: 0.38–2.72). This substantial change can be attributed to the high correlation between x and both $z _ { 1 }$ and $z _ { 2 } ,$ as demonstrated in models 3 and 4. 

As illustrated in Table 1.4, both the coefficients and standard errors undergo changes when the two variables are incorporated into model 1, resulting in model 2. The ideal scenario for effective control of confounding is one where a correlation exists between the exposure and confounder, but there is sufficient variability (or discordance) to ensure adequate representation in all cross-tabulated cells. This level of variability permits appropriate control of confounding while avoiding the issue of collinearity. 

One practical method to detect the occurrence of collinearity involves observing whether the estimated regression coefficient of the exposure variable and its standard error experience an obvious change when one or more confounding variables are introduced into the model. This shift might indicate the existence of collinearity among two or more covariates in the model (Breslow and Day 1980). However, the change in regression coefficients can be due to both the confounding effect and collinearity between the exposure variable and confounding variables. It can also occur if the exposure is associated with a nonconfounding variable that bears no association with the outcome variable in the model. Therefore, it’s crucial to assess the strength of correlations between the exposure variable and confounding variables, as well as the correlations among confounding variables themselves, before confirming the presence of collinearity. 

A common strategy to mitigate collinearity involves removing one of the highly correlated variables from the model (Agresti 2012). However, after removing a variable from a model, we must compare the regression coefficients of the exposure variable estimated from a model with that variable and from the model without it. If the removal of that variable leads to a substantial alteration in the regression coefficient – say, larger than 10% – the variable should remain in the model. Even though the precision of the estimated exposure effect may be compromised, validity takes precedence over precision in epidemiological studies. Consequently, we only remove variables that substantially increase the standard error of the regression coefficient for the exposure variable but cause a negligible change – either an increase or decrease – in the regression coefficient of the exposure variable, say a change of less than 10%. 

A more effective approach involves the use of directed acyclic graphs to select the minimalsufficient set of confounders to control for confounding. Because a smaller number of confounders will be employed in the sufficient set, correlations among these confounders can be reduced. If a variable is caused by the exposure or is correlated with the exposure but not the outcome, its inclusion in a model can also lead to collinearity, a scenario referred to as overadjustment. Such over-adjustment may yield unreliable or biased estimates of the exposure effect. Therefore, these variables should be excluded from the minimal-sufficient set. 

If there is an abundance of confounding variables that distort the association between exposure and outcome, especially when these variables are highly correlated, one may consider employing propensity score analysis, as discussed in Chapter 4. However, while propensity score analysis can help address the issue of data sparsity, it may not effectively resolve the problem of collinearity if the exposure is accurately predicted by the variables that are used to estimate propensity scores, resulting in a strong correlation between the exposure and the propensity score. This can lead to minimal overlap in the scores of the exposed and unexposed groups. Therefore, it is crucial to conduct a thorough examination and evaluation of the overlap or common support regions in propensity score analysis (Section 4.4 in Chapter 4). 

## 1.8 Data-Driven Methods for Effect Modification Assessment

In practical scenarios, it is often challenging to have subject-specific knowledge of the underlying causal relationships, making it difficult to identify an effect modifier a priori. In such cases, we rely on empirical data to assess whether a variable acts as an effect modifier or a confounder. For the sake of simplicity and pedagogical clarity, this book uses the terms “modification” and “interaction” interchangeably. However, they may differ in some application practices (Greenland, Lash, and Rothman 2008). Furthermore, it is important to clarify that modeling techniques are employed to examine statistical interaction (also known as effect modification or effect heterogeneity) rather than biological interaction. 

## 1.8.1 Search for Effect Modification

Statistical testing and confidence intervals are often used to assess whether a variable is an effect modifier. However, this approach is not applicable for confounding assessment because, as previously discussed, confounding bias represents a systematic error rather than a random one. Therefore, when we lack subject-specific knowledge to determine whether a particular variable is a confounder or modifier, it is typically advised to conduct an effect modification assessment prior to confounding assessment. The logic behind this sequence is that if strong evidence of modification involving certain variables exists, the assessment of confounding concerning these variables might not be necessary or relevant (Hosmer, Lemeshow, and Sturdivant 2013, Kleinbaum and Klein 2010). 

For example, suppose we wish to assess the role of retirement status in the causal path from depression to all-cause death. We can initially investigate whether retirement status modifies the association between depression and death in a log-binomial model. The estimated coefficient of the product term is −0.2791 (95%CI: −0.52 to −0.03), with the p-value of 0.03 (Output 1.2). As the estimated coefficient deviates from 0 and the 95% confidence interval does not include the null value of 0, we can conclude that there is an additional effect when both depression and retirement are present. In this instance, there is no need to assess the role of confounding by retirement status. In some cases, a variable can act as both a modifier and a confounder, but it can be difficult to distinguish its modification effect from its confounding effect in a study sample. 


SAS Output 1.2 Analysis of maximum likelihood estimates


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">Wald 95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-2.8896</td><td>0.0591</td><td>-3.0055</td><td>-2.7737</td><td>2386.66</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.5636</td><td>0.1185</td><td>0.3314</td><td>0.7959</td><td>22.62</td><td>&lt;.0001</td></tr><tr><td>retire</td><td>1</td><td>1.9772</td><td>0.0611</td><td>1.8575</td><td>2.0969</td><td>1047.80</td><td>&lt;.0001</td></tr><tr><td>dep*retire</td><td>1</td><td>-0.2791</td><td>0.1250</td><td>-0.5241</td><td>-0.0341</td><td>4.98</td><td>0.0256</td></tr><tr><td>sex</td><td>1</td><td>0.4100</td><td>0.0367</td><td>0.3382</td><td>0.4819</td><td>125.08</td><td>&lt;.0001</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

## 1.8.2 Assessment of Effect Modification

After identifying a variable as an effect modifier, the subsequent step in analysis is to understand how this variable modifies the association between the exposure and the outcome. If the modifier has two levels, such as retired and non-retired status, it is necessary to estimate two point estimates and their 95% confidence intervals, one for each level of the modifier. Following the above example, we estimate two risk ratios to measure the association between depression and death: one for non-retired subjects and the other for retired subjects (Output 1.3). 


SAS Output 1.3 Risk ratios and 95% confidence intervals, adjusting for sex


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>RR in Non_retired</td><td>1.7570</td><td>1.3929</td><td>2.2164</td></tr><tr><td>Exp (RR in Non_retired)</td><td></td><td></td><td></td></tr><tr><td>RR in Retired</td><td>1.3292</td><td>1.2293</td><td>1.4371</td></tr><tr><td>Exp (RR in Retired)</td><td></td><td></td><td></td></tr><tr><td>dep RR</td><td>1.7570</td><td>1.3929</td><td>2.2164</td></tr><tr><td>Exp (dep RR)</td><td></td><td></td><td></td></tr><tr><td>retire RR</td><td>7.2226</td><td>6.4077</td><td>8.1412</td></tr><tr><td>Exp (retire RR)</td><td></td><td></td><td></td></tr></table>

These risk ratios illustrate how the effect of depression on mortality varies based on retirement status. Specifically, the risk ratio (RR) for non-retired subjects is 1.76 (95% CI: 1.40–2.22), while for retired subjects, it is 1.33 (95% CI: 1.23–1.44). This serves as an example of assessing statistical modification within a multiplicative model at the multiplicative scale. 

It is important to note that when there is a difference in baseline risk between the non-depressed population in the two groups (retired vs. non-retired), a direct comparison of the two risk ratios (1.76 and 1.33) is not appropriate (VanderWeele, Lash, and Rothman 2021). In this sample, the baseline risk of death among the non-depressed population is 0.605 for retired individuals and 0.084 for non-retired individuals (Table 1.5). Here, the two risk ratios, which estimate the effect of depression on death, use different denominators. 

To enable a fair comparison, we should use the risk in a single reference group, typically the one not exposed to either of the two variables. Using the risk value of 0.084 among subjects who were neither depressed nor retired as the reference risk, the estimated risk ratio for death among the retired group is 9.60 (95% CI: 8.44–10.92), while for the non-retired group, it is 1.76 (95% CI: 1.39–2.22) (SAS Output 1.4). These results presented in SAS Output 1.4 demonstrate a qualitative difference compared to those in SAS Output 1.3. 


TABLE 1.5 Modification Effect of Depression on Death by Retirement Status, Adjusting for Sex


<table><tr><td></td><td>Non-depressed</td><td>Depressed</td><td>Risk Ratio*</td><td>Risk Ratio**</td></tr><tr><td>Non-retired</td><td>Risk = 0.084</td><td>Risk = 0.147</td><td>1.76</td><td>1.76</td></tr><tr><td>Retired</td><td>Risk = 0.605</td><td>Risk = 0.804</td><td>1.33</td><td>9.60</td></tr></table>


*Using risk among non-depressed as the reference (0.084 and 0.605) 



**Using 0.084 as the reference risk 



SAS Output 1.4 Risk ratios and 95% confidence intervals, taking risk in one group as the reference


<table><tr><td colspan="7">Differences of dep*retire Least Squares Means</td></tr><tr><td>dep</td><td>retire</td><td>_dep</td><td>_retire</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>1</td><td>0</td><td>0</td><td>9.6002</td><td>8.4382</td><td>10.9221</td></tr><tr><td>1</td><td>0</td><td>0</td><td>0</td><td>1.7570</td><td>1.3929</td><td>2.2164</td></tr></table>

As observed in this assessment of multiplicative modification within the multiplicative model, the association between depression and death is much stronger among retired subjects than among non-retired subjects. Reporting both risk ratios and their associated 95% confidence intervals is essential because they numerically illustrate how one variable’s effect is determined by another variable. When a modifier is a continuous variable, it is advisable to select three or more levels and report point estimates (e.g., risk differences or risk ratios) and their 95% confidence intervals for each of the arbitrarily selected levels. 

The additive modification effect can be assessed using an additive model. In SAS Output 1.5, we observe a stronger association between depression and death among retired subjects (RD = 0.14, 95% CI: 0.09–0.20) compared to non-retired subjects $\begin{array} { r } { ( \mathrm { R D } = 0 . 0 4 5 , } \end{array}$ 95% CI: 0.02–0.07). Unlike the assessment of multiplicative modification effects, there is no need to select a single reference group in the additive model, as it operates on an additive scale rather than a multiplicative one (see Section 2.11.3 for details). 


SAS Output 1.5 Risk difference (RD) and 95% confidence intervals, adjusting for sex


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>RD in Non_retired</td><td>0.0451</td><td>0.0225</td><td>0.0677</td></tr><tr><td>Exp(RD in Non_retired)</td><td></td><td></td><td></td></tr><tr><td>RD in Retired</td><td>0.1431</td><td>0.0907</td><td>0.1955</td></tr><tr><td>Exp(RD in Retired)</td><td></td><td></td><td></td></tr></table>

While multiplicative modification is commonly utilized in epidemiologic studies through multiplicative regression models, it is advisable to consider additive interaction by employing risk differences instead of risk ratios, particularly when assessing public health priorities is the primary goal of data analysis (Knol and VanderWeele 2012). Nonetheless, multiplicative interaction still plays an important role in epidemiologic research (VanderWeele and Knol 2014). 

## 1.8.3 Effect Modification versus Confounding Effect

If the analysis suggests that a variable cannot function as an effect modifier, we then proceed to the next stage of confounding assessment. It is vital to note again that confounding is a systematic error and cannot be assessed using statistical tests alone. Let’s consider the variable “sex” as an example. Initially, we assess whether it serves as a modifier to alter the association between depression and all-cause death by introducing a product term, $\mathrm { ' d e p " s e x , ' \prime }$ in a log-binomial model. The regression coefficient of the product term is 0.0471 $( 9 5 \% \mathrm { C I } { : - 0 . 1 1 - 0 . \dot { 2 } 0 } ; p = 0 . 5 6 )$ . Since the regression coefficient for the product term is fairly small and falls within the middle of the confidence interval, from a statistical perspective, it indicates that sex does not act as an effect modifier. Consequently, we proceed to assess whether sex operates as a confounding variable (Output 1.6). 


SAS Output 1.6 Analysis of maximum likelihood estimates


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">Wald 95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-2.8829</td><td>0.0602</td><td>-3.0009</td><td>-2.7650</td><td>2295.64</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.5465</td><td>0.1221</td><td>0.3073</td><td>0.7857</td><td>20.05</td><td>&lt;.0001</td></tr><tr><td>retire</td><td>1</td><td>1.9800</td><td>0.0613</td><td>1.8599</td><td>2.1001</td><td>1044.57</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>0.3961</td><td>0.0436</td><td>0.3107</td><td>0.4816</td><td>82.57</td><td>&lt;.0001</td></tr><tr><td>dep*retire</td><td>1</td><td>-0.2942</td><td>0.1276</td><td>-0.5443</td><td>-0.0440</td><td>5.31</td><td>0.0212</td></tr><tr><td>dep*sex</td><td>1</td><td>0.0471</td><td>0.0805</td><td>-0.1108</td><td>0.2049</td><td>0.34</td><td>0.5588</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

As illustrated in Output 1.6, there is an association between sex and death, with a coefficient of 0.4 (95% CI: 0.31–0.48). However, it’s important to clarify that this coefficient and the results of the Wald test only indicate an association between sex and the outcome variable, which is all-cause death. This association alone does not automatically imply that sex acts as a confounding variable in the relationship between depression and all-cause death. To qualify as a confounder, sex must either exhibit an association with depression or be recognized as a risk factor for depression. However, the model does not provide evidence of such an association. 

To assess the potential confounding effect of a variable, we use the CIE method to compare the adjusted estimate (e.g., risk ratio) with the unadjusted one. In this example, we execute two log-binomial regression models, one that includes sex and the other that excludes it. We can then obtain sex-adjusted and sex-unadjusted risk ratios for death by comparing depressed subjects with non-depressed subjects at the two levels of the modifier (retirement) (Outputs 1.3 and 1.7). 


SAS Output 1.7 Risk ratios and 95% confidence intervals, without adjusting for sex


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>RR in Non_retire</td><td>1.6425</td><td>1.3018</td><td>2.0724</td></tr><tr><td>Exp(RR in Non_retire)</td><td></td><td></td><td></td></tr><tr><td>RR in Retire</td><td>1.2621</td><td>1.1575</td><td>1.3763</td></tr><tr><td>Exp(RR in Retire)</td><td></td><td></td><td></td></tr></table>

The changes from unadjusted RRs to the adjusted RRs are minimal, with a 5% change among retired subjects and a 7% change among nonretired subjects. 

Among the retired subjects: (1.329–1.262)/1.329 = 0.05 or 5% 

Among the nonretired subjects: (1.757–1.6425)/1.757 = 0.07 or 7% 

These slight changes suggest that including sex as a covariate did not meaningfully alter the association between depression and death when retirement status functions as a modifier, indicating that sex might not be a confounding variable. However, it is important to note that the decision to designate a variable as a confounder, based on the CIE strategy, is subjective and may not always be driven by pre-existing knowledge, biological plausibility, or clinical relevance. If a decision cannot be made based on subject knowledge and CIE, it might be suitable to include the variables in the model to err on the side of caution, provided their inclusion does not substantially widen the confidence intervals. 

## 1.8.4 Challenges and Recommendations in Modification Assessment

Several considerations must be taken into account when conducting statistical effect modification analysis. 

First, the assessment of statistical interaction (effect modification or effect heterogeneity) within a study population depends on the choice of effect measurement. In epidemiologic research, there are two primary types of effect measures: ratios (e.g., risk ratios) and differences (e.g., risk differences). The extent of heterogeneity in an effect measure is contingent upon the selection of the measurement scale (Rothman 2012). For instance, if two estimated risk ratios for assessing the effect of smoking on lung cancer are similar across sexes (indicating effect homogeneity), the estimated risk differences must vary between the male and female strata. In other words, if both exposures have an effect on the outcome, there must be interaction on at least one scale, if not both. This inherent ambiguity arises when a statistical approach is used to identify effect modification. When effects are assessed using risk differences or attributable risks in a model, it is termed as additive interaction on the additive scale. Conversely, when effects are measured using risk ratios, it is referred to as multiplicative interaction on the multiplicative scale. 

If one variable modifies the effect of exposure on the occurrence of an outcome, this effect modification (or biological interaction) exists within the base population from which a study population is drawn, regardless of the chosen effect measure. Therefore, it is crucial to identify modifiers based on subject-matter knowledge and assess how a particular modifier impacts the exposure-outcome association within a study sample. To reduce ambiguity associated with the use of a statistical approach for assessing effect modification, investigators should explicitly state the goal of data analysis and choose an appropriate measure of interaction when conducting interaction analyses. It is also important to specify the type of measure when reporting a modification effect, such as a risk ratio (or multiplicative) modification effect or a risk difference (or additive) modification effect (Greenland, Lash, and Rothman 2008). 

Second, the statistical power to test the coefficient of a product term is often low. A nonsignificant coefficient of a product term, as measured by a p-value, does not necessarily indicate the absence of an interaction effect. This low power arises from the fact that power estimation for a study primarily focuses on assessing the average effect of a single exposure, rather than explicitly testing for a product term. Additionally, this low power is often associated with imbalanced sample sizes within the levels of the product term. If the two variables involved in a product term each have two levels, the multiplication of the two variables results in a large number of subjects in the category of 0 and a few in the category of 1. As demonstrated in Table 1.6, the product term “dep*retire” equates to 1 only when study subjects are exposed to both depression and retirement. For other combinations of the two variables, the multiplication yields 0. 

In this instance, the total number of subjects is 7,463, and the cell samples across the two levels of the product term, “dep_retire,” are considerably imbalanced. Only 412 (5.5%) subjects are both depressed and retired (dep_retire = 1), while the remaining 7,051 (94.5%) subjects have a “dep*retire” value of 0. This imbalance in the distribution of cell samples can lead to a low statistical power for testing the coefficient of a product term. For this reason, the significance level for a product term is often set slightly higher than 0.05, such as p-values < 0.10 (Twisk 2019). 


TABLE 1.6 Formation of Product Term and Multiplied Values


<table><tr><td>dep</td><td>×</td><td>retire</td><td>=</td><td>dep_retire</td><td>No. of Subjects</td></tr><tr><td>1</td><td>×</td><td>1</td><td></td><td>1</td><td>412</td></tr><tr><td>0</td><td>×</td><td>1</td><td></td><td>0</td><td>1,880</td></tr><tr><td>1</td><td>×</td><td>0</td><td></td><td>0</td><td>755</td></tr><tr><td>0</td><td>×</td><td>0</td><td></td><td>0</td><td>4,416</td></tr></table>

The issue of low statistical power is further exacerbated when the involved variables have more than two categories, or when the total sample size is small. Most cohort studies or case-control studies have much smaller sample sizes than the total size presented in Table 1.6, so the imbalance issue and the low power for testing the statistical significance of a product term can be even more pronounced in studies with a small or moderate sample size. Thus, a non-significant p-value for the product term does not necessarily mean that there’s no interaction effect. Decisions on whether to include a product term should be based on etiologic or biologic plausibility, existing evidence, the value of the product term’s coefficient, and its compatibility interval, rather than solely on the p-value. If no interaction effect is present, the product term’s coefficient should be equal to or near 0. 

The third challenge pertains to the interpretation of the point estimates (e.g., risk ratio, rate ratio, or odds ratio) derived in the presence of an interaction. Most statistical analysis software, such as SAS, automatically computes the risk ratio for the product term (“dep_ retire”). However, the coefficient of the product term is not intended to be a measure of the interaction effect. Instead, it measures the departure from the expected joint effect of the two variables. To comprehend how a modifier influences the relationship between exposure and outcome, it’s important to calculate and present separate risk ratios for each level of the modifier, as done in the above example. These separate risk ratios enable us to understand how the effect of one variable on the outcome varies depending on the value of the modifier. For instance, in the previous example, we computed separate risk ratios for retired and non-retired subjects, allowing us to see how the impact of depression on mortality varied based on retirement status. 

Likewise, the risk ratios associated with the “dep” and “retire” variables in SAS Outputs 1.2 and 1.3 are often misinterpreted as if no product term were incorporated into the model. For instance, one might erroneously interpret the risk ratio of 1.757 (labeled as “dep RR” in Output 1.3 and corresponding to its regression coefficient in Output 1.2) as the risk ratio comparing the depressed to the non-depressed individuals. However, in reality, it represents the risk ratio for the depressed individuals compared to the non-depressed individuals when the retirement status is non-retired (retire = 0). Similarly, the risk ratio of 7.22 for the “retire” variable is the risk ratio for the retired versus non-retired individuals when “dep” is 0 (indicating non-depressed status). In simpler terms, the risk ratios for the “dep” and “retire” variables quantify the independent effect of each variable on the outcome, after accounting for potential confounding variables. The coefficients for “dep” and “retire” would lack meaningful interpretation if they could not take on a value of 0. In such cases, recentering these variables becomes necessary (see Section 1.6.2 for recentering). 

Here is how the value of 1.757 is calculated: 

$$
\begin{array}{l} \log (R R) = \log \left(\frac {\text {risk} (d e a t h | d e p = 1 a n d r e t i r e d = 0)}{\text {risk} (d e a t h | d e p = 0 a n d r e t i r e d = 0)}\right) \\ = \log \text { risk   (risk } \mid \text { dep } = 1 \text { and   retire } = 0) - \log \text { risk   (risk } \mid \text { dep } = 0 \text { and   retire } = 0) \\ = [ - 2. 8 8 9 6 + 0. 5 6 3 6 \times 1 + 1. 9 7 7 2 \times 0 - 0. 4 1 \times s e x) ] \\ - [ - 2. 8 8 9 6 + 0. 5 6 3 6 \times 0 + 1. 9 7 7 2 \times 0 - 0. 4 7 \times s e x) ] \\ = 0. 5 6 3 6 \mathrm{or} R R = 1. 7 5 7 \\ \end{array}
$$

The fourth challenge pertains to adherence to the hierarchy principle (Kleinbaum and Klein 2010). This principle is an important guide in statistical modeling, particularly when incorporating product terms. It dictates that if a product term is present in a model, all the variables involved in the product term must be included, regardless of their individual significance. This is required for the accurate interpretation of product term effects and for making valid statistical comparisons between nested models. 

Consider E as the exposure variable, and $M _ { 1 }$ and $M _ { 2 }$ as two modifiers. Model 1 violates the hierarchy principle because it omits the $M _ { 1 } ^ { * } M _ { 2 }$ product term. In contrast, Model 2 adheres to the principle by including all variables in the product term. 

$$
\text {   Model   1:   Log   risk   of   } D = \beta_ {0} + \beta_ {1} E + \beta_ {2} M _ {1} + \beta_ {3} M _ {2} + \beta_ {4} E ^ {*} M _ {1} + \beta_ {5} E ^ {*} M _ {2} + \beta_ {6} E ^ {*} M _ {1} ^ {*} M _ {2}
$$

$$
\text {   Model   2:   Log   risk   of   } D = \beta_ {0} + \beta_ {1} E + \beta_ {2} M _ {1} + \beta_ {3} M _ {2} + \beta_ {4} E ^ {*} M _ {1} + \beta_ {5} E ^ {*} M _ {2} + \beta_ {6} M _ {1} ^ {*} M _ {2}
$$

$$
+ \beta_ {7} E ^ {*} M _ {1} ^ {*} M _ {2}
$$

In accordance with this principle, it is sometimes necessary to limit the number of modifiers in a product term (a two-way term) to circumvent multicollinearity issues. In the previous example, the product term “dep_retire” only includes retirement as the modifier. In some instances, a three-way interaction term may be used (as in Model 2 above), which includes two modifiers. For example, personal income might be an additional modifier, and the two modifier variables (retirement and personal income) could interact to modify the exposure-outcome relationship, leading to a “dep*retire*income” product term. 

However, caution should be taken when including three-way or higher product terms as they can complicate interpretation and cause multicollinearity problems. For instance, with the three-way product term “dep*retire*income,” the two product terms (“dep*retire*income” and “retire*income”) would exhibit high correlation, potentially causing issues in the estimation and interpretation of coefficients. Therefore, researchers should consider the inclusion of product terms thoughtfully and adhere to the hierarchy principle to ensure valid statistical comparisons between nested models. 

The fifth concern relates to the issue of collinearity. A product term, which is a function of exposure and modifier variables, often exhibits a correlation with these two variables. This correlation becomes particularly apparent when both variables are continuous. In such cases, the product term (e.g., x*z) tends to be highly correlated with both the exposure variable x and the modifier z. This collinearity frequently leads to an inflation of the standard error associated with the regression coefficients of these variables, potentially distorting the results. One direct method to mitigate the inflated standard error is to center the exposure and modifier variables when they are measured as continuous variables. 

Alternatively, center continuous modifiers when the exposure variable is binary to ensure meaningful interpretation and reduce collinearity (Cohen et al. 2003; Jewell 2003). 

For example, let’s consider the scenario where weight (z) modifies the relationship between a genetic disorder (x, coded 1 for presence of the disorder and 0 for absence) and kidney disease (y). To address potential collinearity, we can center the weight variable by subtracting the mean weight (calculated from all subjects in the study sample) from each subject’s actual weight. This transformation sets the zero value of the centered weight to correspond to the mean weight, giving it a more meaningful interpretation. We can then use this centered weight to construct a product term with the exposure variable x. 

Choosing the centered version over the original, especially for the product term involving a centered modifier, effectively reduces a significant amount of collinearity. This reduction occurs because the correlation between the centered product term and the centered weight variable is diminished. This allows for more precise estimation of regression coefficients. Importantly, this rescaling does not impact the assessment of the interaction itself. In other words, it does not alter the regression coefficient of the product term, the associated p-value, or its confidence interval. However, it’s worth noting that the coefficient of the espouse variable will differ from that estimated using the original data without centering. There is no need to center the exposure variable x in this example, as it is a binary variable, and its zero value represents subjects without the genetic disorder (unexposed). 

## 1.9 Generalized Linear Models

## 1.9.1 Overview

Generalized linear models (GLMs) serve as an extension of ordinary least squares (OLS) linear regression models (Nelder and Wedderburn 1972). Traditional linear regression models typically require the dependent variable to be continuous and follow a normal distribution. However, in many real-world cases, the dependent variable does not follow these assumptions. Generalized linear regression models overcome this limitation by accommodating various types of distributions, making them a powerful statistical modeling tool for understanding the relationship between a dependent variable and one or multiple independent variables (Arnold et al. 2020). 

GLMs consist of three components: a random component, a systematic component, and a link function component (Dobson and Barnett 2018, McCullagh and Nelder 2019). The random component specifies the probability distribution of the dependent variable Y given the values of the independent variables in the model; for instance, a binary logistic regression model would use a binomial distribution for Y. The systematic component outlines the independent variables used in a linear predictor function, such as the linear combination of $\beta _ { 0 } + \beta _ { x } x + \beta _ { z } z$ in a log-binomial regression model. Lastly, the link function component details the function that connects the linear predictor combination to the expected value of the dependent variable, such as the logit function in a logistic regression. 

To further illustrate GLMs, consider the following multiple Poisson regression model: 

$$
\operatorname{Log} (\text { risk }, R) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {3} \dots + \beta_ {p} Z _ {p} \tag {1.21}
$$


TABLE 1.7 Types of Generalized Linear Models for Data Analysis


<table><tr><td>Type of Dependent Variable</td><td>Probability Distribution</td><td>Link Function</td><td>Regression Model</td><td>Chapter in this book</td></tr><tr><td>Continuous</td><td>Normal</td><td>Identity</td><td>Linear</td><td>not covered</td></tr><tr><td>Count</td><td>Poisson</td><td>Log</td><td>Poisson</td><td>2, 4</td></tr><tr><td>Binary/Count</td><td>Negative binomial</td><td>Log</td><td>Negative binomial</td><td>2</td></tr><tr><td>Binary</td><td>Poisson</td><td>Log</td><td>Robust Poisson</td><td>2, 4</td></tr><tr><td>Binary</td><td>Binomial</td><td>Log</td><td>Log-binomial</td><td>2, 4, 8</td></tr><tr><td>Binary</td><td>Binomial</td><td>Identity</td><td>Linear binomial</td><td>2</td></tr><tr><td>Continuous</td><td>Weibull</td><td>Log-log</td><td>Weibull</td><td>3</td></tr><tr><td>Binary</td><td>Binomial</td><td>Logit</td><td>Logistic</td><td>5, 6, 7</td></tr></table>

This model stipulates the distribution of the dependent variable as the Poisson distribution with the mean of risk R (random component). The systematic component is the linear combination of $\beta _ { 0 } + \beta _ { x } X + \beta _ { 1 } Z _ { 1 } + \beta _ { 2 } Z _ { 3 } . . . + \beta _ { \mathrm { p } } Z _ { \mathrm { p } } ,$ and the log link serves as the link function connecting the random and systematic components. According to this model, $\beta _ { x }$ represents the difference in risks on the log scale between groups with $X = 1$ and $X = 0 ,$ , assuming they share common values of all other covariates $( Z _ { 1 } , Z _ { 2 } , . . . Z _ { p } )$ . The log transforms by the log link function represent a multiplicative model where a unit change in the covariates changes the risk ratio by a constant value. 

GLMs comprise a family of regression models for a transformed mean of a response variable that has distribution in the natural exponential family. The parameters (i.e., regression intercept and coefficients) of a GLM are usually estimated through the maximum likelihood estimation (MLE) process instead of the OLS process. Table 1.7 provides a summary of the types of GLMs for data analysis covered in this book. 

GLMs require specification of a probability distribution for the dependent variable. As such, only parametric survival models are classified within the GLM family. This is because the probability distribution of survival time, such as the Weibull distribution, is known. As a result, the Cox proportional hazards model (Cox 1972) is not included within the GLM family. This model is semi-parametric, meaning it explicitly models dependence on the explanatory variables but does not assume a specific probability distribution for the survival times (Dobson and Barnett 2018). Given that the Cox proportional hazards model is widely used in survival data analysis for open cohort studies, it is covered in detail in Chapter 3. 

## 1.9.2 Maximum Likelihood Estimation

A GLMs uses maximum likelihood estimation (MLE) to estimate parameters, including an intercept and regression coefficients, in a mathematical model (Agresti 2012, Cole, Chu, and Greenland 2014). MLE is a versatile method allowing for independent variables of normal, ordinal, and interval types. To describe the MLE process, we introduce the likelihood function, $L ,$ which is the probability of the observed data as a function of the unknown parameters of interest. This function is denoted as L(θ), where θ refers to the collection of unknown parameters (e.g., regression coefficients) that are being estimated in a model. For instance, in the following logistic regression model, θ includes $\beta _ { 0 } , \beta _ { 1 } , \beta _ { 2 } ,$ and $\beta _ { 3 } \mathrm { : }$ 

$$
\text { Log   odds   of } Y = \beta_ {0} + \beta_ {1} x _ {1} + \beta_ {2} z _ {2} + \beta_ {3} z _ {3} \tag {1.22}
$$

The MLE method selects estimators of the unknown parameters that maximize the likelihood function. In other words, it estimates parameters (such as $\beta _ { 0 } , \beta _ { 1 } , \beta _ { 2 } ,$ and $\beta _ { 3 }$ in model 1.22) by values for which the likelihood of observed data is higher than the likelihood for any other values of parameters. MLE uses an iterative process to determine the values of the unknown parameters that make the likelihood of the regression expression as large as possible, i.e., it finds the most likely values for the regression coefficients. The maximization of the likelihood function L(θ) is equivalent to the maximization of the natural logarithm of L(θ), also known as the log-likelihood, LL. Two common iterative methods used in GLMs are the Newton–Raphson method and the Fisher scoring method (Dobson and Barnett 2018). 

The formula for the likelihood function and the iterative calculation are programmed into statistical software. As long as a model is well-specified, the iteration and convergence process is automatically processed by the software. After the MLE process is completed and the most likely values for the regression coefficients are determined, the convergence process stops. The next step is to use the maximum likelihood estimate to make statistical inferences about the association between the exposure and the disease under study. This includes testing hypotheses and estimating confidence intervals for the parameters in the model, which will be illustrated in relevant chapters with specific models. 

Occasionally, a regression model may not converge successfully. This occurrence, known as “convergence failure“, happens when the iterative process, aimed at identifying the maximum likelihood estimate, falls short of this objective. The failure to attain convergence usually signals an underlying issue with the dataset or model specifications that warrants attention. Identifying and rectifying these problems can lead to the achievement of a reliable, converged model. This topic will be discussed in greater detail within the context of specific models covered in this book. 

## 1.9.3 Key Assumptions

GLMs offer great flexibility in analyzing various types of response variables. However, the validity and interpretability of GLM results depend on several key assumptions: linearity, independence, correct specification of probability distribution and link function, and absence of outliers (Dunn and Smyth 2018, McCullagh and Nelder 2019). The following paragraphs describe each of these keys, focusing on the potential consequences and alternative approaches if the analyzed data do not support these assumptions. Some GLMs require specific assumptions that will be discussed in relevant chapters. 

The first assumption in GLMs is linearity. This assumption requires a linear relationship between independent variables and the dependent variable on the correct scale, with constant slopes (coefficients) of independent variables. If this assumption is violated, model estimates could be biased or inaccurate. To verify this assumption, one can create plots with predictors against the response variable, with the objective of identifying any non-linear patterns. In the event of identifying a non-linear relationship, alternative methods like categorical, fractional polynomial, and spline models can be employed. Detailed alternatives specifically addressing non-linearity issues can be found in Chapters 2 and 10. 

The second assumption in GLMs is independence. This assumption posits that observations are independent of each other, implying that the value of the dependent variable for one observation does not affect or influence the value for another observation. When this independence assumption is violated, the resulting statistical inferences can be unreliable. Such violations tend to occur, for example, in studies with cluster sampling (where subjects are sampled from the same neighborhoods), repeated measures designs (such as longitudinal studies with multiple measures on subjects), or social network data when subjects are nested within personal networks (Liu 2016). Validation of independence typically necessitates the confirmation that data have been collected independently and that there is no known clustering or dependence. When this assumption is violated due to clustered or correlated data, alternative methodologies such as generalized estimating equations (GEE) (Hanley et al. 2003) or mixed effects models can be implemented (Twisk 2019). GEE offers a framework that accounts for dependencies between observations, estimating populationaveraged effects while adjusting for within-cluster correlations. Mixed effects models, also known as multilevel or hierarchical models, account for the hierarchical structure of data by incorporating random effects that capture clustering or dependence, thereby enabling more accurate inference in such scenarios. 

The third assumption is the accurate specification of the probability distribution of the dependent variable and its corresponding link function. The link function is used to transform the linear predictor, ensuring the predicted values are within the appropriate range for the dependent variable type. The chosen link function will determine the interpretation of the model parameters. For example, utilizing the identity link function in a linear binomial model allows the regression coefficient of the exposure, $\beta _ { x } ,$ to represent the risk difference. Conversely, when using the log link function, an exponential risk model is derived, and the regression coefficient for the exposure, $\beta _ { x } ,$ corresponds to the logarithm of the risk ratio. Incorrect specification of the probability distribution and link functions could result in biased estimates, poor model fit, and incorrect interpretations. This assumption can be validated by meticulously considering the type of dependent variable (e.g., binary, count, continuous), and then selecting an appropriate distribution (e.g., Poisson or binomial) and link function (i.e., log link for Poisson or logit link for binomial distributions), grounded in knowledge and experience. Depending on the type of outcome variable, the appropriate distributions and link functions can be found in Table 1.7. 

The fourth assumption entails that the data are free from outliers. Outliers are observations that significantly deviate from the majority of the data. The assumption here is that all responses are generated from the same underlying process, meaning the same model should be applicable to all observations. Influential outliers, those whose removal would substantially modify the model results, can significantly impact both point estimates (e.g., risk ratio or hazard ratio) and confidence intervals. The identification of outliers is achieved by detecting observations with unusually large residuals, either positive or negative. Residual diagnostic techniques, such as Pearson and deviance residuals (Cohen et al. 2003), serve as tools to examine outliers within the data. These methods help identify observations that substantially deviate from the expected pattern, thus noticeably influencing the model’s fit. The application of these two approaches is discussed further in Chapter 5. 

The fifth assumption in regression modeling is that the size of the study sample should be sufficiently large. This requirement is essential to ensure the reliability and validity of the model’s results. A larger sample size provides greater statistical power, enabling the model to detect smaller, yet potentially meaningful effects and reducing sampling variability, resulting in more stable and precise estimates of regression coefficients. To assess whether the study sample size is adequate for a regression model, researchers frequently employ power analysis and sample size calculations. Furthermore, researchers should take into account the complexity of their regression model, which includes the number of covariates (including product terms for evaluating effect modifications) and the anticipated effect sizes of these covariates. It is advisable for researchers to seek guidance from statistical experts or utilize specialized software tools for sample size calculations. As a rule of thumb, maintaining statistical reliability entails ensuring that the number of events being studied per variable is not less than 10 (Peduzzi et al. 1996), or alternatively, that the number of study participants exceeds 104 plus the number of covariates in the model (Green 1991). 

In conclusion, a comprehensive understanding of the underlying assumptions of GLMs is crucial to produce valid and reliable results. In cases where these assumptions are violated, there are alternative methodologies available to address the specific challenges encountered. Embracing these alternative approaches enables researchers to mitigate the consequences of such violations, thereby improving the precision and interpretability of their GLM analyses. 

## 1.10 Evaluation of Association Models

Evaluating models is critical for understanding their performance and for ultimately selecting a final model that accurately quantifies the exposure-outcome association. This evaluation should occur throughout the modeling process. It should be rooted in the subject-specific knowledge of the scientific context and bolstered by pertinent statistical criteria. A model that accurately estimates the exposure effect should be compatible with three key elements: (1) information derived from the data under analysis, (2) the assumptions intrinsic to the model, and (3) the presumed causal structures. Compatibility with the three elements must be addressed in the model evaluation. 

## 1.10.1 Evaluation of Model Compatibility with Data

Nonrandom incompatibility arises when a model overlooks one or more confounders, includes variables that are not confounding variables, or uses an inappropriate functional form of covariates. Evaluating the compatibility between a model and data statistically includes “goodness-of-fit” criteria such as adjusted R2, penalized likelihood-based measures (Akaike Information Criterion and Schwarz Criterion), likelihood ratio tests, and deviance tests. While these methods are commonly used in prediction models, they are not adequate for evaluating the performance of association models focused on the validity of the exposure effect measure. A well-fitted regression model does not necessarily mean that the model is correct for estimating the exposure-outcome association. In fact, the application of goodness-of-fit criteria and statistical significance-based tests in association models can generate misleading results, leading to incorrect decisions in model specification (Greenland 1989). As discussed in previous sections, important confounders may be excluded from a model simply because they do not substantially improve the fit. 

Ideally, we aim to assess the compatibility between a fitted regression model and the presumed causal structures in the base population from which the study sample originates. In practice, we often depend on empirical data to identify confounding factors and effect modifiers (using a data-driven approach). However, it is crucial to recognize that our findings within the study sample may not accurately represent the base population. This discrepancy can arise due to random errors or systematic biases such as selection and information bias. These biases can distort the relationships between confounders, diseases, and exposures, complicating the identification of genuine confounding variables. As a result, the validity of the measure assessing the exposure effect may be compromised. 

Incompatibility can manifest when a model incorrectly excludes a confounder or includes an irrelevant variable. For instance, consider a log-binomial regression model: 

$$
\operatorname{Log} (\text { risk }, R) = \beta_ {0} + \beta_ {x} X + \beta_ {1} \text { sex } + \beta_ {2} \text { age } \tag {1.23}
$$

The stepwise variable selection process is unsuitable for selecting confounders in a model. This process retains a variable if it is “significantly” associated with Y. However, if the variable is not related to the exposure variable $X ,$ this process will erroneously select this variable as a confounder, leading to over-adjustment for a non-confounding variable (see Example 1.7). Similarly, the stepwise process will remove a confounder whose association with Y is “non-significant,” resulting in uncontrolled confounding. A small p-value of a significant test of the regression coefficient of $\beta _ { 1 }$ does not imply that sex is a confounder because the test only tells there is a significant association between age and the outcome, not between the exposure X and sex. Since confounding is a systematic error, not a random one, significance-based tests cannot be used to test for this systematic error. 

Incompatibility also occurs when data do not support the form of covariates used in a model. For example, the model in Equation 1.23 assumes that the relationship between age and risk is linear on the log scale. Incompatibility occurs when there is a nonlinear association in the data. In such cases, a more complex model like a quadratic regression model may be used: 

$$
\operatorname{Log} (\text { risk }, R) = \beta_ {0} + \beta_ {x} X + \beta_ {1} \text { sex } + \beta_ {2} \text { age } + \beta_ {3} \text { age } ^ {2} \tag {1.24}
$$

The fit of a simpler model (1.23) against a more complex model (1.24) can be tested using either the deviance test or the likelihood ratio test. Specifically, we can test the hypothesis $H _ { 0 } \colon$ the model is linear in age, against the alternative hypothesis $H _ { \mathrm { a } } \mathrm { : }$ the model is quadratic in age, by testing $H _ { 0 } \colon \beta _ { 3 } = 0$ . If the resulting p-value is small, it indicates that random error does not play a substantial role against $H _ { 0 }$ and that the quadratic term captures deviations of the true regression from the linear model. However, a large p-value does not necessarily imply a good fit of the linear model to the data; it simply suggests that there is insufficient evidence to support the inclusion of the quadratic term. In other words, a large p-value obtained from this test leaves room for the possibility that $\beta _ { 3 } a g e ^ { 2 }$ is important for accurately describing the true regression function, but the test failed to detect this condition (Greenland 2008a). Chapter 2 provides detailed information about the use of the deviance test to compare models (Section 2.7.5). 

Statistical analytic packages automatically provide the results for the “Testing Global Null Hypothesis,” which typically includes the likelihood ratio test, score test, and Wald test (Output 1.8). 


SAS Output 1.8 Testing global null hypothesis


<table><tr><td colspan="4">Testing Global Null Hypothesis: BETA=0</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>Likelihood Ratio</td><td>288.2490</td><td>16</td><td>&lt;.0001</td></tr><tr><td>Score</td><td>294.8689</td><td>16</td><td>&lt;.0001</td></tr><tr><td>Wald</td><td>270.0299</td><td>16</td><td>&lt;.0001</td></tr></table>

The null hypothesis for these tests is that all the covariate coefficients are zero; in other words, $\beta _ { x } = \beta _ { 1 } = \beta _ { 2 } = \beta _ { 3 } = 0 .$ . A small p-value from these tests suggests that at least one of the covariates is associated with the outcome. However, it does not inform us whether the variables are correctly selected or whether the form of a variable is appropriately used. For example, if a variable caused by the outcome is mistakenly included in the model, a small p-value would indicate it was associated with the outcome but would not signify its improper use. 

Conversely, a large p-value obtained from the “Testing Global Null Hypothesis” does not suggest that all the covariates in the model are unimportant or that the model fits well. There is always a possibility that transforming those covariates could result in a small p-value or that their importance cannot be determined due to random errors in the data under analysis (Greenland 2008a). For instance, consider a regression model used to estimate the effect of exposure to wood dust on the occurrence of chronic respiratory disease. If the exposure is measured in binary terms, i.e., exposed versus unexposed, the model would yield a large p-value. However, if a composite variable that combines the dose (say, average hours per day) and duration (number of months) is used, a small p-value would be estimated. 

In summary, evaluations should be guided by subject knowledge and presumed causal structures or some level of partial knowledge should be applied. When using data-driven methods to evaluate model-data compatibility, one must exercise great caution, as outlined in Sections 1.7 and 1.8. 

## 1.10.2 Evaluation of Model Compatibility with Assumptions

Violations of model assumptions can result in biased estimates of the exposure-outcome association. Thus, checking model-specific assumptions throughout the modeling process is crucial. If a specific assumption is violated, it is necessary to explore the potential sources of this violation and find alternative methods to address it. When using GLMs to estimate the exposure-outcome association, while adjusting for confounding variables, two fundamental assumptions are involved: the correct use of the probability distribution and the correct use of a link function. The choice of a probability distribution is determined by the type of the outcome variable. For instance, the cumulative risk of the outcome variable suggests a binomial distribution, while the incidence rate of the outcome indicates a Poisson distribution with an offset. 

The selection of a suitable link function, which connects the expected means of the outcome variable to the linear predictors on an appropriate scale, is equally crucial. This selection is particularly important in epidemiologic research, as it determines the type of association measure used to quantify the degree of the exposure-outcome associations. For example, the identity link function leads to the estimation of risk difference, the log link functions yield estimates of risk ratio and rate ratio, and the logit function leads to the estimation of odds ratio. The selection of a probability distribution for the outcome variable and the link function must be supported by the nature of the data, the study design, and the measure of association. 

Alternative methods that circumvent the violation of model assumptions have been described in Section 1.9.3. If the observations are not independent, other models such as GEE or generalized linear mixed models can be used. Violations of linearity can be addressed by changing the form of variables, such as categorization and splines. Outlier observations can be removed from the modeling process if there are only a few outliers in the dataset under analysis. When the problem of collinearity occurs in 

GLMs, this issue needs to be appropriately addressed using the methods described in Section 1.7.4. 

## 1.10.3 Evaluation of Model Compatibility with Causal Structures

Understanding causal relationships, often guided by existing subject expertise, enables us to represent these presumed associations in directed acyclic graphs (DAGs). These qualitative causal structures are then operationalized into regression models to quantify the strength of associations between exposure and outcome variables. Such models rely on empirical data to validate the hypothesized relationships presented in a DAG. 

Throughout the modeling process, we may refine and re-specify the regression model based on assumption checking and interim results of the modeling analysis. However, there may be instances where one or more causal relations presented in a DAG are not compatible with the results of modeling. In such cases, empirical data and subject-matter knowledge should be used to probe the reasons for this incompatibility. A substantial incompatibility might indicate an error in the expected causal structure, errors in the modeling process, errors in the data, or some combination of these. The exploration of the incompatibility may lead to further calibration of the regression model and can even suggest a new hypothesis about causal relationships that needs to be further investigated in future epidemiological studies. 

Incompatibility between empirical results and anticipated causal structures may serve as a warning sign of bias in a study. For instance, it has been scientifically established that the presence of one or more chronic diseases increases the risk of hospitalization for COVID-19 patients. However, if a regression model analyzing data from a large cohort study estimates the coefficient for chronic disease status to be near or even below zero, it suggests an inconsistency that requires further exploration and clarification. If such inconsistency can’t be accounted for by random error, it may be necessary to seek a causal explanation for the anomaly. Such incompatibility against our contextual knowledge in this example might indicate the presence of certain biases in the study or issues in the modeling process. 

Incompatibility between a regression analysis and existing causal structures may indicate that relationships established in previous research could be inaccurately specified. For instance, earlier case-control studies identified coffee consumption as a risk factor for coronary heart disease (CHD) (Greenland 1993). However, the majority of cohort studies have not observed such an association. For example, a large cohort study involving 82,369 Japanese adults, followed over 13 years, as analyzed through multiple Cox proportional hazards regression, found no association between coffee consumption and CHD (Kokubo et al. 2013). This result does not necessarily indicate flaws in the cohort study; instead, it may suggest that the previously assumed causal link between coffee use and CHD may be weak or nonexistent in the base population. This necessitates a re-evaluation of the scientific rigor of earlier case-control studies. Subsequent cohort studies and meta-analyses have corroborated the lack of risk association (Ding et al. 2014, Park, Cho, and Myung 2023, Sofi et al. 2007). In light of the new findings, we need to update our subject knowledge and revise the relationships in the causal structure accordingly. 

In the case where coffee consumption is used as a covariate in a regression analysis of the association between smoking and CHD in cohort data, there is no need to adjust for coffee consumption in the model to estimate the rate ratio of CHD for smoking since it is not a risk factor for CHD. However, if a confounding bias is confirmed through a data-driven approach and the difference between the unadjusted rate ratio and the coffee-adjusted rate ratio is more than 10% (assuming no other biases), this change may suggest that coffee consumption could serve as a proxy for a confounding variable. 

For example, alcohol consumption is associated with coffee consumption and is a risk factor for CHD. After adjusting for alcohol consumption in the model, the spurious confounding effect of coffee consumption disappears. However, if alcohol consumption was not measured in the study, the model needs to control for coffee consumption as a proxy for alcohol consumption. This example underscores the point that when incompatibility arises, investigators should utilize substantive knowledge to examine the cause of the incompatibility. 

When subject-knowledge is unavailable or partially available, a data-driven approach can be used to evaluate relationships within empirical data. To effectively control for confounding, we might construct a conservative model that includes genuine confounding variables and potential confounders that either cause the exposure variable or are a cause of the outcome variable (VanderWeele and Shpitser 2011). We assess the degree to which such potential confounders alter the estimate of the exposure effect within the empirical data. By definition, to be a confounder, an extraneous factor must be related to both the exposure and outcome of interest but must not be influenced by either of them. We may observe an association between a covariate and the outcome variable in the unexposed study population, and also observe an association between a covariate and the exposure in the total study population. However, this empirical, data-driven approach could produce misleading conclusions if we rely solely on observed relations existing in a study sample, without properly considering the causal relationships that truly exist in the base population from which the study sample was drawn. Therefore, it is possible for a non-causal relationship to be observed in data due to purely random events. It is also possible that a causal relationship is not apparent in data due to low statistical power or because the association is suppressed or obscured by one or more unmeasured confounding variables (Suzuki, Shinozaki, and Yamamoto 2020). For an extreme example, if the magnitude of a positive causal effect of C on E and that of a negative confounding effect of an unmeasured confounder U are equivalent, they might perfectly cancel out. As a result, the net effect of C on E becomes null and the C-E association disappears, contradicting its causal relation depicted in a DAG. 

A significant threat to accurately estimating the effect of an exposure on an outcome variable is the presence of unmeasured confounders. In a well-specified model, the regression coefficient for the exposure variable is interpreted as the average causal effect, but only if all confounding variables are accurately measured and correctly adjusted for in the model. In reality, however, it is often not feasible to measure all potential confounders and control for them in a model. This constitutes an inherent threat to validity in observational studies where exposure is not randomly assigned. To mitigate this bias, we include all measured confounding variables, guided by causal structures represented in a DAG, in a regression model. We also employ sensitivity analysis and analytic techniques to quantify the magnitude of the bias produced by unmeasured confounders (Fox, MacLehose, and Lash 2022, Kasza, Wolfe, and Schuster 2017). Furthermore, we can leverage the causal structure in a DAG to indirectly or partially control for unmeasured confounders, such as the case presented in the following example. 

## Example 1.8

Consider the following directed acyclic graph (DAG) (Figure 1.13). Both $U _ { 1 }$ and $U _ { 2 }$ are unmeasured confounders that confound the E-D association, while $C _ { 1 }$ and $C _ { 2 }$ are measured variables. Even though $\mathrm { U } _ { 1 }$ and $\mathrm { { U } } _ { 2 }$ cannot be adjusted in a regression model as they are not measured, we can adjust for variables $C _ { 1 }$ and $C _ { 2 } .$ . This will indirectly mitigate the confounding bias caused by $\mathrm { { \dot { U } } _ { 1 } }$ and partially alleviate the confounding bias due to $\mathrm { { U } } _ { 2 } .$ If $C _ { 2 }$ is strongly associated with $\mathrm { U } _ { 2 } ,$ adjusting for $C _ { 2 }$ will remove a significant portion of the confounding effect. In this $\mathrm { D A G } , \mathrm { C } _ { 2 }$ serves as a surrogate confounder. If a confounder is not measured in a study, it is better to adjust for a surrogate confounder than to rely on crude estimates such as crude risk ratio or cOR (Hernán et al. 2002). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/2841a962c5c9c170aa0296727c7462e5563a1543e85e2d1a6ea7cb79f8ed614c.jpg)



FIGURE 1.13



A directed acyclic graph presenting unmeasured confounders.


In summary, it is important for researchers to compare the anticipated relationships from causal structures to the association estimates generated through modeling analysis. Apparent incompatibilities may indicate an error in our expectations, errors in the analytical model, inaccuracies in the data, or a combination thereof. All of these potential issues necessitate careful consideration, taking into account the existing knowledge of established causal relationships among the variables and findings from empirical data analysis. It is also important to remember that the use of data-driven approaches to identify confounders and mediators should be executed with great caution. 

## 1.11 Recommendations for Association Model Analysis

To enhance the rigor and quality of association model analysis for causal inference, we provide the following recommendations or guidance for analyzing data and reporting findings. 

## 1. Construct an analytic plan involving model specification and evaluation

In line with the epidemiological principles and statistical methodology discussed in previous sections, the development of a comprehensive analytic plan is of utmost importance. This plan serves as a guiding framework based on the study’s objectives and hypotheses, providing a blueprint to navigate the complexities of our research. The analytic plan should be formulated during the initial stages of the study proposal and include detailed processes for model specification and a thorough examination of model-specific assumptions. By systematically outlining these procedures, we anticipate the trajectory of the study and enhance its credibility before data collection begins. 

During the actual data analysis, it is essential to adhere faithfully to the established analytic plan. This adherence ensures the appropriate specification of a regression model and robust evaluation of its underlying assumptions. Each of the univariate analysis, bivariate analysis, and multivariate regression analysis should be accorded due importance, as the first two lay the foundation for the more advanced multivariate modeling analysis. In the event that the data violate any assumptions, the plan should also incorporate contingency strategies outlining alternative methods to address these violations. This iterative process of problem identification and solution proposal safeguards the integrity of the data analysis. 

## 2. Use prior subject-knowledge, aided by a causal diagram, to select variables

This should be the primary approach for the selection of relevant and critical variables for a regression model that estimates the exposure-outcome association. The choice of variables that plausibly meet the criteria of confounders, mediators, and modifiers should be based on prior contextual knowledge, rather than their associations with the exposure or outcome from the available data. Directed acyclic graphs are recommended to graphically describe the hypothesized role of each variable along the causal path from the exposure to the outcome, thus aiding in examining relationships within causal structures. With this visual aid, investigators can identify a minimal-sufficient adjustment set of confounders to estimate the total effect of exposure on the outcome, avoiding the need to control for mediators and colliders in a regression model. Furthermore, particular attention should be paid to confounders that are presented in a causal structure but not measured in the study. Identifying feasible approaches to mitigate their impact on the causal analysis is crucial. 

## 3. Use information from data, aided with partial subject knowledge, to select variables

This secondary approach, a data-driven method for variable selection, is recommended only when we lack essential subject knowledge or biological plausibility to guide the selection of confounders and modifiers. If we do not have clear knowledge defining the role of a specific variable, we first use our data to assess whether it has a modifying effect, employing the statistical approach mentioned in Section 1.8. If no modifying effect is present, we move to assess its potential confounding effects. In theory, if a variable confounds the exposure-outcome association, we would expect to see a change in the magnitude of the effect estimate between a regression model that does not adjust for that variable and one that does. However, the occurrence of such a change does not necessarily indicate that there is a confounding effect by the variable. The change can also occur if that variable acts as a mediator, modifier, or collider. Therefore, when using a 10%-change rule in the data-driven approach, it is important to rule out other potential roles with great care. 

To reiterate, confounding is a systematic error, not a random one. Therefore, methods based on p-values and stepwise variable selection should not be used to select confounders for causal inference. These approaches do not consider the underlying causal structure of the hypothesis and therefore do not adequately select and control for confounding. Measures of model fit or likelihood (such as R2, Akaike Information Criterion, Schwarz Criterion, or likelihood ratio tests) also have no relevance to causal inference and cannot be used to address systematic errors. 

## 4. Carefully examine incompatibility of a causal relation between the one expected in a causal structure and the one estimated from empirical data

The ultimate goal of research is to generate evidence to support or refute a presumed causal relation in a causal structure. The exposure-outcome association quantified by effect measures such as risk ratio or risk difference may refute a causal effect of the exposure on the outcome derived from subject knowledge or even deviate from biological plausibility. Two main reasons may cause such disagreement. The first one relates to the fact that the association is estimated from available data collected from a specific study. However, due to random errors, systematic errors (e.g., selection or information bias), or both, the data may not capture the causal relationship accurately. In other words, the data under analysis fail to capture the true causal relation between the exposure and outcome in its base population. 

The second possible reason is that the presumed causal relation derived from prior knowledge may not apply to the study population in a particular study. It is possible that the established exposure-outcome effect from previous studies disappears in the current study, or a variable that served as a confounding variable in the previous studies does not have a confounding effect in the current study. In such a case, we need to examine the scientific rigor of previous research that led to the presumed causal relation, as well as the scientific rigor of the current study, focusing on the strict application of the scientific method to ensure robust and unbiased study design, methodology, analysis, interpretation, and reporting of results (National Institutes of Health (NIH) 2018). 

## 5. Properly interpret exposure effect estimates with compatibility intervals

When reporting and interpreting an effect estimate, it is advised to present the point estimate of the exposure effect along with the compatibility or confidence interval. These intervals include values compatible with our data. The practice of dichotomizing based on significance versus non-significance using p-values should be avoided, given that a p-value cannot be used to determine the existence of an association (see Sections 1.5.5 and 1.5.6 for detailed explanation). For instance, a risk ratio of 2.51 with a confidence interval of 0.96 to 4.81 and a corresponding p-value of 0.09 should not be reported as “no association.” The point estimate (risk ratio) gauges the strength of the association, not the p-value. In the absence of an association, the risk ratio would equal or be near 1. Since the compatibility interval suggests that the risk ratio could be as large as 4.81, an association can’t be plausibly excluded from the study population; indeed, it does appear in the study. The results should be articulated as, “Exposure subjects had a 2.51-fold increased risk of the outcome (95% CI: 0.96–4.81). However, the exposure effect is not precisely estimated,” or “Our estimate of the risk ratio was 2.51, and thus exposure could be positively associated with the outcome; however, possible risk ratios that are highly compatible with our data, given our model, ranged from 0.96 (essentially no association) to 4.81 (a relatively strong association).” 

When reporting a p-value, present its precise numerical value, rather than using an inequality (Amrhein, Trafimow, and Greenland 2019). For instance, if you have a p-value of 0.07, present it as $" p = 0 . 0 7 "$ instead of $^ { \prime \prime } p > 0 . 0 5 . ^ { \prime \prime }$ We recommend avoiding the use of terms such as “significant” or “non-significant” as they implicitly suggest the presence or absence of an association. Additionally, statistical significance does not necessarily correlate with clinical or public health significance. Instead, it is more informative to report a point estimate of the exposure effect alongside its compatibility interval. To better understand the reasons for a wide compatibility interval, it is useful to report the size of the study population and the number of subjects in each stratum of covariates (such as confounders or modifiers) in the model, which is known as the cell number of subjects. 


TABLE 1.8 Association Between Chronic Disease and COVID-19, Stratified by Sex


<table><tr><td rowspan="2" colspan="2"></td><td colspan="2">COVID-19</td><td rowspan="2">RR</td><td rowspan="2">95% CI</td><td rowspan="2">p-value</td></tr><tr><td>Yes</td><td>No</td></tr><tr><td rowspan="3">Male</td><td>Chronic disease</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>No</td><td>20</td><td>534</td><td>1</td><td></td><td></td></tr><tr><td>Yes</td><td>5</td><td>75</td><td>1.73</td><td>0.67–4.48</td><td>0.25</td></tr><tr><td rowspan="3">Female</td><td>Chronic disease</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>No</td><td>15</td><td>513</td><td>1</td><td></td><td></td></tr><tr><td>Yes</td><td>10</td><td>190</td><td>1.76</td><td>0.80–3.85</td><td>0.15</td></tr></table>

As illustrated in Table 1.8, this hypothetical cohort study examines the association between chronic disease and COVID-19 among the older population. Although the total sample size is large (n = 1,362) and the association levels measured by risk ratios are moderate (crude RR = 1.66 and sex-adjusted RR = 1.75), the p-values and 95% confidence intervals are wide (95% CI for crude RR: 0.92–2.99; p-value = 0.09, and 95% CI for adjusted RR: 0.95–3.21; p-value = 0.11). The imprecision of the effect estimates may be attributed to imbalanced cell numbers in certain strata. For example, the cell number of subjects in some strata is very small (e.g., 5 and 10). 

When a study yields an effect estimate, such as risk ratio or hazard ratio, with a p-value larger than 0.05, we recommend that authors carefully describe and interpret the practical implications of all values within the 95% compatibility interval, especially the observed effect (i.e., the point estimate) and its limits. To emphasize, all the values between the interval’s limits are reasonably compatible with the data. Therefore, to single out one particular value (such as the null value) and ignore others, especially the more compatible values, is the central problem in the dichotomization of significance. 

When conducting a statistical test, such as the Chi-squared test, log-rank test, or likelihood ratio test to statistically test variations in means or proportions among two or more comparison groups in binary analysis or variations in regression coefficients in multiple regression analysis, it is recommended to explicitly state that the tested difference is a statistical difference and to provide the relevant statistics, including the value of a test statistic (such as t-statistics and Chi-statistics), degrees of freedom, and p-value. Moreover, for better comprehension of the results, consider reporting the actual numerical differences between the comparison groups, such as the difference in incident cases between them, or presenting visual representations of survival curves for these groups 

## 6. Adequately report findings in journals and conferences

To contribute to scientific discourse and ensure transparency, reports should include comprehensive information about the study’s objective, design, population, sampling methodology, analytic methods, and results. It is crucial to clearly articulate the research question, specifying whether it is of a causal or predictive nature. When conducting association modeling analysis, we advise using labels such as “exposure variable,” “outcome variable,” “confounder or confounding variable,” “modifier,” and “mediators” for variables of interest. 

Conversely, the term “predictor or predicting variable” should be reserved for prediction modeling analysis. Additionally, it is essential to communicate thorough details regarding model specifications and assumptions. This level of detail enables peers to evaluate the study’s rigor, assess data quality, and ascertain the validity of the findings. 

Additionally, authors should report the results of both the unadjusted and the confounder-adjusted analysis, including their compatibility intervals. This allows the audience to understand how and to what extent one or more confounding variables cause changes in the exposure effect estimate. Similarly, when effect modification is present in a study, authors should report both crude and confounder-adjusted results at each level of the modifier. This reporting helps the audience to see how and to what degree the modifier alters the association between the exposure and the outcome. Although association models are used for making causal inferences, a definitive statement of causation cannot be drawn from observational studies. Therefore, the term “causation” and similar statements about causation should be avoided. 

There are several excellent guidelines available for reporting findings of association models in journals or conference presentations (Ramspek et al. 2021). One of the most widely used is the Strengthening the Reporting of Observational Studies in Epidemiology (STROBE), which provides clear and detailed guidance on reporting results of observational studies (von Elm et al. 2007). The STROBE checklists for reporting cohort studies, case-control studies, cross-sectional studies, and conference abstracts are available on the STROBE website (https://www.strobe-statement.org/). Several journals have also published useful guidance for reporting results in causal inference, for example, the guidance developed by the editors of respiratory, sleep, and critical care journals (Lederer et al. 2019). We strongly recommend that investigators use the STROBE statement when reporting results. 

## 1.12 Summary

Regression models can be broadly categorized into prediction models and association models. Because epidemiologic studies focus on disease etiology, association models are commonly used in analyzing data collected from various epidemiologic study designs. While regression modeling techniques are useful for examining the association between exposure and outcome, and for making causal inferences, their use must be guided by the principles of epidemiology and the characteristics of the data. One of the key components in data analysis is model specification. Models must be wellspecified based on presumed causal diagrams, the correct form of variables in the model, and the appropriate regression model to use. Another important component is model evaluation, which should not rely solely on statistical approaches but on epidemiologic principles. Ideal models should be compatible with the data under analysis, adhere to model assumptions, and align with the causal structures presented in the causal diagram. 

## Additional Readings

The following excellent publications provide additional information about application of regression models in epidemiologic research: 



Greenland, Sander, and Neil Pearce. 2015. “Statistical foundations for model-based adjustments.” Ann Rev Public Health 36 (1):89–108. 





Greenland, S., S. J. Senn, K. J. Rothman, J. B. Carlin, C. Poole, et al. 2016. “Statistical tests, P values, confidence intervals, and power: a guide to misinterpretations.” Eur J Epidemiol 31 (4):337–50. 





Hernán, M. A., S. Hernández-Díaz, M. M. Werler, and A. A. Mitchell. 2002. “Causal knowledge as a prerequisite for confounding evaluation: an application to birth defects epidemiology.” Am J Epidemiol 155 (2):176–84. 





Allen, M.P. 1997. Understanding regression analysis. New York, NY: Plenum Press. 



## References



Agresti, A. 2012. Categorical data analysis. 2nd ed., Wiley series in probability and statistics. New York, NY: Wiley. 





Ajzen, I. 1991. “The theory of planned behavior.” Organ Behav Hum Decis Process 50 (2): 179–211. doi: 10.1016/0749-5978(91)90020-T. 





Allen, M. P. 1997. Understanding regression analysis. New York, NY: Plenum Press. 





Amrhein, V., S. Greenland, and B. McShane. 2019. “Scientists rise up against statistical significance.” Nature 567 (7748): 305–307. doi: 10.1038/d41586-019-00857-9. 





Amrhein, V., D. Trafimow, and S. Greenland. 2019. “Inferential statistics as descriptive statistics: There is no replication crisis if we don’t expect replication.” Am Stat 73 (sup1): 262–270. doi: 10.1080/00031305.2018.1543137. 





Arnold, K. F., V. Davies, M. de Kamps, P. W. G. Tennant, J. Mbotwa, and M. S. Gilthorpe. 2020. “Reflection on modern methods: generalized linear models for prognosis and intervention— theory, practice and implications for machine learning.” Int J Epidemiol 49 (6): 2074–2082. doi: 10.1093/ije/dyaa049. 





Bours, M. J. L. 2020. “A nontechnical explanation of the counterfactual definition of confounding.” J Clin Epidemiol 121: 91–100. doi: 10.1016/j.jclinepi.2020.01.021. 





Breslow, N. E., and N. E. Day. 1980. Statistical methods in cancer research. Volume I - The analysis of case-control studies. 1980/01/01 ed. Vol. 1, IARC Sci Publ. Lyon: International Agency for research on cancer. 





Chatterjee, S., and A.S. Hadi. 2012. Regression analysis by example. 5th ed. Hoboken, NY: Wiley. 





Checkoway, H., N. Pearce, and D. Kriebel. 2004. Research methods in occupational epidemiology. 2nd ed. Monographs in Epidemiology and Biostatistics. New Yok, NY: Oxford Academic. 





Cohen, J., P. Cohen, S. G. West, and L. S. Aiken. 2003. Applied multiple regression/correlation analysis for the behavioral sciences. 3rd ed. Mahwah, NJ, US: Lawrence Erlbaum Associates Publishers. 





Cole, S. R., H. Chu, and S. Greenland. 2014. “Maximum likelihood, profile likelihood, and penalized likelihood: A primer.” Am J Epidemiol 179 (2):252–60. doi: 10.1093/aje/kwt245. 





Cox, D. R. 1972. “Regression models and life-tables.” J R Stat Soc Series B Stat Methodol 34 (2):187–220. 





Digitale, J. C., J. N. Martin, and M. M. Glymour. 2022. “Tutorial on directed acyclic graphs.” J Clin Epidemiol 142:264–267. doi: 10.1016/j.jclinepi.2021.08.001. 





Ding, M., S. N. Bhupathiraju, A. Satija, R. M. van Dam, and F. B. Hu. 2014. “Long-term coffee consumption and risk of cardiovascular disease: a systematic review and a dose-response meta-analysis of prospective cohort studies.” Circulation 129 (6):643–659. doi: 10.1161/ circulationaha.113.005925. 





Dobson, A. J., and A. G. Barnett. 2018. An introduction to generalized linear models. 4th ed. Boca Raton: Chapman & Hall/CRC. 





Greenland, S., and J. M. Robins. 2009. “Identifiability, exchangeability and confounding revisited.” Epidemiol Perspect Innov 6:4. doi: 10.1186/1742-5573-6-4. 





Lewinsohn, P. M., J. R. Seeley, R. E. Roberts, and N. B. Allen. 1997. “Center for Epidemiologic Studies Depression Scale (CES-D) as a screening instrument for depression among communityresiding older adults.” Psychol Aging 12 (2):277–287. doi: 10.1037//0882-7974.12.2.277. 





Ramspek, C. L., E. W. Steyerberg, R. D. Riley, F. R. Rosendaal, O. M. Dekkers, F. W. Dekker, and M. van Diepen. 2021. “Prediction or causality? A scoping review of their conflation within current observational research.” Eur J Epidemiol 36 (9):889–898. doi: 10.1007/s10654-021-00794-w. 





VanderWeele, T. J., T.L. Lash, and Kenneth J. Rothman. 2021. “Analysis of interaction.” In Modern epidemiology, edited by Timothy L. Lash, T.J. VanderWeele, S. Haneuse and K. J. Rothman, 619–654. Philadelphia: Wolters Kluwer. 





Dunn, P. K., and G. K. Smyth. 2018. Generalized linear models with examples in R. New York, NY: Springer. 





Greenland, S., J. J. Schlesselman, and M. H. Criqui. 1986. “The fallacy of employing standardized regression coefficients and correlations as measures of effect.” Am J Epidemiol 123 (2):203–208. doi: 10.1093/oxfordjournals.aje.a114229. 





Lipsky, A. M., and S. Greenland. 2022. “Causal directed acyclic graphs.” JAMA 327 (11):1083–1084. doi: 10.1001/jama.2022.1816. 





Richiardi, L., R. Bellocco, and D. Zugna. 2013. “Mediation analysis in epidemiology: Methods, interpretation and bias.” Int J Epidemiol 42 (5):1511–1519. doi: 10.1093/ije/dyt127. 





VanderWeele, T. J., and Kenneth J. Rothman. 2021. “Epidemiologic study design with validity and efficiency considerations.” In Modern epidemiology, edited by Timothy L. Lash, T. J. VanderWeele, S. Haneuse and K. J. Rothman, 33–52. Philadelphia: Wolters Kluwer. 





Eaton, W. W., C. Muntaner, C. Smith, A. Tien, and M. Ybarra. 2004. “Center for epidemiologic studies depression scale: Review and revision (CESD and CESD-R).” In The use of psychological testing for treatment planning and outcomes assessment, edited by Maruish ME, 363–377. Mahwah, NJ: Lawrence Erlbaum. 





Greenland, S., S. J. Senn, K. J. Rothman, J. B. Carlin, C. Poole, S. N. Goodman, and D. G. Altman. 2016. “Statistical tests, P values, confidence intervals, and power: a guide to misinterpretations.” Eur J Epidemiol 31 (4):337–350. doi: 10.1007/s10654-016-0149-3. 





Liu, H. 2016. “Egocentric network and condom use among mid-age female sex workers in China: A multilevel modeling analysis.” AIDS Patient Care STDS 30 (4):155–65. doi: 10.1089/ apc.2015.0349. 





Robins, J. M., and S. Greenland. 1986. “The role of model selection in causal inference from nonexperimental data.” Am J Epidemiol 123 (3):392–402. doi: 10.1093/oxfordjournals.aje.a114254. 





VanderWeele, T. J., and I. Shpitser. 2011. “A new criterion for confounder selection.” Biometrics 67 (4):1406–13. doi: 10.1111/j.1541-0420.2011.01619.x. 





Evans, D., B. Chaix, T. Lobbedez, C. Verger, and A. Flahault. 2012. “Combining directed acyclic graphs and the change-in-estimate procedure as a novel approach to adjustment-variable selection in epidemiology.” BMC Med Res Methodol 12:156. doi: 10.1186/1471-2288-12-156. 





Hanley, J. A., A. Negassa, M. D. d. Edwardes, and J. E. Forrester. 2003. “Statistical analysis of correlated data using generalized estimating equations: An orientation.” Am J of Epidemiol 157 (4):364–375. doi: 10.1093/aje/kwf215. 





MacKinnon, D. P. 2012. Introduction to statistical mediation analysis, New York, NY: Routledge. 





Robins, J. M., and H. Morgenstern. 1987. “The foundations of confounding in epidemiology.” Comput Math Appl 14 (9):869–916. doi: https://doi.org/10.1016/0898-1221(87)90236-7. 





VanderWeele, T. J., and I. Shpitser. 2013. “On the definition of a confounder.” Ann Stat 41 (1): 196–220, 25. 





Fisher, J. D., W. A. Fisher, and P. A. Shuper. 2009. “The information-motivation-behavioral skills model of HIV preventive behavior.” In Emerging theories in health promotion practice and research, edited by R. J. DiClemente, R. A. Crosby and M. C. Kegler, 21–63. Hoboken, NJ: Jossey-Bass/ Wiley. 





Hawkins, A. T., and L. R. Samuels. 2021. “Use of confidence intervals in interpreting nonstatistically significant results.” JAMA 326 (20):2068–2069. doi: 10.1001/jama.2021.16172. 





MacKinnon, D. P., J. L. Krull, and C. M. Lockwood. 2000. “Equivalence of the mediation, confounding and suppression effect.” Prev Sci 1 (4):173–181. doi: 10.1023/a:1026595011371. 





Rothman, K. J. 2012. Epidemiology: An introduction. 2nd ed. NY, New York: Oxford University Press. 





von Elm, E., D. G. Altman, M. Egger, S. J. Pocock, P. C. Gøtzsche, and J. P. Vandenbroucke. 2007. “The Strengthening the Reporting of Observational Studies in Epidemiology (STROBE) statement: guidelines for reporting observational studies.” Epidemiology 18 (6):800–4. doi: 10.1097/ EDE.0b013e3181577654. 





Fox, M. P., R. F. MacLehose, and T. L. Lash. 2022. Applying quantitative bias analysis to epidemiologic data. Cham, Switzerland: Springer International Publishing. 





Hernán, M. A., S. Hernández-Díaz, M. M. Werler, and A. A. Mitchell. 2002. “Causal knowledge as a prerequisite for confounding evaluation: an application to birth defects epidemiology.” Am J Epidemiol 155 (2):176–184. doi: 10.1093/aje/155.2.176. 





Maldonado, G., and S. Greenland. 1993. “Simulation study of confounder-selection strategies.” Am J Epidemiol 138 (11):923–936. doi: 10.1093/oxfordjournals.aje.a116813. 





Rothman, K. J., S. Greenland, and T.L. Lash. 2008. “Validity in epidemiologic studies.” In Modern epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 128–147. Philidelphia, PA: Lippincott Williams & Wilkins. 





Weng, H. Y., Y. H. Hsueh, L. L. McV Messam, and I. Hertz-Picciotto. 2009. “Methods of Covariate Selection: Directed Acyclic Graphs and the Change-in-Estimate Procedure.” Am J Epidemiol 169 (10):1182–1190. doi: 10.1093/aje/kwp035. 





Glymour, M. M., and S. Greenland. 2008. “Causal diagrams.” In Modern epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 183–209. Philidelphia, PA: Lippincott Williams & Wilkins. 





Hernán, M. A., J. Hsu, and B. Healy. 2019. “A second chance to get causal inference right: A classification of data science tasks.” CHANCE 32 (1):42–49. doi: 10.1080/09332480.2019.1579578. 





McCullagh, P., and J. A. Nelder. 2019. Generalized linear models. 2nd ed. New York: Routledge. 





Rothman, K. J., and T. L. Lash. 2021. “Precision and study size.” In Modern epidemiology, edited by T. L. Lash, T.J. VanderWeele, S. Haneuse and K. J. Rothman, 333–366. Philadelphia: Wolters Kluwer. 





Woodward, M. 2014. “Epidemiology: study design and data analysis.” In. Boca Raton: CRC Press. Yu, T. S., H. Liu, and K. Hui. 2004. “A case-control study of eye injuries in the workplace in Hong Kong.” Ophthalmology 111 (1):70–4. doi: 10.1016/j.ophtha.2003.05.018. 





Graham, M. H. 2003. “Confronting multicollinearity in ecological multiple regression.” Ecology 84 (11):2809–2815. doi: https://doi.org/10.1890/02-3114. 





Holford, T. R. 2002. Multivariate methods in epidemiology, Monographs in epidemiology and biostatistics; v. 32. Oxford, NY: Oxford University Press. 





McNamee, R. 2005. “Regression modelling and other methods to control confounding.” Occup Environ Med 62 (7):500–506, 472. doi: 10.1136/oem.2002.001115. 





Sainani, K. L. 2014. “Explanatory versus predictive modeling.” PM&R 6 (9):841–844. doi: https:// doi.org/10.1016/j.pmrj.2014.08.941. 





Green, S. B. 1991. “How many subjects does it take to do a regression analysis.” Multivariate Behav Res 26 (3):499–510. doi: 10.1207/s15327906mbr2603_7. 





Hosmer, D.W., S. Lemeshow, and R.X. Sturdivant. 2013. Applied logistic regression. 3rd ed. New Jersey: Wiley. 





Mehio-Sibai, A., M. Feinleib, T. A. Sibai, and H. K. Armenian. 2005. “A positive or a negative confounding variable? A simple teaching aid for clinicians and students.” Ann Epidemiol 15 (6): 421–423. doi: 10.1016/j.annepidem.2004.10.004. 





Schooling, C. M., and H. E. Jones. 2018. “Clarifying questions about “risk factors”: predictors versus explanation.” Emerg Themes Epidemiol 15:10. doi: 10.1186/s12982-018-0080-z. 





Greenland, S. 1989. “Modeling and variable selection in epidemiologic analysis.” Am J Public Health 79 (3):340–349. doi: 10.2105/ajph.79.3.340. 





Jewell, N.P. 2003. Statistics for epidemiology. Boca Raton: Taylor & Francis. 





Miettinen, O. S. 1985. Theoretical epidemiology: Principles of occurrence research in medicine. New York, NY: John Wiley & Sons. 





Shmueli, G. 2010. “To explain or to predict?” Stat Sci 25 (3):289–310, 22. 





Greenland, S. 1993. “A meta-analysis of coffee, myocardial infarction, and coronary death.” Epidemiology 4 (4):366–374. doi: 10.1097/00001648-199307000-00013. 





Kasza, J., R. Wolfe, and T. Schuster. 2017. “Assessing the impact of unmeasured confounding for binary outcomes using confounding functions.” Int J Epidemiol 46 (4):1303–1311. doi: 10.1093/ ije/dyx023. 





Miettinen, O. S., and E. F. Cook. 1981. “Confounding: essence and detection.” Am J Epidemiol 114 (4):593–603. doi: 10.1093/oxfordjournals.aje.a113225. 





Sofi, F., A. A. Conti, A. M. Gori, M. L. Eliana Luisi, A. Casini, R. Abbate, and G. F. Gensini. 2007. “Coffee consumption and risk of coronary heart disease: a meta-analysis.” Nutr Metab Cardiovasc Dis 17 (3):209–223. doi: 10.1016/j.numecd.2006.07.013. 





Greenland, S. 1996. “Absence of confounding does not correspond to collapsibility of the rate ratio or rate difference.” Epidemiology 7 (5):498–501. 





Kaufman, J. S., R. F. Maclehose, and S. Kaufman. 2004. “A further critique of the analytic strategy of adjusting for covariates to identify biologic mediation.” Epidemiol Perspect Innov 1 (1):4. doi: 10.1186/1742-5573-1-4. 





Morgan, S. L., and C. Winship. 2015. Counterfactuals and causal inference. Cambridge, UK: Cambridge University Press. 





Spiegelman, S, and T. J. VanderWeele. 2017. “Evaluating public health interventions: 6. Modeling ratios or differences? Let the data tell us.” Am J Public Health 107 (7):1087–1091. doi: 10.2105/ ajph.2017.303810. 





Greenland, S. 2000. “Causal analysis in the health sciences.” J Am Stat Assoc 95 (449):286–289. doi: 10.2307/2669548. 





Kleinbaum, D. G., and M. Klein. 2010. Logistic regression: A self-learning text. 3rd ed. New York: Springer. 





Morgenstern, H., and D. Thomas. 1993. “Principles of study design in environmental epidemiology.” Environ Health Perspect 101 Suppl 4:23–38. 





Steyerberg, E. W. 2019. Clinical prediction models: A practical approach to development, validation, and updating. New York, NY: Springer. 





Greenland, S. 2008a. “Introduction to regression modeling.” In Modern epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 418–455. Philidelphia, PA: Lippincott Williams & Wilkins. 





Knol, M. J., and T. J. VanderWeele. 2012. “Recommendations for presenting analyses of effect modification and interaction.” Int J Epidemiol 41 (2):514–520. doi: 10.1093/ije/dyr218. 





Naimi, A. I., and J. S. Kaufman. 2015. “Counterfactual theory in social epidemiology: Reconciling analysis and action for the social determinants of health.” Curr Epidemiol Rep 2 (1):52–60. doi: 10.1007/s40471-014-0030-4. 





Sun, G. W., T. L. Shook, and G. L. Kay. 1996. “Inappropriate use of bivariable analysis to screen risk factors for use in multivariable analysis.” J Clin Epidemiol 49 (8):907–916. doi: 10.1016/0895-4356(96)00025-x. 





Greenland, S. 2008b. “Introduction to regression models.” In Modern epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 381–417. Philidelphia, PA: Lippincott Williams & Wilkins. 





Kokubo, Y., H. Iso, I. Saito, K. Yamagishi, H. Yatsuya, J. Ishihara, M. Inoue, and S. Tsugane. 2013. “The impact of green tea and coffee consumption on the reduced risk of stroke incidence in Japanese population: The Japan public health center-based study cohort.” Stroke 44 (5):1369–1374. doi: 10.1161/strokeaha.111.677500. 





National Institutes of Health (NIH). 2018. NIH & AHRQ Announce upcoming updates to application instructions and review criteria for career development award applications. September 14, 2018. Accessed June 30, 2021. 





Suzuki, E., T. Shinozaki, and E. Yamamoto. 2020. “Causal diagrams: Pitfalls and tips.” J Epidemiol 30 (4):153–162. doi: 10.2188/jea.JE20190192. 





Greenland, S. 2019. “Valid P-values behave exactly as they should: Some misleading criticisms of P-values and their resolution with S-values.” Am Stat 73 (sup1):106–114. doi: 10.1080/00031305.2018.1529625. 





Kutner, M. H., C. J. Nachtsheim, J Neter, and W. Li. 2005. Applied linear statistical models. 5th ed. New York, NY: McGraw-Hill Irwin. 





Nelder, J. A., and R. W. M. Wedderburn. 1972. “Generalized linear models.” J R Stat Soc Ser A Stat Soc 135 (3):370–384. doi: 10.2307/2344614. 





Szklo, M., and F. Javier Nieto. 2019. Epidemiology: Beyond the basics. Burlington, MA: Jones & Bartlett Learning. 





Greenland, S., and B. Brumback. 2002. “An overview of relations among causal modelling methods.” Int J Epidemiol 31 (5):1030–1037. doi: 10.1093/ije/31.5.1030. 





Lash, T. L., T. J. VanderWeele, S. Haneuse, and K. J. Rothman. 2021. Modern epidemiology. 4th ed. Philadelphia: Wolters Kluwer. 





Pang, M., J. S. Kaufman, and R. W Platt. 2016. “Studying noncollapsibility of the odds ratio with marginal structural and logistic regression models.” Stat Methods Med Res 25:1925–1937. 





Talbot, D., and V. K. Massamba. 2019. “A descriptive review of variable selection methods in four epidemiologic journals: There is still room for improvement.” Eur J Epidemiol 34 (8):725–730. doi: 10.1007/s10654-019-00529-y. 





Greenland, S., R. Daniel, and N. Pearce. 2016. “Outcome modelling strategies in epidemiology: traditional methods and basic alternatives.” Int J Epidemiol 45 (2):565–575. doi: 10.1093/ije/dyw040. 





Lederer, D. J., S. C. Bell, R. D. Branson, J. D. Chalmers, R. Marshall, D. M. Maslove, D. E. Ost, N. M. Punjabi, M. Schatz, A. R. Smyth, P. W. Stewart, S. Suissa, A. A. Adjei, C. A. Akdis, É Azoulay, J. Bakker, Z. K. Ballas, P. G. Bardin, E. Barreiro, R. Bellomo, J. A. Bernstein, V. Brusasco, T. G. Buchman, S. Chokroverty, N. A. Collop, J. D. Crapo, D. A. Fitzgerald, L. Hale, N. Hart, F. J. Herth, T. J. Iwashyna, G. Jenkins, M. Kolb, G. B. Marks, P. Mazzone, J. R. Moorman, T. M. Murphy, T. L. Noah, P. Reynolds, D. Riemann, R. E. Russell, A. Sheikh, G. Sotgiu, E. R. Swenson, R. Szczesniak, R. Szymusiak, J. L. Teboul, and J. L. Vincent. 2019. “Control of confounding and reporting of results in causal inference studies. Guidance for authors from editors of respiratory, sleep, and critical care journals.” Ann Am Thorac Soc 16 (1):22–28. doi: 10.1513/ AnnalsATS.201808-564PS. 





Park, S. H., and H. Y. Yu. 2021. “How useful is the center for epidemiologic studies depression scale in screening for depression in adults? An updated systematic review and meta-analysis.” Psychiatry Res 302:114037. doi: 10.1016/j.psychres.2021.114037. 





Tredennick, A. T., G. Hooker, S. P. Ellner, and P. B. Adler. 2021. “A practical guide to selecting models for exploration, inference, and prediction in ecology.” Ecology 102 (6):e03336. doi: 10.1002/ ecy.3336. 





Greenland, S., Timothy L. Lash, and Kenneth J. Rothman. 2008. “Concepts of interaction.” In Modern epidemiology, edited by Kenneth J. Rothman, Sander Greenland and Timothy L. Lash, 71–86. Philadelphia, PA: Lippincott Williams and Wilkins. 





Lee, P. H. 2014. “Is a cutoff of 10% appropriate for the change-in-estimate criterion of confounder identification?” J Epidemiol 24 (2):161–167. doi: 10.2188/jea.je20130062. 





Park, Y., H. Cho, and S. K. Myung. 2023. “Effect of coffee consumption on risk of coronary heart disease in a systematic review and meta-analysis of prospective cohort studies.” Am J Cardiol 186:17–29. doi: 10.1016/j.amjcard.2022.10.010. 





Twisk, J, W. R. 2019. Applied mixed model analysis: A practical guide. 2nd ed. Cambridge, UK: Cambridge University Press. 





Greenland, S., M. A. Mansournia, and M. Joffe. 2022. “To curb research misreporting, replace significance and confidence by compatibility: A preventive medicine golden jubilee article.” Prev Med 164:107127. doi: 10.1016/j.ypmed.2022.107127. 





Pearl, J. 1995. “Causal diagrams for empirical research.” Biometrika 82 (4):669–688. doi: 10.2307/2337329. 





Tzelgov, J., and A. Henik. 1991. “Suppression situations in psychological research: Definitions, implications, and applications.” Psychol Bull 109:524–536. doi: 10.1037/0033-2909.109.3.524. 





Greenland, S., and N. Pearce. 2015. “Statistical Foundations for Model-Based Adjustments.” Ann Rev Public Health 36 (1):89–108. doi: 10.1146/annurev-publhealth-031914-122559. 





Pearl, J. 2003. “Statistics and causal inference: A review.” Test 12 (2):281–345. doi: 10.1007/BF02595718. 





van Diepen, M., C. L. Ramspek, K. J. Jager, C. Zoccali, and F. W. Dekker. 2017. “Prediction versus aetiology: Common pitfalls and how to avoid them.” Nephrol Dial Transplant 32 (suppl_2): ii1–ii5. doi: 10.1093/ndt/gfw459. 





Greenland, S., J. Pearl, and J. M. Robins. 1999. “Causal diagrams for epidemiologic research.” Epidemiology 10 (1):37–48. 





Peduzzi, P., J. Concato, E. Kemper, T. R. Holford, and A. R. Feinstein. 1996. “A simulation study of the number of events per variable in logistic regression analysis.” J Clin Epidemiol 49 (12):1373–1379. 





VanderWeele, T. J. 2016. “Mediation analysis: A practitioner’s guide.” Ann Rev Public Health 37 (1): 17–32. doi: 10.1146/annurev-publhealth-032315-021402. 





Petraitis, P. S., A. E. Dunham, and P. H. Niewiarowski. 1996. “Inferring multiple causality: The limitations of path analysis.” Funct Ecol 10 (4):421–431. doi: 10.2307/2389934. 





VanderWeele, T. J., and M. J. Knol. 2014. “A tutorial on interaction.” Epidemiol Methods 3 (1): 33–72. doi: doi:10.1515/em-2013-0005. 





Rafi, Z., and S. Greenland. 2020. “Semantic and cognitive tools to aid statistical science: replace confidence and significance by compatibility and surprise.” BMC Med Res Methodol 20 (1):244. doi: 10.1186/s12874-020-01105-9. 



## Modeling for Cohort Studies: Incidence Rate Ratio, Risk Ratio, and Risk Difference

This chapter focuses on estimating common association measures for cohort studies, which include the incidence rate ratio (IR), risk ratio (RR), risk difference (RD), and standardized measures. It begins with a review of the key features of data collected from cohort studies, followed by an exploration of strategies and methods for modeling the association between exposure and outcome in association models. The chapter details the strategies and procedures for employing generalized linear models (GLMs) to estimate the exposure effect, evaluate modification effects, and adjust for confounders. The GLMs discussed in this context include the robust Poisson regression model, log-binomial regression model, and linear binomial regression model, all exemplified through real-world scenarios complemented by annotated SAS syntax. Furthermore, this chapter emphasizes the assumptions underpinning these models and introduces approaches for addressing assumption violations. 

## 2.1 Review of Cohort Study Design

In analytical epidemiological studies, two or more comparison cohorts are established based on their natural exposure history to one or more factors hypothesized to cause a specific outcome event. The objective of cohort studies is to investigate potential causal relationships between exposure and outcome by comparing incidences of the outcome in different cohorts. Cohort studies are often considered the gold standard in observational studies as they longitudinally observe the occurrence of an outcome of interest in comparison groups without manipulating exposure, a methodology similar to that employed in randomized control trials (RCTs), which are considered the gold standard for studying causal relationships. Generally, cohort studies carry the highest scientific rigor for causal inference in observational studies, followed by case-control studies, cross-sectional studies, and lastly, ecological studies (Lash and Rothman 2021, Mann 2003). 

Cohorts can be classified into two types based on the entry and exit of study subjects: closed (or fixed) cohorts and open (or dynamic) cohorts. A closed cohort is composed of study subjects who enter the cohort at the onset of the follow-up period, with no new subjects added during the study duration. The attrition of cohort members is solely due to death, with no withdrawals or losses to follow-up. Consequently, all subjects are observed throughout their risk period, allowing risks (or incidence proportions) to be directly estimated in a closed cohort study. 

In contrast, subjects in an open cohort study can be recruited at various times, and they may exit the cohort (due to emigration or loss to follow-up), or die from other diseases rather than the disease being studied (competing risks). As a result, some cohort members who do not develop the disease of interest may not be at risk for the entire follow-up period. Therefore, data analysis in open cohort studies must account for varying follow-up durations. In open cohort studies, risks cannot be directly measured, but incidence rates and hazards can be estimated to account for the differing lengths of follow-up for each cohort member. 

## 2.2 Features of Data Collected from Cohort Studies

The cohort study design is a powerful design for generating data to estimate exposure prevalence, survival time, disease incidence, and the strength of associations between exposure and disease across multiple comparison cohorts. Compared to other observational study designs, prospective cohort studies are generally less biased, thanks to several inherent strengths. 

First, prospective cohort studies can prevent or reduce time-ambiguity bias, as potential causal exposures are measured before the occurrence of the outcome. This sequential recording allows investigators to distinguish antecedents from consequences, thereby documenting potential causal effects with greater confidence. Second, they can minimize selection bias, as study subjects are chosen before an outcome is detected, and the outcome status typically does not influence subject selection. Finally, they can mitigate information bias, as exposure factors, modifiers, mediators, and confounders are measured before the detection of the outcome. The status of the outcome generally does not influence these measurements, thereby enhancing their validity. 

## 2.2.1 Censoring Events in Cohort Studies

Despite its methodological strengths, the cohort study design has certain weaknesses. The internal validity of cohort studies can be compromised by censoring events. Censoring reduces investigators’ ability to observe the event of interest. Censoring events include loss to follow-up, death from a cause other than the one being studied (competing risks), events that remove an individual from the at-risk population for the disease (such as surgical removal of the stomach when studying gastric cancer), or administrative censoring, which is a decision made by investigators to conclude the study. Selection bias resulting from losses to follow-up and bias arising from competing risks represent two major challenges in cohort studies, particularly those with lengthy observational periods. 

## 2.2.2 Data with Losses to Follow-Up

Selection bias due to loss to follow-up can significantly undermine the accuracy of the exposure effect estimate. If losses to follow-up occur differentially according to both exposure and outcome status, such losses can introduce substantial bias, leading to biased association estimates in unpredictable directions (Miller et al. 2014). If the losses to follow-up are not associated with either exposure or disease status, they may not result in bias when estimating risk and risk ratios. However, they will decrease the sample size, thus reducing statistical power. A cohort study retaining fewer than 60% of subjects can be problematic for analyzing the exposure-outcome association. If the loss to follow-up is associated with both exposure and disease, a follow-up rate of 70% or more may still be insufficient to provide valid data for analysis (Greenland 2017). 

## 2.2.3 Competing Risks

Competing risks are events that can prevent the occurrence of the primary outcome event of interest and remove subjects from the study population at risk. In a cohort study investigating the association between sunbathing and skin cancer, death due to heart disease would be considered a competing risk. However, an assumption made by nearly all analytic methods for estimating conditional risks (conditioned on the removal of competing risks) is that the risk of the primary outcome of interest would remain unchanged if competing risks were removed. According to this assumption, the risk of skin cancer for subjects who died of heart disease would have been the same as that of other subjects in the cohort had they lived. This assumption is valid only if the competing cause is independent of the disease under study. However, verifying this assumption poses a challenge due to the constraints of the available data. 

When losses to follow-up and competing risks occur, specific additional assumptions are required when using statistical methods to analyze cohort data. These assumptions are further discussed in Section 3.2, which focuses on the estimation of survival probabilities. 

## 2.2.4 Age-Related Effect

Observational cohort data have another important feature: the age-related effect. Age is a known risk factor for many diseases and can, therefore, serve as a confounding variable in cohort studies, especially those with lengthy observation periods. The age-related effect may confound the relationship between a risk factor and disease or death if the age distribution varies between the comparison cohorts. 

In such instances, the death rate among cohort members changes over time due to aging, irrespective of exposure to the risk factor of interest, and the risk and hazard of disease typically rise with age. This suggests that an association may appear to exist between the risk factor and the disease of interest, even in the absence of a causal relationship, which could be attributed to the age-related effect. 

As observational studies do not involve randomization, there is a high probability that the mean age varies between the exposed and unexposed groups. If the mean age in two comparison groups is not comparable, age must be treated as a confounding variable, and appropriate adjustment is crucial to reduce bias in the estimated coefficients (Pencina, Larson, and D’Agostino 2007). The age-related effect will also be addressed in survival analysis (see Section 3.4.4 in Chapter 3). 

## 2.3 Review of Frequency and Association Measures in Cohort Studies

Cohort studies typically measure disease frequency such as risk, incidence rate, and hazard. Measures of association in cohort studies include risk difference (RD), incidence rate difference (IRD), risk ratio (RR), incidence rate ratio (IR), and hazard ratio, all of which can be derived from these frequency measures. 

## 2.3.1 Frequency Measures

## 1. Measure of risk or incidence proportion

In a closed cohort study, where no new members are added and no members leave the study alive, the incidence proportion represents the proportion of at-risk cohort members who become cases. Often referred to as risk, this measure reflects the average risk for all members of a specific group, whether they are exposed or unexposed to the risk factor. Risk is typically calculated over a defined period, such as the 10-year risk of developing a disease, and can be compared between two or more closed cohorts within the same study. It measures the probability of developing a disease during a specified time period (Kleinbaum, Kupper, and Morgenstern 1982) and predicts whether an event (such as disease or death) occurs during a given period, such as predicting whether a person who heavily smokes will develop diabetes within 5 years. Risk, proportion, and cumulative incidence are equivalent terms, but cumulative incidence is usually calculated using survival data analysis techniques to account for factors like censoring, staggered enrollment, and competing risks (Spiegelman and VanderWeele 2017). Because of the way risks accumulate, the level of risks is contingent upon the length of the follow-up period. 

For instance, within the same study population, the 5-year risk of developing lung cancer differs from the 3-year risk for the same disease, even in cases where censoring does not take place during the follow-up period. 

## 2. Measure of incidence rate

The incidence rate is another frequency measure used in cohort studies. It quantifies the average rate at which a disease occurs within a particular risk group over a specified time period. The denominator for the incidence rate calculation is the sum of person-time contributed by all individuals at risk during the follow-up period. Each member of the cohort contributes person-time until they develop the outcome disease or experience a censoring event. 

As a measure of the speed of event occurrence, the incidence rate is used when we are interested in when the event occurs – such as measuring the amount of time between a person’s initiation of heroin use and subsequent infection with HIV. For instance, consider a scenario where 20 individuals from a closed cohort of 100 at-risk subjects contract HIV over a 3-year observation period. If the total at-risk person-time contributed by the 100 study subjects is 270 years, then the 3-year risk of HIV infection is 0.2 (20/100), and the incidence rate is 0.074 (20/270) per personyear. The incidence rate measures the rate at which individuals develop the event – in this case, an HIV infection. For every 13.5 person-years experienced by the atrisk population, we would expect 1 (0.074 × 13.5) new cases of infection to occur. 

The choice between these two frequency measures, risk versus rate, depends on the type of cohort being studied: closed cohort or open cohort. In a closed cohort, risk can be directly measured and the denominator for the risk estimate is the number of individuals at risk for the disease at the start of the follow-up period. Estimating risks presumes that the subjects in comparison cohorts remain at risk throughout the entire follow-up period. 

If instances of loss to follow-up and/or competing risks occur within a closed cohort, the cohort becomes an open one. Losses to follow-up prevent direct measurements of risk because the disease status of subjects lost to follow-up remains unknown. In such cases, the utilization of analytical methods that incorporate person-time at risk to calculate incidence rates is commonly employed for the analysis of censored data in cohort studies. These methods calculate the length of person-time used in the denominator of the rate from the starting date of participation in the cohort until either the onset of disease or the occurrence of censoring. 

Using person-time as opposed to the number of at-risk individuals for the denominator of rates provides a more adaptable approach when analyzing opencohort data (Rothman, VanderWeele, and Lash 2020). Given that the denominator for rate estimation is measured in person-time, it does not require that all subjects be followed for an identical period. As a result, rate estimation effectively addresses the issue of unequal follow-up times brought about by censoring, making it a more versatile and accurate measure in situations where follow-up periods vary among study subjects. 

When censoring occurs, incidence rate can be directly estimated, and risk or cumulative incidence can be indirectly estimated through certain assumptions using methods such as the life-table method and the Kaplan–Meier method (Kleinbaum, Kupper, and Morgenstern 1982) (see Chapter 3). One main drawback is that the incidence rate is less straightforward to understand because it necessitates the use of person-time units like person-years or person-months, which can be challenging to convey to non-technical audiences, such as public health practitioners and administrators. 

## 3. Measure of hazards

Closely related to the incidence rate is the concept of hazard in survival analysis of censored data. The hazard represents the instantaneous rate per unit time at which an event of interest, such as death or disease, is occurring at a given time, conditional on having survived up to that time. Specifically, if a patient is alive at time t and the probability of experiencing the event of interest (e.g., death) in the next short time interval (t, t + Δt) is h(t)Δt, then the ratio of that probability to the interval length is called the hazard or hazard rate. In essence, the hazard rate represents the conditional probability of experiencing the event of interest in the next instant, given that the individual has survived up to time t (i.e., conditional). 

In reality, the actual instantaneous hazard rate cannot be obtained; instead, the mean hazard rate is estimated by averaging over the intervals observed for each study subject. This estimate of the hazard rate is expected to equal the incidence rate in a cohort study, which measures the average rate at which events occur in a group of individuals over a specified period of time. Therefore, incidence rate ratios and differences may be interpreted as ratios and differences of average hazards (Greenland 1987). 

The measure of risk differs from that of hazard (Hernán and Robins 2020). The denominator of the risk (i.e., the number of study subjects at baseline) is constant across times t, and its numerator (i.e., all incident events occurred between baseline and t) is cumulative. Therefore, the risk will either remain constant (or flat) or increase as t increases. In contrast, the denominator of the hazard (i.e., the number of subjects alive at time t) varies over time t, and its numerator includes only recent events that occurred during the interval t, t+Δt. Therefore, the hazard can either increase or decrease over time (Figure 2.1). 

In cohort studies, the risk or cumulative incidence can be estimated as 1 minus the survival probability, which represents the proportion of a closed population at risk that does not develop the disease during a specified time period. For instance, if the 2-year survival probability is 75%, the corresponding 2-year risk (incidence proportion) is 25%. The Kaplan–Meier method is commonly used to estimate the survival probability. However, in the presence of competing risks, the accuracy of the survival proportion estimate is compromised because competing risks can remove additional people at risk from the cohort, thereby altering the size of the study population over the subinterval. The degree of inaccuracy will depend on the frequency of the competing risks (Rothman, VanderWeele, and Lash 2020). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/2fa0af30ef2ef72e97448adb819336b0a547724f87c755d85de3b6267eff6912.jpg)



FIGURE 2.1 Illustration of (a) risk and (b) hazard in cohort studies.


## 2.3.2 Association Measures

The magnitude of the association between exposure and outcome in cohort studies can be estimated on both the additive scale and multiplicative scale. Additive measures of association include risk difference and incidence rate difference, while multiplicative measures of association include risk ratio, rate ratio, and hazard ratio. This section overviews the differences and similarities of the association measures. 

The incidence rate ratio (IR), also known as the rate ratio, provides a more accurate measure of the effect of an exposure on the outcome than the risk ratio (RR) when the amount of person-time at risk differs between the two comparison groups. When the disease is relatively rare (less than 10%) and censoring events are unrelated to risk, the IR will approximate the RR (Greenland 1987). 

$$
I R \approx R R \tag {2.1}
$$

However, when these conditions are not satisfied, Equation 2.1 does not hold, and we would typically expect the risk ratio to be closer to the null than the rate ratio. For risk factors, the IR is usually higher than the RR because the amount of person-time in the exposed group is less than that in the unexposed group. In a closed cohort study, as the risk of disease escalates, the incidence rate typically increases at a faster pace than the incidence proportion (i.e., the risk). This occurs because the rising risk increases the numerator of the rate (incident cases) while diminishing the rate denominator (person-time) (Cummings 2019). In contrast, the rising risk does not shrink the denominator of the risk (the population at risk) in a closed cohort. When exposures act as protective factors, the IR is lower than the RR because the amount of person-time in the exposed group is greater than that in the unexposed group, owing to the preventive effect (Greenland, Rothman, and Lash 2008). 

The hazard ratio (HR) is calculated as the ratio of two hazards, one estimated for the exposed group and the other for the unexposed group. The HR is commonly estimated via a Cox proportional hazards (PH) model, which allows for a change in the hazard over time as long as the ratio of the hazards over time is constant (i.e., the proportional hazards assumption holds). Suppose the rate of disease by time $t + \Delta t$ for subjects in the exposed group are $h _ { 1 } ( t ) \Delta t ,$ and $h _ { 0 } ( t ) \Delta t$ for those in the unexposed group, the rate of exposed subjects at time t relative to the non-exposed subjects can be represented as 

$$
\frac {h _ {1} (t) \Delta t}{h _ {0} (t) \Delta t} = \frac {h _ {1} (t)}{h _ {0} (t)} = H R \tag {2.2}
$$

In an epidemiologic study, hazards are purely theoretical quantities and approximately equal to the incidence rate as Δt gets smaller. Therefore, the hazard ratio estimated from the Cox model can be interpreted as an incidence rate ratio or instantaneous (or shortterm) risk ratio (Dupont 2009, Greenland 2008, Haneuse 2021b). 

The relationship between hazard ratio and risk ratio can be influenced by three factors, including the duration of follow-up, the disease rate in the unexposed group, and the strength of the exposure-outcome association (Kleinbaum, Kupper, and Morgenstern 1982, Symons and Moore 2002). In cohort studies where the association between exposure and outcome is weak and the disease rate in the unexposed group is low, HR and RR will be similar and may be considered numerical approximations of each other. However, as the duration of follow-up, disease rate, and magnitude of the association increase, the difference between HR and RR becomes more pronounced. In general, when exposure is a risk factor, HR tends to be greater than RR, and when exposure is a protective factor, HR tends to be smaller than RR. 

## 2.4 Recommended Regression Models for Cohort Studies

Cohort studies provide rich longitudinal data that can be used to model the association between exposure and outcome, and several well-developed regression models are available for estimating the exposure effect. The choice of the appropriate model depends on various factors, such as the objective of data analysis, features of a study design, and type of outcome variables. As discussed before, additive risk models estimate the differences of risks and rates between the exposed and unexposed groups, while multiplicative risk models measure the ratios of risk and rates. Typically, epidemiological research that focuses on disease etiology uses a multiplicative model, while research focusing on public health impact is more likely to use an additive risk model. The multiplicative model has a long history of estimating the relative risk of disease for the exposed group relative to the unexposed group. 

When estimating exposure effects using models in cohort studies, it’s important to consider the unique features of cohort data such as survival time, censoring, and competing risks. The robust Poisson regression model or the Cox proportional hazards regression model are often the first choice to estimate the incidence rate ratio and hazard ratio as they account for these features. The major difference between the Cox proportional hazard model and Poisson regression is that the Poisson regression model commonly involves only a few strata, whereas the proportional hazards model creates a stratum for each case based on time t. The Poisson regression model converges to the proportional hazards model as the time strata are made infinitely small (Checkoway, Pearce, and Kriebel 2004). 

However, a disadvantage of using these two measures is that they are measured in units of person-time or survival time, which can be difficult to explain to non-technical audiences, such as public health practitioners or administrators. In such cases, the log-binomial regression model is a better option, as it estimates risk ratio that directly compares the risk in one group to that in the other group and is easier to interpret. It’s important to note that the validity of the risk ratio depends heavily on the duration of follow-up, and if censoring and competing risks are frequent in a cohort study, risks and resulting risk ratios may not be the best choice as cohort members are not followed for the same period of time. 

In cohort studies, confounding is unavoidable as study subjects cannot be randomized to the exposed and unexposed groups. Standardization and regression modeling methods are commonly used to adjust for confounding. The two methods use different approaches to make the distribution of one or more confounders similar between comparison groups. Due to selection bias, some variables that affect only the outcome may confound the association between the exposure and outcome (Brookhart et al. 2006, Rubin and Thomas 1996). Therefore, those variables, in addition to actual confounders, need to be adjusted using modeling techniques. When the outcome is rare, and many variables affect its occurrence, a propensity score method can be used as an alternative method to more effectively reduce confounding effects (see Chapter 4). 

## 2.5 Generalized Linear Models in Cohort Studies

Chapter 1 provides an overview of generalized linear models (GLMs) in epidemiologic data analysis. Due to their flexibility, GLMs have frequently been used in the analysis of cohort data. Since epidemiological studies frequently investigate the etiology of binary outcomes, this chapter specifically focuses on GLMs that estimate the probability of a binary outcome y, denoted as $p | ( y = 1 )$ , in cohort studies. There are three GLMs commonly used for estimating incidence rate ratios, risk ratios, and risk differences in cohort data: Poisson regression model, log-binomial regression model, and linear binomial regression model (Table 2.1). The link function of the first two models is log (p), while for the last model, it is the identity function (p). The Poisson regression model assumes a Poisson distribution for y, whereas the log-binomial and linear binomial models employ a binomial distribution. 


TABLE 2.1 Primary and Alternative Model Choice for Estimate Exposure Effects


<table><tr><td></td><td colspan="2">Primary Choice</td><td colspan="2">Alternative Choice</td></tr><tr><td>Rate ratio</td><td colspan="2">Robust Poisson</td><td></td><td></td></tr><tr><td>Risk ratio</td><td>Log-binomial</td><td colspan="2">Robust Poisson</td><td></td></tr><tr><td>Risk difference</td><td>Linear binomial</td><td>Robust Poisson</td><td colspan="2">Robust linear regression</td></tr><tr><td>Standardized ratios*</td><td>Poisson</td><td></td><td></td><td></td></tr></table>


*Standardized incidence rate ratio, standardized risk ratio, and standardized mortality ratio. 


To use these models for estimating risk ratios and risk differences in a cohort study, it is necessary that there are no or few censored subjects during the follow-up period. If this condition is not met, the Poisson regression model can still be used to estimate incident rate ratios, taking into account the length of person-time. Additionally, the Poisson regression model can estimate standardized measures such as standardized incidence rate ratio (SIR), standardized risk ratio (SRR), and standardized mortality ratio (SMR). 

Depending on the research objectives, data characteristics, and the potential for a model to experience convergence failure, the strategy for selecting a GLM to estimate the exposure effect is summarized in Table 2.1. This will be further detailed in the following sections of this chapter. 

GLMs are an important alternative to the Cox proportional hazards model because they provide flexible and versatile methods for the direct estimation of exposure effect, while also taking into account confounding and interaction effects, especially when the proportional hazards assumption in the Cox model is not met. In the following sections, we introduce the use of the Poisson regression model, log-binomial regression, and linear binomial regression for analyzing cohort data. 

## 2.6 Poisson Regression Model

## 2.6.1 Poisson Distribution and Poisson Model

Poisson regression models are typically used for count data. The Poisson distribution in the model defines a probability distribution function for non-negative count outcomes. In cohort studies where follow-up data is recorded in the form of the number of events and the number of person-years, a reasonable assumption is that the number of events follows a Poisson distribution. This is because the Poisson distribution is the appropriate distribution for counts of rare and independent events. The Poisson distribution is especially suitable for heavily right-skewed count data that are often seen in epidemiological studies. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/6bdcba3edbb6f0dfa87f65e0a68799cafce75bce855358cad2840e70dbc3f806.jpg)



FIGURE 2.2 Number of sex partners in the past year reported by study participants.


Figure 2.2 displays the right-skewed distribution of sex partners reported by study subjects over the past year, where few subjects reported having had sex with more than five partners. 

Models based on the Poisson distribution are frequently used to model counts of various types, particularly in situations where there is no natural “denominator.” Examples include the number of automobile fatalities in a specified region over several years and the count of COVID-19 cases in different regions over a series of monthly intervals. It is also regularly utilized in ecological analysis (Chapter 10). Owing to its versatility, Poisson regression is one of the most common models employed for analyzing binary outcomes (Holmberg and Andersen 2020). 

Let Y be a random variable that takes on count values from 0 to ∞. The probability of observing any specific count y, given the expected number of events per time interval (μ), is given by the Poisson distribution: 

$$
P (Y = y | \mu) = \frac {e ^ {- \mu} \mu^ {y}}{y !} \tag {2.3}
$$

where y can be any non-negative integer, and y! equals $y \times \left( y - 1 \right) . . . \times 2 \times 1$ . The Poisson distribution is defined in terms of a single parameter, $\mu ,$ which represents the expected number of events per time interval. For instance, μ could represent the expected number of cancer cases per 5 years. Once a value of $\mu$ is assumed, the Poisson distribution is fully specified. 

Equation 2.3 can be applied to an open cohort study where study subjects have varying lengths of person-time. In this context, Y represents the number of incident cases, $\dot { T }$ represents the total person-time, I represents the incident rate, and $\mu$ is equal to the product of I and $T \left( \mathrm { i . e . , } \bar { I } \times T \right)$ . The probability of observing y incident cases during T units of person-time is given by Equation 2.4, where the Poisson distribution is characterized by a single parameter, IT. 

$$
P (Y = y \mid I T) = \frac {e ^ {- (I T)} (I T) ^ {y}}{y !} \tag {2.4}
$$

This equation assumes that (1) the incidence rate I is constant over time, (2) the risk for a disease is independent of person-time, and (3) both the expected value and variance of Y are equal to $I \times T , \mathrm { i . e . , } E ( \bar { Y } ) = \mathrm { V a r } ( Y ) = I \times T$ (Haneuse 2021a). The second assumption implies that, for example, the experience of 200 individuals for 1 year, 100 individuals for 2 years, and 50 individuals for 4 years is equivalent. Additionally, it implies that events and withdrawals occur uniformly throughout the follow-up period (see Section 3.2.2 in Chapter 3 for the assumption of uniformity). 

One important and unique property of the Poisson distribution is equidispersion, meaning that both the expected value of Y. E(Y), and its variance, Var(Y), are equal to $\mu ,$ the parameter representing the mean count, if Y follows a Poisson distribution. This property can be used to check if the data follow the Poisson distribution. However, count observations in real-world observational studies often exhibit variability that exceeds the mean event predicted by the Poisson distribution, so the equidispersion assumption may not always hold. 

The Poisson regression model assumes that the dependent variable follows the Poisson distribution, and it uses a log transformation of the outcome variables to adjust for skewness. This model is particularly appropriate for analyzing count data that involve rare events. As the mean count (μ) increases, the Poisson distribution approaches a normal distribution, and in such cases, a linear model based on the normal distribution may replace the Poisson model. For example, in the case of the number of sex partners in the past year (y), μ represents the mean count. Figure 2.3 illustrates the distribution for different values of $\mu ,$ showing that the Poisson distribution approaches a normal distribution as the mean count increases. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/ea55959345cca7ab9a366d992f6f40e3a71c28e93ae32ab6bcdb25bcb55e2ace.jpg)



FIGURE 2.3 Poisson distributions for different values of means (μ).


Poisson regression models incidence rate when individuals have different follow-up times. In cohort studies, the incidence rate (I) is estimated by the expected number of events, Y(t), such as lung cancer cases, per time interval divided by person-time (t). Under the Poisson distribution, the number of events Y(t) that occur up to time t has a mean of $\mu = I \times t .$ Poisson regression models the incidence rate (I) and consequently the mean (Y) as a function of regression parameters and independent variables: 

$$
\text { Expected   cases } (\mu) = \text { total   person   time } (t) \times \text { incidence   rate } (I) \tag {2.5}
$$

$$
\operatorname{Log} (\mu) = \log (t) + \log (I)
$$

Poisson regression models the relationship between the incidence rate (I) and covariates by estimating regression parameters. This equation can be rewritten as the log of the incidence rate being the dependent variable of a linear function: 

$$
\operatorname{Log} (\text { rate }, I) = \beta_ {0} + \beta_ {x} X + \beta_ {z} Z, \tag {2.6}
$$

where X indicates the exposure variable and Z is a collection of covariates, such as $Z _ { 1 } , Z _ { 2 }$ $\ldots , Z _ { \mathrm { p } } .$ This model is referred to as a log-linear rate model, as it models the logarithm of the expected rate as a linear function of the predictor variables. The Poisson regression model uses maximum likelihood methods to estimate the parameters, including the intercept, regression coefficients, and their standard errors. 

As an incidence rate has two components, number of events (cases) in the numerator and person-time in the denominator, the above equation can be converted into the following regression equations: 

To model the log-rate as a linear function of the X and Zs: 

$$
\operatorname{Log} \left(\text { events } \mu / \text { person - time } t, \text { rate }\right) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} \dots + \beta_ {\mathrm{p}} Z _ {\mathrm{p}},
$$

$$
\operatorname{Log} (\text { events } \mu) - \log (\text { person   -   time } t) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} \dots + \beta_ {\mathrm{p}} Z _ {\mathrm{p}},
$$

To model the log-expected count as a linear function of X and Zs, an offset is used: 

$$
\operatorname{Log} (\text { events } \mu) = \left[ \log (\text { offset }) \right] + \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} \dots + \beta_ {\mathrm{p}} Z _ {\mathrm{p}}, \tag {2.7}
$$

where μ is the expected number of new cases (incidence cases) in the numerator of a rate or risk, assumed as a random variable with a Poisson distribution. The natural logarithm of the expected cases is expressed by a GLM with the natural logarithm as its link function. βx is the regression coefficient of the exposure variable (X), while $\beta _ { 1 }$ to $\beta _ { \mathfrak { p } }$ are the regression coefficients of covariates $Z _ { 1 }$ to $Z _ { p } ,$ including confounding variables and modifiers. $\beta _ { 0 }$ is the model’s intercept, and the exponential of it is the expected number of incident cases when the exposure and covariates equal 0. 

The offset in Equation 2.7 represents the person-time or the number of individuals at risk in the denominator and can be considered an explanatory variable with a regression coefficient of unity (i.e., 1). When estimating the incidence rate, the offset is person-time and accounts for different observation periods for different subjects. If the offset indicates the at-risk population, the Poisson regression model estimates the cumulative risk. 

In addition to modeling incidence rate and count, the model can also be used to estimate cumulative risk by modeling the logarithm of the risk as a function of the predictor variables: 

$$
\operatorname{Log} (\text { risk }, R) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} \dots + \beta_ {\mathrm{p}} Z _ {\mathrm{p}}, \tag {2.8}
$$

It is important to note that the estimation of cumulative risk using Poisson regression assumes uniform follow-up times for all individuals at risk. This assumption is often not met in open cohort studies, particularly those with extended follow-up periods where censoring is prevalent. Despite this limitation, Poisson regression is capable of modeling various types of data, including the logarithm of a rate (Equation 2.6), the logarithm of a count (Equation 2.7), the logarithm of a probability (risk) (Equation 2.8), and the logarithm of prevalence (see Chapter 8 for cross-sectional data analysis). 

## 2.6.2 Assumptions Related to Poisson Regression Model

The Poisson regression model relies on several assumptions, including: 

## 1. Linearity

The relationship between the exposure variable and the incident rate or risk in the log scale is linear, meaning that equal increments in the exposure variable lead to equal increments in the logarithm of the incident rate or risk. Assessment of this assumption and remedies for violation are discussed in Section 2.6.9. 

## 2. Multiplicative effects

Changes in the incident rate due to the combined effects of different risk factors are multiplicative. This assumption means that a one-unit increase in an exposure factor (x) has a multiplicative impact of exp(β) on $\mu ,$ and the mean of $Y$ at $x + 1$ equals the mean of Y at x multiplied by exp(β). 

## 3. Homogeneity

This assumption implies that the expected value of Y, E(Y), and variance of $Y ,$ Var(Y), are equal to I    × T at each level of the covariates. That is, $E ( Y ) = \mathrm { V a r } ( Y ) = I \times T$ are homogeneous at each level of the covariates. 

## 4. Independence

The outcomes of study subjects are independent, meaning that knowing the outcome status of one group member indicates nothing about the outcome status of other group members. 

## 2.6.3 Overdispersion

As described in Section 2.6.1, the Poisson regression model assumes that the variance of Y is equal to the mean of Y. Thus, the regression equation is expressed as: 

$$
\operatorname{var} \left[ Y \left(X _ {1}, X _ {2}, \dots , X _ {p}\right) \right] = \exp \left(a + b _ {1} X _ {1} + b _ {2} X _ {2} + \dots + b _ {p} X _ {p}\right) \tag {2.9}
$$

However, when modeling count data, the variance is typically larger than the mean. This difference in variance and mean is known as dispersion. If the response variable Y exhibits more variation than the Poisson model implies, overdispersion is said to be present. 

In such cases, the Poisson regression model is unable to handle the excess variation without additional adjustment because it assumes the variance is equal to the mean. 

The dispersion factor $( \varphi )$ is used to quantify the degree of dispersion between the variance and the mean when modeling count data. Specifically, the dispersion factor is calculated as the ratio of the observed variance to the expected mean under the assumption of a Poisson distribution. In mathematical terms, the relationship between the variance and the mean is given by: 

$$
\text { Variance } = \varphi \times \text { mean }
$$

$$
\operatorname{var} \left[ Y \left(X _ {1}, X _ {2}, \dots , X _ {p}\right) \right] = \varphi \left[ \exp \left(a + b _ {1} X _ {1} + b _ {2} X _ {2} + \dots + b _ {p} X _ {p}\right) \right] \tag {2.10}
$$

The dispersion factor $( \varphi )$ is a measure of how much the variance of the response variable changes in relation to the mean. When $\varphi = 2 ,$ , for example, we say that the variance increases by a factor of 2 for every unit increase in the mean. When $\varphi = 1$ , the data is consistent with a Poisson distribution. If $\varphi > 1$ , this indicates that the data is overdispersed, meaning that there is more variability than expected under the Poisson distribution. Conversely, if $\varphi < 1$ , this indicates that the data is underdispersed, meaning that there is less variability than expected under the Poisson distribution. We will revisit $\varphi$ and describe the method to estimate φ in the following Section 2.6.4. 

Overdispersion can lead to biased estimates of standard errors and p-values for model coefficients, resulting in inflated type I errors and potentially leading to incorrect conclusions. Specifically, overdispersion can cause the standard errors to be underestimated, which can make variables appear to be significantly associated with the outcome when they are not. Underdispersion, on the other hand, can result in overestimation of the standard errors, leading to artificially large p-values (type II error). 

Overdispersion can arise in epidemiologic studies due to a variety of factors, including poor model specification, dependence on observed events, misspecified link function, and influence of outliers (Hilbe 2014). To address overdispersion, it is important to investigate and identify its underlying causes. One common cause of overdispersion is heterogeneity due to an under-specified model. Poisson regression models assume that the response variable has a Poisson distribution conditional on the values of the predictor variables. If relevant predictor variables are omitted from the model, including product terms, unexplained heterogeneity among the subjects may produce greater variation in the response than the Poisson model predicts. The variance equals the mean when all relevant predicting variables are included in the model but may exceed the mean when relevant predictor variables are not accounted for (Agresti 2012). 

Overdispersion may occur due to dependent observations, especially in clustered study populations. This is because observations within a cluster are likely to be more similar to each other than to observations in other clusters. As a result, the positive correlation between the responses may cause overdispersion. For example, in a study of households, classrooms, or neighborhoods, the responses of individuals within the same household, classroom, or neighborhood may be correlated. Similarly, in longitudinal studies with repeated measures on the same subjects, events that occurred earlier may influence the probability of subsequent events, leading to a positive correlation among observations within subjects. 

Overdispersion may also occur when the link function is misspecified in the Poisson regression model. The model assumes linearity between the continuous predictor variables and the log rate. However, when nonlinearity is present, the link function is misspecified. 

For instance, if $x _ { 2 }$ represents age as a continuous variable, the model assumes that the relationship between age and log rate is linear. If this relationship is not linear, we may need to modify the form of age, such as by using squared age or spline transformation of age, which will be discussed in Chapter 10. 

## 2.6.4 Pearson Dispersion Factor

A simple method to detect dispersion is by calculating the Pearson dispersion factor (φ) using Pearson’s Chi-squared statistic $\big ( \chi _ { p } ^ { 2 } \big )$ and the degree of freedom $( d . f . ^ { \setminus } ) ,$ , where $d . f .$ is the number of observations (n) minus the number of model parameters (p) (the number of coefficients and the intercept): 

$$
\chi_ {p} ^ {2} = \sum_ {i = 1} ^ {n} \frac {\left(y _ {i} - \mu_ {i}\right) ^ {2}}{\operatorname{Var} \left(u _ {i}\right)} \tag {2.11}
$$

where the numerator is the squared difference between observed and fitted values, and the denominator is the variance of the observed value, which is equal to $u _ { i } .$ The dispersion factor can then be calculated as: 

$$
\varphi = \frac {\chi_ {p} ^ {2}}{d . f .}. \tag {2.12}
$$

As mentioned previously, if the Pearson dispersion factor (φ) is greater than 1, the model is considered overdispersed, if it is less than 1, it is underdispersed, and if it is equal to 1, it is considered equally dispersed. A value of 1 indicates that there is no unaccounted variability in the model other than what is expected based on the expected variance. 

If the Pearson dispersion factor is greater than 1.20 for a moderate size of observations, it may indicate the need for an adjustment of standard errors (Payne et al. 2018). To address overdispersion, three approaches can be taken: (1) using a Poisson regression model with adjustment of the dispersion factor, (2) using a negative binomial model to model the extra variability, or (3) using a modified $( \mathrm { i . e . , }$ robust) Poisson regression model to correct the dispersion problem. However, it is important to note that these statistical approaches should be considered only after the causes of overdispersion have been identified and the model has been correctly specified. In many cases, the addition of appropriate covariates, the construction of required interactions, adjustment for outliers, or the use of correct link functions can eliminate the need for statistical approaches to adjust standard errors. Therefore, finding and addressing the causes of overdispersion should be the first step in dealing with this issue. 

## 2.6.5 Adjustment of Standard Errors to Account for Overdispersion

One way to account for overdispersion is to use the Pearson dispersion factor (φ) when defining the relationship between the variance and the mean. The variance is now defined as $\operatorname { V a r } ( Y ) = \varphi \times \mu ,$ that is, the variance is proportional to the mean. The standard error of each regression coefficient is adjusted by multiplying the unadjusted standard errors by $\sqrt { \varphi }$ . This method produces an appropriate inference if overdispersion is modest (Cox 1983). The adjusted standard error of $\beta$ is given by: 

$$
\text { Adjusted   standard   error   of } \beta = \sqrt {\varphi} \times \text { unadjusted   standard   error   of } \beta \tag {2.13}
$$

This ad-hoc approach adjusts the model standard errors to the values that would have been calculated if the dispersion parameter had been 1. The introduction of the dispersion factor gives a correction term for testing the parameter estimates under the Poisson model. The model is fit in the usual way, and the parameter estimates (regression coefficients) are not affected by φ, but their standard errors are adjusted. Such an adjustment can be done using the SCALE=PEARSON option in the SAS PROC GENMOD. 

## Example 2.1

The following examples use the data from the NHANES I Epidemiologic Follow-up Study (NHEFS) (Centers for Disease Control and Prevention 2022). The NHEFS study population was drawn from a probability sample of noninstitutionalized civilian US adults aged 25–74 years. Study participants were followed up from January 1, 1983 to December 31, 1992, with a maximum follow-up time of 120 months. We estimate the incidence rate ratio for all-cause death between the depressed and non-depressed groups, while adjusting for age (categorized as 0: 45 years old or younger, 1: 46–65, and 2: 66 years old or older) and sex (coded as 0: female and 1: male). The data were grouped according to the combinations of the covariates. 

```matlab
data dep;
input ageg dep sex death Pyear;
logpy=log(Pyear);
datalines;
0 0 0 27 11161.75
1 0 0 116 14797.92
2 0 0 408 7427.17
0 0 1 13 5988.50
1 0 1 160 9504.67
2 0 1 508 5845.92
0 1 0 8 2198.83
1 1 0 44 3025.25
2 1 0 139 1856.00
0 1 1 7 528.75
1 1 1 31 971.00
2 1 1 113 773.50
; 
```

The following SAS syntax is used to assess dispersion: 

```txt
PROC genmod data=dep;
class dep (ref='0')sex ageg;
model death=dep ageg sex /dist=poisson link=log offset=logpy; 
```

RUN; 

Although this SAS procedure provides both deviance dispersion factor (2.3877) and Pearson dispersion factor (2.5163) (Output 2.1), the Pearson one is better in capturing the excess variability in the data, and adjusting standard errors to reflect what the standard errors would be if the excess variability were not present in the data (Hilbe 2014). 


SAS Output 2.1 Criteria for assessing goodness of fit


<table><tr><td colspan="4">Criteria For Assessing Goodness Of Fit</td></tr><tr><td>Criterion</td><td>DF</td><td>Value</td><td>Value/DF</td></tr><tr><td>Deviance</td><td>7</td><td>16.7141</td><td>2.3877</td></tr><tr><td>Scaled Deviance</td><td>7</td><td>16.7141</td><td>2.3877</td></tr><tr><td>Pearson Chi-Square</td><td>7</td><td>17.6140</td><td>2.5163</td></tr><tr><td>Scaled Pearson X2</td><td>7</td><td>17.6140</td><td>2.5163</td></tr></table>

To adjust for overdispersion, we added the option of $\mathrm { ^ { \prime \prime } S C A L E { = } P E A R S O N ^ { \prime \prime } }$ to the above SAS syntax and wrote a new syntax as: 

PROC genmod data=dep; class dep (ref='0') sex ageg; model death=dep ageg sex /dist=poisson link=log scale=Pearson offset=logpy; 

RUN; 

The scaled dispersion factor is reduced to 1 from 2.5163 (SAS Output 2.2). 


SAS Output 2.2 Criteria for assessing goodness of fit


<table><tr><td colspan="4">Criteria For Assessing Goodness Of Fit</td></tr><tr><td>Criterion</td><td>DF</td><td>Value</td><td>Value/DF</td></tr><tr><td>Deviance</td><td>7</td><td>16.7141</td><td>2.3877</td></tr><tr><td>Scaled Deviance</td><td>7</td><td>6.6424</td><td>0.9489</td></tr><tr><td>Pearson Chi-Square</td><td>7</td><td>17.6140</td><td>2.5163</td></tr><tr><td>Scaled Pearson X2</td><td>7</td><td>7.0000</td><td>1.0000</td></tr></table>

Table 2.2 presents the results of the unadjusted Poisson model and $\varphi$ adjusted model. The scale parameter is calculated to be 1.5863, which corresponds to the square root of the Pearson dispersion factor of 2.5163. The parameter estimates (including coefficients and intercept) remain the same after the adjustment for $\varphi ,$ but all standard errors are increased. For instance, the standard error for the variable “depression” was 0.0617 in the unadjusted Poisson model, but it is now inflated to 0.0979 in the adjusted model $( 1 . 5 8 6 3 \times \mathrm { { \dot { 0 } } } . 0 6 1 7 )$ . Consequently, the 95% confidence interval of the rate ratio for depression is wider in the adjusted model (1.32–1.94) compared to the unadjusted model (95% CI: 1.42–1.81), even though the rate ratio is the same in both models (1.60). 


TABLE 2.2



List of Dispersion Factor φ Adjusted and Unadjusted Standard Errors (SE)


<table><tr><td rowspan="2">Parameter</td><td colspan="2">Unadjusted</td><td colspan="2"><eq>\varphi</eq>-Adjusted</td></tr><tr><td>Estimate</td><td>SE</td><td>Estimate</td><td>SE</td></tr><tr><td>Intercept</td><td>-2.4142</td><td>0.0388</td><td>-2.4142</td><td>0.0616</td></tr><tr><td>Depressed vs. non-depressed</td><td>0.4709</td><td>0.0617</td><td>0.4709</td><td>0.0979</td></tr><tr><td>Age group (years):</td><td></td><td></td><td></td><td></td></tr><tr><td>45– vs. 66+</td><td>-3.2122</td><td>0.1381</td><td>-3.2122</td><td>0.2191</td></tr><tr><td>46–65 vs. 66+</td><td>-1.7394</td><td>0.061</td><td>-1.7394</td><td>0.0967</td></tr><tr><td>Female vs. male</td><td>0.5543</td><td>0.051</td><td>0.5543</td><td>0.0809</td></tr><tr><td>Scale</td><td>1</td><td>0</td><td>1.5863</td><td>0</td></tr></table>

## 2.6.6 Negative Binomial Regression

Although the use of the Pearson dispersion factor $( \varphi )$ is an easy and simple approach to inflate standard errors of model parameters, it produces appropriate inference only if overdispersion is modest (Cox 1983). It does not specify the probability distribution for the data and cannot efficiently address extra variance. As displayed by the dotted line in Figure 2.4, the relationship between mean and variance is not linear, and variance increases much faster as mean increases. If we use the Pearson dispersion factor (say, $\varphi = 2 )$ , the Poisson model with this dispersion factor adjustment would not be appropriate because it assumes that the variance increases linearly as a function of the mean (a slope of 2). The dotted line represents the relationship between variance and mean under the negative binomial distribution. 

The negative binomial (NB) distribution is a combination of a Poisson distribution and a Gamma distribution (Hilbe 2011). It assumes that event counts are still generated by a Poisson process, but the distribution of the unexplained extra variation underlying the Poisson process no longer follows the Poisson distribution, but instead follows the Gamma distribution with a shape parameter k. This distribution captures the extra variance that the Poisson model fails to capture. Under the negative binomial model, at a fixed setting of the predictors used, given the mean, the distribution of Y is Poisson, but the mean itself follows a gamma distribution (Agresti 2012). Specifically, if we let $Y \sim$ Poisson $( \mu )$ , then $\mu$ itself is a random variable with a gamma distribution, $\mathrm { i . e . , }$ 

$$
Y = y \mid \mu \sim \text { Poisson } (\mu);
$$

$$
\mu \sim \text { Gamma } (\alpha , \beta), \tag {2.14}
$$

where Gamma $( \alpha , \beta )$ is the gamma distribution with mean $\alpha \beta$ and variance $\alpha \beta ^ { 2 }$ . In the negative binomial distribution: 

$$
\mathrm{E} (Y) = \mathrm{E} (\mu) = \alpha \beta , \text {   and   variance   } = \alpha \beta + \alpha \beta^ {2}, \tag {2.15}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/310882e32d62f7496a76582eaae071e40532b8f8ccd6b38cd46d852efdfafcf4.jpg)



FIGURE 2.4 The relationship between variance and mean.


To build a negative binomial regression model, we can represent the negative binomial distribution in terms of its parameters: $\mu = \alpha \beta$ and $k = 1 / \alpha .$ . This enables us to express the expected value of $Y$ as $\mu$ and its variance as $\mu + k \mu ^ { 2 } .$ , where k is referred to as the dispersion parameter. The functional form of the negative binomial regression model is: 

$$
\operatorname{Log} (\text { events }) = \left[ \log (\text { person   -   time }) \right] + \beta_ {0} + \beta_ {1} x _ {1} + \beta_ {2} x _ {2} + \dots + \beta_ {i} x _ {i} + \sigma \varepsilon_ {i}, \tag {2.16}
$$

where $\sigma \varepsilon _ { i }$ represents the error term. This model assumes that the dependent variable has a Poisson distribution with an expected value conditional on $\varepsilon _ { \nu }$ and that exp(εi) has a standard gamma distribution. The assumptions of the negative binomial model are similar to those of the Poisson distribution, except for the inclusion of the dispersion parameter k. 

Unlike the Poisson distribution, which assumes that the mean and variance are equal, the negative binomial distribution has an additional parameter (k) to account for overdispersion, which gives the model more flexibility and accuracy in handling extra variability or heterogeneity in the data. When k equals 0, the model reduces to a Poisson regression model. If it is notably greater than 0, the negative binomial model is more appropriate than the Poisson model and the inferences made from the negative binomial model are more reliable (Gardner, Mulvey, and Shaw 1995). However, the negative binomial regression is susceptible to convergence problems, and if these occur, the validity of the model fit may be questionable (see Section 1.9.2 in Chapter 1 for convergence failure). 

The robust negative binomial regression model has been developed to analyze count data (Cameron and Trivedi 2013, Hilbe 2014). This model uses the classical sandwich estimation under the generalized estimating equation (GEE) framework to accurately estimate standard errors. When there is correlation in the data (that causes overdispersion), the robust standard errors help adjust for the overdispersion. 

## 2.6.7 Overdispersion in Binomial Data

Overdispersion doesn’t apply to binary response models with binomial data in the same way as it does to count data. In binary models, the dependent variable has only two possible outcomes, for instance, the disease has either developed or it hasn’t, which differs from the definition of overdispersion applied to count data (Hilbe 2011). Nonetheless, overdispersion can still present an issue for binomial models when data is grouped, as exemplified by the grouped dataset in Example 2.1. When analyzing ungrouped binomial data, the robust negative binomial regression model is equivalent to the robust Poisson regression model with robust variance estimation. However, as mentioned previously, negative binomial models may encounter convergence issues. In such situations, the robust Poisson regression model can be used instead. More details on this modeling approach will be provided in the subsequent sections. 

## 2.6.8 Robust Poisson Regression Model for Binomial Data

When Poisson regression models are applied to analyze binomial data, the estimated errors may suffer from overestimation due to misspecified error terms when the underlying data follow a binomial distribution (McNutt et al. 2003). In the binomial distribution, the relationship between the mean and variance is typically characterized by the variance being less than the mean, and this relationship is symmetric around the value of 0.5. This differs from the Poisson distribution, where it is assumed that the mean and variance are equal (Hilbe 2011). A binary outcome does not follow a Poisson distribution, and the variance of a Poisson random variable is always larger than that of a binary variable with the same mean. 

To account for this model misspecification and the resulting overestimated error variance, the Poisson regression model needs to be modified for binomial data. The modified Poisson method uses robust error variance to estimate the effect measure (Chen et al. 2014, Zou 2004) and is called the “robust Poisson regression model”. The sandwich estimator, under the generalized estimation equation framework, is employed to correct the inflated variance (i.e., overdispersion) that is estimated in the standard Poisson regression. The estimators based on the robust Poisson models are pseudo-likelihood estimators. Sandwich error estimation can be implemented using the SAS PROC GENMOD procedure with the REPEATED statement that specifies the subject identifier. 

Notably, the binomial distribution approximates the Poisson distribution when both the population at risk is large and the risk of disease is low (Clayton and Hills 1993). 

The following example illustrates the use of the two models in the SAS PROC GENMOD procedure. 

## Example 2.2

To investigate the potential interaction of depression (dep) and positive affect (paffect) on all-cause death, while controlling for eight confounding variables, we utilized the NHEFS dataset. The outcome variable is all-cause death during the follow-up period, and depressive symptoms are measured using the Centers for Epidemiologic Studies Depression (CES-D) Scale (Eaton et al. 2004). Study subjects are considered to have depression if their CES-D score is equal to or greater than 16, and those with scores below 16 are defined as not having depression. In order to assess the efficacy of the robust Poisson regression model and negative binomial regression model in reducing the standard errors of estimated parameters, we fit four models: an unadjusted Poisson model, a Poisson model with dispersion factor (φ) adjustment, a negative binomial model, and a robust Poisson regression model. 

Although all four models yielded the same coefficients for the parameters, the estimated standard errors varied greatly across the models. Notably, the robust Poisson regression model consistently produced smaller standard errors compared to the other three models (as shown in Table 2.3). 


TABLE 2.3 Coefficients and Standard Errors Estimated by Four Models


<table><tr><td rowspan="2">Parameters</td><td rowspan="2">Coefficients</td><td colspan="4">Standard Error</td></tr><tr><td>Unadjusted</td><td><eq>\varphi</eq>-Adjusted</td><td>NB*</td><td>Robust Poisson</td></tr><tr><td>Intercept</td><td>-7.920</td><td>0.279</td><td>0.390</td><td>0.279</td><td>0.269</td></tr><tr><td>dep</td><td>0.637</td><td>0.239</td><td>0.333</td><td>0.239</td><td>0.215</td></tr><tr><td>pafect</td><td>-0.038</td><td>0.012</td><td>0.016</td><td>0.012</td><td>0.011</td></tr><tr><td>pafect*dep</td><td>-0.048</td><td>0.024</td><td>0.033</td><td>0.024</td><td>0.021</td></tr><tr><td>age</td><td>0.076</td><td>0.003</td><td>0.004</td><td>0.003</td><td>0.003</td></tr><tr><td>sex</td><td>0.735</td><td>0.058</td><td>0.081</td><td>0.058</td><td>0.055</td></tr><tr><td>race</td><td>0.134</td><td>0.075</td><td>0.105</td><td>0.075</td><td>0.071</td></tr><tr><td>eduy</td><td>-0.021</td><td>0.008</td><td>0.012</td><td>0.008</td><td>0.008</td></tr><tr><td>marital</td><td>-0.172</td><td>0.064</td><td>0.089</td><td>0.064</td><td>0.060</td></tr><tr><td>marital</td><td>-0.068</td><td>0.119</td><td>0.167</td><td>0.119</td><td>0.111</td></tr><tr><td>area</td><td>0.092</td><td>0.079</td><td>0.110</td><td>0.079</td><td>0.072</td></tr><tr><td>area</td><td>0.226</td><td>0.077</td><td>0.108</td><td>0.077</td><td>0.070(Continued)</td></tr><tr><td>income</td><td>-0.654</td><td>0.139</td><td>0.195</td><td>0.139</td><td>0.135</td></tr><tr><td>income</td><td>-0.477</td><td>0.115</td><td>0.161</td><td>0.115</td><td>0.109</td></tr><tr><td>income</td><td>-0.203</td><td>0.092</td><td>0.129</td><td>0.092</td><td>0.085</td></tr><tr><td>income</td><td>-0.187</td><td>0.088</td><td>0.123</td><td>0.088</td><td>0.080</td></tr><tr><td>income</td><td>-0.114</td><td>0.094</td><td>0.132</td><td>0.094</td><td>0.086</td></tr><tr><td>bmi3</td><td>0.335</td><td>0.107</td><td>0.149</td><td>0.107</td><td>0.097</td></tr><tr><td>bmi3</td><td>-0.107</td><td>0.059</td><td>0.082</td><td>0.059</td><td>0.054</td></tr><tr><td>bmi3</td><td>0.019</td><td>0.075</td><td>0.105</td><td>0.075</td><td>0.069</td></tr></table>


*NB: negative binomial model 


The following SAS PROC GENMOD are used to estimate coefficients and standard error: 

1. Unadjusted Poisson regression model 

```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref='0') race marital area income bmi3(ref=first);
model death=dep|pafect age sex race eduy marital area income bmi3/dist=Poisson link=log offset=ln_py;
RUN; 
```

2. Pearson dispersion factor (φ) adjusted Poisson regression model 

```txt
PORC genmod data=nhefs83;
class dep (ref=first) sex (ref='0') race marital area income bmi3(ref=first);
model death=dep|pafect age sex race eduy marital area income bmi3 /dist=Poisson link=log scale=Pearson offset=ln_py;
RUN; 
```

3. Negative binomial regression model 

```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref='0') race marital area income bmi3(ref=first);
model death=dep|pafect age sex race eduy marital area income bmi3/dist=negbin link=log offset=ln_py;
RUN; 
```

4. Robust Poisson regression model 

```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref='0') race marital area income bmi3(ref=first)SEQN; 
```

```txt
model death=dep|pafect age sex race eduy marital area income bmi3 /dist=poi link=log offset=ln_py; repeated subject =SEQN;
RUN; 
```

In model 4, the sandwich error estimation is implemented using the SAS PROC GENMOD procedure with the REPEATED statement that specifies the subject identifier (SEQN in this example). The identifier is required to appear in both CLASS and REPEATED statements. 

Additionally, we utilize the robust negative binomial regression model along with the following SAS syntax to estimate the regression coefficients and their corresponding standard errors: 

```txt
proc genmod data=nhefs83;
class dep (ref=first) sex (ref='0') race marital area income bmi3(ref=first)SEQN;
model death=dep|p affect age sex race eduy marital area income bmi3 /dist=negbin link=log offset=ln_py;
repeated subject =SEQN;
run; 
```

The values of the regression coefficients and their standard errors, as estimated from this model, are identical to those computed from the robust Poisson regression model. 

In summary, when analyzing the binomial outcome, the Poisson regression models, φ-adjusted Poisson model, and negative binomial model may not be sufficient to handle the excess variation of the outcome variable Y. In addition, the negative binomial model is subject to convergence problems. Compared with other models, the robust Poisson regression model provides more accurate inference and is not susceptible to convergence failure. When we do not know whether the Poisson or negative binomial model is well-fitted to data, the robust Poisson regression model should be used as a default method. In the following sections, we will use the robust Poisson regression model to estimate incident rate ratio (Section 2.7) and risk ratio (Section 2.8). Section 2.9 covers the use of this model to estimate standardized measures. However, before proceeding, we must assess the assumption of linearity, which is a fundamental assumption for all generalized regression models. 

## 2.6.9 Assessment of Linearity

The assumption of linearity stipulates that the relationship between the log risk or rate of the outcome and each continuous independent variable is linear. This assumption is applicable to GLMs, including the Poisson, log-binomial, logistic, and Cox proportional hazard models. While the Poisson regression model is used as an illustrative example, the methodology for checking this assumption and addressing its violations can be applied to other GLMs. 

Recall, the general form of a Poisson regression model is: 

$$
\mathrm{Log} \big (\mathrm{risk}, R \big) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} \dots + \beta_ {\mathrm{p}} Z _ {\mathrm{p}},
$$

where X represents the exposure variable and $Z _ { 1 }$ to $Z _ { p }$ represents a collection of covariates. The linearity assumption infers that a given unit increase in a continuous independent variable has a consistent effect on the log risk of the outcome. In other words, the change in the log risk remains constant, whether the age variable changes from 30 to 31 or from 

40 to 41. It is essential to validate this assumption during generalized linear regression analysis. If this assumption is violated for a continuous exposure variable, the estimated risk ratio will be biased. Similarly, if this assumption is violated for one or more continuous confounding variables, residual confounding effects may persist, making the control of confounding in the analysis ineffective. 

Of note, explanatory variables that have a natural order or rank may not have a sound basis for defining a mathematical ordering of their effect on the response. For instance, age has a natural order, and a 3-year incremental change does not have the same effect on all-cause death. A 3-year increase from 60 to 63 may have a larger effect on allcause death than the same 3-year change from 20 to 23 years old. To avoid incorrect transformations of independent variables, two common mistakes should be avoided: (1) transforming categorical variables into continuous variables and (2) retaining the natural order of continuous variables in a model. To illustrate how these incorrect transformations impact the analysis of the exposure-outcome association, let’s consider an example. 

## Example 2.3

In this example, we aim to examine the relationship between smoking, personal income, and race within a cohort study. To simplify the analysis, we dichotomize the outcome variable of smoking into two groups: smokers (1: those who have smoked at least 20 cigarettes) and nonsmokers (0: those who have smoked fewer than 20 cigarettes). We then calculate the log risk based on the proportions of smokers across different race and income levels (Table 2.4). Following this, we plot the log risk of smoking against the six income categories (Figure 2.5). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/edcc8d4c192fb53c9ff2de0a17066c3bd805aa57aab3458127db858ba0f59275.jpg)



FIGURE 2.5 Plot of log risk of smoking by income and race.



TABLE 2.4



Log Risk of Smoking Stratified by Income and Race


<table><tr><td rowspan="2">Income</td><td colspan="2">White</td><td colspan="2">Black</td><td colspan="2">Hispanic/Latino (HL)</td><td colspan="2">Asian</td><td colspan="2">Others</td></tr><tr><td>Risk</td><td>Log Risk</td><td>Risk</td><td>Log Risk</td><td>Risk</td><td>Log Risk</td><td>Risk</td><td>Log Risk</td><td>Risk</td><td>Log Risk</td></tr><tr><td>≤$3,999</td><td>0.09</td><td>-2.41</td><td>0.15</td><td>-1.90</td><td>0.11</td><td>-2.21</td><td>0.05</td><td>-3.00</td><td>0.13</td><td>-2.04</td></tr><tr><td>$4,000–5,999</td><td>0.16</td><td>-1.83</td><td>0.21</td><td>-1.56</td><td>0.19</td><td>-1.66</td><td>0.09</td><td>-2.41</td><td>0.23</td><td>-1.47</td></tr><tr><td>$6,000–9,999</td><td>0.25</td><td>-1.39</td><td>0.33</td><td>-1.11</td><td>0.28</td><td>-1.27</td><td>0.13</td><td>-2.04</td><td>0.27</td><td>-1.31</td></tr><tr><td>$10,000–19,999</td><td>0.22</td><td>-1.51</td><td>0.38</td><td>-0.97</td><td>0.26</td><td>-1.35</td><td>0.15</td><td>-1.90</td><td>0.31</td><td>-1.17</td></tr><tr><td>$20,000–34,999</td><td>0.19</td><td>-1.66</td><td>0.29</td><td>-1.24</td><td>0.21</td><td>-1.56</td><td>0.11</td><td>-2.21</td><td>0.23</td><td>-1.47</td></tr><tr><td>≥$35,000</td><td>0.12</td><td>-2.12</td><td>0.19</td><td>-1.66</td><td>0.11</td><td>-2.21</td><td>0.07</td><td>-2.66</td><td>0.16</td><td>-1.83</td></tr><tr><td>Overall</td><td>0.19</td><td>-1.66</td><td>0.29</td><td>-1.24</td><td>0.23</td><td>-1.47</td><td>0.11</td><td>-2.21</td><td>0.24</td><td>-1.43</td></tr></table>

The relationship between the log risk of smoking and income does not follow a linear pattern, as evidenced by the ∩-shaped relationships between income and smoking when stratified by race. Treating income as a continuous variable with a natural order in a Poisson regression model would result in a regression coefficient of 0.02 and a risk ratio of 1.02 (95% CI: 0.96–1.09), leading to the conclusion that there is no association between smoking and income. To address this issue, one possible solution is to convert income into a categorical variable by creating dummy variables. When a categorical variable has k levels, k−1 dummy variables are needed, with one level selected as the reference. In this example, we create five dummy variables for the six income categories, with the category of ≤$3,999 serving as the reference (Table 2.5). 

The SAS PROC GENMOD program creates dummy variables when a reference level is specified under the CLASS statement. For example, the category of $\leq 3 , 9 9 9$ was originally coded as “0” in the dataset. We use $\prime \prime \mathrm { R E F } { = } ^ { \prime } 0 ^ { \prime \prime \prime }$ to specify the level of $\prime \prime 0 \prime \prime$ as the reference, and the SAS program creates five dummy variables. 

```matlab
PROC genmod data=race3;
class race (ref='0') income (ref='0')/param=ref;
model D/n = income race /dist=poi link=log;
estimate 'income 1' income 1 0 0 0 0/ exp;
estimate 'income 2' income 0 1 0 0 0/ exp;
estimate 'income 3' income 0 0 1 0 0/ exp;
estimate 'income 4' income 0 0 0 1 0/ exp;
estimate 'income 5' income 0 0 0 0 1/ exp; 
```

RUN; 


TABLE 2.5



Coding of Dummy Variables for Income With Six Levels


<table><tr><td>Income</td><td><eq>D_{1}</eq></td><td><eq>D_{2}</eq></td><td><eq>D_{3}</eq></td><td><eq>D_{4}</eq></td><td><eq>D_{5}</eq></td></tr><tr><td>≤$3,999</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>$4,000–5,999</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>$6,000–9,999</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td></tr><tr><td>$10,000–19,999</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td></tr><tr><td>$20,000–34,999</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td></tr><tr><td>≥$35,000</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td></tr></table>

The ∩-shaped pattern of the estimated risk ratios (SAS Output 2.3) reflects the pattern of log risk of smoking presented in Figure 2.5. 


SAS Output 2.3 Risk ratios and 95% confidence intervals


<table><tr><td colspan="6">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td><td rowspan="2">Chi-Square</td><td rowspan="2">Pr &gt; ChiSq</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>income 1</td><td>1.6135</td><td>0.9527</td><td>2.7327</td><td>3.17</td><td>0.0751</td></tr><tr><td>Exp (income 1)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>income 2</td><td>2.4045</td><td>1.4553</td><td>3.9730</td><td>11.73</td><td>0.0006</td></tr><tr><td>Exp (income 2)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>income 3</td><td>2.4570</td><td>1.4838</td><td>4.0684</td><td>12.21</td><td>0.0005</td></tr><tr><td>Exp (income 3)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>income 4</td><td>1.9472</td><td>1.1612</td><td>3.2650</td><td>6.38</td><td>0.0115</td></tr><tr><td>Exp (income 4)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>income 5</td><td>1.2614</td><td>0.6948</td><td>2.2903</td><td>0.58</td><td>0.4453</td></tr><tr><td>Exp (income 5)</td><td></td><td></td><td></td><td></td><td></td></tr></table>

The estimated risk ratio for each dummy variable provides an average estimate of the effect of income on smoking within each category. However, if the effect of income within a category varies substantially, the use of an average risk ratio can lead to bias. For instance, in the category of $20,000–34,999, the effect of an income of $20,000 may differ considerably from that of $34,000. In such cases, the estimated risk ratio may obscure the differences within each category. To ensure the constancy of risk within categories, one approach is to use narrow category ranges. However, this will result in more categories with fewer subjects in each category. 

We can compare the risk ratios estimated in the Poisson regression model using the dummy variables for income with the risk ratios estimated in another Poisson model using the ordinal variable of income. In the latter approach, the income categories are ordered as an ordinal variable with values of 0, 1, 2, 3, 4, and 5, and the model treats it as a continuous variable with a range of 0–5. Table 2.6 demonstrates how risk ratios differ between the two models, adjusting for race. In the model with dummy variables, each income category has its own regression coefficient and risk ratio. On the other hand, the model with the ordinal variable of income assumes that the association between income and smoking is linear in the log scale, meaning that a one-unit increase in income has the same regression coefficient (0.02). Table 2.6 compares regression coefficients and risk ratios estimated by two models with different coding of income. 

The model with dummy variables of income and the model with an ordinal variable of income are nested, and a likelihood ratio test is used to compare the two models. The result of the test indicates a difference between the two models. The pattern depicted in Figure 2.5 also lends support to the utilization of dummy variables for income rather than the ordinal variable. Based on both the likelihood ratio test and the effect pattern, it can be concluded that the model with ordinal income is not an adequate summary of the dose-response relationship. On the other hand, the model with dummy variables of income provides a better fit to the data and allows for a more accurate estimation of the effect of income on smoking. 

Categorical variables are often encoded using a continuous scheme. For example, in the variable “race,” white may be coded as 0, black as 1, Hispanic or Latin (HL) as 2, Asian as 3, and other races as 4. However, treating “race” as a continuous variable and retaining this original coding in a regression model assumes a linear relationship between the log risk of the outcome and race, which is not valid for variables with an ordering coding such as “race.” To illustrate this, let’s consider the data in Table 2.4 and plot the log risk of smoking according to the “race” category (Figure 2.6). 


TABLE 2.6



Regression Coefficient (β) and Risk Ratios (RR) Estimated by Two Models


<table><tr><td rowspan="2">Income</td><td colspan="2">Dummy Variables</td><td colspan="2">Ordinal Variable</td></tr><tr><td><eq>\beta</eq></td><td>RR</td><td><eq>\beta</eq></td><td>RR</td></tr><tr><td>≤$3,999</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>$4,000–5,999</td><td>0.48</td><td>1.62</td><td>1*0.02 = 0.02</td><td>1.02</td></tr><tr><td>$6,000–9,999</td><td>0.88</td><td>2.41</td><td>2*0.02 = 0.04</td><td>1.04</td></tr><tr><td>$10,000–19,999</td><td>0.90</td><td>2.46</td><td>3*0.02 = 0.06</td><td>1.06</td></tr><tr><td>$20,000–34,999</td><td>0.67</td><td>1.95</td><td>4*0.02 = 0.08</td><td>1.08</td></tr><tr><td>≥$35,000</td><td>0.23</td><td>1.26</td><td>5*0.02 = 0.10</td><td>1.11</td></tr></table>

As depicted in Figure 2.6, the relationship between the log risk of smoking and race does not follow a linear pattern. If we mistakenly treat “race” as a continuous variable in a model, the estimated coefficient of “race” would be −0.07, and the resultant risk ratio would be 0.93. Based on this, we would conclude that the risk ratio of smoking for blacks versus whites is 0.93, 0.86 (0.932 ) for Hispanics and Latinos versus whites, 0.80 (0.933 ) for Asians versus whites, and 0.75 (0.934 ) for other races versus whites. To properly estimate the association between race and smoking, adjusting for income, we need to create four dummy variables and treat the category of “white” as the reference group. As presented in the SAS Output 2.4, the pattern of these risk ratios follows the one shown in Figure 2.6. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/3aed658efdcba7348bc010d952c088c59f53ffb9e9926684dfe80548a1ed111d.jpg)



FIGURE 2.6



Plot of log risk of smoking by race.



SAS Output 2.4 Risk ratios and 95% confidence intervals


<table><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td><td rowspan="2">Chi-Square</td><td rowspan="2">Pr &gt; ChiSq</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>Black</td><td>1.4681</td><td>1.1850</td><td>1.8189</td><td>12.34</td><td>0.0004</td></tr><tr><td>Exp (Black)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>HL</td><td>1.1239</td><td>0.8614</td><td>1.4665</td><td>0.74</td><td>0.3895</td></tr><tr><td>Exp (HL)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Asian</td><td>0.5712</td><td>0.4142</td><td>0.7877</td><td>11.66</td><td>0.0006</td></tr><tr><td>Exp (Asian)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Others</td><td>1.2816</td><td>0.8753</td><td>1.8764</td><td>1.63</td><td>0.2022</td></tr><tr><td>Exp (Others)</td><td></td><td></td><td></td><td></td><td></td></tr></table>

When examining more than two levels of a categorical exposure variable, risk ratios are estimated in relation to a single reference category. The risk ratio values are dependent on the choice of the reference category. In epidemiological studies, the non-exposure or the lowest exposure category of an ordinal variable is commonly chosen as the reference category. In contrast, for nominal exposure variables with no natural ordering, the selection of a reference category is arbitrary, such as the variable of “race” in the previous example. For practical reasons, a category with a largest sample size may be selected as the reference category. This is because the width of confidence intervals depends not only on the sample size in the comparison category but also on the sample size in the reference category. For instance, if the “Asian” category is selected as the reference group, and the sample of Asians in the study is small, the confidence intervals for the estimated risk ratios would become wider since the estimation of the four risk ratios uses the same reference category: risk ratios comparing Asian with white, black, Hispanic or Latin, and other races. 

In addition to using plots to check for linear relationships between continuous variables and outcomes, we can also break down a continuous variable into dummy variables and examine if the estimated risk ratios exhibit a linear pattern. This practical approach can be particularly useful when adjusting for other covariates in a model, as the relationship between an exposure and outcome may be altered by the presence of other covariates. In the income sample, we broke down income into six levels and estimated risk ratios at five categories, with the category of ≤3,999 serving as the reference. However, the estimated risk ratios did not suggest a linear relationship, but rather a ∩-shaped pattern, with risk ratios of 1.61, 2.40, 2.46, 1.95, and 1.26. If the risk ratios exhibited a linear pattern (e.g., 1.41, 2.02, 2.79, 3.76, 5.32), we would simply retain income as a continuous variable in the model. Doing so would yield a more parsimonious model, increase statistical power, and enable adjustment for other covariates, if needed. 

In contrast, categorizing a continuous variable into several levels will reduce statistical power due to ignoring within-category variability in risk with that continuous variable. To circumvent this problem, we can transform a continuous variable into another form of a continuous variable so that the log risk of the outcome variable is linear in the transformed variable. For example, in a model where the outcome has a logarithmic relationship with the exposure, taking the logarithm of the exposure variable can help to linearize the relationship. However, interpreting the coefficients in a transformed model can be challenging. In the case of a logarithmic transformation, the interpretation of the coefficient would be the change in the outcome associated with a 1-unit increase in the natural logarithm of the exposure variable. This can be more difficult to interpret and communicate, compared to the interpretation of coefficients in an untransformed model. Therefore, whenever possible, it is generally preferred to use the spline regression model that allows for the within-category lines to have nonzero slopes, allowing risk to vary both between and within categories (Greenland 1995). Chapter 10 of the book covers the topic of spline regression analysis in-depth, providing insights into the practical applications and advantages of this method. 

## 2.7 Use Robust Poisson Regression Model to Estimate Incident Rate Ratio

## 2.7.1 Estimate of Crude Incident Rate Ratio

Let’s first consider a robust Poisson regression model with the exposure variable (x) as its only covariate. Suppose that the exposure variable has two levels, exposed (x = 1), and unexposed (x = 0). In this case, Equation 2.6 is transformed to: 

$$
\operatorname{Log} (\text { rate }, \lambda) = \beta_ {0} + \beta_ {x} x,
$$

$$
\text { Rate } (\lambda) = \exp \left(\beta_ {0} + \beta_ {x} x\right),
$$

The unadjusted incidence rate ratio (cIR) is estimated by: 

$$
c I R = \frac {\text { rate } \mid x = 1}{\text { rate } \mid x = 0} = \frac {\exp (\beta_ {0} + \beta_ {x} \times 1)}{\exp (\beta_ {0} + \beta_ {x} \times 0)} = \exp (\beta_ {x}).
$$

## Example 2.4

To estimate the association between depression, as measured at the baseline in NHEFS, and all-cause death during the 10 years of follow-up, we first calculate the incidence rate and its 95% confidence interval for the two comparison groups (1: depressed vs. 0: non-depressed). The dataset includes an outcome variable indicating “death” (1: died and 0: alive) and person-years (py) for each study participant. To calculate the number of events (death) and person-time at risk for each exposure level, we use SAS PROC SUMMARY and save the results to a SAS dataset called “ratedata.” Next, in the DATA step, we estimate the incident rate per 100 person-years and its 95% confidence interval for both the depressed and nondepressed groups. 

```txt
PROC summary data=nhefs83 nway;
var death py;
class dep;
output out=ratedata(drop=_type_ _freq_) sum=death py;
RUN;

DATA py_rates;
set ratedata;
Rate=100*(death/py);
CI_L=rate/exp(1.96*sqrt(1/death));
CI_U=rate*exp(1.96*sqrt(1/death));
RUN; 
```

We use the following PROC PRINT syntax to list the incidence rates and their 95% confidence intervals for the exposed and unexposed groups in a table (SAS Output 2.3). 

PROC print data=py_rates noobs; title 'Table of incident rates per 100 person-years'; var dep death py Rate CI_L CI_U; 

RUN; 


SAS Output 2.5 Incidence rate and 95% confidence interval


<table><tr><td>dep</td><td>death</td><td>py</td><td>Rate</td><td>CI_L</td><td>CI_U</td></tr><tr><td>0</td><td>1232</td><td>54,725.92</td><td>2.25122</td><td>2.12895</td><td>2.38050</td></tr><tr><td>1</td><td>342</td><td>9353.33</td><td>3.65645</td><td>3.28875</td><td>4.06526</td></tr></table>

The resultant crude IR is 1.63 (3.65645/2.25122). 

We proceed by utilizing SAS PROC GENMOD to conduct a robust Poisson regression, with the aim of estimating the cIR. The offset used is the person-year in log scale. In order to obtain robust standard error estimates, we employ the REPEATED statement. The subject identifier, SEQN, is included under the CLASS statement. We estimate the incident rates for the two levels of depression, as well as the incidence rate ratio, by using the LSMEANS statement. The DIFF option provides pairwise differences between the two depression levels. The LSMEANS estimates and difference estimates are exponentiated using the EXP option, and to compute the 95% confidence intervals, we use the CL option. 

PROC genmod data=nhefs83; class dep (ref='0') SEQN; model death=dep /dist=poi link=log offset=ln_py; repeated subject =SEQN; lsmeans dep /diff exp cl; 

RUN; 

This SAS syntax produces the same incidence rates and crude IR value (1.62) as we previously estimated (SAS Output 2.5). Additionally, the PROC GENMOD syntax generates a 95% confidence interval of 1.44–1.83, as shown in the SAS Output 2.6. 


SAS Output 2.6 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-3.7937</td><td>0.0279</td><td>-3.8484</td><td>-3.7390</td><td>-135.85</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4850</td><td>0.0600</td><td>0.3674</td><td>0.6027</td><td>8.08</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.6242</td><td>1.4439</td><td>1.8270</td></tr></table>

Using the regression coefficients estimated from the robust Poisson regression model, we manually calculate the incidence rates for depressed and non-depressed individuals. The incidence rate for depressed individuals is calculated as: 

$$
I _ {\mathrm{dep} = 1} = \exp \left(\beta_ {0} + \beta_ {\mathrm{dep}}\right) = \exp \left(- 3. 7 9 3 7 + 0. 4 8 5 * 1\right) = 0. 0 3 7,
$$

while the incidence rate for non-depressed individuals is calculated as 

$$
I _ {\mathrm{dep} = 0} = \exp \left(\beta_ {0} + \beta_ {\mathrm{dep}}\right) = \exp (- 3. 7 9 3 7 + 0. 4 8 5 * 0) = 0. 0 2 3.
$$

The cIR is then calculated as c $\begin{array} { r } { \mathrm { { I R } } = \exp ( 0 . 4 8 5 ) = 1 . 6 2 , } \end{array}$ , with a 95% confidence interval of 1.44–1.83. The Z-test statistics is calculated as: 

$$
Z \text {-value} = \frac {\beta}{S E _ {\beta}} = \frac {0 . 4 8 5}{0 . 0 6} = 8. 0 8 \quad p <   0. 0 0 1
$$

Based on the 95% confidence interval and the Z-test, the observed incident rate ratio (1.62) may not be a random deviation from 1. This suggests that depressed individuals have a higher incident rate (1.62 times) of all-cause mortality compared to non-depressed individuals. 

## 2.7.2 Adjustment of a Confounding Variable

If we know $z _ { 1 }$ is a binary confounder variable $( z _ { 1 } = 1 \mathrm { v s } . z _ { 1 } = 0 )$ , we can estimate the adjusted IR by adding $z _ { 1 }$ into the Poisson model: 

$$
\operatorname{Rate} (\lambda) = \exp \left(\beta_ {0} + \beta_ {x} x + \beta_ {z} z _ {1}\right)
$$

The $z _ { 1 }$ -adjusted incidence rate ratio (aIR) is estimated by: 

$$
a I R = \frac {\text { rate } \mid x = 1}{\text { rate } \mid x = 0} = \frac {\exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times z _ {1}\right)}{\exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times z _ {1}\right)} = \exp \left(\beta_ {x}\right).
$$

By controlling for a confounder $z _ { 1 }$ in the regression model, the value of the confounder is assumed to be constant across the two exposure groups. Therefore, the value of $\beta _ { z }$ (regression coefficient for the confounder) in the exposed group is assumed to be the same as in the unexposed group. 

## Example 2.5

Should we hypothesize that the relationship between depression and all-cause mortality is potentially confounded by the level of education (eduy), it would be appropriate to include the number of years of education as a covariate in the robust Poisson regression model. 

PROC genmod data=nhefs83; class dep (ref='0') SEQN; model death=dep eduy/dist=poi link=log offset=ln_py; repeated subject =SEQN; estimate "dep IR" dep 1 -1; 

RUN; 

The education-adjusted IR for depression is 1.32 and 95% CI (1.17–1.49) (SAS Output 2.7). 


SAS Output 2.7 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-1.9464</td><td>0.0748</td><td>-2.0931</td><td>-1.7998</td><td>-26.01</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.2806</td><td>0.0614</td><td>0.1603</td><td>0.4008</td><td>4.57</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>eduy</td><td></td><td>-0.1690</td><td>0.0070</td><td>-0.1827</td><td>-0.1552</td><td>-24.07</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>dep IR</td><td>1.3239</td><td>1.1739</td><td>1.4931</td></tr></table>

Education year is negatively associated with both depression and death and is therefore considered a positive confounder (see Section 1.4.3 in Chapter 1 for positive confounding). As a positive confounder, education year may inflate the observed association between depression and all-cause mortality in terms of the crude incident rate. Therefore, after adjusting for the education year, the observed incidence rate ratio is expected to decrease, and the adjusted IR would be smaller than the crude IR (1.62 vs. 1.32). 

## 2.7.3 Assessment of Interaction Effect

If there is a potential effect modification between the exposure variable (x) and a modifier (z), the robust Poisson regression model can be used to assess the interaction effect. To do this, we need to create a product term by multiplying x and z together to obtain $w = x ^ { * } z ,$ and include this product term in the Poisson regression model: 

$$
\begin{array}{l} \operatorname{Rate} (I) = \exp \left(\beta_ {0} + \beta_ {x} x + \beta_ {z} z + \beta_ {w} w\right) \\ I R = \frac {\text {rate} \mid x = 1}{\text {rate} \mid x = 0} = \frac {\exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times z + \beta_ {w} w\right)}{\exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times z + \beta_ {w} w\right)} \\ = \frac {\exp \left(\beta_ {0} + \beta_ {x} + \beta_ {z} \times z + \beta_ {w} (x \times z) \right.}{\exp \left(\beta_ {0} + \beta_ {z} \times z + \beta_ {w} (x \times z) \right.} \\ = \frac {\exp \left(\beta_ {0} + \beta_ {x} + \beta_ {z} \times z + \beta_ {w} (1 \times z) \right.}{\exp \left(\beta_ {0} + \beta_ {z} \times z + \beta_ {w} (0 \times z) \right.} \\ = \exp \left(\beta_ {x} + \beta_ {w} z\right) \tag {2.17} \\ \end{array}
$$

This model allows us to estimate the association between the exposure variable (x) and the outcome variable at different levels of the modifier (z). By examining the coefficient of the product term $( \beta _ { w } ) ,$ , we can determine if there is a modification effect of z on the association between x and the outcome. If the value of $\beta _ { w }$ is away from the null (0), supported by its 95% confidence interval, it suggests that the association between x and the outcome differs by the level of $z ,$ indicating an effect modification. In this example, when $z = 1$ , $I R = \exp \left( { \beta _ { x } + \beta _ { w } } \right)$ , while when $z = \breve { 0 } , I R = \exp \left( \beta _ { x } \right)$ . 

Statistical tests should be used with caution when assessing a potential interaction effect. The power to test the coefficient of a product term is typically low, which means that a non-significant p-value does not necessarily indicate the absence of an interaction effect (see Section 1.84 in Chapter 1 for more information). This low power is due to imbalanced cell samples at the level of a product term. Therefore, the significance level of a product term is often set higher than 0.05 (e.g., p-values < 0.10) to account for the low power (Twisk 2019). 

## Example 2.6

Suppose that systolic blood pressure modifies the association between depression and all-cause death. We use the NHEFS dataset to assess if there is a potential interaction effect of depression and systolic blood pressure on death. To statistically test an interaction effect, we first center the variable of systolic pressure, “systolic.” The centered variable is “c_systolic,” i.e., c_systolic = systolic-130, as the mean systolic blood pressure is 130 mmHg in the total study population. We then create a product term “depsys = dep*c_systolic” and add it to the robust Poisson regression model in addition to depression and c_systolic. 

```txt
PROC genmod data=nhefs83;
class dep (ref='0') SEQN;
model death=dep c_systolic dep*c_systolic
/dist=poi link=log offset=ln_py;
repeated subject =SEQN; 
```

RUN; 

Because the coefficient of the product term “dep*c_systolic” is −0.0056 and its 95% CI is between −0.01 and −0.001 (p-value = 0.0277), it suggests that there is statistical evidence of an interaction effect between depression and systolic blood pressure on death (SAS Output 2.8). 


SAS Output 2.8 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-3.9516</td><td>0.0315</td><td>-4.0134</td><td>-3.8898</td><td>-125.34</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4995</td><td>0.0681</td><td>0.3660</td><td>0.6331</td><td>7.33</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>c_systolic</td><td></td><td>0.0282</td><td>0.0012</td><td>0.0260</td><td>0.0305</td><td>24.47</td><td>&lt;.0001</td></tr><tr><td>c_systolic*dep</td><td>1</td><td>-0.0056</td><td>0.0025</td><td>-0.0105</td><td>-0.0006</td><td>-2.20</td><td>0.0277</td></tr><tr><td>c_systolic*dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

Based on the results presented in the above SAS output, we estimate rate ratio (IR). When dep=1, 

$\mathrm { R a t e } \mid \mathrm { d e p } = 1 = \exp \bigl ( - 3 . 9 5 1 6 + 0 . 4 9 9 5 \times 1 + 0 . 0 2 8 2 \times \mathsf { c \_ s y s t o l i c } - 0 . 0 0 5 6 \times \mathsf { c \_ s y s t o l i c } \bigr . ^ { \ast } \bigr ] .$ 

When dep=0, 

$\mathrm { R a t e } \mid \mathrm { d e p } = 0 = \exp \bigl ( - 3 . 9 5 1 6 + 0 . 4 9 9 5 \times 0 + 0 . 0 2 8 2 \times \mathsf { c \_ s y s t o l i c } - 0 . 0 0 5 6 \times \mathsf { c \_ s y s t o l i c } \bigr ^ { \ast } 0 \bigr ) .$ 

Therefore, 

$$
\begin{array}{l} I R = \frac {\text { rate } \mid \mathrm{dep} = 1}{\text { rate } \mid \mathrm{dep} = 0} = \exp \left[ (- 3. 9 5 1 6 + 0. 4 9 9 5 \times 1 + 0. 0 2 8 2 \times c _ {-} \text { systolic } - \right. \\ 0. 0 0 5 6 \times c \_ s y s t o l i c * 1) - (- 3. 9 5 1 6 + 0. 4 9 9 5 \times 0 + 0. 0 2 8 2 \times c \_ s y s t o l i c - \\ 0. 0 0 5 6 \times c \_ s y s t o l i c * 0) ] \\ = \exp \left[ (- 3. 9 5 1 6 - 3. 9 5 1 6) + 0. 4 9 9 5 (1 - 0) + 0. 0 2 8 2 (0) - 0. 0 0 5 6 \left(1 ^ {*} c _ {-} \text {systolic}\right) \right. \\ = \exp \left(0. 4 9 9 5 - 0. 0 0 5 6 ^ {*} c _ {-} \text { systolic }\right). \\ \end{array}
$$

To examine how systolic pressure modifies the association between depression and allcause mortality, rate ratios are estimated at different values of systolic pressure, including 120, 130, 150, and 160. The rate ratio at each value is calculated by plugging the corresponding systolic pressure value into the equation: $I R = \exp ( 0 . 4 9 9 5 - 0 . 0 \dot { 0 } 5 6 ^ { \ast } \mathrm { c } _ { - }$ _systolic), as follows: 

When systolic pressure = 120 (c_systolic = −10), IR = exp(0.4995 − 0.0056*−10) = 1.74 

When systolic pressure = 130 (c_systolic = 0), IR = exp(0.4995 − 0.0056*0) = 1.65 

When systolic pressure = 150 (c_systolic = 20), IR = exp(0.4995 − 0.0056*20) = 1.47 

When systolic pressure = 160 (c_systolic = 30), IR = exp(0.4995 − 0.0056*30) = 1.39 

The “ESTIMATE” statement in “PROC GENMOD” automatically estimates these four rate ratios and their corresponding 95% confidence intervals. 

```txt
PROC genmod data=nhefs83;
class dep (ref='0') SEQN;
model death=dep c_systolic dep*c_systolic /dist=poi
    link=log offset=ln_py;
repeated subject =SEQN;
estimate 'c_systolic=-10' dep 1 -1 dep*c_systolic -10 10;
estimate 'c_systolic=0' dep 1 -1 dep*c_systolic 0 0;
estimate 'c_systolic=20' dep 1 -1 dep*c_systolic 20 -20;
estimate 'c_systolic=30' dep 1 -1 dep*c_systolic 30 -30; 
```

RUN; 

The “ESTIMATE” generated the same rate ratios as those calculated manually. 


SAS Output 2.9 Contrast estimate results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>c_systolic=-10</td><td>1.7423</td><td>1.4840</td><td>2.0456</td></tr><tr><td>c_systolic=0</td><td>1.6480</td><td>1.4420</td><td>1.8834</td></tr><tr><td>c_systolic=20</td><td>1.4744</td><td>1.2957</td><td>1.6777</td></tr><tr><td>c_systolic=30</td><td>1.3946</td><td>1.1964</td><td>1.6256</td></tr></table>

The results suggest that there may be a modifying effect of systolic blood pressure on the association between depression and all-cause mortality, as the strength of the association tends to decrease with increasing systolic blood pressure. However, it is a crude analysis of interaction effect and other variables, such as age, may confound the association. It is not uncommon to observe a decline in ratio estimates across categories of a variable as the risk of disease among unexposed individuals increases with age. When age is included in the model, the strength of the association remains consistent across the different levels of systolic blood pressure. The use of systolic blood pressure as a modifier in this analysis is for illustrative purposes only and does not imply that it is the only or the most appropriate modifier to assess the potential interaction effect between depression and other variables on all-cause mortality. 

## 2.7.4 Conducting Multiple Robust Poisson Regression Model

In the previous section, we discussed a simple robust Poisson regression model with one confounder and one modifier. Now, we use the following example to demonstrate the use of multiple robust Poisson regression models to estimate rate ratios while considering multiple confounders. 

## Example 2.7

In this example, we investigate the potential role of positive affect in the causal pathway from depression to death. This role could be conceptualized either as a confounder or as an effect modifier. In NHEFS, positive affect is defined as the experience of positive moods, such as joy, happiness, spirits, satisfaction, excitement, or pride (Okely, Weiss, and Gale 2017). The variable of positive affect is centered by its mean of 12. We consider eight potential confounding variables, including sex, age, race, education (eduy), marital status (marital), residence areas (area), family income (income), and BMI (bmi3). Based on previous research, those potential confounders are associated with depression and are risk factors for death. These variables are adjusted for when estimating the association between depression and death and the possible interaction effect of depression and positive affect on death. 

We create three robust Poisson models to assess the role of positive affect on the causal pathway from depression to death. Model 1 includes the risk factor (depression) and all eight confounding variables but does not include positive affect. Model 2 includes all variables in model 1 plus the centered variable of positive affect. We compare the adjusted incidence rate ratio (IR) estimated from model 1 with the adjusted IR from model 2 and observe to what degree the value of IR changes after adding the variable of positive affect. The adjusted IR estimated from model 1 is 1.39 (95%CI: 1.24–1.55), and from model 2, it is 1.18 (95%CI: 1.04–1.34). The change-in-estimate in IRs is 17.8% [(1.39–1.18)/1.18 = 0.178]. 

Model 3 evaluates the potential interaction effect of depression and positive affect, while adjusting for the eight confounding variables. The regression coefficient of the product term is −0.0481, with a 95%CI between −0.09 and −0.01 (p-value = 0.0238), indicating that the effect of depression and positive affect is not multiplicative, and an interaction effect is present. 

The following SAS syntaxes were used to estimate IRs and their 95% confidence intervals. 


Model 1:


```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex race marital area income
bmi3(ref=first)SEQN;
model death=dep age sex race eduy marital area
income bmi3/dist=poi link=log offset=ln_py;
repeated subject =SEQN;
lsmeans dep / diff exp cl;
RUN; 
```


Model 2:


```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex race marital area income
bmi3(ref=first)SEQN;
model death=dep c_paffect age sex race eduy marital
area income bmi3
/dist=poi link=log offset=ln_py;
repeated subject =SEQN;
lsmeans dep / diff exp cl;
RUN; 
```


Model 3:


```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex race marital area income
bmi3(ref=first)SEQN;
model death=dep|c_paffect age sex race eduy marital
area income bmi3
/dist=poi link=log offset=ln_py;
repeated subject =SEQN;
lsmeans dep / diff exp cl;
RUN; 
```

The use of “dep|c_paffect” in model 3 asks the SAS syntax to generate a product term, dep*c_paffect, and incorporate it into the model alongside the individual terms “dep” and “c_paffect.” Next, we use the deviance test to compare model fit among the three models. 

## 2.7.5 Performing Deviance Test to Compare Models

Deviance, which is based on likelihood, measures the degree to which observed data deviates from model predictions. Its role is akin to that of R2 in a linear regression model, serving to evaluate the predictability of regressors within the model and to assess the goodness of fit between different predictive models. A model that yields a larger deviance reflects a poorer fit to the data when compared with another nested model with a smaller deviance. However, as discussed in Section 1.10.1 of Chapter 1, possessing a well-fitted model (i.e., one with low deviance) doesn’t necessarily guarantee the model’s validity or accuracy for estimating the exposure-outcome association. 

For a fitted Poisson regression, the deviance is estimated by: 

$$
D = 2 \sum_ {i = 1} ^ {n} \left[ Y _ {i} \log \left(\frac {Y _ {i}}{\mu_ {i}}\right) - \left(Y _ {i} - \mu_ {i}\right) \right] \tag {2.18}
$$

where $Y _ { i }$ is the count or binary outcome variable that is a function of covariates X and $Z _ { p } ,$ and $\mu _ { i }$ is the predicted mean for observation i based on the estimated model parameters $( \mu _ { i } = \exp ( { \beta _ { 0 } } + \beta _ { x } X + \beta _ { 1 } Z _ { 1 } + \beta _ { 2 } Z _ { 2 } \ldots + \beta _ { \mathrm { p } } Z _ { \mathrm { p } }$ + offset)). If the model fits the data well, the observed values $Y _ { i }$ will be close to their predicted means $\mu _ { \nu }$ leading to a small value of D. A larger deviance indicates a poorer fit of the model to the data. 

To compute the deviance using SAS PROC GENMOD, the traditional Poisson regression model is used, as the robust Poisson regression model does not provide deviance estimation. For instance, we can use the following SAS syntax to estimate deviance for model 3: 

```txt
PROC genmod data=nhefs83 ;
class dep (ref=first) sex race marital area income
bmi3(ref=first);
model death = dep c_paffect age sex race eduy marital
area income bmi3
/dist=poi link=log offset=ln_py; 
```

RUN; 

We compare two nested models by examining their deviances: one is the larger model that includes all potential confounding variables as covariates, while the other is the smaller model that excludes one or more covariates from the larger model. We aim to select a model that minimizes deviance. If additional covariates have adequate predictability for the outcome, then the larger model should fit the data better and have a smaller deviance than the smaller model. However, it is important to note that evaluating model fit alone may lead to inappropriate decisions about confounder control, as some variables may not be included in the model because they do not significantly improve the fit, even though they are important confounders. 

Let $D _ { L }$ and $d f _ { L }$ be the deviance and degrees of freedom for the “larger” model, and $D _ { s }$ and $d f _ { S }$ be the deviance and degrees of freedom for the “smaller” model. The reduced deviance, denoted as $\Delta D ,$ is calculated as $D _ { s } - D _ { \cal L }$ . This value represents the amount of variability explained by the “larger” model that could not be explained by the “smaller” model. If the null hypothesis were true $( \mathrm { i . e . } ,$ , the larger model with extra covariates does not fit the data better than the smaller one without the extra covariates), the reduced deviance is expected to follow a Chi-squared distribution with degrees of freedom equal to the difference in degree of freedom between the two models, denoted as $\Delta d f .$ Specifically, $\Delta d f = d f _ { S } - d f _ { L }$ . The Chi-square statistic is computed as $( D _ { s } - D _ { l } ) / ( d f _ { s } - d f _ { L } )$ , which is called the reduced deviance test. A large value of the reduced deviance indicates that the null hypothesis is implausible and the extra covariates add additional predictability to the model. 

The reduced deviance test is more powerful than the Wald test when comparing two nested models that differ by more than one covariate. This is because the Wald test only tests for a single coefficient, while the reduced deviance test assesses the overall goodness of fit of the models. Therefore, the reduced deviance test is more flexible and can be used to compare models with different numbers of covariates. However, both tests typically generate consistent results if the two nested models differ by only one term or one covariate. 

Because the above three models are nested, we use the reduced deviance test to compare them and determine which model fits the data better. In this case, we compare model 1 and model 2. The null hypothesis is that $\beta _ { \mathrm { c } _ { \mathrm { - } } \mathrm { p a f f e c t } } = 0 .$ , and the alternative hypothesis is that $\beta _ { \mathrm { c } \mathrm { \mathrm { \scriptsize ~ p a f f e c t } } } \neq 0$ . We calculate $\Delta D ,$ the difference in deviance between model 1 and model $^ { 2 , }$ as follows: 

$$
\Delta D = \text { Deviance   for   model } 1 - \text { Deviance   for   model } 2 = 4 4 8 5. 1 - 4 4 5 6. 8 = 2 8. 3
$$

The difference in degrees of freedom, $\Delta d f ,$ between the two models is 3 (7404 – 7401). The reduced deviance test statistic is calculated as: 

$$
\left(D _ {S} - D _ {L}\right) / \left(d f _ {S} - d f _ {L}\right) = (4 4 8 5. 1 - 4 4 5 6. 8) / (7 4 0 4 - 7 4 0 1) = 9. 4 3.
$$

With $\Delta d f = 3 ,$ , the p-value for the reduced deviance test is $< 0 . 0 1$ . 

Therefore, we can conclude that model 2 fits the data better than model 1 does, and positive affect is a relatively important predictor of the outcome in the model. However, it is important to note that this result only indicates that the inclusion of the positive affect variable increases the model’s predictability of the outcome variable. It cannot be used to determine whether positive affect is a confounding variable, as it only tells us that there is an association between positive affect and death, but does not provide information on whether there is an association between positive affect and depression. In other words, positive affect adds more predictability to the outcome variable. 

We assess the possible interaction effect of depression and positive affect on all-cause death using model 3. To create model 3, a product term, depaff = dep*c_ paffect, is added to model 2. We compare the fit of model 2 and model 3 using the deviance test. 

$$
\text { Null   hypothesis: } \beta_ {\mathrm{dep} ^ {*} \mathrm{c} _ {-} \text { paffect }} = 0; \text { Alternative   hypothesis: } \beta_ {\mathrm{dep} ^ {*} \mathrm{C} _ {-} \text { paffect }} \neq 0.
$$

$$
\Delta D = \text { Deviance   for   model } 2 - \text { Deviance   for   model } 3 = 4 4 5 6. 8 - 4 4 5 2. 6 = 4. 2
$$

$$
\Delta d f = 7 4 0 1 - 7 4 0 0 = 1, p = 0. 0 4
$$

The results indicate that model 3 fits the data better than the other two nested models. By examining the coefficient of the product term, the 95% confidence interval, and the results of the deviance tests, we can conclude that depression and positive affect have an interaction effect on death (Table 2.7). 

The deviance test has been commonly used in prediction models because it is a useful tool to compare pairs of a set of candidate Poisson regression models with different sets of predictors and evaluate their predictability to the outcome variable. It enables us to assess which model fits the data better and whether the addition of predictors improves the model’s predictability. The following SAS syntaxes are used to estimate the Chi-squared statistics and p-values presented above: 


TABLE 2.7 Analysis of Deviance and Reduced Deviance Tests


<table><tr><td></td><td>Terms in Model</td><td>D</td><td>df</td><td>ΔD</td><td>Δdf</td><td>p-value</td></tr><tr><td>Model 1</td><td>Depression + 8 covariates</td><td>4,485.1</td><td>7,404</td><td></td><td></td><td></td></tr><tr><td>Model 2</td><td>Depression + positive affect + 8 covariates</td><td>4,456.8</td><td>7,401</td><td>28.3</td><td>3</td><td>&lt;0.001</td></tr><tr><td>Model 3</td><td>Depression + positive affect + 8 covariates + interaction of depression and positive affect</td><td>4,452.6</td><td>7,400</td><td>4.2</td><td>1</td><td>0.04</td></tr></table>

```matlab
data chitest;
smallermodel = 4456.8;
largemodel = 4452.6;
DF = 1;
P_VALUE = 1 - PROBCHI(smallermodel-largemodel,DF);
run; 
```

PROC freq data=chitest; tables p_value; RUN; 

It is important to understand that a large p-value resulting from a deviance test does not necessarily indicate that the additional regressors incorporated into the larger model are unimportant in describing the true regression function. Rather, it suggests that the test may fail to detect their importance. Conversely, a small p-value suggests that the smaller model, which lacks the included regressors from the larger model, is insufficient or poorly fits the data. 

## 2.7.6 Estimating Rate Ratios Considering Effect Modification

Having established the potential for an interaction effect between depression and positive affect, we now investigate how positive affect modifies the association between depression and all-cause death. 

## Example 2.8

To investigate the interaction effect of positive affect (paffect) as a modifier on the association between depression and death, we use a robust Poisson regression model to estimate the depression-death association at three levels of positive affect: 10 (c_paffect = 10–12 = −2), 15 (c_paffect = 3), and 17 (c_paffect = 5). 

```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref=first) race marital area income bmi3(ref=first)SEQN;
model death=dep c_paffect dep*c_paffect age sex race eduy marital area income bmi3
/dist=poi link=log offset=ln_py;
repeated subject =SEQN;
estimate 'centered affect=-2' dep 1 -1 dep*c_paffect -2 2;
estimate 'centered affect=3' dep 1 -1 dep*c_paffect 3 -3;
estimate 'centered affect=5' dep 1 -1 dep*c_paffect 5 -5;
RUN; 
```


SAS Output 2.10 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-8.3771</td><td>0.2260</td><td>-8.8202</td><td>-7.9341</td><td>-37.06</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.0597</td><td>0.0837</td><td>-0.1043</td><td>0.2237</td><td>0.71</td><td>0.4755</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>c_paffect</td><td></td><td>-0.0381</td><td>0.0109</td><td>-0.0594</td><td>-0.0168</td><td>-3.51</td><td>0.0005</td></tr><tr><td>c_paffect*dep</td><td>1</td><td>-0.0481</td><td>0.0213</td><td>-0.0898</td><td>-0.0064</td><td>-2.26</td><td>0.0238</td></tr><tr><td>c_paffect*dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>age</td><td></td><td>0.0756</td><td>0.0025</td><td>0.0707</td><td>0.0804</td><td>30.61</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>0.7349</td><td>0.0545</td><td>0.6281</td><td>0.8417</td><td>13.49</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>race</td><td>0</td><td>0.1335</td><td>0.0714</td><td>-0.0064</td><td>0.2734</td><td>1.87</td><td>0.0614</td></tr><tr><td>race</td><td>1</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>eduy</td><td></td><td>-0.0209</td><td>0.0079</td><td>-0.0364</td><td>-0.0054</td><td>-2.64</td><td>0.0083</td></tr><tr><td>marital</td><td>0</td><td>-0.1717</td><td>0.0595</td><td>-0.2882</td><td>-0.0552</td><td>-2.89</td><td>0.0039</td></tr><tr><td>marital</td><td>1</td><td>-0.0682</td><td>0.1106</td><td>-0.2849</td><td>0.1485</td><td>-0.62</td><td>0.5375</td></tr><tr><td>marital</td><td>2</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>area</td><td>0</td><td>0.0921</td><td>0.0717</td><td>-0.0485</td><td>0.2326</td><td>1.28</td><td>0.1993</td></tr><tr><td>area</td><td>1</td><td>0.2256</td><td>0.0701</td><td>0.0882</td><td>0.3631</td><td>3.22</td><td>0.0013</td></tr><tr><td>area</td><td>2</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>income</td><td>0</td><td>-0.6537</td><td>0.1353</td><td>-0.9190</td><td>-0.3885</td><td>-4.83</td><td>&lt;.0001</td></tr><tr><td>income</td><td>1</td><td>-0.4765</td><td>0.1094</td><td>-0.6909</td><td>-0.2620</td><td>-4.35</td><td>&lt;.0001</td></tr><tr><td>income</td><td>2</td><td>-0.2033</td><td>0.0852</td><td>-0.3704</td><td>-0.0362</td><td>-2.39</td><td>0.0171</td></tr><tr><td>income</td><td>3</td><td>-0.1873</td><td>0.0804</td><td>-0.3449</td><td>-0.0298</td><td>-2.33</td><td>0.0198</td></tr><tr><td>income</td><td>4</td><td>-0.1144</td><td>0.0860</td><td>-0.2829</td><td>0.0542</td><td>-1.33</td><td>0.1835</td></tr><tr><td>income</td><td>5</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>bmi3</td><td>1</td><td>0.3354</td><td>0.0968</td><td>0.1457</td><td>0.5250</td><td>3.47</td><td>0.0005</td></tr><tr><td>bmi3</td><td>2</td><td>-0.1068</td><td>0.0536</td><td>-0.2118</td><td>-0.0018</td><td>-1.99</td><td>0.0463</td></tr><tr><td>bmi3</td><td>3</td><td>0.0187</td><td>0.0691</td><td>-0.1167</td><td>0.1541</td><td>0.27</td><td>0.7868</td></tr><tr><td>bmi3</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

According to Equation 2.17 and based on the results presented in Output 2.10, the adjusted incidence rate can be estimated by 

$$
I R = \exp \left(0. 0 5 9 7 - 0. 0 4 8 1 * c _ {-} p a f f e c t\right).
$$

As documented by the following results, the association between depression and death is attenuated as the score of positive affect increases (SAS Output 2.11). 


SAS Output 2.11 Contrast Estimate Results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>centered affect=-2</td><td>1.1687</td><td>1.0246</td><td>1.3331</td></tr><tr><td>centered affect=3</td><td>0.9188</td><td>0.7089</td><td>1.1910</td></tr><tr><td>centered affect=5</td><td>0.8346</td><td>0.5975</td><td>1.1657</td></tr></table>

To further illustrate the interaction effect, we divided the sample into three subgroups based on their level of positive affect: low (<10), moderate (10–13), and high (>13), and estimated the incidence rate ratio by adjusting for the eight confounding variables in a robust Poisson regression model for each of the three groups. As shown in Table 2.8, among those with low positive affect, the rate of death was 1.32 times higher for those with depression compared to those without depression. However, in the moderate and high positive affect groups, the association between depression and death was close to null and the 95% confidence intervals include the null value (i.e., aIR = 1) almost in the middle. These results suggest that positive affect may have a buffering effect on the impact of depression on all-cause mortality. 


TABLE 2.8



Incident Rate Ratios of Depression on All-Cause Mortality at Three Levels of Positive Affect


<table><tr><td>Positive Affect</td><td>Death</td><td>Person-Years</td><td>Incident Rate</td><td>aIR</td><td>95%CI</td></tr><tr><td>Low</td><td>340</td><td>8,406.75</td><td>4.04</td><td>1.32</td><td>1.08–1.60</td></tr><tr><td>Moderate</td><td>787</td><td>3,0730.33</td><td>2.56</td><td>1.10</td><td>0.92–1.32</td></tr><tr><td>High</td><td>447</td><td>2,4942.17</td><td>1.79</td><td>1.12</td><td>0.75–1.69</td></tr></table>

In summary, in this example, we employ a data-driven approach to investigate the role of positive affect in the potential causal pathway from depression to death, under the assumption that no prior knowledge is available to discern its role. As outlined in Chapter 1 (Section 1.8.1), in situations where we are without definitive knowledge to determine the role of a specific variable – whether it acts as a confounder or modifier – the recommended procedure is to first assess for effect modification before examining confounding. This sequence is based on the rationale that if there is strong evidence of modification by certain variables, then assessing for confounding regarding these variables might become unnecessary (Hosmer, Lemeshow, and Sturdivant 2013, Kleinbaum and Klein 2010). Due to the effect of modification, the association between depression and death is not homogenous across the levels of positive affect, thereby violating the assumption of a common estimate (e.g., IR) across the levels of a confounding variable. 

## 2.8 Use Robust Poisson Regression to Estimate Risk Ratio

The robust Poisson regression model can also be used to estimate risk and risk ratios in cohort studies due to its versatility. In this case, the model’s link function is the logarithm of the dependent variable, which is the logarithm of a probability. By using this model, we can estimate risk ratios under the assumption that there are no or very few censored subjects in a cohort study. Frequent censoring can lead to underestimating risks because censored subjects are included in the denominator, whereas removal of them from the denominator can overestimate risks. Therefore, the approach to handling censored data should be carefully considered when using robust Poisson regression models to estimate risk ratios. 

## 2.8.1 Estimate of Crude Risk Ratio

Suppose that a robust Poisson regression model with one exposure variable (x), which has two levels, exposed (x = 1), and unexposed (x = 0). The Poisson regression model is expressed as: 

$$
\operatorname{Log} (\text { risk }, R) = \beta_ {0} + \beta_ {x} x,
$$

$$
\operatorname{Risk} (R) = \exp \left(\beta_ {0} + \beta_ {x} x\right), \tag {2.19}
$$

The unadjusted risk ratio (cRR) is estimated by: 

$$
c R R = \frac {\text { risk } \mid x = 1}{\text { risk } \mid x = 0} = \frac {\exp (\beta_ {0} + \beta_ {x} \times 1)}{\exp (\beta_ {0} + \beta_ {x} \times 0)} = \exp (\beta_ {x}).
$$

## Example 2.9

In the NHEFS data, there were 1,167 depressed participants and 6,296 non-depressed participants in the cohort study. The 10-year cumulative risk of all-cause mortality for the depressed group was 29.3%, while it was 19.6% for the non-depressed group (Table 2.9). The RR was 1.50 (29.3%/19.6%). The risk difference is 0.0974. 


TABLE 2.9 10-Year Risk of Death for Depressed and Non-Depressed Groups


<table><tr><td></td><td>Death</td><td>Non-Death</td><td>Total</td><td>Risk</td></tr><tr><td>Depressed</td><td>342</td><td>825</td><td>1,167</td><td>0.2931</td></tr><tr><td>Non-depressed</td><td>1,232</td><td>5,064</td><td>6,296</td><td>0.1957</td></tr><tr><td></td><td>1,574</td><td>5,889</td><td>7,463</td><td>0.2109</td></tr></table>

The same results can be estimated by the robust Poisson regression model executed in the following SAS syntax: 

```txt
PROC genmod data=nhefs83;
class dep (ref='0') SEQN;
model death = dep /dist=poi link=log;
repeated subject =SEQN;
lsmeans dep /diff exp cl; 
```

RUN; 


SAS Output 2.12 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-1.6313</td><td>0.0256</td><td>-1.6814</td><td>-1.5812</td><td>-63.84</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4039</td><td>0.0522</td><td>0.3017</td><td>0.5061</td><td>7.74</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.4976</td><td>1.3521</td><td>1.6588</td></tr></table>

The 10-year risk for the depressed group in the NHEFS data (Table 2.9) can be estimated using the robust Poisson regression model as follows: 

$$
\text { Risk } (R \mid \mathrm{dep} = 1) = \exp (\beta_ {0} + \beta_ {x} x) = \exp (- 1. 6 3 1 3 + 0. 4 0 3 9 * 1) = 0. 2 9 3 1
$$

Similarly, the 10-year risk for the non-depressed group can be estimated as: 

$$
\text { Risk } (R \mid \mathrm{dep} = 0) = \exp (\beta_ {0} + \beta_ {x} x) = \exp (- 1. 6 3 1 3 + 0. 4 0 3 9 * 0) = 0. 1 9 5 7
$$

The resultant crude risk difference (cRD) is: 

$$
c R D = \operatorname{Risk} (R \mid \mathrm{dep} = 1) - \operatorname{Risk} (R \mid \mathrm{dep} = 0) = 0. 2 9 3 1 - 0. 1 9 5 7 = 0. 1
$$

The resultant crude RR (cRR) is: 

$$
cRR = \exp (0.4039) = 1.50; 95\% \text{CI}: 1.33 - 1.67.
$$

The Z test statistics can be calculated as: 

$$
Z \text {-value} = \frac {\beta}{S E _ {\beta}} = \frac {0 . 4 0 3 9}{0 . 0 5 2 2} = 7. 7 4 \quad p <   0. 0 0 1
$$

The 95% confidence intervals and Z-test suggest that the observed incident rate ratio (1.5) is not a random deviation from 1. This indicates that depressed individuals are 1.5 times more likely to die of a disease compared to non-depressed individuals. 

## 2.8.2 Adjustment of a Confounding Variable

If we know $z _ { 1 }$ is a binary confounder variable $( z _ { 1 } = 1 \mathrm { v s } . z _ { 1 } = 0 )$ , we can estimate the adjusted RR by adding $z _ { 1 }$ into the robust Poisson regression model: 

$$
\operatorname{Risk} (R) = \exp \left(\beta_ {0} + \beta_ {x} x + \beta_ {1} z _ {1}\right)
$$

The $z _ { 1 } .$ -adjusted incidence rate ratio (aRR) can be estimated by: 

$$
a R R = \frac {\text {risk} | x = 1}{\text {risk} | x = 0} = \frac {\exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {1} \times z _ {1}\right)}{\exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {1} \times z _ {1}\right)} = \exp \left(\beta_ {x}\right).
$$

## Example 2.10

In this example, we use the robust Poisson regression model to estimate the risk ratio of depression on death, taking education as a confounding variable into account. Individuals’ education level was measured by the number of years that an individual had received (eduy), which is a continuous variable. 

PROC genmod data=nhefs83; class dep (ref='0')SEQN; model death=dep eduy /dist=poi link=log; repeated subject=SEQN; estimate "dep RR" dep 1 -1; 

RUN; 


SAS Output 2.13 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-0.0918</td><td>0.0594</td><td>-0.2082</td><td>0.0247</td><td>-1.54</td><td>0.1224</td></tr><tr><td>dep</td><td>1</td><td>0.2276</td><td>0.0519</td><td>0.1260</td><td>0.3293</td><td>4.39</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>eduy</td><td></td><td>-0.1423</td><td>0.0058</td><td>-0.1536</td><td>-0.1310</td><td>-24.69</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>dep RR</td><td>1.2556</td><td>1.1343</td><td>1.3900</td></tr></table>

The risk ratio for the association between depression and death is estimated to be 1.26 (95% CI: 1.13–1.39) after controlling for education as a confounding variable (SAS Output 2.13). This indicates that the association between depression and death still exists after accounting for education, but the strength of the association is slightly attenuated compared to the crude RR of 1.50. This suggests that education is a positive confounding variable, meaning that it inflated the crude RR, and its inclusion in the model has helped to reduce the bias in the estimated association between depression and death. 

## 2.8.3 Assessment of Interaction Effect

Suppose we are evaluating a potential interaction effect between the exposure variable (x) and a modifier (z) on an outcome variable (y). The risk or probability of the outcome y at various levels of x and z is denoted by $R _ { x z }$ . For instance, $R _ { 1 1 }$ refers to the probability of y among study participants who were exposed to both x and $z ,$ while $R _ { 1 0 }$ represents the probability of y among those who were only exposed to x but not z (Table 2.10). 

The Poisson regression model is used to assess the modification effect. As the first step, we create a product term: $w = x ^ { * } z$ . The risk of outcome is estimated by 

$$
R _ {Y = 1 | X, Z} = \exp \left(\beta_ {0} + \beta_ {x} x + \beta_ {z} z + \beta_ {w} w\right)
$$

$$
R _ {0 0} = \exp (\beta_ {0})
$$

$$
\begin{array}{l} R R _ {1 1} = R _ {1 1} / R _ {0 0} = \exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times 1 + \beta_ {w} \times 1\right) / \exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) \\ = \exp \left(\beta_ {x} + \beta_ {z} + \beta_ {w}\right) \\ \end{array}
$$

$$
R R _ {1 0} = R _ {1 0} / R _ {0 0} = \exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) / \exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) = \exp \left(\beta_ {x}\right)
$$

$$
R R _ {0 1} = R _ {0 1} / R _ {0 0} = \exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 1 + \beta_ {w} \times 0\right) / \exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) = \exp \left(\beta_ {z}\right)
$$

Here, $\mathrm { R } _ { 0 0 }$ is the risk in the study group which exposed neither of the two factors. $\mathrm { R R } _ { 1 1 }$ can be interpreted as the combined effect of factors x and z when both are present, in comparison to the reference category where both factors are absent. $\mathrm { R R } _ { 1 0 }$ and $\mathrm { R R } _ { 0 1 }$ can be interpreted as the effects of the first factor x alone and the second factor z alone, respectively. 


TABLE 2.10



Risk of Outcome y at the Levels of Two Exposures x and z


<table><tr><td>z</td><td>x</td><td>Risk</td></tr><tr><td>0</td><td>0</td><td><eq>R_{00}</eq></td></tr><tr><td>0</td><td>1</td><td><eq>R_{10}</eq></td></tr><tr><td>1</td><td>0</td><td><eq>R_{01}</eq></td></tr><tr><td>1</td><td>1</td><td><eq>R_{11}</eq></td></tr></table>

The effects of two factors (x and z) on an outcome (y) are multiplicative if there is no interaction of the two on the multiplicative scale. That is, their joint effects are equal to the product of their separate and independent effects: 

$$
R R _ {1 1} = R R _ {1 0} \times R R _ {0 1} \mathrm{and}
$$

$$
\exp \left(\beta_ {x} + \beta_ {z} + \beta_ {w}\right) = \exp \left(\beta_ {x} + \beta_ {z}\right).
$$

The equation holds only when the coefficient $( \beta _ { w } )$ of the product term (w) is equal to 0. When there is an interaction effect of x and z on y, the degree of the departure from the product of the separate effects of the two variables is measured as: 

$$
\frac {R R _ {1 1}}{R R _ {1 0} \times R R _ {0 1}} = \frac {R _ {1 1}}{R _ {0 1}} / \frac {R _ {1 0}}{R _ {0 0}} = \exp (\beta_ {w}) \tag {2.20}
$$

This quantity measures the extent to which, on the risk ratio scale, the effect of both exposures together exceeds the product of the effects of the two exposures considered separately. $\mathrm { I f } \exp ( \beta _ { w } ) > 1$ , the multiplicative interaction is said to be positive. If $\exp ( \beta _ { w } ) < 1 ,$ the multiplicative interaction is said to be negative. 

Statistical interaction can be defined in two different but compatible ways: heterogeneity of effects and observed joint effects (Szklo and Nieto 2019). According to the first definition, the risk ratio or effect size of an exposure differs depending on the level of another variable. If there is an interaction between x (exposure) and z (modifier), the risk ratios at two different levels of z will differ, $\mathrm { R } _ { 1 1 } / R _ { 0 1 } \ne R _ { 1 0 } / R _ { 0 0 }$ . That is, the effect of x on y is not the same at different levels of z, i.e., heterogeneity of effects. This is what we refer to when we say that z modifies the effect of x on y. 

Under the second definition, the observed joint or combined effect of two variables on an outcome does not equal the product of their individual effects. In other words, the observed joint effect of x and z on y is different from what we would expect if x and z were independently affecting y. The mathematical form of this definition is $\begin{array} { r } { \bar { R } R _ { 1 1 } \neq R R _ { 1 0 } \times R R _ { 0 1 } , } \end{array}$ or in terms of regression coefficients, exp $( \beta _ { x } + \beta _ { z } + \beta _ { w } ) \neq e x p ( \beta _ { x } + \beta _ { z } ) .$ , which simplifies to $\beta _ { w } \neq 0$ . The value of $\exp ( \beta _ { w } )$ quantifies the degree of departure from multiplicativity of effect. 

## Example 2.11

In this example, we assess the interaction effect of depression and sex on all-cause deaths, assuming that sex modifies the association between depression and all-cause death. The number of study subjects and deaths, stratified by depression and sex, are presented in Table 2.11. 


TABLE 2.11



Number of Deaths and Subjects by Depression and Sex


<table><tr><td rowspan="2"></td><td colspan="2">No. of Subjects</td><td colspan="2">No. of Death</td></tr><tr><td>Male</td><td>Female</td><td>Male</td><td>Female</td></tr><tr><td>Depressed</td><td>322</td><td>845</td><td>151</td><td>191</td></tr><tr><td>Non-depressed</td><td>2,551</td><td>3,745</td><td>681</td><td>551</td></tr></table>

The all-cause deaths stratified by depression and sex are presented in Table 2.12. 


TABLE 2.12



Mortality of All-Cause Death Stratified by Depression and Sex


<table><tr><td></td><td>Male</td><td>Female</td></tr><tr><td>Depressed</td><td><eq>R_{11} = 0.4689</eq></td><td><eq>R_{10} = 0.2260</eq></td></tr><tr><td>Non-depressed</td><td><eq>R_{01} = 0.2670</eq></td><td><eq>R_{00} = 0.1471</eq></td></tr></table>

Risk ratio for the joint effects of both x and z: 

$$
R R _ {1 1} = R _ {1 1} / R _ {0 0} = 0. 4 6 8 9 / 0. 1 4 7 1 = 3. 1 9.
$$

Risk ratio for exposure to x only: 

$$
R R _ {1 0} = R _ {1 0} / R _ {0 0} = 0. 2 2 6 / 0. 1 4 7 1 = 1. 5 4.
$$

Risk ratio for exposure to z only: 

$$
R R _ {0 1} = R _ {0 1} / R _ {0 0} = 0. 2 6 7 0 / 0. 1 4 7 1 = 1. 8 1.
$$

Because of the quantity of $\mathrm { R R } _ { 1 1 } / \left( \mathrm { R R } _ { 1 0 } \mathrm { R R } _ { 0 1 } \right)$ is 1.14, close to the null (1), there may not be a stronger interaction effect in this example. 

$$
\frac {R R _ {1 1}}{R R _ {1 0} \times R R _ {0 1}} = \frac {p _ {1 1}}{p _ {0 1}} / \frac {p _ {1 0}}{p _ {0 0}} = 1. 1 4.
$$

To investigate how a modifier z modifies the relationship between x and y, we can estimate the risk ratio of y for x at each level of z. The risk ratio of y for x among males (z = 1) is: 

$$
R R = R _ {1 1} / R _ {0 0} = 0. 4 6 8 9 / 0. 2 6 7 = 1. 7 6
$$

The risk ratio among females (z = 0) is: 

$$
R R = R _ {1 0} / R _ {0 0} = 0. 2 2 6 / 0. 1 4 7 1 = 1. 5 4.
$$

Again, since the two risk ratios are similar, z may not modify the association between x and y. The same values of the two RRs can also be estimated by the following SAS syntax: 

```txt
PROC genmod data=nhefs83 desc;
class dep sex /param=ref ref=first;
model death = dep sex dep*sex /dist=bin link=log;
estimate "RR in Female" dep 1 dep*sex 0/exp;
estimate "RR in Male" dep 1 dep*sex 1/exp; 
```

RUN; 


SAS Output 2.14 Contrast estimate results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>RR in Female</td><td>1.5363</td><td>1.3267</td><td>1.7790</td></tr><tr><td>Exp(RR in Female)</td><td></td><td></td><td></td></tr><tr><td>RR in Male</td><td>1.7566</td><td>1.5381</td><td>2.0062</td></tr><tr><td>Exp(RR in Male)</td><td></td><td></td><td></td></tr></table>

We can also use the following equation to estimate the two risk ratios at the two levels of z: 

$$
\text { Risk } = \exp \left(\beta_ {0} + \beta_ {x} x + \beta_ {z} z + \beta_ {z} w\right) \tag {2.21}
$$

$$
\begin{array}{l} R R = (r i s k | x = 1, z) / (r i s k | x = 0, z) = (R | x = 1, z) / (R | x = 0, z) \\ = \exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times z + \beta_ {w} (1 \times z) / \exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times z + \beta_ {w} (0 \times z) \right. \right. \\ = \exp \left(\beta_ {x} + \beta_ {w} z\right) \\ \end{array}
$$

If the value of $\beta _ { \mathrm { w } }$ is different from 0, the estimated value of the risk ratio will depend on the level of z. This indicates that the association between the exposure variable and the outcome is modified by the modifier variable. Specifically, when $z = 1 ,$ , the RR is calculated as exp $\left( \beta _ { x } + \beta _ { w } \right)$ ; and when $z _ { 1 } = 0 ,$ , the RR is calculated as exp $\left( \beta _ { x } \right)$ . 

## Example 2.12

We use the same dataset as in Example 2.6 to assess the potential interaction effect between depression and systolic blood pressure on death. To test this interaction effect, we create a product term “dep*c_systolic” by multiplying the depression variable and centered systolic variable and adding it to the model along with depression and centered systolic variables. 

```txt
PROC genmod data=nhefs83;
class dep (ref='0')SEQN;
model death = dep c_systolic dep*c_systolic
/dist=poi link=log;
repeated subject=SEQN; 
```

RUN; 

Because the coefficient of the product term “dep*systolic” is −0.006 and its 95% confidence interval is between −0.01 and −0.002 (p-value = 0.004), we conclude that the effect of the two variables on death is not multiplicative, and there is a statistical interaction effect (SAS Output 2.15). 


SAS Output 2.15 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-1.7863</td><td>0.0290</td><td>-1.8432</td><td>-1.7294</td><td>-61.49</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4277</td><td>0.0605</td><td>0.3092</td><td>0.5462</td><td>7.07</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>c_systolic</td><td></td><td>0.0248</td><td>0.0009</td><td>0.0230</td><td>0.0267</td><td>26.39</td><td>&lt;.0001</td></tr><tr><td>c_systolic*dep</td><td>1</td><td>-0.0060</td><td>0.0021</td><td>-0.0101</td><td>-0.0019</td><td>-2.88</td><td>0.0040</td></tr><tr><td>c_systolic*dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

$$
\begin{array}{l} R R = \exp \left[ \left(\beta_ {0} - \beta_ {0}\right) + \beta_ {d e p} \left(\mathrm{dep} _ {1} - \mathrm{dep} _ {0}\right) + \beta_ {c \_ s y s t o l i c} \left(c \_ s y s t o l i c - c \_ s y s t o l i c\right) \right. \\ \left. + \beta_ {d e p ^ {*} c _ {-} s y s t o l i c} \left(\mathrm{dep} _ {1} * c _ {-} \text {   systolic   } - c _ {-} \mathrm{dep} _ {0} * \text {   systolic   }\right) \right] \\ = \exp \left[ (- 1. 7 8 6 3 - 1. 7 8 6 3) + 0. 4 2 7 7 (1 - 0) + 0. 0 2 4 8 (0) - 0. 0 0 6 \left(1 ^ {*} c _ {-} \text {systolic} - 0 ^ {*} c _ {-} \text {systolic}\right) \right. \\ = \exp \left(0. 4 2 7 7 - 0. 0 0 6 * c \_ s y s t o l i c\right). \\ \end{array}
$$

To see how systolic pressure modifies the association between all-cause mortality and depression, we estimate risk ratios at different values of systolic pressure. We specify values for systolic pressure, say 120, 130, 150, and 160. 

When systolic pressure = 120 (c_systolic = −10), RR = exp(0.4277 − 0.0056*−10) = 1.63 

When systolic pressure = 130 (c_systolic = 0), RR = exp(0.4277 − 0.0056*0) = 1.53 

When systolic pressure = 150 (c_systolic = 20), RR = exp(0.4995 − 0.0056*20) = 1.36 

When systolic pressure = 160 (c_systolic = 30), RR = exp(0.4995 − 0.0056*30) = 1.28 

The “ESTIMATE” statement in “PROC GENMOD” estimates the four individual risk ratios and their 95% confidence intervals. 

```txt
PROC genmod data=nhefs83;
class dep (ref='0') SEQN;
model death=dep c_systolic dep*c_systolic /dist=poi
    link=log;
repeated subject=SEQN;
estimate 'centered systolic=-10' dep 1 -1
    dep*c_systolic -10 10;
estimate 'centered systolic=0' dep 1 -1
    dep*c_systolic 0 0;
estimate 'centered systolic=20' dep 1 -1
    dep*c_systolic 20 -20;
estimate 'centered systolic=30' dep 1 -1
    dep*c_systolic 30 -30; 
```

RUN; 

The “ESTIMATE” generated results are the same as those calculated manually. 


SAS Output 2.16 Contrast Estimate Results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>Centered systolic=-10</td><td>1.6288</td><td>1.4114</td><td>1.8798</td></tr><tr><td>Centered systolic=0</td><td>1.5337</td><td>1.3623</td><td>1.7267</td></tr><tr><td>Centered systolic=20</td><td>1.3598</td><td>1.2236</td><td>1.5113</td></tr><tr><td>Centered systolic=30</td><td>1.2804</td><td>1.1341</td><td>1.4457</td></tr></table>

The results indicate that the strength of association between depression and all-cause mortality tends to be reduced with the increase of systolic blood pressure. However, other variables, for example, age, may confound the associations, which will be addressed in the multiple regression analysis. 

## 2.8.4 Estimate Risk Ratio in Multiple Robust Poisson Regression Model

We now demonstrate the use of multiple robust Poisson regression models to estimate risk ratios while adjusting for confounding variables. Building on the previous example in Section 2.7.4, we aim to investigate the possible role of positive affect in the causal pathway from depression to death. Positive affect may act as a confounding variable or as an effect modifier in this relationship. To control for the confounding effect, we will include eight potential confounding variables: sex, age, race, education level (eduy), marital status (marital), residence areas (area), family income (income), and BMI (bmi3). 

## Example 2.13

To evaluate the role of positive affect on the casual path from depression to death, we compared the adjusted risk ratio (aRR) estimated from two models. Model 1 included depression and eight confounding variables but did not adjust for positive affect, while model 2 included depression, the eight confounding variables, and positive affect. The adjusted RR for model 1 was 1.26 (95%CI: 1.15–1.37), while that of model 2 was 1.12 (95%CI: 1.01–1.23). The change-in-estimate in RRs was 12.5% [(1.26–1.12)/1.12 =0.125]. We further explored the potential interaction effect of depression and positive affect using model 3, which adjusted for the eight confounding variables. The product term’s regression coefficient was −0.0195, with a 95% confidence interval of −0.05 and 0.01(p-value = 0.24). The small coefficient and the wide confidence interval suggest that the effect of depression and positive affect is multiplicative, and the interaction effect may not be substantial. 

The following SAS syntaxes are used to execute the three robust Poisson regression models: 


Model 1:


```txt
PROC genmod data=nhefs83 ;
class dep (ref=first)sex (ref=first)race marital area income bmi3(ref=first)SEQN;
model death=dep age sex race eduy marital area income bmi3 /dist=poi link=log;
repeated subject=SEQN;
estimate "dep RR" dep 1 -1;
RUN; 
```


Model 2:


```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref=first) race marital area income bmi3(ref=first) SEQN;
model death=dep c_paffect age sex race eduy marital area income bmi3 /dist=poi link=log;
repeated subject=SEQN;
estimate "dep RR" dep 1 -1;
RUN; 
```


Model 3:


```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref=first) race marital area income bmi3(ref=first) SEQN;
model death=dep|c_paffect age sex race eduy marital area income bmi3 /dist=poi link=log;
repeated subject=SEQN; 
```


RUN;


To determine which model fits the data better, we conducted a reduced deviance test as the three models are nested. To compare model 1 and model 2, we set the null hypothesis as $\beta _ { \mathrm { { p a f f e c t } } } = 0$ and the alternative hypothesis as $\beta _ { \mathrm { { p a f f e c t } } } \neq 0 .$ . We calculated the difference in deviance (ΔD) between the two models as: 

$\Delta D =$ Deviance for model 1 - Deviance for model $2 = 3025.23 - 3009.93 = 15.3$ 

$\Delta df = 7404 - 7401 = 3, p = 0.002$ 

Thus, model 2 fits the data better than model 1 does. However, this result only indicates that the inclusion of the positive affect variable increases the model’s predictability to the outcome variables. 

We next compare model 2 and model 3 (Table 2.13). 

Null hypothesis: $\beta_{dep*paffect}=0;$ Alternative hypothesis: $\beta_{dep*pafect}\neq0.$ 

$\Delta D =$ Deviance for model 2 - Deviance for model $3 = 3009.93 - 3009.24 = 0.69$ 

$\Delta df = 7401 - 7400 = 1, p = 0.41.$ 

Note that the robust Poisson regression model in SAS PROC GENMOD does not estimate deviance, so we used the traditional Poisson regression model to estimate deviance. For example, the following SAS syntax can be used to estimate deviance for model 2: 

```txt
PROC genmod data=nhefs83;
class dep (ref=first) sex (ref=first) race marital area income bmi3(ref=first);
model death = dep c_paffect age sex race eduy marital area income bmi3
/dist=poi link=log ; 
```


RUN;



TABLE 2.13



Analysis of Deviance and Reduced Deviance Tests


<table><tr><td></td><td>Terms in Model</td><td>D</td><td>df</td><td>ΔD</td><td>Δdf</td><td>p-value</td></tr><tr><td>Model 1</td><td>Depression + 8 covariates</td><td>3,025.23</td><td>7,404</td><td></td><td></td><td></td></tr><tr><td>Model 2</td><td>Depression + positive affect + 8 covariates</td><td>3,009.93</td><td>7,401</td><td>15.3</td><td>3</td><td>0.002</td></tr><tr><td>Model 3</td><td>Depression + positive affect + 8 covariates + interaction of depression and positive affect</td><td>3,009.24</td><td>7,400</td><td>0.69</td><td>1</td><td>0.41</td></tr></table>

The deviance value of model 3 is almost identical to that of model 2. Based on the results shown in Table 2.13, we found that model 2 provided a better fit to the data than the other two models. Our analysis suggests that depression and positive affect may not have a strong interaction effect on death and that positive affect may confound the relationship between depression and death. However, we caution that this conclusion may be biased due to censoring. 

Although both the rate-based analysis (Section 2.7.4) and the hazard-based analysis (Section 3.4.3) show a similar result regarding the interaction effect of positive affect and depression on death, the risk-based analysis produces a discrepant result. Among possible reasons, this discrepancy may be attributed to the censoring present in the cohort study with a 10-year follow-up period. During the 10-year follow-up period, 23% of study participants were censored, and those in the depressed group (32.2%) were more likely to be censored than those in the non-depressed group (21.4%). The hazard-based and ratebased analyses address the censoring problem by taking survival time and person-time into account. However, as previously mentioned, the risk-based analysis does not consider the issue associated with censoring and incorrectly assumes that every living individual in the study had a follow-up period of 10 years. As a result, the denominator of the formula used to calculate cumulative risk includes both subjects who completed the 10-year followup and subjects who were censored, and the numerator does not include any censored subjects, as they were wrongly assumed not to have developed the event (e.g., not died of a disease in this case). Consequently, the actual cumulative risk was underestimated. Similarly, the value of the regression coefficient of the product term is also reduced, leading to the false assumption of a multiplicative model (i.e., no interaction effect). 

Therefore, it is recommended to use either hazard-based modeling or rate-based modeling, depending on the underlying model assumptions, to estimate associations between exposure and outcome in cohort data with censoring. These models take into account different lengths of survival time and person-time from study subjects and are better equipped to handle bias due to censoring. In contrast, risk-based modeling, while useful for estimating cumulative risks and risk ratios, can produce biased results when censoring occurs, particularly when the degree of censoring differs between the exposed and unexposed groups. Substantial selection bias due to censoring can occur if such losses are frequent and if the causes of event (disease or death) for censored subjects differ from those who remain in the cohort, or if the risk of the disease among censored subjects differs from that among subjects who remain in the cohort. 

## 2.9 Use Standardization to Estimate Standardized Measures

Standardization is a commonly-used method for controlling confounding bias in observational studies. In cohort studies, age, for example, is often an important confounding factor when assessing the relationship between exposure and disease. If the distribution of age, or other confounders, differs between the comparison groups, the association measures will be biased. Standardization adjusts for this bias by making the age distribution the same for both groups. Standardization involves estimating the expected or standardized incidence rates or risks in both the exposed and unexposed groups based on the same age distribution from a standard reference population. When the same standard is applied to both groups, a comparison can be made between the two standardized rates that is not confounded by age. This allows for a more accurate assessment of the relationship between exposure and disease. 

The standardization method estimates a weighted average of stratum-specific rates for each stratum, which is stratified by one or more confounding variables. For example, when age is a confounding variable with three strata (20–30, 31–40, and 41–60 years old), the standardized incidence rate (SI) can be estimated for each of the three age strata. The formula for calculating the standardized incidence rate is as follows: 

$$
S I = \frac {\sum_ {i} W _ {i} I _ {i}}{\sum_ {i} W _ {i}} \tag {2.22}
$$

where i refers to the stratum, Wi represents the stratum-specific weights, and $I _ { i }$ represents the stratum-specific incidence rates or mortalities. The weights are the numbers of personyears in each stratum of the standard population. 

Similarly, the standardized risk (SR) can be estimated using the following formula: 

$$
S R = \frac {\sum_ {i} W _ {i} R _ {i}}{\sum_ {i} W _ {i}} \tag {2.23}
$$

where $W _ { i }$ represents the stratum-specific weights, and $R _ { i }$ represents the stratum-specific risk. The weights are the numbers of individuals in each stratum of the standard population. To reduce confounding bias, it is important to apply the same set of weights to standardize the risks or rates. This ensures that comparisons between two or more study populations are not confounded by the stratifying confounding variable (Checkoway, Pearce, and Kriebel 2004). 

Using standardization, standardized frequency measures and association measures can be calculated, such as the standardized incidence rate ratio (SIR), standardized risk ratio (SRR), and standardized mortality ratio (SMR). These standardized measures compare the observed number of certain events with the expected number calculated from a “standard population.” Statistical inference for standardized measures is typically based on the assumption that the denominator (e.g., person-years) is fixed, and that the numerator (observed number of cases) follows a Poisson distribution (Breslow and Day 1987). Additionally, standardization assumes that the rate ratio is constant across strata of stratifying variables, meaning that they are not modifiers, but confounding variables. There are two frequently used standardization methods in epidemiologic studies: direct and indirect standardization. 

## 2.9.1 Direct Standardization

Direct standardization estimates the occurrence of an event in a study population relative to what would be expected in the cohort if its age distribution (or other variables of interest) were the same as that of the standard population. This approach involves estimating age-specific rates for each of the comparison groups (e.g., exposed vs. unexposed), and then using these stratum-specific rates to calculate the marginal rates that would have been observed if the age distributions in the comparison groups had been the same as the standard age distribution. 

To calculate the age-specific rates or risks to the standard age distribution, direct standardization computes the weighted average of stratum-specific estimates in the study population, using the weights from a standard population. The weights are the numbers of person-years (or individuals for cumulative risk estimation) in each age stratum of the standard population, as indicated in Equations 2.22 and 2.23. 

In a cohort study examining the relationship between depression (depressed vs. nondepressed) and an outcome such as hypertension, age is a confounding variable that needs to be controlled. Direct standardization is a method that can be used to calculate the standardized incidence rates for the two study groups. To do so, we first calculate the expected number of cases in each stratum of the standard population by multiplying the corresponding stratumspecific rates observed in the depressed and non-depressed groups by the number of personyears in the standard population stratum. This yields the expected stratum-specific cases: 

$$
\begin{array}{l} \text { Expected   stratum - specific   cases } = \text { Observed   stratum - specific   rates } \times \text { Number   of } \\ \text { person - years   in   the   standard   population   stratum   (weights) } \end{array} \tag {2.24}
$$

Next, we calculate the standardized incidence rates for each of the exposure groups. To calculate them for both the depressed and non-depressed groups, we divide the overall sums of the expected cases by the total number of person-years in the standard population, that is: 

$$
\text { Standardized   incidence   rate } = \text { Overall   sums   of   the   expected   cases   /   Total   number   of   person - years   in   the   standard   population } \tag {2.25}
$$

These rates reflect what would be observed in each group if they had the same age distribution as the standard population. Following the counterfactual theory discussed in Section 1.4.1 in Chapter 1, this allows for a comparison of the incidence rates between the two groups that is not confounded by age. 

The choice of the standard population for standardization should be based on the research question and the purpose of the analysis. There are several options for selecting the standard population, including using the study population itself, an external population, or the base population from which the study population was sampled. 

Using one of the study groups (either the exposed or unexposed) as the standard population is a common approach as it simplifies calculations and is already available in the dataset. When choosing between the two study groups, the smaller group should be selected as the standard to minimize random variability. This approach avoids the need to use unstable stratum-specific rates of the small group to estimate the expected numbers of events, as the total observed rate of the smaller group is the adjusted rate (Szklo and Nieto 2019). 

Another option for selecting a standard population is to combine the comparison groups to create a standard population that simulates the results of a randomized controlled trial. By combining the exposed and unexposed groups, we can create a hypothetical population that would have been “randomly” allocated between the exposed and unexposed groups, simulating a randomized controlled trial. 

The Poisson regression model has the capacity to estimate the standardized incidence rates for each comparison group and calculate the SIR. In this case, the Poisson regression model is expressed as: 

$$
\operatorname{Log} (\text { standardized   rate }) = \beta_ {0} + \beta x _ {1}
$$

$$
\operatorname{Log} \left(\text { expected   death   /   standard   person - time }\right) = \beta_ {0} + \beta x _ {1}
$$

$$
\operatorname{Log} (\text { expected   death }) - \log (\text { standard   person   -   time }) = \beta_ {0} + \beta x _ {1} \tag {2.26}
$$

$$
\operatorname{Log} (\text { expected   death }) = \log (\text { standard   person - time }) + \beta_ {0} + \beta x _ {1}
$$

$$
S I R = \exp (\beta)
$$

## Example 2.14

We use the NHEFS data to estimate the standardized incidence rates and the standardized rate ratio (SIR) for all-cause death. In this example, the exposure factor is depression (depressed vs. non-depressed) and age is considered a confounding variable. To estimate the SIR, we combine the person-years from both comparison groups and use it as the standard population. The expected number of deaths in each age stratum is calculated by multiplying the observed stratum-specific rate by the sum of person-years in that stratum in the standard population (Equation 2.24). For instance, the expected number of deaths in the age group of 44–46 in the depressed group is calculated as 0.0188 times 28,298.83, which yields 531 (as shown in Table 2.14) 


TABLE 2.14



Expected Death for Two Comparison Groups, Taking the Sum of Person-Year as Standard


<table><tr><td rowspan="2">Age Group</td><td colspan="3">Depressed</td><td colspan="3">Non-Depressed</td><td rowspan="2">Sum of Person- Year</td><td colspan="2">Expected Death</td></tr><tr><td>Death</td><td>person- Year</td><td>Rate</td><td>Death</td><td>Person- Year</td><td>Rate</td><td>Depressed</td><td>Non-Depressed</td></tr><tr><td>&lt;45</td><td>15</td><td>2,727.6</td><td>0.0055</td><td>40</td><td>17,150.3</td><td>0.0023</td><td>19,877.83</td><td>109</td><td>46</td></tr><tr><td>44–65</td><td>75</td><td>3,996.3</td><td>0.0188</td><td>276</td><td>24,302.6</td><td>0.0114</td><td>28,298.83</td><td>531</td><td>321</td></tr><tr><td>&gt;65</td><td>252</td><td>2,629.5</td><td>0.0958</td><td>916</td><td>13,273.1</td><td>0.0690</td><td>15,902.58</td><td>1,524</td><td>1,097</td></tr><tr><td>Total</td><td>342</td><td>9,353.3</td><td>0.0366</td><td>1,232</td><td>54,725.9</td><td>0.0225</td><td>64,079.24</td><td>2,164</td><td>1,465</td></tr></table>

Following the Equation 2.25, the standardized incident rate in the depressed group is 0.0338 (2164/64079.24), and 0.0229 (1465/64079.24) for the non-depressed group, leading to a SIR is 1.48. 

We now utilize the Poisson regression model to estimate the SIR and its 95% confidence interval. First, we create two datasets containing age groups (ageg), death, and personyears (Pyear) – one for the depressed group and the other for the non-depressed group. We then merge the two datasets to create a new dataset called “Twogroups.” Next, we create a dataset for the standard population that contains the sum of person-years from the two comparison groups. 

```txt
DATA dep; group='Dep';
input ageg $1-5 death Pyear;
datalines;
32-45 15 2727.6
46-65 75 3996.3
65-86 252 2629.5
; 
```

```txt
DATA nondep; group='Non_dep';
input ageg $1-5 death Pyear;
datalines;
32-45 40 17150.3
46-65 276 24302.6
65-86 916 13273.1
; 
```

```txt
DATA Twogroups;
length group $ 7.;
set dep nondep; 
```

```txt
DATA standard;
input ageg $1-5 Pyear;
datalines;
32-45 19877.83
46-65 28298.83
65-86 15902.58
; 
```

The following SAS PROC STDRATE procedure is utilized to compute the direct standardized incidence rates for the depressed and non-depressed groups using the “standard” population as the reference population, which in this case is the sum of person-years from the two groups (SAS Institute Inc 2016). 

```sql
PROC stdrate data=Twogroups
refdata=standard
method=direct
stat=rate(mult=1)
effect;
population group=group event=Death total=PYear;
reference total=PYear;
strata ageg;
RUN; 
```

The DATA option specifies the “Twogroups” as the data set for the study populations and uses “REFDATA” option to specify the “standard” data set as the standard population. The “METHOD=DIRECT” option requests direct standardization, while the “STAT=RATE” option estimates standardized rates. The “MULT” option specifies the unit of rate, where the default is the rate per 100,000 person-years. The “EFFECT” option computes the rate effect between the study populations with the default rate ratio statistics. The “STRATA” statement lists the variable “ageg” that forms the strata. 

The following output lists the “Directly Standardized Rate Estimates” and the “Rate Effect Estimates” (SAS Output 2.17). 


SAS Output 2.17 Directly standardized rate estimates


<table><tr><td colspan="6">Directly Standardized Rate Estimates Rate Multiplier = 1</td></tr><tr><td rowspan="2">group</td><td colspan="3">Study Population</td><td colspan="2">Reference Population</td></tr><tr><td>Observed Events</td><td>Population-Time</td><td>Crude Rate</td><td>Expected Events</td><td>Population-Time</td></tr><tr><td>Dep</td><td>342</td><td>9353</td><td>0.0366</td><td>2,164.44</td><td>6,4079</td></tr><tr><td>Non_dep</td><td>1,232</td><td>54,726</td><td>0.0225</td><td>1,465.21</td><td>6,4079</td></tr></table>

<table><tr><td colspan="5">Directly Standardized Rate Estimates Rate Multiplier = 1</td></tr><tr><td rowspan="2">group</td><td colspan="4">Standardized Rate</td></tr><tr><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Normal Confidence Limits</td></tr><tr><td>Dep</td><td>0.0338</td><td>0.00183</td><td>0.0302</td><td>0.0374</td></tr><tr><td>Non_dep</td><td>0.0229</td><td>0.000651</td><td>0.0216</td><td>0.0241</td></tr><tr><td colspan="5">Rate Effect Estimates (Rate Multiplier = 1)</td></tr><tr><td colspan="2">group</td><td rowspan="2">Rate Ratio</td><td colspan="2" rowspan="2">95% Lognormal Confidence Limits</td></tr><tr><td>Dep</td><td>Non_dep</td></tr><tr><td>0.0338</td><td>0.0229</td><td>1.4772</td><td>1.31011</td><td>1.66566</td></tr></table>

The standardized incidence rates in the two comparison groups (0.0338 and 0.0229) and the standardized incident rate ratio (1.48) listed here are the same as those estimated manually. The age-standardized incident rate in the depressed group is 1.48 times that of the non-depressed group (95%CI: 1.31–1.67). 

We compared the standardization methods with the traditional Poisson regression model for adjusting age as a confounding variable and found that the two methods generated almost identical results. The following SAS GENMOD procedure was used to perform the traditional Poisson regression model: 

```txt
DATA dep;
input ageg $1-5 dep death Pyear;
logpy=log(Pyear);
datalines;
32-45 1 15 2727.58
46-65 1 75 3996.25
65-86 1 252 2629.5
32-45 0 40 17150.25
46-65 0 276 24302.58
65-86 0 916 13273.08
;
PROC genmod data=dep;
class dep (ref='0') ageg;
model death=dep ageg /dist=poi link=log offset=logpy;
estimate 'SIR' dep 1 -1/ exp;
RUN; 
```

When a single standard population is used in direct standardization, the estimated SIRs and SRRs can be directly compared, as in this example. However, the age-standardized rates estimated in one study cannot be directly compared to rates reported in another study that uses a different standard population. 

Direct standardization can also be used to estimate standardized cumulative risks and risk ratios. In such cases, the standard population will be the sum of the two study groups’ populations at risk, rather than the sum of person-years. The Equations 2.24 and 2.25 are changed to: 

The expected stratum-specific cases: 

Expected stratum-specific cases O= × bserved stratum-specific risks Number of subjects in the standard population stratum 

The standardized risk ratio: 

Standardized risk ratio O= verall sums of the expected cases/Total number of subjects inthe standard population 

The SAS PROC STDRATE can also be used to estimate standardized risks and risk ratios, using the “STAT=RISK” option. 

## 2.9.2 Indirect Standardization

In the indirect standardization method, the incidence rates of study cohorts are adjusted to a standard population (or reference population). The standard population is usually an external population, such as a state, national, or regional population. Indirect standardization calculates the weighted average of stratum-specific estimates in the standard population, using the weights from the study population. The ratio of the observed deaths in the study population and the corresponding weighted estimate in the standard population is the standardized morbidity ratio (SMR). 

To illustrate an application of indirect standardization, let’s consider a study investigating the risk of myocarditis and pericarditis after the COVID-19 mRNA vaccination. Among vaccinated subjects aged 18–64 years, a total of two cases died of myocarditis were observed out of 2.5 million person-years. The question being asked is whether observing two deaths among vaccinated subjects is excessive when compared to the mortality rate of myocarditis in the general population who have not received this vaccine (the standard or reference population). 

In indirect standardization, the expected number of events (e.g., disease or death) in a study group is calculated by applying the “standard rates” to the person-years in each stratum of the study group (weight). The assumption for this estimation is that the study population has the same underlying risk as the comparable stratum in the standard population. The ratio of the total number of observed deaths to the number of expected deaths provides an estimate of the standardized mortality ratio (SMR) comparing the study group with the standard population. 

$$
\begin{array}{r l} \text { Expected   stratum - specific   deaths } & = \text { Mortality   rate   of   standard   population } * \text { Number } \\ & \text { of   person - years   in   each   stratum   of   the   study } \\ & \text { populations   (weights) } \end{array} \tag {2.27}
$$

$$
\begin{array}{r l} S M R = & \text { Sum   of   the   observed   deaths   in   the   study   population / Sum   of   the   expected } \\ & \text { stratum - specific   deaths   in   the   reference   population } \end{array} \tag {2.28}
$$

$$
\text { Standard   error   of } S M R = \left(\text { Square   root   of   observed   deaths }\right) / \text { Number   of   expected   deaths } \tag {2.29}
$$

The indirect-standardized rate is estimated by multiplying the SMR by the overall rate in the standard population. An SMR greater than 1 indicates that the observed number of the events is higher than the expected number of the events if the study population had the same underlying risk as the standard population, while a SMR less than 1 indicates that the observed number of events is lower than the expected. 

Indirect standardization is particularly useful when stratum-specific rates or risks are missing in the study population as they are not used in estimating an SMR, as long as we know the total number of deaths and the person-time in each stratum of confounding variables (e.g., 3,310 deaths and the person-years in the column of “County person-years” in Table 2.15). In this situation, the expected number of deaths is estimated by multiplying the reference rate by the person-years in each stratum. 

## Example 2.15

We illustrate the indirect standardization method using hypothetical data in Table 2.15. This study investigates whether the mortality in County A exceeds the state average. The table displays the number of COVID-19 deaths, person-years, and mortality rates in County A, as well as the standard rates in the State to which County A belongs. For instance, to estimate the expected number of deaths for the 66+ age group, we multiply the person-years in that group (129,022) by the mortality rate in the corresponding standard population (0.001929), which yields a value of 248.89. 


TABLE 2.15



Expected Death for County A, Taking the State Rate as the Standard


<table><tr><td>Age (Years)</td><td>County Death</td><td>County Person-Year</td><td>County Rate Per 10 k</td><td>State Rate Per 10 k</td><td>Expected Death</td></tr><tr><td>0–17</td><td>1</td><td>139,536</td><td>0.07</td><td>0.08</td><td>1.10</td></tr><tr><td>18–34</td><td>17</td><td>354,413</td><td>0.48</td><td>0.47</td><td>16.80</td></tr><tr><td>35–45</td><td>354</td><td>345,861</td><td>10.24</td><td>4.66</td><td>161.07</td></tr><tr><td>46–55</td><td>458</td><td>201,586</td><td>22.72</td><td>28.34</td><td>571.22</td></tr><tr><td>56–65</td><td>854</td><td>135,789</td><td>62.89</td><td>24.04</td><td>326.43</td></tr><tr><td>66+</td><td>1,626</td><td>129,022</td><td>126.03</td><td>19.29</td><td>248.89</td></tr><tr><td>Total</td><td>3,310</td><td>1,306,207</td><td>25.34</td><td>12.47</td><td>1,325.52</td></tr></table>

SMR = = Observed deaths/Expected death 3, 310/1, 325.52 = 2.497 

The SMR of 2.497 indicates that almost 2.5 times as many COVID-19 deaths were observed in County A than expected based on the age-specific mortality rates in the state. The standardized incidence rate in County A is calculated to be 31.14 (2.479*12.47). 

The SAS syntax below uses the STDRATE procedure to estimate standardized incidence rates and SMR, with data presented in Table 2.15. The variables C_cases and C_PY represent the number of cases and person-years in County A, respectively, while S_cases and S_PY represent the number of cases and person-years in the State. 

```sql
DATA covid;
input Age $ C_cases C_PY S_Cases S_PY;
cards;
0-17 1 139536 19 2403421
18-34 17 354413 299 6308980
35-45 354 345861 3218 6909835
46-55 458 201586 11067 3905559
56-65 854 135789 13000 5407697
65+ 1626 129022 9852 5107269
;
PROC stdrate data=covid
refdata=covid
method=indirect
stat=rate (mult=10000);
population event=C_cases total=C_py;
reference event=S_cases total=S_py;
strata age / smr (cl=poisson);
RUN; 
```

The “DATA” and “REFDATA” options name the study dataset and standard dataset. In this example, we combine the two datasets (one from County A and the other from the State) into one dataset named as “covid.” The “METHOD=INDIRECT” option is used to request indirect standardization. The $\scriptstyle \prime \prime \mathrm { S T A T } = \mathrm { R A T E } ^ { \prime \prime }$ option specifies the rate as the frequency measure for standardization, and the $\mathrm { ^ { \prime \prime } M U L T = 1 0 0 0 0 ^ { \prime \prime } }$ option requests the unit of rate to be per 10,000 person-years. The “POPULATION” statement specifies options related to the study population, with the “EVENT” and “TOTAL” options specifying variables for the number of deaths (C_cases) and person-years (C_PY) in the study population. The $' \mathrm { { R E F E R E N C E } } ^ { \prime \prime }$ statement specifies options related to the standard population, with the $' / \mathrm { E V E N T ^ { \prime \prime } }$ and “TOTAL” options specifying variables for the number of deaths (S_cases) and person-years (S_PY) in the standard population. Finally, the $^ { \prime \prime } \mathrm { S T R A T A ^ { \prime \prime } }$ statement lists the variable “age” that forms the strata. 

As displayed in the SAS output, this SAS syntax yields the same SMR and standardized incidence rate as those we calculated manually. The standard error used to estimate the 95% confidence interval is 0.0434 $( \sqrt { 3 , 3 1 0 } \div 1 , 3 2 5 . 5 2 )$ . The SMR value of 2.497 suggests that the number of COVID-19 deaths observed in County A is almost 2.5 times higher than what would be expected based on the age-specific mortality rates in the state (SAS Output 2.18). 


SAS Output 2.18 Standardized morbidity/mortality ratio


<table><tr><td colspan="8">Standardized Morbidity/Mortality Ratio</td></tr><tr><td>Observed Events</td><td>Expected Events</td><td>SMR</td><td>Standard Error</td><td colspan="2">95% Normal Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>3310</td><td>1325.52</td><td>2.4971</td><td>0.0434</td><td>2.4121</td><td>2.5822</td><td>34.49</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="6">Indirectly Standardized Rate Estimates Rate Multiplier = 10000</td></tr><tr><td colspan="3">Study Population</td><td rowspan="2">Reference Crude Rate</td><td rowspan="2">Expected Events</td><td rowspan="2">SMR</td></tr><tr><td>Observed Events</td><td>Population-Time</td><td>Crude Rate</td></tr><tr><td>3310</td><td>1306207</td><td>25.3405</td><td>12.4672</td><td>1325.52</td><td>2.4971</td></tr></table>

<table><tr><td colspan="4">Indirectly Standardized Rate EstimatesRate Multiplier = 10000</td></tr><tr><td colspan="4">Standardized Rate</td></tr><tr><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Normal Confidence Limits</td></tr><tr><td>31.1324</td><td>0.5411</td><td>30.0718</td><td>32.1930</td></tr></table>

The same set of results can also be estimated by the Poisson regression model, using the following SAS syntax. 

```txt
DATA SMR;
input age $ C_cases Exp_cases;
logE=log(Exp_cases);
datalines;
0-17 1 1.10
18-34 17 16.80
35-45 354 161.07
46-55 458 571.22
56-65 854 326.43
65+ 1626 248.89
; 
```

```txt
PROC genmod data=SMR;
class age;
model C_cases= / dist=poisson link=log offset=logE;
estimate 'SMR' int 1 / exp;
RUN; 
```

In contrast to the direct method, it is the study population to which the external standard rates are applied, as exemplified by the application of rates from the state to person-years in County A, as shown in Table 2.15. When the study population is stratified by one or more confounding variables, such as age in this example, the number of subjects or person-years in each stratum of the study groups serves as the “weight” for the SMR calculation, as demonstrated in the “County person-year” column in Table 2.15. To calculate SMRs, we apply the rates of a standard population to the distribution of the study population. Therefore, when comparing more than one study population to the source of standard rates, the SMRs are adjusted using different weights, namely the study populations themselves. For instance, if Counties A and B have different age distributions (i.e., different weights), the application of the same set of standard rates to each county yields expected numbers that are unequally weighted. As a result, it is not appropriate to compare the SMR estimated for County A to that estimated for County B, but rather to compare each with the state rate. 

To use the indirect standardization method to estimate standardized cumulative risks and risk ratios, Equations 2.27 and 2.28 need to be changed to: 

${ \begin{array} { r l } & { { \mathrm { E x p e c t e d ~ s t r a t u m } } { \cdot } { \mathrm { s p e c i f i c ~ d e a t h s } } = { \mathrm { M o r t a l i t y ~ r i s k ~ o f ~ s t a n d a r d ~ p o p u l a t i o n ~ } } ^ { * } { \mathrm { ~ N u m b e r ~ } } } \\ & { { \mathrm { ~ o f ~ s u b j e c t s ~ i n ~ e a c h ~ s t r a t u m ~ o f ~ t h e ~ s t u d y } } } \\ & { { \mathrm { p o p u l a t i o n s ~ } } \left( { \mathrm { w e i g h t s } } \right) } \end{array} }$ 

SMR = Sum of the observed deaths in the study population/Sum of the expected stratum-specific deaths in the reference population 

The SAS PROC STDRATE can also be used to estimate standardized risks and risk ratios, using the “STAT=RISK” option. 

To clarify, the SIRs or SRRs estimated using the direct standardization method can be compared among study populations because they are adjusted to a single standard population using the same weights. However, this method requires knowledge of the stratum-specific rates or risks in each study population, which may not always be available. Age-standardization is just one example of a confounding variable that can be handled by standardization, but other variables can also be adjusted for in a similar manner. It is important to note that the direct and indirect standardization methods assume no interaction between the stratifying variables and the risk factor, which limits their use in examining interaction. However, assessment of interaction can be accommodated using Poisson regression models, as described in Sections 2.7.3 and 2.8.3. 

## 2.10 Log-Binomial Regression Model to Estimate Risk Ratio

The log-binomial model is one of the GLMs used to analyze binary outcomes with the log link function (Wacholder 1986). The dependent variable in this model follows a binomial distribution, with the logarithm of its probability being linearly related to the independent variables. The maximum likelihood method is used to estimate the log of the risk ratio, which is the regression coefficient of exposure. To assess the association between an exposure X and an outcome ${ \mathrm { Y , } }$ adjusting for a set of covariates $\mathbf { Z } ,$ we consider $\Upsilon$ as a binary $( 0 / 1 )$ random outcome and Z represents a collection (or vector) of covariates as $\mathbf { Z } = ( Z _ { 1 } , . . . , Z _ { p } )$ . The conditional probability that the outcome is present is expressed as $\scriptstyle \mathrm { R } ( \mathrm { Y = 1 } | \mathrm { X } , \mathbf { Z } )$ . The model is written as 

$$
R _ {Y = 1 | X, Z} = \exp (\beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}),
$$

$$
\log \left(R _ {Y = 1 | X, Z}\right) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}. \tag {2.30}
$$

Some of the $\mathbf { Z } s$ are confounding variables, while others are effect modifiers. Since log risk, log $\left( \mathbb { R } _ { Y = 1 | X , Z } \right)$ , is always negative in the interval of $- \infty$ to $0 ,$ constraints are applied during the estimation process to prevent probabilities outside the 0–1 interval. The adjusted risk ratio (aRR) of the outcome $\bar { Y , }$ comparing the exposed $( \mathsf X = 1 )$ with the unexposed $( \mathsf X = 0 )$ while adjusting for the effects of other explanatory variables $Z _ { 1 } , \ldots Z _ { p } ,$ is estimated as: 

$$
a R R = \frac {R _ {Y = 1 | X = 1 , Z}}{R _ {Y = 1 | X = 0 , Z}} = \frac {\exp \left(\beta_ {0} + \beta_ {x} + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}\right)}{\exp \left(\beta_ {0} + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}\right)} = \exp \left(\beta_ {x}\right) \tag {2.31}
$$

However, the log-binomial regression model may not converge in certain settings when using statistical software to perform the regression analysis. This is because log risk, which is always negative in the range of −∞ and $0 ,$ is modeled as a linear function of independent variables, which may take on positive values (>0). The estimated probability that exceeds 1 violates the definition of a probability model. Although parameter estimates are restricted to the range of −∞ and $0 ,$ standard software for GLMs cannot appropriately handle such constraints, causing the maximizing process to fail to find the maximum likelihood estimates. 

A convergence problem may occur in models with many covariates, especially continuous quantitative variables (Petersen and Deddens 2006, Williamson, Eliasziw, and Fick 2013), or in models with a common outcome (Localio, Margolis, and Berlin 2007). For instance, if the SAS PROC GENMOD syntax fails to converge, it will report an error message in its log output, indicating that convergence is not attained in iterations, and the validity of the model fit is questionable. Solutions to address the problem are discussed in Section 2.10.5. 

## 2.10.1 Estimate of Crude Risk Ratio

In the case of a model with only one exposure variable, $x ,$ which takes two levels $( x = 0$ and $x = 1 )$ , the log-binomial regression model (2.30) can be simplified as follows: 

$$
\operatorname{Log} (\text { risk }, R) = \beta_ {0} + \beta_ {x} x,
$$

$$
\operatorname{Risk} (R) = \exp \left(\beta_ {0} + \beta_ {x} x\right).
$$

The unadjusted risk ratio, cRR, which compares the risk of the exposed group $( x = 1 )$ to that of the unexposed group $( x = 0 )$ , can be estimated as: 

$$
c R R = \frac {\text { risk } \mid x = 1}{\text { risk } \mid x = 0} = \frac {\exp (\beta_ {0} + \beta_ {x} \times 1)}{\exp (\beta_ {0} + \beta_ {x} \times 0)} = \exp (\beta_ {x}).
$$

Note that the cRR is simply the exponential of the regression coefficient $( \beta _ { x } )$ associated with the exposure variable (x). 

## Example 2.16

The NHEFS cohort study included 1,167 depressed subjects and 6,296 non-depressed subjects. The 10-year cumulative risk was 29.3% for the depressed group and 19.6% for the non-depressed group, resulting in a risk ratio (RR) of 1.50 (Table 2.16). 


TABLE 2.16



Risk of Death for Depressed and Non-Depressed Groups


<table><tr><td></td><td>Death</td><td>Non-Death</td><td>Total</td><td>Risk</td></tr><tr><td>Depressed</td><td>342</td><td>825</td><td>1,167</td><td>0.2931</td></tr><tr><td>Non-depressed</td><td>1,232</td><td>5,064</td><td>6,296</td><td>0.1957</td></tr></table>

The same results can be estimated by the log-binomial regression model executed in the following SAS syntax: 

```txt
PROC genmod data=nhefs83 desc;
class dep /param=ref ref=first;
model death = dep /dist=bin link=log;
estimate "dep RR" dep 1/exp; 
```

RUN; 

In the above SAS syntax, the outcome distribution is binomial $( ^ { \prime \prime } \mathsf { b i n } ^ { \prime \prime } )$ with the log as the link function. The regression coefficients and contrast estimate results are listed in the SAS Output 2.19. 


SAS Output 2.19 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="7">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>-1.6313</td><td>0.0256</td><td>4076.02</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.4039</td><td>0.0522</td><td>59.98</td><td>&lt;.0001</td></tr><tr><td>Scale</td><td></td><td>0</td><td>1.0000</td><td>0.0000</td><td></td><td></td></tr></table>

<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>dep RR</td><td>1.4976</td><td>1.3521</td><td>1.6588</td></tr></table>

The estimated crude risk ratio is 1.50 (95%CI:1.35–1.66), which is the same as the one estimated by the robust Poisson regression model in Section 2.8.1. 

## 2.10.2 Adjustment of a Confounding Variable

If we know $z _ { 1 }$ is a binary confounder variable $( z _ { 1 } = 1 \mathrm { v s } . z _ { 1 } = 0 )$ , we can estimate the adjusted RR by adding $z _ { 1 }$ into the log-binomial model: 

$$
\text { Rate } (\lambda) = \exp \left(\beta_ {0} + \beta_ {x} x + \beta_ {1} z _ {1}\right)
$$

The $z _ { 1 } .$ -adjusted incidence rate ratio (aRR) can be estimated by: 

$$
a R R = \frac {\text { risk } \mid x = 1}{\text { risk } \mid x = 0} = \frac {\exp \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {1} \times z _ {1}\right)}{\exp \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {1} \times z _ {1}\right)} = \exp \left(\beta_ {x}\right).
$$

## Example 2.17

This example utilizes the log-binomial regression model to calculate the risk ratio of depression on death while controlling for education as a confounding variable. The educational level of individuals was measured using the number of years of education they had received (eduy), which is a continuous variable. 

PROC genmod data=nhefs83 desc; class dep /param=ref ref=first; model death = dep eduy /dist=bin link=log; estimate "dep RR" dep 1/exp; 

RUN; 

The SAS Output 2.20 lists the regression coefficients of the two variables and the risk ratio of death comparing the depressed with non-depressed. 


SAS Output 2.20 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="7">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>-0.2451</td><td>0.0429</td><td>32.58</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.1593</td><td>0.0444</td><td>12.84</td><td>0.0003</td></tr><tr><td>eduy</td><td></td><td>1</td><td>-0.1264</td><td>0.0040</td><td>976.21</td><td>&lt;.0001</td></tr><tr><td>Scale</td><td></td><td>0</td><td>1.0000</td><td>0.0000</td><td></td><td></td></tr></table>

<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>dep RR</td><td>1.1726</td><td>1.0748</td><td>1.2794</td></tr></table>

The education-adjusted RR for depression is 1.17 (95% CI: 1.07–1.28), which slightly differs from the RR that was estimated by the robust Poisson regression model (RR = 1.26, 95% CI: 1.13–1.39) in Section 2.8.2. 

## 2.10.3 Assessment of Interaction Effect

If there is a potential effect modification between the exposure variable (x) and a modifier $( z _ { 2 } ) ,$ , the log-binomial regression model can be used to assess the interaction effect. 

## Example 2.18

We use the same dataset in the previous example to assess the potential interaction effect of depression and sex on death. To statistically test an interaction effect, we create a product term “dep*sex,” and add it into the model in addition to depression and sex. 

```txt
PROC genmod data=nhefs83 desc;
class dep sex /param=ref ref=first;
model death = dep sex dep*sex /dist=bin link=log;
estimate "RR in Female" dep 1 dep*sex 0/exp;
estimate "RR in Male" dep 1 dep*sex 1/exp; 
```

RUN; 

Because the coefficient of the product term “dep*sex” is 0.134 (close to the null 0) and its 95% is between −0.06 and 0.33, we would conclude that there is no substantial interaction in the multiplicative scale (SAS Output 2.21). For illustrative and didactic purposes, we estimate the exposure effect of depression at each level of sex. 


SAS Output 2.21 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">Wald 95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-1.9164</td><td>0.0393</td><td>-1.9936</td><td>-1.8393</td><td>2372.79</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4294</td><td>0.0748</td><td>0.2827</td><td>0.5760</td><td>32.92</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>0.5958</td><td>0.0512</td><td>0.4954</td><td>0.6962</td><td>135.25</td><td>&lt;.0001</td></tr><tr><td>dep*sex</td><td>1</td><td>0.1340</td><td>0.1010</td><td>-0.0639</td><td>0.3319</td><td>1.76</td><td>0.1843</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

$$
R R = \exp \left(\beta_ {d e p} + \beta_ {d e p ^ {*} s e x} \times s e x\right) = \exp \left(0. 4 2 9 4 + 0. 1 3 4 ^ {*} \mathrm{sex}\right).
$$

$\mathrm { W h e n ~ S E X } = 1 \ \mathrm { { ( m a l e s ) } } , \ R R = \exp \left( 0 . 4 2 9 4 + 0 . 1 3 4 ^ { * } 1 \right) = \exp \left( 0 . 5 6 3 4 \right) = 1 . 7 6 .$ 

$$
\text { When   } \mathrm{SEX} = 0 (\text { female }), R R = \exp (0. 4 2 9 4 + 0. 1 3 4 * 0) = \exp (0. 4 2 9 4) = 1. 5 4.
$$

Because the “ESTIMATE” statement was used in the SAS PROC GENMOD, separate risk ratios (RRs) and their corresponding 95% confidence intervals (CIs) are automatically estimated (SAS Output 2.22). 


SAS Output 2.22 Contrast estimate results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>PR in Female</td><td>1.5363</td><td>1.3267</td><td>1.7790</td></tr><tr><td>PR in Male</td><td>1.7566</td><td>1.5381</td><td>2.0062</td></tr></table>

The similarity between the two risk ratios provides additional evidence suggesting that sex may not modify the association between depression and death. The same risk ratios and 95% confidence intervals can also be estimated from a robust Poisson regression model. 

## 2.10.4 Estimate Risk Ratio in Multiple Log-Binomial Regression Model

Much like the previous modeling techniques that we have discussed, the log-binomial regression model can be employed to adjust for multiple confounders and assess modification effects. We use an example to illustrate the use of a multiple log-binomial regression model to estimate risk ratios while adjusting for confounding variables. 

## Example 2.19

In this example, we assess the effect of depression on all-cause death while adjusting for potential confounders, including sex, race, age, education (eduy), marital status (marital), residence areas (area), and family income (income). The following SAS syntax was used in this analysis: 

```txt
PROC genmod data=nhefs83 desc;
class dep sex race marital area income
    /param=ref ref=first;
model death = dep sex race age eduy marital
    area income /dist=bin link=log; 
```

RUN; 

However, this model failed to converge, possibly due to the presence of the common outcome (21.1%) and two continuous variables (age and education in years). After removing these variables from the model, convergence was achieved. In this case, we used a robust Poisson regression model: 

```txt
PROC genmod data=nhefs83 desc;
class dep sex race marital area income seqn
    /param=ref ref=first;
model death=dep sex race age eduy marital area income
    /dist=poi link=log;
repeated subject=seqn /type=ind;
estimate "RR dep" dep 1/exp; 
```

RUN; 

The adjusted risk ratio for depression is 1.27 (75%CI: 1.16–1.38) (SAS Output 2.23). 


SAS Output 2.23 Contrast estimate results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>RR dep</td><td>1.2672</td><td>1.1629</td><td>1.3809</td></tr></table>

## 2.10.5 Convergence Issues and Alternatives to the Log-Binomial Model

Both the robust Poisson regression model and the log-binomial model can be utilized to estimate the effect of exposure. However, among the two models estimating risk ratios, the log-binomial model is generally preferred because it produces maximum likelihood estimators, which are more efficient than the pseudo-likelihood estimators used in robust Poisson models (Stijnen and Van Houwelingen 1993, McNutt et al. 2003). This increased efficiency is reflected by smaller p-values and narrower confidence intervals, particularly when dealing with small sample sizes. Nevertheless, as demonstrated in the previous example, the log-binomial model may encounter convergence issues, especially when adjusting for multiple continuous confounders. Such challenges can present significant drawbacks, making the model unsuitable for more complex analyses. 

When such convergence issues arise, an alternative approach frequently employed is the robust Poisson regression model (Talbot et al. 2023). While this model might not be as efficient as the log-binomial model, it compensates with its robustness and its ability to handle convergence problems. Choosing the most suitable model requires weighing these relative trade-offs. The log-binomial model is generally preferred for its efficiency, but if convergence issues persist, the robust Poisson regression model presents a viable alternative. Regardless, all models are merely tools for analyzing the data. The most critical aspect is to interpret the results meticulously and within the context of the data and research question. The ultimate goal is to provide meaningful, valid, and precise estimates that contribute to advancing our understanding of the epidemiological question at hand. 

Another alternative method that addresses the convergence problem while maintaining efficiency is the COPY method, which is incorporated in the log-binomial modeling analysis (Deddens and Petersen 2008). The use of the COPY method will be discussed in Chapter 8. 

## 2.11 Linear Binomial Regression Model to Estimate Risk Difference

In this section, we introduce the linear binomial regression model to estimate risk differences (RDs) (Naimi and Whitcomb 2020). This model, also under the umbrella of GLMs, assumes an identity link function (i.e., no log transformation) to obtain regression coefficients that represent risk differences. Like the log-binomial regression model, the linear binomial regression model uses binomial distribution. However, the key difference lies in the link function, which is the identity function instead of the log function. 

$$
R _ {Y = 1 \mid X, Z} = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}. \tag {2.32}
$$

The estimated risk in an exposed group is: 

$$
R _ {Y = 1 | X = 1, Z} = \beta_ {0} + \beta_ {x} \times 1 + \beta_ {1} Z _ {1} + \ldots + \beta_ {p} Z _ {p}.
$$

The estimated risk in an unexposed group is: 

$$
R _ {Y = 1 | X = 0, Z} = \beta_ {0} + \beta_ {x} \times 0 + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}.
$$

Thus, the estimated risk difference is: 

$$
R _ {Y = 1 | X = 1, Z} - R _ {Y = 1 | X = 0, Z} = \beta_ {0} + \beta_ {x} - \beta_ {0} = \beta_ {x}
$$

and the estimated risk ratio is: 

$$
R R = R _ {Y = 1 | X = 1, Z} / R _ {Y = 1 | X = 0, Z} = \left(\beta_ {0} + \beta_ {x}\right) / \beta_ {0} = 1 + \beta_ {x} / \beta_ {0}.
$$

Therefore, the coefficient of an exposure variable (βx) in Equation 2.32 yields an estimate of the risk difference, adjusting for other variables (Z) in the model. The main disadvantages of this model are that the estimate of $\mathrm { R } _ { Y = 1 | X , Z }$ may be outside of the 0–1 range, and the binomial model may have convergence problems (Pedroza and Truong 2016). 

## 2.11.1 Estimate of Crude Risk Difference

To estimate a crude risk difference, we use the linear binomial regression model to assess the effect of depression on death. The following example documents the crude analysis. 

## Example 2.20

The SAS GENMOD in which the link function is specified by identity (i.e., LINK = IDENTITY) is used to estimate the crude RD and its 95% CI: 

```txt
PROC genmod data=nhefs83 desc;
class dep /param=ref ref=first;
model death = dep /dist=bin link=identity;
RUN; 
```

In this SAS syntax, the distribution is still binomial, but the link function is changed to “identity.” According to the SAS Output 2.24, the estimated risk difference between the two groups (depressed vs. non-depressed) is 0.0974 (95%CI: 0.07–0.12), which is the same as the one estimated from data in Table 2.9. The estimated risk ratio is 1+0.0974/0.1957 = 1.50, which is the same as the one estimated in Example 2.9. 


SAS Output 2.24 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">Wald 95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt;ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>0.1957</td><td>0.0050</td><td>0.1859</td><td>0.2055</td><td>1531.73</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.0974</td><td>0.0142</td><td>0.0695</td><td>0.1253</td><td>46.82</td><td>&lt;.0001</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

## 2.11.2 Estimate of Adjusted Risk Difference

The binomial linear model with the identity function can be used to estimate adjusted risk differences. The following example is used to document the procedure. 

## Example 2.21

In this example, we estimate the RD of death by comparing the depressed with the nondepressed, adjusting for sex, education, sex, marital status, residence areas, and income. 

```txt
PROC genmod data=nhefs83 desc;
class dep /param=ref ref=first;
model death = dep sex eduy marital area income
/dist=bin link=identity; 
```

RUN; 

The adjusted risk difference for depression is 0.0327 (95%CI: 0.01–0.06) (SAS Output 2.25). 


SAS Output 2.25 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">Wald 95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>0.1061</td><td>0.0192</td><td>0.0685</td><td>0.1438</td><td>30.48</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.0327</td><td>0.0139</td><td>0.0056</td><td>0.0599</td><td>5.57</td><td>0.0182</td></tr><tr><td>sex</td><td>1</td><td>0.1229</td><td>0.0097</td><td>0.1039</td><td>0.1419</td><td>160.31</td><td>&lt;.0001</td></tr><tr><td>eduy</td><td>1</td><td>-0.0061</td><td>0.0012</td><td>-0.0084</td><td>-0.0039</td><td>27.75</td><td>&lt;.0001</td></tr><tr><td>marital</td><td>1</td><td>0.0334</td><td>0.0066</td><td>0.0205</td><td>0.0462</td><td>25.93</td><td>&lt;.0001</td></tr><tr><td>area</td><td>1</td><td>0.0009</td><td>0.0029</td><td>-0.0048</td><td>0.0066</td><td>0.10</td><td>0.7472</td></tr><tr><td>income</td><td>1</td><td>0.0614</td><td>0.0039</td><td>0.0537</td><td>0.0691</td><td>245.88</td><td>&lt;.0001</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

The similar results were also estimated by the robust Poisson regression model (aRD = 0.0321, 95%CI: 0.01–0.05). To use the robust Poisson model, we replace “link=log” with “link=identity”: 

```txt
PROC genmod data=nhefs83;
class dep seqn/param=ref ref=first;
model death = dep sex eduy marital area income /dist=poisson link=identity;
repeated subject=seqn /type=ind;
RUN; 
```

## 2.11.3 Assessment of Modification Effect

The linear binomial model can be used to assess statistical interaction and quantify departures from the additivity of effects in terms of differences in probabilities. It directly estimates risks and yields interpretable estimates of modification effects in the additive scale. In contrast, the log-binomial model estimates modification effects in the multiplicative scale. 

Suppose we want to assess an additive interaction effect between the exposure variable (x) and a modifier (z) on an outcome variable (y). We can use the probabilities or risks of the outcome y at different levels of x and $z \left( \mathrm { R } _ { \mathrm { x z } } \right)$ , as shown in Table 2.17. 


TABLE 2.17



Probabilities of Outcome y at the Levels of Two Exposures x and z


<table><tr><td>z</td><td>x</td><td>Risk</td></tr><tr><td>0</td><td>0</td><td><eq>R_{00}</eq></td></tr><tr><td>0</td><td>1</td><td><eq>R_{10}</eq></td></tr><tr><td>1</td><td>0</td><td><eq>R_{01}</eq></td></tr><tr><td>1</td><td>1</td><td><eq>R_{11}</eq></td></tr></table>

The linear binomial regression model is used to assess the modification effect. Let’s first create a product term: $w = x ^ { * } z$ . The risk of outcome is estimated by 

$$
\operatorname{Risk} (R) = \beta_ {0} + \beta_ {x} x + \beta_ {z} z + \beta_ {w} w
$$

$$
R _ {0 0} = \beta_ {0}
$$

$$
R D _ {1 1} = R _ {1 1} - R _ {0 0} = \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times 1 + \beta_ {w} \times 1\right) - \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) = \beta_ {x} + \beta_ {z} + \beta_ {w}
$$

$$
R D _ {1 0} = R _ {1 0} - R _ {0 0} = \left(\beta_ {0} + \beta_ {x} \times 1 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) - \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) = \beta_ {x}
$$

$$
R D _ {0 1} = R _ {0 1} - R _ {0 0} = \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 1 + \beta_ {w} \times 0\right) - \left(\beta_ {0} + \beta_ {x} \times 0 + \beta_ {z} \times 0 + \beta_ {w} \times 0\right) = \beta_ {z}
$$

Here, $\mathrm { R } _ { 0 0 }$ is the risk in the study group which exposed neither of the two factors. $\mathrm { R D } _ { 1 1 }$ represents the combined effect of factors x and z when both are present, in contrast to $\mathrm { R D } _ { 1 0 }$ and $\mathrm { R D } _ { 0 1 } ,$ which represent the effects of factor x alone and factor z alone, respectively. In the absence of an interaction effect between the two variables, the combined effect of both variables equals the sum of their individual effects on the addictive scale: 

$$
\left(R _ {1 1} - R _ {0 0}\right) = \left(R _ {1 0} - R _ {0 0}\right) + \left(R _ {0 1} - R _ {0 0}\right)
$$

The departure from the additivity of effects can be quantified by the interaction contrast (IC), which measures the extent to which the effect of the two factors together exceeds the effect of each considered individually (VanderWeele and Knol 2014). It is calculated as: 

$$
I C = R _ {1 1} - R _ {1 0} - R _ {0 1} + R _ {0 0} = \beta_ {w} \tag {2.33}
$$

When IC is greater than 0, the interaction is considered positive. Conversely, if it is less than 0, the interaction is deemed negative. 

As mentioned in Section 2.8.3, the statistical interaction can be defined in two different but compatible ways: heterogeneity of effects and observed joint effects (Szklo and Nieto 2019). According to the first definition, $\left( R _ { 1 1 } - R _ { 0 1 } \right) \neq \left( R _ { 1 0 } - { \bf \dot { R } } _ { 0 0 } \right)$ if there is an interaction between x and z on y. That is, the risk difference does not equal at the two level of the modifier $z .$ Under the second definition, the observed joint effect does not equal the expected joint effect which is estimated under the assumption that there is no interaction. Mathematically, $\big ( R _ { 1 1 } - R _ { 0 0 } \big ) \neq \big ( R _ { 1 0 } + R _ { 0 1 } \big ) \neq \big ( R _ { 1 0 } - R _ { 0 0 } \big ) + \big ( \hat { R _ { 0 1 } } + R _ { 0 0 } \big )$ if there is an interaction. That is, $( \beta _ { x } + \beta _ { z } + \dot { \beta } _ { w } ) \neq ( \beta _ { x } + \dot { \beta } _ { z } )$ , or $\beta _ { w } \neq 0 .$ . The value of $\beta _ { w }$ quantifies the degree of the departure from additivity of effect. If the effects of the two exposures (x and z) are independent or additive $( \mathrm { i . e . , }$ no interaction), $\mathrm { I C } = \beta _ { w } = 0 ,$ and the observed joint effects $( R _ { 1 1 } - R _ { 0 0 } )$ is equal to the sum of the separated and independent effects of $x \left( R _ { 1 0 } - R _ { 0 0 } \right)$ and $z \left( R _ { 0 1 } + R _ { 0 0 } \right)$ . 

## Example 2.22

The all-cause mortalities stratified by depression and sex are presented in Table 2.18. Attributable risk to joint effects of both x and z: 

$$
R D _ {1 1} = R _ {1 1} - R _ {0 0} = 0. 4 6 8 9 - 0. 1 4 7 1 = 0. 3 2 1 8.
$$


TABLE 2.18



Mortality of All-Cause Death Stratified by Depression and Sex


<table><tr><td></td><td>Male</td><td>Female</td></tr><tr><td>Depressed</td><td><eq>R_{11} = 0.4689</eq></td><td><eq>R_{10} = 0.2260</eq></td></tr><tr><td>Non-depressed</td><td><eq>R_{01} = 0.2670</eq></td><td><eq>R_{00} = 0.1471</eq></td></tr></table>

Attributable risk for exposure to x only: 

$$
R D _ {1 0} = R _ {1 0} - R _ {0 0} = 0. 2 2 6 - 0. 1 4 7 1 = 0. 0 7 8 9.
$$

Attributable risk for exposure to z only: 

$$
R D _ {0 1} = R _ {0 1} - R _ {0 0} = 0. 2 6 7 0 - 0. 1 4 7 1 = 0. 1 1 9 8.
$$

Interaction contrast (IC): 

$$
R _ {1 1} - R _ {1 0} - R _ {0 1} + R _ {0 0} = 0. 4 6 8 9 - 0. 2 2 6 - 0. 2 6 7 + 0. 1 4 7 1 = 0. 1 2 3.
$$

Thus, the risk of death in those who are exposed to both x and z exceeds the sum of the separate risks of the two (assuming no interaction) by 12.3%. 

The risk difference among males (z = 1): 

$$
R D = R _ {1 1} - R _ {0 1} = 0. 4 6 8 9 - 0. 2 6 7 = 0. 2 0 2
$$

The risk difference among females (z = 0): 

$$
R D = R _ {1 0} - R _ {0 0} = 0. 2 2 6 - 0. 1 4 7 1 = 0. 0 7 8 9
$$

Because the IC is away from the null value of 0 and the two RDs at different levels of z differ, there is evidence of a departure from the additive effect, suggesting that z may modify the risk difference. 

We can use the following SAS PROC GENMOD to evoke linear binomial regression analysis. 

```txt
PROC genmod data=nhefs83 desc;
class dep sex /param=ref ref=first;
model death = dep sex dep*sex
    /link=identity dist=bin lrci;
estimate "RD in Female" dep 1 dep*sex 0/exp;
estimate "RD in Male" dep 1 dep*sex 1/exp; 
```

RUN; 

The “LRCI” option in SAS generates the likelihood ratio of 95% confidence intervals for parameter estimates. The “Analysis of Maximum Likelihood Parameter Estimates” output presents the regression coefficients (RDs) and their 95% CIs. The “dep” coefficient represents the attributable risk for exposure to depression only (7.89%), while the “sex” coefficient represents the attributable risk for being male (11.98%). The “depsex” coefficient is 0.1231. 

Given that the 95% confidence interval around the coefficient is between 0.06 and 0.19 $( p \mathrm { - v a l u e } = 0 . 0 0 0 2 )$ , the null hypothesis of $\beta _ { w } = 0$ is rejected (SAS Output 2.26). This implies strong evidence of effect modification by sex. The interaction contrast (IC), which quantifies the departure from the additivity of effects, is 12.31% (95% CI: 5.84%–18.78%). Therefore, the risk of death for individuals exposed to both x and z exceeds the sum of the individual risks by 12.3%. 


SAS Output 2.26 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>0.1471</td><td>0.0058</td><td>0.1360</td><td>0.1587</td><td>646.05</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.0789</td><td>0.0155</td><td>0.0492</td><td>0.1100</td><td>25.88</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>0.1198</td><td>0.0105</td><td>0.0993</td><td>0.1405</td><td>130.27</td><td>&lt;.0001</td></tr><tr><td>dep*sex</td><td>1</td><td>0.1231</td><td>0.0330</td><td>0.0585</td><td>0.1877</td><td>13.89</td><td>0.0002</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

The estimated risk difference (RD) among males is 20.2% (95% CI: 14.5%–25.9%), indicating that the excess risk associated with exposure to depression is 20.2%. Conversely, the risk difference among females is 7.9% (95% CI: 4.9%–10.9%) (SAS Output 2.27). 


SAS Output 2.27 Risk differences among males and females


<table><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>RD in Female</td><td>0.0789</td><td>0.0485</td><td>0.1093</td></tr><tr><td>Exp(RD in Female)</td><td></td><td></td><td></td></tr><tr><td>RD in Male</td><td>0.2020</td><td>0.1448</td><td>0.2591</td></tr><tr><td>Exp(RD in Male)</td><td></td><td></td><td></td></tr></table>

The assessment of statistical interactions is scale-dependent. In Example 2.18, there is no significant statistical interaction effect of sex in the multiplicative scale, but in Example 2.20, there is a strong one in the additive scale. If both variables (i.e., exposure and modifier) have an effect on the outcome, the absence of statistical interaction on the risk-difference scale (additive scale) implies the presence of statistical interaction on the log-risk scale or the multiplicative scale. Likewise, the absence of statistical interaction on the multiplicative scale implies the presence of additive interaction (Greenland, Lash, and Rothman 2008). Because the measure of the additive interaction has important public health implications, it needs to be assessed rather than only relying on the multiplicative interaction measures. In this example, if an intervention program is implemented to reduce depression, all-cause mortality would be significantly reduced among males, as the risk difference among males is much larger than that in females. 

## 2.11.4 Estimate of Multiple-Adjusted Risk Differences

We use the linear binomial model to estimate adjusted risk differences, controlling for potential confounding variables and assessing interaction effects. 

## Example 2.23

In this example, we estimate the risk difference for depression on all-cause death, while adjusting for confounding variables such as race, age, education year (eduy), marital status (marital), residence areas (area), and family income (income). However, both the linear binomial model and robust Poisson regression model failed to converge. We use a robust ordinary linear regression model with a normal distribution (“dist=normal”) and the identity link function (“link=identity”) to estimate risk differences. To obtain valid standard errors, we use the robust variance estimator (Naimi and Whitcomb 2020). 

```txt
PROC genmod data=nhefs83 desc;
class dep sex race marital area income seqn /ref=first;
model death=dep sex dep*sex race age eduy marital area income /link=identity dist=normal;
lsmeans dep*sex /cl diff;
estimate "IC" dep*sex 1 -1 -1 1;
repeated subject=seqn /type=ind; 
```

RUN; 

The adjusted IC is 10.5% (95%CI: 5.2–15.8%) (SAS Output 2.28). 


SAS Output 2.28 Contrast estimate results


<table><tr><td colspan="4">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">Mean Estimate</td><td colspan="2">Mean</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>IC</td><td>0.1050</td><td>0.0520</td><td>0.1580</td></tr></table>

The adjusted mortalities and their 95% CIs at the levels of depression and sex are presented in the SAS output of “dep*sex Least Squared Means” (SAS Output 2.29). 


SAS Output 2.29 Least squares means of product term


<table><tr><td colspan="9">dep*sex Least Squares Means</td></tr><tr><td>dep</td><td>sex</td><td>Estimate</td><td>Standard Error</td><td>z Value</td><td>Pr &gt; |z|</td><td>Alpha</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>1</td><td>0.4268</td><td>0.02400</td><td>17.79</td><td>&lt;.0001</td><td>0.05</td><td>0.3798</td><td>0.4739</td></tr><tr><td>1</td><td>0</td><td>0.2259</td><td>0.01432</td><td>15.77</td><td>&lt;.0001</td><td>0.05</td><td>0.1978</td><td>0.2539</td></tr><tr><td>0</td><td>1</td><td>0.2934</td><td>0.01074</td><td>27.32</td><td>&lt;.0001</td><td>0.05</td><td>0.2724</td><td>0.3145</td></tr><tr><td>0</td><td>0</td><td>0.1975</td><td>0.009692</td><td>20.37</td><td>&lt;.0001</td><td>0.05</td><td>0.1785</td><td>0.2165</td></tr></table>

According to the estimated risks in SAS output 2.29, the risk difference among males is 0.1334 (0.4268–0.2934) and 0.0284 among females (0.2259–0.1975). The same results are also provided by the SAS syntax (SAS Output 2.30). Thus, the adjusted risk difference for depression among males is 13.3% (95%CI: 8.69–18.0%) and 2.8% and 95%CI: 0.20–5.48% among females. 


SAS Output 2.30 Least squares means of product term


<table><tr><td colspan="8">Least squares means of product term</td></tr><tr><td>dep</td><td>sex</td><td>_dep</td><td>_sex</td><td>Estimate</td><td>Standard Error</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>1</td><td>1</td><td>0</td><td>0.2010</td><td>0.02574</td><td>0.1505</td><td>0.2514</td></tr><tr><td>1</td><td>1</td><td>0</td><td>1</td><td>0.1334</td><td>0.02371</td><td>0.08691</td><td>0.1799</td></tr><tr><td>1</td><td>1</td><td>0</td><td>0</td><td>0.2293</td><td>0.02322</td><td>0.1838</td><td>0.2749</td></tr><tr><td>1</td><td>0</td><td>0</td><td>1</td><td>-0.06758</td><td>0.01453</td><td>-0.09606</td><td>-0.03911</td></tr><tr><td>1</td><td>0</td><td>0</td><td>0</td><td>0.02838</td><td>0.01346</td><td>0.002010</td><td>0.05476</td></tr><tr><td>0</td><td>1</td><td>0</td><td>0</td><td>0.09597</td><td>0.008753</td><td>0.07881</td><td>0.1131</td></tr></table>

## 2.12 Summary



Centers for Disease Control and Prevention. 2022. Epidemiologic followup study (NHEFS). https:// wwwn.cdc.gov/nchs/nhanes/nhefs/default.aspx/. Accessed July 2022. 





Kleinbaum, D. G., L. L. Kupper, and H. Morgenstern. 1982. Epidemiologic research: Principles and quantitative methods. Belmont, CA: Lifetime Learning Publications. 





VanderWeele, T. J., and M. J. Knol. 2014. “A tutorial on interaction.” Epidemiol Methods 3 (1):33–72. doi: doi:10.1515/em-2013-0005. 



Cohort studies provide rich data for accurately estimating the effect of exposure on an outcome while adjusting for confounding variables. The selection of generalized regression models mainly depends on the types of cohort studies. For open cohort studies, it’s recommended to use the robust Poisson regression model to estimate rate ratios and the Cox proportional hazards model to estimate hazard ratios. In closed cohort studies, the log-binomial model and the robust Poisson regression model can estimate risk ratios, and the linear binomial model is used to estimate risk differences. 



Checkoway, H., N. Pearce, and D. Kriebel. 2004. Research methods in occupational epidemiology. 2nd ed, Monographs in Epidemiology and Biostatistics. New Yok, NY: Oxford Academic. 





Lash, T. L., and K. J. Rothman. 2021. “Case-control studies.” In Modern epidemiology, edited by T. L. Lash, T. J. VanderWeele, S. Haneuse and K. J. Rothman, 161–184. Philadelphia: Wolters Kluwer. 





Wacholder, S. 1986. “Binomial regression in GLIM: estimating risk ratios and risk differences.” Am J Epidemiol 123 (1):174–184. doi: 10.1093/oxfordjournals.aje.a114212. 



## Additional Readings



Chen, W., J. Shi, L. Qian, and S. P. Azen. 2014. “Comparison of robustness to outliers between robust Poisson models and log-binomial models when estimating relative risks for common binary outcomes: A simulation study.” BMC Med Res Methodol 14 (1):82. doi: 10.1186/1471-2288-14-82. 





Localio, A. R., D. J. Margolis, and J. A. Berlin. 2007. “Relative risks and confidence intervals were easily computed indirectly from multivariable logistic regression.” J Clin Epidemiol 60 (9):874–82. doi: 10.1016/j.jclinepi.2006.12.001. 





Williamson, T., M. Eliasziw, and G. H. Fick. 2013. “Log-binomial models: exploring failed convergence.” Emerg Themes Epidemiol 10 (1):14. doi: 10.1186/1742-7622-10-14. 



The following excellent publications provide additional information about modeling cohort data: 



Clayton, D., and M. Hills. 1993. Statistical models in epidemiology. Oxford: Oxford. 





Mann, C. J. 2003. “Observational research methods. Research design II: cohort, cross sectional, and case-control studies.” Emerg Med J 20 (1):54–60. doi: 10.1136/emj.20.1.54. 





Zou, G. 2004. “A modified Poisson regression approach to prospective studies with binary data.” Am J Epidemiol 159 (7):702–706. doi: 10.1093/aje/kwh090. 





Greenland, S. 1987. “Interpretation and choice of effect measures in epidemiologic analyses.” Am J Epidemiol 125 (5):761–768. doi: 10.1093/oxfordjournals.aje.a114593. 





Cox, D. R. 1983. “Some remarks on overdispersion.” Biometrika 70 (1):269–274. doi: 10.1093/ biomet/70.1.269. 





McNutt, L. A., C. Wu, X. Xue, and J. P. Hafner. 2003. “Estimating the relative risk in cohort studies and clinical trials of common outcomes.” Am J Epidemiol 157 (10):940–943. doi: 10.1093/aje/ kwg074. 





Checkoway, Harvey, Neil Pearce, and David Kriebel. 2004. Research methods in occupational epidemiology. 





Cummings, P. 2019. Analysis of incidence rates. Boca Raton, FL: CRC Press. 





Miller, Anthony B, David C Goff Jr, Karin Bammann, and Pascal Wild. 2014. “Cohort studies.” In Handbook of epidemiology, edited by Wolfgang Ahrens and Iris Pigeot, 262–277. New York: Springer. 





Cummings, P. 2019. Analysis of incidence rates. Boca Raton, FL: CRC Press. 





Deddens, J. A., and M. R. Petersen. 2008. “Approaches for estimating prevalence ratios.” Occup Environ Med 65 (7):501–506. doi: 10.1136/oem.2007.034777. 





Naimi, A. I., and B. W. Whitcomb. 2020. “Estimating risk ratios and risk differences using regression.” Am J Epidemiol 189 (6):508–510. doi: 10.1093/aje/kwaa044. 





Naimi, Ashley I, and Brian W Whitcomb. 2020. “Estimating risk ratios and risk differences using regression.” Am J Epidemiol 189 (6):508–510. 





Dupont, W. D. 2009. Statistical modeling for biomedical researchers: A simple introduction to the analysis of complex data. 2nd ed. Cambridge, UK: Cambridge University Press. 





Okely, J. A., A. Weiss, and C. R. Gale. 2017. “The interaction between stress and positive affect in predicting mortality.” J Psychosom Res 100:53–60. doi: 10.1016/j.jpsychores.2017.07.005. 





Eaton, W. W., C. Muntaner, C. Smith, A. Tien, and M. Ybarra. 2004. “Center for epidemiologic studies depression scale: Review and revision (CESD and CESD-R).” In The use of psychological testing for treatment planning and outcomes assessment, edited by Maruish ME, 363–377. Mahwah, NJ: Lawrence Erlbaum. 





Payne, E. H., M. Gebregziabher, J. W. Hardin, V. Ramakrishnan, and L. E. Egede. 2018. “An empirical approach to determine a threshold for assessing overdispersion in Poisson and negative binomial models for count data.” Commun Stat Simul Comput 47 (6):1722–1738. doi: 10.1080/03610918.2017.1323223. 



## References



Gardner, W., E. P. Mulvey, and E. C. Shaw. 1995. “Regression analyses of counts and rates: Poisson, overdispersed Poisson, and negative binomial models.” Psychol Bull 118 (3):392–404. doi: 10.1037/0033-2909.118.3.392. 





Pedroza, C., and V. T. Truong. 2016. “Performance of models for estimating absolute risk difference in multicenter trials with binary outcome.” BMC Med Res Methodol 16 (1):113. doi: 10.1186/ s12874-016-0217-0. 





Agresti, A. 2012. Categorical data analysis. 2nd ed. Wiley series in probability and statistics. New York: Wiley. 





Greenland, S. 1987. “Interpretation and choice of effect measures in epidemiologic analyses.” Am J Epidemiol 125 (5):761–768. doi: 10.1093/oxfordjournals.aje.a114593. 





Pencina, M. J., M. G. Larson, and R. B. D’Agostino. 2007. “Choice of time scale and its effect on significance of predictors in longitudinal studies.” Stat Med 26 (6):1343–1359. doi: 10.1002/sim.2699. 





Breslow, N. E., and N. E. Day. 1987. Statistical methods in cancer research. Volume II–The design and analysis of cohort studies. 1987/01/01 ed. Vol. II, Statistical methods in cancer research. Lyon: International Agency for Research on Cancer. 





Greenland, S. 1995. “Dose-response and trend analysis in epidemiology: Alternatives to categorical analysis.” Epidemiology 6 (4):356–365. 





Petersen, M. R., and J. A. Deddens. 2006. “Re: “Easy SAS calculations for risk or prevalence ratios and differences”.” Am J Epidemiol 163 (12):1158–1159; author reply 1159–1161. doi: 10.1093/aje/ kwj162. 





Brookhart, M. A., S. Schneeweiss, K. J. Rothman, R. J. Glynn, J. Avorn, and T. Stürmer. 2006. “Variable selection for propensity score models.” Am J Epidemiol 163 (12):1149–1156. doi: 10.1093/aje/ kwj149. 





Greenland, S. 2008. “Introduction to regression models.” In Modern epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 381–417. Philidelphia, PA: Lippincott Williams & Wilkins. 





Rothman, K. J., T. J. VanderWeele, and T. L. Lash. 2020. “Cohort studies.” In Modern epidemiology, edited by T. L. Lash, K. J. Rothman, T. J. VanderWeele and S. Haneuse, 143–160. Philadelphia, PA: Wolters Kluwer. 





Cameron, A. C., and P. K. Trivedi. 2013. Regression analysis of count data. 2nd ed., Econometric Society Monographs. Cambridge: Cambridge University Press. 





Greenland, S. 2017. “Response and follow-up bias in cohort studies.” Am J Epidemiol 185 (11): 1044–1047. doi: 10.1093/aje/kwx106. 





Rubin, D. B., and N. Thomas. 1996. “Matching using estimated propensity scores: Relating theory to practice.” Biometrics 52 (1):249–264. doi: 10.2307/2533160. 





Greenland, S., Timothy L. Lash, and Kenneth J. Rothman. 2008. “Concepts of interaction.” In Modern epidemiology, edited by Kenneth J. Rothman, Sander Greenland and Timothy L. Lash, 71–86. Philadelphia, PA: Lippincott Williams and Wilkins. 





SAS Institute Inc. 2016. SAS/STAT user’s guide: The STDRATE procedure. Cary, NC: SAS Institute Inc. 





Greenland, S., K. J. Rothman, and T. L. Lash. 2008. “Measures of effect and measures of association.” In Modern epidemiology, edited by Kenneth J. Rothman, Sander Greenland and Timothy L. Lash, 51–71. Philadelphia: Wolters Kluwer Health/Lippincott Williams & Wilkins. 





Spiegelman, S., and T. J. VanderWeele. 2017. “Evaluating public health interventions: 6. Modeling ratios or differences? Let the data tell us.” Am J Public Health 107 (7):1087–1091. doi: 10.2105/ ajph.2017.303810. 





Haneuse, S. 2021a. “Introduction to categorical statistics.” In Modern epidemiology, edited by Timothy L. Lash, T.J. VanderWeele, S. Haneuse and Kenneth J. Rothman, 395–414. Philadelphia: Wolters Kluwer. 





Stijnen, T., and H. C. Van Houwelingen. 1993. “Relative risk, risk difference and rate difference models for sparse stratified data: a pseudo likelihood approach.” Stat Med 12 (24):2285–2303. doi: 10.1002/sim.4780122406. 





Haneuse, S. 2021b. “Time-to-event analysis.” In Modern epidemiology, edited by Timothy L. Lash, T.J. VanderWeele, S. Haneuse and Kenneth J. Rothman, 531–562. Philadelphia: Wolters Kluwer. 





Symons, M. J., and D. T. Moore. 2002. “Hazard rate ratio and prospective epidemiological studies.” J Clin Epidemiol 55 (9):893–899. doi: 10.1016/s0895-4356(02)00443-2. 





Hernán, M. A., and J. M. Robins. 2020. Causal inference: What if. Boca Raton: Chapman & Hall/CRC. 





Szklo, M., and F. Javier Nieto. 2019. Epidemiology: Beyond the basics. Burlington, MA: Jones & Bartlett Learning. 





Hilbe, J. M. 2011. Negative binomial regression. 2nd ed. Cambridge: Cambridge University Press. 





Talbot, D., M. Mésidor, Y. Chiu, M. Simard, and C. Sirois. 2023. “An alternative perspective on the robust Poisson method for estimating risk or prevalence ratios.” Epidemiology 34 (1):1–7. doi: 10.1097/ede.0000000000001544. 





Hilbe, J. M. 2014. Modeling count data. Cambridge: Cambridge University Press. 





Twisk, J. W. R. 2019. Applied mixed model analysis: a practical guide. 2nd ed. Cambridge, UK: Cambridge University Press. 





Holmberg, M. J., and L. W. Andersen. 2020. “Estimating risk ratios and risk differences: Alternatives to odds ratios.” JAMA 324 (11):1098–1099. doi: 10.1001/jama.2020.12698. 





Hosmer, D. W., S. Lemeshow, and R. X. Sturdivant. 2013. Applied logistic regression. 3rd ed. New Jersey: Wiley. 





Kleinbaum, D. G., and M. Klein. 2010. Logistic regression: A self-learning text. 3rd ed. New York: Springer. 



# Modeling for Cohort Studies: Time-to-Event Outcome

This chapter covers survival data analysis, a distinct analytical technique for cohort data analysis. Unlike the modeling techniques presented in the preceding chapter, survival analysis uses time to event or survival time as the outcome variable. The strength of the association between exposure and outcome is quantified using the hazard ratio (HR) in survival analysis. The chapter begins with a review of the characteristics of survival data, then provides an in-depth discussion of methods and strategies for modeling the relationship between exposure and survival time. This includes how to control for confounding bias and assess effect modification. The chapter also examines the impact of censoring, a crucial feature of survival data, on the validity of data analysis. The chapter details modeling techniques, including non-parametric models (life-table and Kaplan–Meier methods), semi-parametric models (Cox proportional hazards model), and parametric models (Weibull model). Additionally, it covers modeling techniques that address violations of the proportionality assumption for the Cox proportional hazards (PH) model. 

## 3.1 Survival Analysis

Survival analysis is a set of statistical procedures used to analyze the time until an event occurs within a study population. The outcome of interest is the survival time or time to event, which measures the time from a specific origin point to the occurrence of an event or a specific endpoint, such as withdrawal from the study. The event of interest can be a disease, death, initiation of drug injection, or engagement in a risk behavior. As discussed in the previous chapter, censoring results in incomplete observations of survival time for study participants. In this case, linear regression should not be used, even though the survival time is a continuous outcome. Therefore, it is important to undertake survival analysis to address incomplete observations of time-to-event outcomes when analyzing data collected from cohort studies. 

The goals of survival analysis include (1) describing the survival experience of a group of individuals and estimating the survival probability at various time points, (2) comparing the survival time between two or more groups and testing group differences statistically, and (3) quantifying the association between an exposure and survival time using association models that control for confounding and assess effect modification. Some example research questions that can be addressed using survival analysis are: Is the survival time longer for a group of individuals who are depressed compared to another group who are not depressed? Is the remission time in the treatment group longer than that in the placebo group? Does survival time depend on study subjects’ age, sex, race, or marital status? Does the average employee longevity differ for smokers and non-smokers after adjusting for differences in age at employment and starting salary? 

There are three main analytic techniques commonly used in survival analysis: nonparametric, semi-parametric, and parametric modeling. Parametric modeling assumes that the distribution of survival time given a risk factor and a set of covariates is completely specified, and the values of unknown parameters (such as regression coefficients) are estimated from the data. Nonparametric analysis estimates the distribution of survival time directly from the data with no assumptions about the underlying distribution. Semi-parametric modeling assumes that the distribution of survival time is modeled as a function of an unspecified baseline distribution (nonparametric) and a parametric function of explanatory covariates and corresponding parameters (i.e., regression coefficients). Corresponding methods include the Kaplan–Meier product-limit method (non-parametric), Cox PH model (semi-parametric), and Weibull model (parametric). This chapter covers the application of these methods in survival analysis. 

## 3.1.1 Censoring

In cohort studies, censoring often affects the availability of complete survival time data for some participants. Censoring refers to situations where only partial information about an individual’s survival time is known, without knowing the exact duration. The reasons for censoring can include: 

1. Administrative censoring: Occurs when a study subject does not experience the event of interest by the end of the study. 

2. Loss to follow-up: Happens when a study subject withdraws or is lost during the study period. 

3. Competing risk: Arises when a subject dies from a cause other than the disease under study. 

4. Left-censoring: Involves subjects who were exposed to a risk factor before the study began, but the exact start time of exposure is unknown. 

5. Event-induced censoring: Occurs due to changes or events that make a subject no longer at risk for the disease being studied, such as a surgical procedure that removes an at-risk organ (e.g., hysterectomy in the context of uterine cancer studies). 

There are three types of censoring: left-censoring, right-censoring, and interval censoring. Right-censoring occurs when a subject is lost to follow-up or the event being studied does not occur within the study duration. As shown in Figure 3.1, subjects B, E, F, G, and H are right-censored. A subject is said to be left-censored if they had accumulated exposure for a period before entering the study, as seen in subjects D and F. For example, in a study on the association between exposure to a specific pollutant and asthma, left-censoring may occur if a subject has already been exposed to the pollutant before the study begins and the time at the start of exposure is unknown. Subject F is both right and left-censored, which can occur if a subject was already exposed to a pollutant when recruited but withdrew from the study or was still asthma-free at the end of the study. E and H’s censoring is called administrative censoring because these participants did not experience the event of interest before the researchers ended the cohort study according to the study protocol. 

Interval censoring is a specific type of censoring in cohort studies where the exact time until an event of interest is not precisely known, but is instead known to occur within a certain time interval. For example, consider a study tracking the initiation of heroin use over a 5-year period, with observations made every 3 months. If the first-time use of heroin is recorded only at these 3-month intervals, the precise time of initiation is not known. Instead, it can only be determined that the initiation occurred sometime between the last and the current observation. This book mainly focuses on right-censoring since it commonly occurs in epidemiological studies. If left or interval censoring is present in a cohort study, it should be acknowledged and appropriately addressed in data analysis (Lee and Wang 2013). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/e60546afd798890ce25ee180d0396509d9ddc029af827cd3cca89c9bbc35fa05.jpg)



FIGURE 3.1 Illustration of censoring in a hypothetical cohort with a 12-month follow-up period.


In survival analysis, we use all available information for censored subjects up until the time of censoring. For example, if subject B was censored on June 6, 2021, any survival probability estimated before that date should include subject B in the denominator based on the available information up until that point. This approach ensures that censored subjects are still contributing to the analysis as much as possible given the available data. 

## 3.1.2 Survival Time and Function

Survival time refers to the length of time between a particular starting point (e.g., the beginning of a study) and a particular endpoint, which could be either the occurrence of the event of interest or censorship. In this textbook, we use the capital letter T to denote the random variable for survival time, where T can be any number equal to or greater than zero. The small letter t refers to any specific value of interest for the random variable capital T. For example, if an individual survives for 3 years after exposure to a risk factor, small t would be 3, and we would then ask whether capital T exceeds 3. The small letter c denotes a random variable indicating whether a subject has developed the event of interest (c = 1) or has been censored (c = 0). Survival analysis involves two functions: the survival function, S(t), and the hazard function, h(t). 

With T is a continuous random survival time, the survival function, S(t), represents the probability that an individual survives up to a specified time t or longer. S(t) is also referred to as the cumulative survival function, or simply as survival probability. Mathematically, S(t) is defined as the probability that the random variable T is greater than t. Therefore, S(t) can be expressed as: 

$$
S (t) = P (\text { surviving   longer   than   time } t) = P (T > t). \tag {3.1}
$$

Similarly, $S ( t , t { + } \Delta t )$ is the probability that an individual survives from time t to time $t { + } \Delta t ,$ where Δt represents a small interval of time. To calculate the probability that subjects survive for a specified time $t ,$ such as 6 or more years, we can use the survival function as follows: 

$$
S (t = 6) = P (T > 6)
$$

For example, $S ( t = 6 ) = 0 . 6$ means that the probability of survival beyond 6 years is 0.6. 

On the other hand, the cumulative risk or probability that subjects have experienced the event of interest by time t is known as the cumulative incidence function (CIF) and can be expressed as: 

$$
R (t) = P (T \leq t) = 1 - S (t) \tag {3.2}
$$

Here, R(t) represents the probability that the event of interest has occurred up to time t, which is equivalent to the probability that the subject has not survived beyond time t. Therefore, the cumulative risk or incidence of the event being studied increases monotonically over time, while the survival probability decreases during the follow-up period. 

The survival function is commonly used to analyze the time until an event of interest occurs, such as disease incidence, relapse, death, recovery after the onset of disease, or engagement in risky sexual behavior. It has several important characteristics: (1) S(t) can only decrease as time t increases; (2) at the start of the study, $S ( t = 0 ) = 1 _ { \cdot }$ indicating that everyone is at risk for the event of interest; and (3) as time approaches infinity, $S ( t = \infty ) = 0 ,$ indicating that eventually, everyone will die. In practice, the survival probability cannot reach zero due to the presence of censored individuals and the limited follow-up time of a cohort study. When analyzing actual data, the survival function is represented as a step function, rather than a smooth curve (Figure 3.2), where the steps represent the time intervals defined by the rank ordering of the observed times. The survival probability, S(t), within each interval, is the average survival probability. 

We can use our familiar epidemiologic language to interpret the survival probability in epidemiologic studies. For instance, let’s consider a cohort study involving 100 breast cancer patients who underwent surgery. If five patients died at the end of the first year following surgery, the estimated survival probability in the first year for those who survived for at least 1 year is 95%. This estimate represents the survival probability given that the 95 surviving patients remained at risk during the first year, without any censoring. 

Now, suppose that at the end of the second year, 10 more patients die. The estimated survival probability in the second year is $8 5 / 9 5 = 8 9 . 5 \%$ . The estimated overall survival up to and including 2 years $( \mathrm { i . e . } ,$ , year 1 + year 2) is the probability of having survived the first year and the second year. This is calculated as 95% * 89.5% = 85% (which is the same as 85/100). Therefore, the probability of surviving up to 2 years is 85%. 

In the absence of competing risks, the risk (cumulative incidence) is the complementary probability of the survival probability; that is, the risk of an event at a given time is 1 − (the overall survival probability at that time). For example, the risk of death at 2 years is $1 - 0 . 8 5 =$ 0.15 or 15%. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/27c2a253195a105b22362081626e8117939d5770cde85da6b712ad06a286dd32.jpg)



FIGURE 3.2 Illustration of survival curve.


## 3.1.3 Hazard Function

The hazard function h(t) of survival time T generates the rate at which study subjects die at time t, given that they have survived up to time $t ( \mathrm { i . e . , }$ conditional probability). It is defined as the limit (as Δt approaches zero) of the probability that an individual dies or fails in the short interval $( t , t { + } \Delta t )$ , divided by the length of the interval Δt. It is expressed as: 

$$
h (t) = \lim _ {\Delta t \rightarrow 0} \frac {\operatorname* {P r} (\text { subject   dies   or   fails   in   the   interval } (t , \Delta t) | \text { survival   up   to   time } t)}{\Delta t} \tag {3.3}
$$

This expression can be interpreted as the hazard function for a subject at time t is h(t) when he or she is alive at time t, and the probability of dying in the next short time interval $( t , t { + } \Delta t )$ is approximately equal to $h ( t ) { \times } \Delta t .$ As indicated in Equation 3.3, the hazard function h(t) is the instantaneous rate per unit time at which a patient is dying at time t, given that the patient has survived up to time t. Since obtaining the actual instantaneous rate is often unattainable, we calculate the average rate or average hazard within discrete time intervals. In empirical studies, time is invariably measured in discrete intervals (such as days, weeks, months, or years) rather than instantaneously. 

To clarify, the hazard function formula involves a small-time interval (Δt) in the denominator, making the hazard a rate rather than a probability. In epidemiology, a rate or incidence density is defined as the instantaneous occurrence of new cases at a particular time point (t), relative to the population at risk at that time. Incidence rates have dimensions of inverse time (1/time), such as 0.15/year, and can range from 0 to infinity. Because, according to Equation 3.3, h(t)Δt is approximately equal to the probability of the event occurring between time t and $t { + } \Delta t ,$ given that it has not occurred before time $t , h ( t ) \Delta t$ can be interpreted as the conditional probability that the event of interest occurs before $t { + } \Delta t ,$ given that it has not occurred before t. For this reason, $h ( t )$ is also referred to as the instantaneous risk of the event happening at time t (Gardiner and Luo 2008). 

For example, in the context of a cohort study focusing on lung cancer, where the primary event of interest is death, let’s consider a scenario where the follow-up time is measured in months since diagnosis. Suppose the hazard function, denoted as $h ( t ) .$ , is estimated to be 1% at $t = 1 2$ months. In this situation, as $h ( t ) ,$ , it can be interpreted in two ways: (1) as rate: it represents the average rate at which patients are dying per month at the 12-month mark. In this interpretation, $h ( t )$ reflects the intensity or speed of the occurrence of deaths at this specific time point in the study; (2) as a probability: it signifies the probability of a patient dying in the month following the 12-month mark. Here, $h ( t )$ is viewed as the likelihood of the event (death) occurring in a short time frame, given survival up to the 12-month threshold. 

Mathematically, there is a relationship between the two functions S(t) and $h ( t )$ (Hosmer, Lemeshow, and May 2008). If we know one of the two, we can derive the other using Equation 3.3. Because $h ( t ) \Delta t$ is the approximate probability of the event between t and $t + \Delta t ,$ the approximate probability of no event is $1 \bar { - } h ( t ) \Delta t$ . Thus, the relationship between the hazard function and survival function can be expressed as: $S ( t ) \approx S ( t - \Delta t ) [ \bar { 1 } - h ( t ) \Delta t ]$ . That is, the survival function at t is approximately the survival function at t minus a small time $\Delta t ,$ multiplied by the approximate probability of no event in the short period. 

When the hazard function is measured as the cumulative hazard function, H(t), it is defined as the area under the hazard $h ( t )$ curve between 0 and t. The cumulative hazard function $H ( t )$ can be understood as the accumulated risk of experiencing the event of interest, obtained by reaching a particular point in time t. Although the instantaneous hazard rate $h ( t )$ can increase or decrease over time as illustrated in Figure 2.1 in Chapter 2, the cumulative hazard risk can only increase or stay constant. Over a small time period $\Delta t , h ( t ) \Delta t \approx H ( t + \Delta t ) - H ( t )$ . Then, the relation between the hazard function and survival function can be expressed as $S ( t ) \approx S ( t - \Delta t ) \{ 1 - [ H ( t + \Delta t ) - H ( t ) ] \}$ (Sasieni and Brentnall 2014). The relation of the two functions can be compacted as $S ( t ) = \exp ( - H ( t ) )$ , or equivalently, $H ( t ) = - \mathrm { l n } ( S ( t ) )$ . 

As the cumulative risk or probability that subjects have experienced the event of interest by time t can be estimated by Equation $3 . 2 \colon R ( t ) = 1 - S ( t )$ , we will discuss different methods for estimating the risk in a cohort study population at risk in the next three sections. These methods include the simple method for risk estimation (Section 3.1.4), as well as two survival analytic methods: the life-table method (Section 3.1.5) and the Kaplan–Meier method (Section 3.1.6). 

## 3.1.4 Simple Method for Risk Estimation

Recall that the denominator of the simple method for the risk estimate is the number of individuals at risk for the disease at the beginning of follow-up. As mentioned before, estimating risk in this way requires that the study subjects in comparison cohorts remain at risk during the entire follow-up period. However, because the disease status of subjects lost to follow-up is unknown, censoring of subjects prevents direct measurements of survival time and risk. Instead, we must use other measures that accommodate censored data, including the measures of survival probability and hazard. 

Let’s use a hypothetical cohort study to illustrate why methods that accommodate censoring should be used when estimating risks (Table 3.1). As a typical cohort study, the cohort study began on January 01, 2016, with 10 subjects enrolled and observed over the next 5 years. The study ended on December 31, 2020, on which date the researchers decided to end the study. During the 5-year follow-up period, subjects 2, 6, and 10 developed the disease of interest (say, stomach cancer); subject 3 died of another disease (competing risk), subject 5 withdrew from the study due to moving out of the research catchment area, and subjects 1, 7, and 8 did not develop the disease during the follow-up period. Subjects 4 and 9 had stomach cancer when they were enrolled, so they were removed from the study as they were no longer at risk for stomach cancer. For analyzing cohort data, the calendar time needs to be converted to follow-up time (Figure 3.3). 


TABLE 3.1



A Hypothetical Cohort of 10 Subjects with a 5-Year Follow-Up Period


<table><tr><td>Subjects</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>Outcome</td><td>Follow-Up Years</td></tr><tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td>Censored</td><td>5</td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td>Case</td><td>3.5</td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td>Censored</td><td>0.5</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td>Not at risk</td><td>-</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>Censored</td><td>2.5</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>Case</td><td>0.5</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td>Censored</td><td>5</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td>Censored</td><td>5</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td>Not at risk</td><td>-</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td>Case</td><td>2.5</td></tr></table>

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/2543b37961d4cf3ea5de355faf072055abdc33cc09fa28217ddad2ec7554710a.jpg)



FIGURE 3.3 Illustration of the 5-year follow-up experience of a hypothetical cohort of 10 subjects (i = 1…10).


A: diagnosed with stomach cancer; C/D: death due to competing risk; L: loss to follow up; A/D: death due to stomach cancer. 

To avoid the interval censoring issue, all events in this hypothetical cohort are assumed to occur at the midpoint of the 1-year intervals. We will now use this hypothetical cohort to illustrate the simple method for risk estimation, the life-table method, and the Kaplan– Meier method for estimating survival probabilities and risks. 

The simplest method for estimating the average risk (R) of disease for members of a cohort who are disease-free (at risk) at the start of follow-up is to calculate the risk (cumulative incidence) of disease as a simple proportion. This method estimates the average risk for all members of a particular group. The formula for this method is: 

$$
R _ {(t, \Delta t)} = \frac {I}{N _ {0}} \tag {3.4}
$$

where R(t, Δt) is the average risk for members of the cohort, Δt is the duration of follow-up $( \Delta t = t _ { 1 } - t _ { 0 } )$ , I is the number of incident cases of disease observed during the follow-up period (Δt), and $N _ { 0 }$ is the number of persons at risk at the start of the follow-up period $( t _ { 0 } )$ . In the hypothetical cohort study, $N _ { 0 }$ includes subjects 1, 2, 3, 5, 6, 7, 8, and 10, and I include subjects 2, 6, and 10. Thus, the 5-year risk (i.e., cumulative incidence) of stomach cancer is calculated as 

$$
R _ {(0, 5)} = 3 / 8 = 0. 3 7 5
$$

Due to the censoring of subjects 3 and 5, we were unable to follow them for the entire duration of the study. Consequently, it remains unknown whether they would have developed stomach cancer had they remained in the study until the end of the follow-up period. In the calculation of the risk, they were included in the denominator but were completely excluded from the numerator as non-cases. If one or both of them were not censored and had developed the disease, this risk would be underestimated. If, instead, the two censored individuals were removed from the denominator, the 5-year risk would be 0.5 (3/6). Therefore, the actual risk lies somewhere between 0.375 and 0.5. 

The simple method for estimating risk has limitations due to censoring in cohort studies. The proportion of study subjects known to have developed the disease by time t underestimates the true cumulative risk by this time. This method is only appropriate when there are few withdrawals (censored subjects) from observation during the follow-up period. In other words, all non-case subjects should be followed for the entire follow-up duration (Δt). Additionally, the use of a long follow-up period (in this case, 5 years) to estimate a single average risk has several limitations. First, it is an inaccurate way to average the risk of a cohort over a long period since the calculation only takes the total number of incident cases and the total number of at-risk subjects during the defined follow-up period, ignoring information about when the disease occurred and when censoring took place. Second, the risk varies in the 1-year follow-up intervals as documented in the hypothetical cohort. This limitation also applies to the estimate of rate since it calculates an overall rate for the 5-year observation period and ignores varying rates over time. 

One way to overcome these limitations is to perform a survival analysis that simultaneously estimates survival probabilities and risks for different intervals of the follow-up period. This allows for a more accurate estimation of risk over time, taking into account both censoring and varying follow-up durations. In survival analysis, the analytic unit is the time of events, and the aim is to estimate the probability of surviving without the event of interest (e.g., disease) over time. Instead of a single calculation of risk, there will be a sequence of risks calculated for each of the shorter intervals. Survival analysis includes several methods, such as the life-table method, the Kaplan–Meier method, and the Cox PH method, each of which can account for censoring and provide a more detailed analysis of risk and survival probabilities over time. 

## 3.1.5 Life-Table Method of Risk Estimation

The life-table method utilizes a stratified person-time approach to estimate survival probability and risk for any interval or overall, while also addressing censoring (Cutler and Ederer 1958). The first step is to divide the entire follow-up time into consecutive time intervals that do not necessarily need to be of equal length. Subsequently, we calculate three variables for each interval of time: (1) the number of subjects at risk at the beginning of the time interval, (2) the number of new cases occurred in the interval, and (3) the number of censored subjects within that interval. Finally, we estimate risk and survival probability for each time interval (such as a 1-year interval) and cumulative survival probability and risk for the entire followup period (such as the 5-year risk), using the Equation 3.5. Note that the life-table method does not rely on exact times of disease occurrence and withdrawal (censoring), but rather on the numbers of new cases and withdrawals within each interval. 

$$
R _ {(t, \Delta t)} = 1 - \prod_ {j = 1} ^ {k} 1 - R _ {j} \tag {3.5}
$$

where $R _ { j } = I _ { j } / ( N _ { j } - C _ { j } / 2 )$ , which estimates the risk (R) for the k-th interval $( t , \Delta t ) .$ , I = number of new cases occurring in the j-th interval 

Nj = number of subjects at risk at the start of the j-th interval 

Cj = number of withdrawals occurring in the j-th interval 

k = number of subintervals 

The denominator of the $R _ { j }$ estimator, $( N _ { j } - C _ { j } / 2 ) .$ , represents the “effective number” of subjects at risk in the j-th interval, or the number of subjects who, if followed for the entire duration of the interval, would result in $I _ { j }$ cases. The life-table method extends the simple cumulative method by accounting for unequal follow-up time due to censoring. The method of subtracting one-half of the total number of censored observations from the denominator assumes that censoring occurred uniformly throughout the interval. According to this assumption, the mean withdrawal time occurs at the midpoint of the interval, and individuals who are censored have, on average, only half of the interval at risk of experiencing the event. This assumption holds when censoring is uniformly distributed within the interval and the risk of an event is constant throughout the short interval. Thus, short intervals are recommended to meet this assumption, as the exact time of censoring is not crucial, and the estimated risk is unlikely to vary substantially within such a short interval. The use of the estimator $( N _ { j } - C _ { j } / 2 )$ is also called the actuarial method for survival analysis. In the hypothetical cohort example, we divided the 5-year follow-up period into five intervals $( k = 5 ) .$ , one for each observational year (Table 3.2). $E N _ { j }$ refers to the “effective number” in the jth interval. 

By using Equation 3.5, we can calculate the risk $( R _ { j } )$ for each interval as well as the overall risk for the entire observation period: 

$$
\begin{array}{l} R _ {(t, \Delta t)} = 1 - \prod_ {j = 1} ^ {k} 1 - R _ {j} \\ = 1 - (1 - 1 / 7. 5) (1 - 0 / 6) (1 - 1 / 5. 5) (1 - 1 / 4) (1 - 0 / 3) (1 - 0 / 1) = 0. 4 6 8 \\ \end{array}
$$


TABLE 3.2



Life-Table Method to Estimate Risk for a Hypothetical Cohort


<table><tr><td>j-th interval</td><td>Year (<eq>t_{j-1}</eq>, <eq>t_j</eq>)</td><td><eq>N_j</eq></td><td><eq>I_j</eq></td><td><eq>C_j</eq></td><td><eq>EN_j</eq></td><td><eq>R_j</eq></td><td><eq>R_{(t,\Delta t)}</eq></td><td><eq>S_{(t,\Delta t)}</eq></td></tr><tr><td>1</td><td>0≤ t&lt;1</td><td>8</td><td>1</td><td>1</td><td>7.5</td><td>0.133</td><td>0.133</td><td>0.867</td></tr><tr><td>2</td><td>1≤ t&lt;2</td><td>6</td><td>0</td><td>0</td><td>6</td><td>0.000</td><td>0.133</td><td>0.867</td></tr><tr><td>3</td><td>2≤ t&lt;3</td><td>6</td><td>1</td><td>1</td><td>5.5</td><td>0.182</td><td>0.291</td><td>0.709</td></tr><tr><td>4</td><td>3≤ t&lt;4</td><td>4</td><td>1</td><td>0</td><td>4</td><td>0.250</td><td>0.468</td><td>0.532</td></tr><tr><td>5</td><td>t≥ 4</td><td>3</td><td>0</td><td>3</td><td>1.5</td><td>0.000</td><td>0.468</td><td>0.532</td></tr></table>

where, for example, $R ( 0 , 1 ) = 1 / ( 8 – 1 / 2 ) = 1 / 7 . 5 = 0 . 1 3 3$ . Because one-half of the total number of censored observations is subtracted from the denominator in the life-table method, $R _ { ( 0 , 5 ) }$ estimated in the life-table method is larger than the $R _ { ( 0 , 5 ) }$ estimated in the simple method (0.468 vs 0.375, respectively). 

The cumulative survival probability is estimated by multiplying the survival probabilities for each of the consecutive interval years to obtain the cumulative probabilities of surviving for up to 5 years. In the example given, the probability of surviving for the entire 5-year period without experiencing the event of interest is calculated as (1−0.133) $( 1 - 0 ) ( 1 - \dot { 0 } . 1 8 2 ) \dot { ( 1 - 0 . 2 5 ) } ( 1 - 0 ) = 0 . 5 \dot { 3 } 2$ . The cumulative survival probability can be visualized by plotting the survival curve (Figure 3.4). 

As displayed in the survival curve, the survival probability starts at 1 (representing the fact that all patients are at risk at the start of the follow-up) and declines as the followup time progresses. The life-table method is useful for examining changes in risk and survival probability over time, and for quantifying the levels of risk and survival in each of the intervals of follow-up. Additionally, the survival curve can be used to compare the survival experience of different groups, such as exposed and unexposed groups, to determine if there are any differences in survival outcomes. A steep decline in the survival curve indicates a higher risk of the disease, while a flatter curve suggests a lower one. The survival curve is a useful tool for visualizing and comparing survival outcomes over time. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/e32097467ce4f33a87226cf737ac9d2b7262d49492e737f238eb15ba43a45f00.jpg)



FIGURE 3.4



Life-table survival curve estimated from a hypothetical cohort data.


The selection of time intervals is arbitrary, as it is determined by the investigators rather than the time of occurrence of a new case (event). Therefore, this method does not require information on the exact time of disease occurrence and censoring, but only needs the number of incident cases and withdrawals within each time interval. 

## Example 3.1

In this example, we use the SAS PROC LIFETEST procedure to estimate risks and survival probabilities. The ODS GRAPHICS ON specification enables ODS Graphics. PROC LIFETEST computes various life-table survival estimates, the median residual time, and their standard errors, with the life-table method specified by METHOD=LT. The INTERVAL= option specifies the time intervals, and the PLOTS=option requests graphical displays of the life-table survivor function estimate (s), negative log of the estimate (ls), log of negative log of the estimate (lls), estimated density function (p), and estimated hazard function (h). The data used in these statements is from Table 3.1 and Figure 3.3. 

```txt
DATA lifetable ;
input years censored @@ ;
cards;
5.0 1 3.5 0 0.5 1 2.5 1 0.5 0 5.0 1 5.0 1 2.5 0
;
PROC lifetest data=lifetable method=lt
intervals=(0 to 5 by 1)
plots=(s,ls,lls,h,p);
time years*censored(1);
RUN; 
```


SAS Output 3.1 Life table survival estimates


<table><tr><td colspan="6">Life Table Survival Estimates</td></tr><tr><td colspan="2">Interval</td><td rowspan="2">Number Failed</td><td rowspan="2">Number Censored</td><td rowspan="2">Survival</td><td rowspan="2">Failure</td></tr><tr><td>[Lower,</td><td>Upper)</td></tr><tr><td>0</td><td>1</td><td>1</td><td>1</td><td>1.0000</td><td>0</td></tr><tr><td>1</td><td>2</td><td>0</td><td>0</td><td>0.8667</td><td>0.1333</td></tr><tr><td>2</td><td>3</td><td>1</td><td>1</td><td>0.8667</td><td>0.1333</td></tr><tr><td>3</td><td>4</td><td>1</td><td>0</td><td>0.7091</td><td>0.2909</td></tr><tr><td>4</td><td>5</td><td>0</td><td>0</td><td>0.5318</td><td>0.4682</td></tr><tr><td>5</td><td>.</td><td>0</td><td>3</td><td>0.5318</td><td>0.4682</td></tr></table>

The estimated survival probabilities and risks (failure) presented in SAS Output 3.1 are the same as those in Table 3.2. 

## 3.1.6 Kaplan–Meier Method for Risk Estimation

The Kaplan–Meier method can be utilized to estimate risks for the follow-up time (Δti) corresponding to each case occurrence, without the need to aggregate data into fixed intervals as in the life-table method, when the exact follow-up times $( \Delta t _ { i } )$ for all cases are known and differ for most or all cases (Kaplan and Meier 1958). In contrast to the life-table method which divides the entire follow-up time into arbitrary intervals, the Kaplan–Meier method defines time intervals by the observed event occurrence times, leading to varying interval lengths. For instance, the end of the first interval corresponds to the time of the first case occurrence at 0.5 years in the hypothetical cohort, while the second interval ends at 2.5 years, the time of the second case, and so on (Figure 3.3). 

With the Kaplan–Meier method, the risk is estimated for the follow-up time (Δt ) corresponding to each occurrence of an event or disease case, where i refers to each “uncensored” subject at risk. We denote the number of events at time $t _ { i }$ by $I _ { i }$ and the total number of individuals at risk at time $t _ { i }$ (including the $I _ { i }$ individuals who experience the event) by $N _ { i } . N _ { i }$ is also referred to as the risk set. The risk set at time $t _ { i }$ is the set of individuals at risk just before time $t _ { i \cdot }$ To begin, the follow-up times of all subjects are ordered from smallest to largest. If the follow-up times of a case and non-case (withdrawal or censored) are identical, the case is placed first to ensure that the event is recorded at that exact time. The $\Delta t _ { i }$ risk is then estimated as 

$$
R _ {t _ {0}, t _ {i}} = 1 - S _ {t _ {0}, t _ {i}} = 1 - \prod_ {i ^ {\prime} = 1} ^ {k} \left[ \left(N _ {i} - I _ {i}\right) / N _ {i} \right] \tag {3.6}
$$

where R = 1− survival, 

Ni = number of subjects at risk (risk set) just before the occurrence of the i-th case, i.e., after all subjects are ordered by $\Delta t _ { i } ,$ 

$I _ { i } = \mathrm { n u m b e r }$ of cases (one or more) occurring at time $t _ { i } ,$ 

'  i = indication of multiplication across cases (i) with follow-up time, $\begin{array} { r } { \left( \Delta t _ { i } \right) = t _ { i - } - t _ { 0 } , } \end{array}$ 

k = unique subintervals defined by observed event times, $t _ { i \cdot }$ 

Of note, the Kaplan–Meier formula allows for the estimation of incidence proportion (risk) in a closed population of interest by translating incidence rate estimates from an open study population. This translation is based on the assumption that the incidence rates in the two populations (open and closed) are the same at each time point. However, this assumption is only valid when censoring is independent of risk (Greenland and Rothman 2008). 

We now use the Kaplan–Meier method to estimate $R _ { s }$ and $S _ { s }$ for the hypothetical cohort. In Table 3.3, the data from Table 3.1 and Figure 3.3 are rearranged based on the time of outcome occurrence. To begin, we order the follow-up times (Δti) of all subjects from shortest to longest. 


TABLE 3.3 Kaplan–Meier Method to Estimate Risk for a Hypothetical Cohort


<table><tr><td>Individual</td><td>(Δt)</td><td>Status</td><td><eq>N_i</eq></td><td><eq>I_i</eq></td><td><eq>R_i</eq></td><td><eq>S_i</eq></td><td><eq>S_{(t0,ti)}</eq></td><td><eq>R_{(t0,ti)}</eq></td></tr><tr><td>6</td><td>0.5</td><td>case</td><td>8</td><td>1</td><td>0.125</td><td>0.875</td><td>0.875</td><td>0.125</td></tr><tr><td>3</td><td>0.5</td><td>noncase</td><td>8</td><td>0</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>10</td><td>2.5</td><td>case</td><td>6</td><td>1</td><td>0.167</td><td>0.833</td><td>0.729</td><td>0.271</td></tr><tr><td>5</td><td>2.5</td><td>noncase</td><td>6</td><td>0</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>2</td><td>3.5</td><td>case</td><td>4</td><td>1</td><td>0.250</td><td>0.750</td><td>0.547</td><td>0.453</td></tr><tr><td>1</td><td>5</td><td>noncase</td><td>3</td><td>0</td><td>-</td><td>-</td><td></td><td></td></tr><tr><td>7</td><td>5</td><td>noncase</td><td>3</td><td>0</td><td>-</td><td>-</td><td></td><td></td></tr><tr><td>8</td><td>5</td><td>noncase</td><td>3</td><td>0</td><td>-</td><td>-</td><td></td><td></td></tr></table>

We calculate $S _ { ( 0 , 5 ) }$ as $0 . 8 7 5 \times 0 . 8 3 3 \times 0 . 7 5 = 0 . 5 4 7$ and $R _ { ( 0 , 5 ) } \mathrm { a s } 1 - S _ { ( 0 , 5 ) } = 1 - 0 . 5 4 7 = 0 . 4 5 3 .$ Censored observations (subjects $1 , 3 , 5 , 7 ,$ and 8) are excluded from these calculations, as they do not represent an identified event. However, they are included in the denominator for the calculation of conditional probabilities corresponding to events occurring up to the time when censoring occurs. Conditional probability refers to the probability of being a survivor at the end of the interval given that the subject survived at the beginning of the interval. For example, subject 5 participated in the cohort for only 2.5 years before being censored, providing information for risk calculation in the first 2.5 years but not in subsequent years. The Kaplan–Meier method avoids bias induced by censored subjects because they are included in the denominator of Equation 3.6 before they are censored, but are removed from the denominator after censoring. 

The Kaplan–Meier estimator is a powerful tool for estimating survival probability at any time point, which uses all available information from study subjects, whether censored or not. It is based on a sequence of conditional survival probabilities. Each conditional survival probability is estimated from the observed number of subjects at risk for disease (Ni) and the observed number of cases (Ii), which is calculated as $( N _ { i } ^ { \setminus } - I _ { i } ) / N _ { i } .$ Each subject contributes information to the calculations as long as they remain in the study and have not obtained the disease of interest. Those who obtain the disease are included in the numerator as cases and contribute to the number of subjects at risk until their time of disease occurrence. Censored subjects contribute to the number at risk until the time they are censored. Under the assumption of random censoring $( \mathrm { i . e . } ,$ , censoring is not associated with the risk of the disease), the conditional survival probability estimated at each interval is not affected by censored observations since all observations, including censored observations, within the interval have the same survival time. Therefore, the product of these interval probabilities is also not affected by the incomplete information collected from the censored subjects. 

Survival probabilities estimated by the Kaplan–Meier method can be displayed on a graph against follow-up time (Figure 3.5), similar to the life-table survival curve (Figure 3.4). However, the Kaplan–Meier curve is represented as a stepped line rather than a smooth curve because the survival probability drops only when a new case occurs and remains constant (flat) until the occurrence of the next case. For instance, the curve for the 10 subjects begins at the survival probability of 1 and continues horizontally until the first case (subject 6) occurs in the middle of the first-year interval, at which time it drops to 0.875 (subject 6 becomes a case). The survival probability remains constant at 0.875 until the next case (subject 10) occurs midway between 2 and 3 years of follow-up, at which point the survival probability drops to 0.833. After the last case (subject 2) occurs midway between 3 and 4 years of follow-up, the probability drops to 0.75, and the curve remains flat until the longest censored survival time (subjects 1, 7, and 8). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/f765ab1ddef7edb9460640633a7098e2fa8e39e8e9f2771ee9409f81f07e0427.jpg)



FIGURE 3.5 Kaplan–Meier survival curve estimated from a hypothetical cohort data.


The interpretation of survival probabilities and hazard rates for a cohort with a long follow-up period may be challenging as they may fluctuate throughout the follow-up period. Therefore, relying solely on the average or overall survival probability and hazard rate may not provide a complete picture. For instance, the 5-year survival probability of 0.547 in this example masks the variations in survival probabilities in each time interval, as shown in the accompanying Figure 3.5. To fully capture the changes in survival probability or risk over time, it is recommended to report both average and interval survival probabilities, along with a survival curve. This approach allows us to visualize how the survival probability or risk changes over time, enabling a more comprehensive interpretation of the data. 

## Example 3.2

The following SAS syntax can be used to compute the Kaplan–Meier survival estimates for the data in Table 3.3. The Kaplan–Meier method is specified by METHOD=KM. 

```txt
DATA KM ;
input years censored @@;
cards;
5.0 1 3.5 0 0.5 1 2.5 1 0.5 0 5.0 1 5.0 1 2.5 0
;
PROC lifetest data=KM method=km
plots=(s,ls,lls,h,p);
time years*censored(1);
RUN; 
```


SAS Output 3.2 Product-limit survival estimate


<table><tr><td colspan="7">Product-Limit Survival Estimates</td></tr><tr><td>years</td><td></td><td>Survival</td><td>Failure</td><td>Survival Standard Error</td><td>Number Failed</td><td>Number Left</td></tr><tr><td>0.00000</td><td></td><td>1.0000</td><td>0</td><td>0</td><td>0</td><td>8</td></tr><tr><td>0.50000</td><td></td><td>0.8750</td><td>0.1250</td><td>0.1169</td><td>1</td><td>7</td></tr><tr><td>0.50000</td><td>*</td><td>.</td><td>.</td><td>.</td><td>1</td><td>6</td></tr><tr><td>2.50000</td><td></td><td>0.7292</td><td>0.2708</td><td>0.1650</td><td>2</td><td>5</td></tr><tr><td>2.50000</td><td>*</td><td>.</td><td>.</td><td>.</td><td>2</td><td>4</td></tr><tr><td>3.50000</td><td></td><td>0.5469</td><td>0.4531</td><td>0.2006</td><td>3</td><td>3</td></tr><tr><td>5.00000</td><td>*</td><td>.</td><td>.</td><td>.</td><td>3</td><td>2</td></tr><tr><td>5.00000</td><td>*</td><td>.</td><td>.</td><td>.</td><td>3</td><td>1</td></tr><tr><td>5.00000</td><td>*</td><td>.</td><td>.</td><td>.</td><td>3</td><td>0</td></tr><tr><td colspan="7">*The marked survival times are censored observations.</td></tr></table>

The estimated survival probabilities and risks (failure) presented in SAS Output 3.2 are the same as those in Table 3.3. 

## 3.2 Assumptions in the Estimation of Survival Probabilities and Risks

To ensure accurate estimation of survival probabilities and risks in survival analysis, it’s important to consider three key assumptions: the independence between censoring and survival probability, the approximate uniformity of events and losses within each interval, and the absence of secular trends. These assumptions must be carefully evaluated and satisfied to ensure the validity of survival analysis. 

## 3.2.1 Assumption of Independence between Censoring and Survival Probability

The first assumption in survival analysis is the independence between censoring and survival probability or risk of the disease being studied within stratum-specific exposure levels (Kalbfleisch and Prentice 2002, Kleinbaum and Klein 2012). It implies that within each stratum and exposure level, and throughout any time interval during the study, the average risk of the study disease among subjects who are not censored remains the same as it would be if no such censoring had occurred. This type of censoring is also called as uninformative censoring. 

The assumption of independence is relevant for both the life-table and Kaplan–Meier methods that involve stratification on follow-up time. When calculating risk (or cumulative incidence) using these methods, censored individuals are included in the denominator as long as they remain under observation and free of the disease of interest. However, after being censored, they are ignored in subsequent calculations. To make valid estimates, it is necessary to assume that the censored observations have the same probability of the event after being censored as those who still remain in the cohort. This assumption requires that subjects who are censored at time t are a representative sample of all study subjects who remained at risk at time t. Under this assumption, individuals who remain in a cohort study have the same future risk for the occurrence of the event as those who are censored at a given point in time t. However, independent censoring may be relatively rare in epidemiologic research, making this a strong assumption. 

Selection bias can arise when the assumption of independent censoring is violated, which can compromise the validity of frequency and association measures in cohort data. A causal diagram can help illustrate this bias. For instance, in a 7-year cohort study, the investigators examine the association between smoking and lung cancer, taking race into consideration. Figure 3.6 shows four directed acyclic graphs (DAGs) depicting the effect of race and smoking on loss to follow-up and lung cancer risk. DAG 1 demonstrates that the independent censoring assumption is met, as losses to follow-up are independent of both smoking and lung cancer, thereby avoiding selection bias. Conversely, selection bias arises in scenarios 2, 3, and 4 as the independent censoring assumption is violated. 

In DAG 2 (scenario 2), both losses to follow-up and lung cancer share the same cause (race), leading to an association between losses to follow-up and lung cancer through the common cause (race). For instance, if black participants are more likely to be lost to followup and develop lung cancer than non-black participants, and non-black participants are less likely to have lung cancer and more likely to remain in the cohort during the follow-up period, the survival probability would be overestimated (i.e., leading to an underestimated hazard). 

In DAG 3, losses to follow-up are directly or indirectly dependent on both exposure (smoking) and outcome (lung cancer), violating the independent censoring assumption. Keeping everything else equal, the selection bias due to loss to follow-up in DAG 3 is typically larger than the bias in DAG 2, as losses to follow-up in DAG 3 are directly caused by both exposure status and outcome status. Consequently, the estimate of the exposureoutcome association may be biased in unpredictable directions (Miller et al. 2014). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/9b9a2f28f52e023e49917f67fc92a5c8bb4c9ed45cfbe8e30217b3e4e0425363.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/8aa6124ba08b33a0a350ff857c142438f6896cb97886957387b3023ab0235697.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/13d020aab3ef641aabc18f563a69999cb70ec08e5cfb51ec1f3605f11604ec7c.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/920c6c25bd9cbcb9d042d2e68759d188ee503d9a586bef1a07e9f40dd9c52cbb.jpg)



FIGURE 3.6 Causal diagrams displaying four scenarios of losses to follow-up.


Even if race is not a confounding variable in scenario 4, limiting the analysis to those who remained in the study will make a spurious association between race and smoking because losses to follow-up are considered as a collider, and race becomes a confounding variable. This scenario also applies to matched cohort studies. When the exposure (smoking) and a matching confounder (race) affect the occurrence of censoring (loss to follow-up or competing risk), the initially balanced distribution of the matched variable (race) in the exposed and unexposed groups at the beginning of follow-up will be disrupted by censoring. Therefore, restricting the data analysis to those who stay in the cohort at the end of the follow-up will create the race-smoking association. In such cases, the matched variable (race) needs to be adjusted in a regression model (Rothman and Lash 2021). 

Censoring due to competing risks is a common occurrence in cohort studies, particularly those characterized by long follow-up periods and an older study population. Unlike censoring due to subjects being lost to follow-up, where censored individuals are still considered at risk, individuals who succumb to competing risks are no longer at risk for the disease under investigation. Nevertheless, in the analysis of survival data involving competing risks, data analysts often treat subjects with competing risks in the same manner as those who are lost to follow-up. For instance, when examining the time to lung cancer resulting from smoking exposure as the primary outcome, a subject may be designated as censored if he dies from a car accident. However, this practice of censoring subjects who have died from competing risks may not always be appropriate. This is due to potential violations of the assumption of noninformative censoring. In other words, individuals who have died in accidents may not be representative of those who remain alive within the cohort. Additionally, there may be distinct causal mechanisms at play, with competing risks affecting survival time differently from subjects who are censored but still alive and have withdrawn from the cohort (Austin, Lee, and Fine 2016). These considerations emphasize the necessity of explicitly accounting for competing risks in survival analysis to ensure the validity of findings 

For example, it is possible that there might be a causal relationship between smoking and car accidents if smoking distracts a driver’s attention while driving. In such a case, an increase in one event (death of a car accident) may be linked to a decrease in the other (lung cancer). In other words, contain causes of events can be linked to a common underlying risk factor (i.e., smoking to lung cancer and smoking to car incidents). Thus, the independent censoring assumption cannot apply to individuals who die of competing events as these events may share the same causes as the outcome of interest. The degree of bias caused by a competing risk depends on the frequency of a competing risk and the frequency of the outcome of interest. If the occurrence of an outcome is rare in a cohort, for example, a moderate frequency of the competing risk may have a larger impact on the observed frequency of the outcome than would a more common event (Haneuse 2021). In such a situation, survival analytic methods that are specific for competing risk need to be used (Wolbers et al. 2009, Lau, Cole, and Gange 2009). 

## 3.2.2 Assumption of Approximate Uniformity of Events and Losses

The second assumption, the approximate uniformity of events and losses within each interval, applies to the life-table method, but not to the Kaplan–Meier method, where intervals are not defined a priori (Szklo and Nieto 2019). As described in Section 3.1.5, to construct a life table, the entire follow-up period is divided into consecutive intervals of time (jth-interval), and according to this assumption, censoring occurs uniformly within each pre-defined interval, and the risk of an event is constant throughout the interval. That is, the mean time of events and withdrawals occurs at the midpoint of each interval, as depicted in Table 3.1. However, if the risk changes rapidly within a given interval, calculating an average risk over the interval is not accurate. To correct for censoring, one-half of the total number of censored observations is subtracted from the denominator (Equation 3.5). This subtraction also follows this assumption (the average time to censoring is halfway through the interval). If censoring is common or the risk changes rapidly, smaller intervals are needed. For example, while yearly intervals are frequently used, the study of a disease with a rapidly changing risk of onset may require smaller intervals to satisfy this assumption. 

## 3.2.3 Assumption of Lack of Secular Trends

The third assumption, lack of secular trends, applies to both life-table and Kaplan–Meier methods. In studies where the accrual of study participants occurs over an extended time period, the decision to pool all individuals at time 0 or at the start of each participant’s follow-up, regardless of calendar time, assumes a lack of secular trends regarding the characteristics of these individuals that affect the outcome of interest (Figure 3.7). That is, survival probability and risk are independent of the calendar, i.e., there is no seasonal variation. Changes over time in the characteristics of recruited participants, as well as significant secular changes in relevant exposures, may introduce bias in the cumulative incidence/survival estimates. The direction and magnitude of bias will depend on the characteristics of the cohort or period effects. 

For example, consider a cohort study that aims to recruit 500 patients with thyroid cancer. Patients are invited to participate in the study upon diagnosis, making the date of diagnosis as the starting point of participation. However, it may take several months or years to recruit all new cases, each of whom would have a different starting date. For analysis purposes, we would “pool” all individuals at time 0, effectively transforming the dynamic population into a static population. If, over this recruitment period, exposure or other factors have changed that affect the likelihood of the event, this may introduce bias. For instance, the introduction of more effective drugs in 2012 may have improved survival time for thyroid cancer patients, leading to higher survival probabilities among participants who joined the study after 2012. Alternatively, the introduction of a national thyroid-screening program may have resulted in earlier diagnoses and increased survival probability for those who participate in the cohort at a later time. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/16a12c214a1912d6ca7d39e3d0d3d848a58e3299774e384e1af99af463c7d796.jpg)



FIGURE 3.7 Illustration of conversion from calendar time to the follow-up time.


Due to a secular trend, the subjects who enter a study recently may not be comparable to those who have been in the study for several years, in terms of their exposure or other characteristics. If the secular trend affects the two comparison groups (exposed vs. unexposed) differently, any bias introduced by this difference may be more critical in a cohort study. However, if the participation dates do not vary greatly, this assumption is usually satisfied (Woodward 2014). 

In summary, to estimate risk or cumulative incidence in a study population during a given period, different methods can be used depending on the availability of information on disease occurrence and withdrawal from observation. The simple cumulative method is used when there are no or few withdrawals, while the life-table method and the Kaplan–Meier method are utilized when withdrawals occur. The life-table method is used when the exact times of disease occurrence or withdrawal are unknown, and only the numbers of cases and withdrawals are available within predefined intervals. The Kaplan–Meier method is preferred when the exact follow-up time of all cases is known, and if the follow-up time is different for all or most cases, because it minimizes bias caused by censoring. Unlike the life-table method, the Kaplan–Meier method does not require the assumption of constant survival probability during an interval and is optimal for estimating risks and survival probabilities. The assumptions of independence of censoring and survival probability and the absence of secular trends apply to both the Kaplan–Meier analysis and the Cox PH modeling analysis. 

## 3.3 Estimation and Comparison of Survival Curves

As previously mentioned, one of the main objectives of survival analysis is to estimate survival probabilities at various time points, either within a single group or separately for different groups, and to statistically test for differences between groups. For instance, we may want to compare and test the survival probabilities of male and female subjects, subjects with depression and those without, or smokers and non-smokers. This involves estimating survival probabilities for each group individually, plotting survival curves, and statistically testing for differences between the curves. 

## 3.3.1 Visualization of Survival Curves

Visualizing changes in survival probabilities over the follow-up period is useful and important. Figure 3.8 displays two survival curves that illustrate how survival probabilities change over time. In Figure 3.8a, the curves initially overlap for the first 3 months but then diverge, with males showing better overall survival than females. Typically, when one survival curve lies above another, it suggests that the group defined by the upper curve had a better survival experience than the group defined by the lower curve. If we only estimated and compared the first 3 months’ survival probabilities between males and females, we would not observe any apparent difference between the two groups. In Figure 3.8b, the males initially have better survival than females (before 6 months), but after 6 months of follow-up, the curves cross, and males have poorer survival than females. If we only compared the overall survival probability between males and females, we would conclude that there was no difference in survival between the two groups, as the difference before 6 months canceled out the difference after 6 months. The cross-over situation will be discussed in Section 3.6.2, the extended Cox model. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/93f64ebe188eb4ee6483804f4ad611730520a4475fdcb1d20be1784be5a5a8df.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/1b79eaa879a25f3f4b8284f451efd48a4d675c51a71212d2b39efec819d81372.jpg)



FIGURE 3.8 Illustration of survival probability over two scenarios (a, b).


Statistical software, such as SAS, can generate descriptive measures of survival statistics, including confidence intervals or bands, as well as three quartiles of survival time: the 25th, 50th (median), and 75th percentiles. It’s important to recognize that because censored survival time data tends to be skewed to the right (with a long right tail), the mean survival time may not be a valid measure of central tendency. Therefore, the median time is a more appropriate summary and provides a more intuitive measure of central tendency. However, when censoring occurs during the observational period, the observed survival time is downward biased because the actual survival time for an event might have occurred sometime after the time of censoring. For instance, if a subject withdrew from the study on December 1, 2021, after a 6-month follow-up, the time of occurrence for the event being studied must be after that date if he/she developed such an event. Therefore, the actual median survival time would likely be longer. 

The examples shown in Figure 3.8 highlight the importance of visually examining survival patterns based on survival curves over follow-up times between comparison groups as an initial step. The plot of survival curves can also serve as a useful diagnostic tool to determine the appropriate selection of statistical tests. In the next step, we utilize Kaplan–Meier method to estimate survival probabilities and the log-rank test to test the statistical difference of observed differences between two or more survival curves. 

## 3.3.2 Estimating Kaplan–Meier Survival Probabilities

During a descriptive analysis, we may have research questions such as “Is the survival time shorter for individuals with depression compared to those without?” or “Is the hazard of death higher in the depressed group compared to the non-depressed group?” In this regard, we can utilize the Kaplan–Meier method to estimate the survival probabilities for each comparison group, graph survival curve for each, and test whether two or more survival curves estimate a common curve. We will provide examples to illustrate how to answer these questions. 

The following examples utilize NHEFS data. The dataset includes all eligible study participants, and the follow-up period begins on January 1, 1983, and ends on December 31, 1992, with a maximum follow-up time of 120 months. The outcome variable is all-cause mortality during the follow-up period, and depressive symptoms are measured using the Centers for Epidemiologic Studies Depression (CES-D) Scale. Study subjects are considered to have depression if their CES-D score is equal to or greater than 16, and those with scores below 16 are defined as not having depression. Demographic characteristics, lifestyle, and health status are included as covariates. 

## Example 3.3

Before utilizing the SAS PROC LIFETEST to estimate Kaplan–Meier survival curves, it is necessary to preprocess the dataset for survival analysis, as shown in Table 3.4 (which contains only 10 subjects for the illustration purposes). The survival analysis dataset includes three essential variables: subject ID number, survival time, and censoring. It also includes an exposure variable, modifiers, and confounding variables. In the following example, the subject ID number is represented as “ID,” survival time as “survtime,” and the event or censoring as “death.” “Depression” is the exposure variable, coded as “dep.” Other variables include “Age” (coded as “age”), education (coded as “edu”), and race (coded as “race”). If a study subject dies, “death” is assigned a value of “1,” while for censored subjects, the value is “0.” 


TABLE 3.4



Data Structure for Survival Analysis


<table><tr><td>Subject ID (ID)</td><td>Survival Time in Month (survtime)</td><td>Death (death)</td><td>Depression (dep)</td><td>Age (age)</td><td>Education (edu)</td><td>Race (race)</td></tr><tr><td>1</td><td>5</td><td>0</td><td>0</td><td>25</td><td>3</td><td>0</td></tr><tr><td>2</td><td>1</td><td>1</td><td>1</td><td>56</td><td>0</td><td>1</td></tr><tr><td>3</td><td>2</td><td>1</td><td>1</td><td>52</td><td>2</td><td>1</td></tr><tr><td>4</td><td>4</td><td>0</td><td>0</td><td>35</td><td>3</td><td>0</td></tr><tr><td>5</td><td>3</td><td>0</td><td>1</td><td>21</td><td>2</td><td>3</td></tr><tr><td>6</td><td>3</td><td>1</td><td>0</td><td>58</td><td>2</td><td>3</td></tr><tr><td>7</td><td>1</td><td>1</td><td>1</td><td>39</td><td>1</td><td>2</td></tr><tr><td>8</td><td>5</td><td>0</td><td>0</td><td>30</td><td>3</td><td>1</td></tr><tr><td>9</td><td>5</td><td>0</td><td>0</td><td>41</td><td>2</td><td>2</td></tr><tr><td>10</td><td>1</td><td>0</td><td>0</td><td>22</td><td>1</td><td>0</td></tr></table>


death:1 died, 0 censored 



dep: 1: depressed, 0: not depressed 



edu: 0: no education, 1: elementary school education, 2: high school education, and 3: above 



race: 0: White, 1: Black, 2: Asian, 3: Others 


The following SAS PROC LIFETEST syntax is used to estimate Kaplan–Meier survival probabilities and draw a survival curve for subjects who are over 60 years old and have depression: 

```txt
ods graphics on;
proc lifetest data=nhefs83(where=(dep=1 and age>=60))
    plots=S (CL CB=HW atrisk=0 to 120 by 10 atrisktick);
    time Survtime*death(0);
    label survtime='Months of follow-up';
run;
ods graphics off; 
```

To start, we use the “where” option to select subjects who are depressed and over 60 years old. The next SAS statements estimate and display the survival curves (plots = S) along with their pointwise confidence limits (CL) and Hall-Wellner confidence bands (CB = HW) (Klein and Moeschberger 2003). The outcome variable, “Survtime,” is combined with the censoring variable “death,” where a value in parentheses indicates censoring. The values of “Survtime” are considered censored when the “death” value is 0, while they represent event times otherwise. It is worth noting that the width of a 95% confidence band is typically wider than that of the 95% pointwise confidence limits (Selvin 2008). The “atrisk” option in the PLOTS statement is used to control the values at which the time at-risk values are displayed on the x-axis. Additionally, the “atrisktick” option adds tick marks to the axis that correspond to the at-risk values (Figure 3.9). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/ce9f1be2c2c79936380f4dfe3ddd85caab35822f0372ad64fcc15d3032d55bbe.jpg)



FIGURE 3.9 Survival curve with 95% confidence limit for depressed subjects over 60 years old.


According to SAS Output 3.3, out of the 500 depressed subjects who were over 60 years old, 281 died during the follow-up period while 219 were censored. The median survival time, which represents the time at which the survival probability is 50%, was estimated to be 105 months with a 95% confidence interval of 95–113 months. 


SAS Output 3.3 Summary statistics for survival time


<table><tr><td colspan="5">Quartile Estimates</td></tr><tr><td rowspan="2">Percent</td><td rowspan="2">Point Estimate</td><td colspan="3">95% Confidence Interval</td></tr><tr><td>Transform</td><td>[Lower</td><td>Upper)</td></tr><tr><td>75</td><td>.</td><td>LOGLOG</td><td>.</td><td>.</td></tr><tr><td>50</td><td>105.000</td><td>LOGLOG</td><td>95.000</td><td>113.000</td></tr><tr><td>25</td><td>53.000</td><td>LOGLOG</td><td>44.000</td><td>59.000</td></tr></table>

<table><tr><td colspan="4">Summary of the Number of Censored and Uncensored Values</td></tr><tr><td>Total</td><td>Failed</td><td>Censored</td><td>Percent Censored</td></tr><tr><td>500</td><td>281</td><td>219</td><td>43.80</td></tr></table>

## 3.3.3 Log-Rank Test

After completing a descriptive survival analysis, the next step is to compare the survival experience between two or more comparison groups. Since survival data are typically right-skewed, it is recommended to use rank-based non-parametric tests. The log-rank test (Peto and Peto 1972) is a commonly used method to test the statistical equivalence (a common curve) of Kaplan–Meier curves between two or more groups. This test compares survival across the entire follow-up period and is nonparametric, meaning that it does not assume any particular shape or distribution of the survival curves. 

The analysis is based on the times of events (deaths in this example). For each time interval, we calculate the observed number of deaths in each group and the expected number of deaths if there were no differences between the groups. The null and alternative hypotheses of the log-rank test for a two-group comparison are: 

$H _ { 0 } { \mathrm { : } }$ There is no overall difference between survival functions, i.e. $, S _ { 1 } ( t ) = S _ { 2 } ( t )$ for all t. 

$H _ { 1 } { \mathrm { : } }$ There is an overall difference between survival functions, $\mathrm { i . e . , } S _ { 1 } ( t ) \neq S _ { 2 } ( t )$ for t. 

Consider the $i ^ { t h }$ time interval, $( t _ { i } , t _ { i + 1 } ) ,$ and assume that there are two comparison groups, A and $\scriptstyle \mathrm { \mathrm { B } } ,$ the data can be presented as: 

<table><tr><td></td><td>Death</td><td colspan="2">Survival</td></tr><tr><td>Group A</td><td><eq>Da_{i}</eq></td><td><eq>Sa_{i}</eq></td><td><eq>Na_{i}</eq></td></tr><tr><td>Group B</td><td><eq>Db_{i}</eq></td><td><eq>Sb_{i}</eq></td><td><eq>Nb_{i}</eq></td></tr><tr><td></td><td><eq>D_{i}</eq></td><td><eq>S_{i}</eq></td><td><eq>N_{i}</eq></td></tr></table>

Assuming that $H _ { 0 }$ holds true, meaning that there is no difference in survival between the two groups, the estimate of deaths in the $i ^ { t h }$ interval is equal to the overall hazard: 

$$
h _ {i} = D _ {i} / N _ {i} \tag {3.7}
$$

If we apply the overall hazard to the number of subjects at risk in each group, we can obtain the expected numbers of deaths under $\operatorname { H } _ { 0 } { \mathrm { : } }$ 

$$
E _ {a i} = N _ {a} (h _ {i}) \quad E _ {b i} = N _ {b} (h _ {i})
$$

Now let’s define: 

$O _ { a } = \mathsf { s u m }$ of Dais = observed number of deaths in group A 

$O _ { b } = \mathsf { s u m }$ of Dbis = observed number of deaths in group B 

$E _ { a } = \mathsf { s u m }$ of $E _ { a i } s = \exp \mathrm { e c t e d }$ number of deaths in group A 

$E _ { b } = \mathsf { s u m }$ of $E _ { b i } s = \mathrm { e x p e c t e d }$ number of deaths in group B. 

Under $H _ { 0 } ,$ we have: 

$$
O _ {a} + O _ {b} = E _ {a} + E _ {b}
$$

which means that the observed number of deaths is equal to the expected number of deaths. 

The log-rank test has a general form given by: 

$$
\text { Log - rank   statistic } = \left[ (O - E) ^ {2} \right] / \operatorname{Var} (O - E) \tag {3.8}
$$

For a two-group comparison, the log-rank statistic is computed by dividing the square of the summed observed minus expected score for one of the groups by the variance of the summed observed minus expected score. Because $( O _ { a } - E _ { a } ) ^ { 2 } = ( O _ { b } ^ { \cdot } - E _ { b } ^ { \cdot } ) ^ { 2 }$ and $\mathrm { V a r } ( O _ { a } - E _ { a } ) =$ $\mathrm { V a r } ( O _ { b } - E _ { b } ) ,$ , the log-rank statistics estimated in group A are the same as in group B. The main idea behind the log-rank test is to compare the number of observed events to the number of expected events (based on Kaplan–Meier curves) at all time points where events are observed. The log-rank statistic is approximately Chi-square with degrees of freedom that are equal to the number of groups being compared minus one. 

The comparison between the observed number of deaths (O) and the expected number of deaths (E) is not affected by survival time, as both O and E are calculated for the same survival interval $( t _ { i } , t _ { i + 1 } )$ . The difference of survival experience in the two or more comparison groups can be attributed to random variation, the effect of the exposure factor on death, or both, assuming there is no other bias. Moreover, the comparison is not influenced by censoring, assuming randomness of censoring (e.g., independence between censoring and survival probabilities). This is because all observations, including censored observations, within an interval have the same survival time, ensuring that interval-specific comparisons are not biased. 

## Example 3.4

We will now utilize the SAS PROC LIFETEST procedure to test whether depression (coded as “dep”) is associated with the survival experience of the two groups (depressed vs. non-depressed). This procedure will provide us with both the survival curve (S) and the hazard curve (H). 

```txt
ods graphics on;
PROC lifetest data=nhefs83 plots=(s(atrisk=0 to 120 by 10 atrisktick),h)
    intervals=(0 to 120 by 1);
    time Survtime*death(0);
    strata dep /test=logrank;
    label survtime='Months of follow-up';
RUN;
ods graphics off; 
```

There are 1,167 depressed subjects in the dataset, among whom 342 died and 825 were censored. In contrast, there are 6,296 non-depressed subjects, of whom 1,232 died, and 5,064 were censored (SAS Output 3.4). 


SAS Output 3.4 Summary of survival data and log-rank test


<table><tr><td colspan="6">Summary of the Number of Censored and Uncensored Values</td></tr><tr><td>Stratum</td><td>dep</td><td>Total</td><td>Failed</td><td>Censored</td><td>Percent Censored</td></tr><tr><td>1</td><td>0</td><td>6,296</td><td>1,232</td><td>5,064</td><td>80.43</td></tr><tr><td>2</td><td>1</td><td>1,167</td><td>342</td><td>825</td><td>70.69</td></tr><tr><td>Total</td><td></td><td>7,463</td><td>1,574</td><td>5,889</td><td>78.91</td></tr></table>

<table><tr><td colspan="2">Rank Statistics</td></tr><tr><td>dep</td><td>Log-Rank</td></tr><tr><td>0</td><td>-114.35</td></tr><tr><td>1</td><td>114.35</td></tr></table>

<table><tr><td colspan="3">Covariance Matrix for the Log-Rank Statistics</td></tr><tr><td>dep</td><td>0</td><td>1</td></tr><tr><td>0</td><td>194.215</td><td>-194.215</td></tr><tr><td>1</td><td>-194.215</td><td>194.215</td></tr></table>

<table><tr><td colspan="4">Test of Equality over Strata</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; Chi-Square</td></tr><tr><td>Log-Rank</td><td>67.3289</td><td>1</td><td>&lt;.0001</td></tr></table>

$$
\left(O _ {0} - E _ {0}\right) ^ {2} = (- 1 1 4. 3 5) ^ {2}, \operatorname{Var} \left(O _ {0} - E _ {0}\right) = 1 9 4. 2 1 5
$$

$$
\left(O _ {1} - E _ {1}\right) ^ {2} = (1 1 4. 3 5) ^ {2}, \operatorname{Var} \left(O _ {1} - E _ {1}\right) = 1 9 4. 2 1 5
$$

Log-rank statistic    114.35 /194.215   67.33, degrees of freedom   1, -value  0.0012( )= = = <p 

The obtained p-value indicates strong evidence against the null hypothesis, leading to its rejection. The Kaplan–Meier survival curves of the depressed and non-depressed groups differ substantially. Based on the results of the log-rank test and Kaplan–Meier survival curves (Figure 3.10), we can conclude that there is a large difference in survival between the non-depressed and depressed groups. Specifically, the survival probabilities in the non-depressed group are higher than in the depressed group. However, due to the low all-cause mortality and the high proportion of censored observations (e.g., 50% of the participants are not observed to die), the survival probability exceeds 0.5 in both groups, making the estimation of the median survival times and their confidence intervals impossible. In such cases, one approach is to provide alternative survival estimates, such as the time at which a specific percentage of subjects experience the event. For instance, during the follow-up period, 15% of subjects (equivalent to an 85% survival probability) died in month 50. However, it is considered good practice to report the median survival time and its associated confidence interval for each comparison group. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/05938f13602723b8d653c1c0154cdfcc54dd3f129d01bf924428c6632b065508.jpg)



FIGURE 3.10 Kaplan–Meier survival curves for two comparison groups: depressed vs. non-depressed.


The log-rank test can also be used to test for more than two groups. The null hypothesis is: 

$H _ { 0 } { \mathrm { : } }$ all survival functions are the same. 

$H _ { 1 } \colon$ at least one of the survival functions is different from the others. 

To perform the log-rank test for more than two groups, we calculate the overall Chisquare statistic and the degrees of freedom using the same formula as for the two-group test. The overall Chi-square statistic is the sum of the Chi-square statistics for all pairwise comparisons between groups. The degrees of freedom are equal to the number of groups minus one. If the p-value is less or equal to the significance level (e.g., 0.05), we reject the null hypothesis and conclude that there is statistical evidence of a difference in survival functions among the groups. If the p-value is greater than the significance level, we fail to reject the null hypothesis and conclude that there is no statistical evidence of a difference in survival functions among the groups. 

## Example 3.5

In the above example, the CES-D variable was dichotomized into two levels, depressed versus non-depressed. Let’s consider an alternative categorization of the CES-D variable into three groups (CESD3), with the categories defined as 0: <16, 1: 16–21, and 2: >21. We can use the following SAS procedure to estimate three Kaplan–Meier curves, one for each group, and test the significance of the differences among them. The PLOTS = option requests that the survival functions be displayed along with their pointwise confidence limits (CL) and Hall-Wellner confidence bands (CB = HW). The STRATA = PANEL option requests that the survival curves be displayed in a panel of three plots, one for each comparison group (SAS Institute Inc 2016). 

```txt
ods graphics on;
PROC lifetest data=nhefs83 plots= survival (cl cb=hw strata=panel);
time Survtime*death(0);
strata CESD3 /test=logrank;
label survtime='Months of follow-up';
RUN;
ods graphics off; 
```


SAS Output 3.5 Results of log-rank test


<table><tr><td colspan="6">Summary of the Number of Censored and Uncensored Values</td></tr><tr><td>Stratum</td><td>CESD3</td><td>Total</td><td>Failed</td><td>Censored</td><td>Percent Censored</td></tr><tr><td>1</td><td>0</td><td>6,296</td><td>1,232</td><td>5,064</td><td>80.43</td></tr><tr><td>2</td><td>1</td><td>612</td><td>162</td><td>450</td><td>73.53</td></tr><tr><td>3</td><td>2</td><td>555</td><td>180</td><td>375</td><td>67.57</td></tr><tr><td>Total</td><td></td><td>7,463</td><td>1,574</td><td>5,889</td><td>78.91</td></tr></table>

<table><tr><td colspan="2">Rank Statistics</td></tr><tr><td>CESD3</td><td>Log-Rank</td></tr><tr><td>0</td><td>-114.35</td></tr><tr><td>1</td><td>38.60</td></tr><tr><td>2</td><td>75.75</td></tr></table>

<table><tr><td colspan="4">Covariance Matrix for the Log-Rank Statistics</td></tr><tr><td>CESD3</td><td>0</td><td>1</td><td>2</td></tr><tr><td>0</td><td>194.215</td><td>-105.290</td><td>-88.924</td></tr><tr><td>1</td><td>-105.290</td><td>113.460</td><td>-8.169</td></tr><tr><td>2</td><td>-88.924</td><td>-8.169</td><td>97.094</td></tr></table>

<table><tr><td colspan="4">Test of Equality over Strata</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; Chi-Square</td></tr><tr><td>Log-Rank</td><td>77.0351</td><td>2</td><td>&lt;.0001</td></tr></table>

Because there are three groups in this example, the degrees of freedom for the logrank test is 2 (3-1). The log-rank statistic is computed to be 77.04, which has a p-value less than 0.01. Thus, we reject the null hypothesis and conclude that there is a statistical difference among the three survival curves for the depression status groups. 

However, the above analysis does not identify which pairs of the survival functions are different statistically. We can perform pairwise comparisons of the three groups defined by the three levels of CES-D scores by using the ADJUST=SIDAK option in the STRATA statement for multiple-comparison adjustment (SAS Institute Inc 2016). 

## Example 3.6

We perform pairwise comparisons in the same data we used in Example 3.4. 

```txt
PROC lifetest data=nhefs83 plots= survival
(cl cb=hw strata=panel);
time Survtime*death(0);
strata CESD3 /test = logrank adjust=sidak;
label survtime='Months of follow-up';
RUN; 
```

SAS Output 3.6 Result of log-rank test for three groups 

<table><tr><td colspan="2">Rank Statistics</td></tr><tr><td>CESD3</td><td>Log-Rank</td></tr><tr><td>0</td><td>-114.35</td></tr><tr><td>1</td><td>38.60</td></tr><tr><td>2</td><td>75.75</td></tr></table>

<table><tr><td colspan="4">Covariance Matrix for the Log-Rank Statistics</td></tr><tr><td>CESD3</td><td>0</td><td>1</td><td>2</td></tr><tr><td>0</td><td>194.215</td><td>-105.290</td><td>-88.924</td></tr><tr><td>1</td><td>-105.290</td><td>113.460</td><td>-8.169</td></tr><tr><td>2</td><td>-88.924</td><td>-8.169</td><td>97.094</td></tr></table>

<table><tr><td colspan="4">Test of Equality over Strata</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; Chi-Square</td></tr><tr><td>Log-Rank</td><td>77.0351</td><td>2</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="5">Adjustment for Multiple Comparisons for the Logrank Test</td></tr><tr><td colspan="2">Strata Comparison</td><td rowspan="2">Chi-Square</td><td colspan="2">p-Values</td></tr><tr><td>CESD3</td><td>CESD3</td><td>Raw</td><td>Sidak</td></tr><tr><td>0</td><td>1</td><td>45.1409</td><td>&lt;.0001</td><td>&lt;.0001</td></tr><tr><td>0</td><td>2</td><td>77.0290</td><td>&lt;.0001</td><td>&lt;.0001</td></tr><tr><td>1</td><td>2</td><td>6.0826</td><td>0.0137</td><td>0.0404</td></tr></table>

The log-rank test indicates that there are differences in survival times among the three groups $( C h i \mathrm { - s q u a r e } = 7 7 . 0 4 ; p < 0 . 0 1 )$ ). Displayed as “Adjustment for multiple comparisons” in SAS Output 3.6, the SIDAK multiple-comparison results reveal differences in survival functions between the low CES-D group (coded as $^ { \prime \prime } 0 ^ { \prime \prime } )$ and the moderate CES-D group (coded as “1”) $( p < 0 . 0 1 ) ;$ ; between the low CES-D group and the high CES-D group (2) (p < 0.01); and between the moderate CES-D group and the high CES-D group $( p = 0 . 0 4 )$ . These quantitative findings are consistent with the visual patterns of the three survival curves presented in Figure 3.11. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/cc1f03a6-fb98-49a1-a1ff-7508210c2e27/61204fd78dbb654023b0dfec9995a9fa58454ae6fa34b36adfd005a73bdcdeca.jpg)



FIGURE 3.11 Kaplan–Meier survival curves for three comparison groups with different levels of CES-D (0: <16, 1: 16–20, and 2: >20).


Similarly, we may specify a reference group and make comparisons between each group and the reference groups. The DIFF option can be used in the STRATA statement to designate a reference group. 

## Example 3.7

In this example, we designate the low CES-D group (coded as “0”) as the reference group and perform pairwise comparisons in the same data that we used in Example 3.5. 

```txt
PROC lifetest data=nhefs83 plots=survival
(cl cb=hw strata=panel);
time Survtime*death(0);
strata CESD3/test=logrank adjust=sidak
    diff=control ('0');
label survtime='Months of follow-up';
RUN; 
```


SAS Output 3.7 multiple comparisons logrank test


<table><tr><td colspan="5">Adjustment for Multiple Comparisons for the Logrank Test</td></tr><tr><td colspan="2">Strata Comparison</td><td rowspan="2">Chi-Square</td><td colspan="2">p-Values</td></tr><tr><td>CESD3</td><td>CESD3</td><td>Raw</td><td>Sidak</td></tr><tr><td>1</td><td>0</td><td>45.1409</td><td>&lt;.0001</td><td>&lt;.0001</td></tr><tr><td>2</td><td>0</td><td>77.0290</td><td>&lt;.0001</td><td>&lt;.0001</td></tr></table>

Based on the SAS output, we can conclude that the survival function of the low CES-D group is statistically different from the two comparison groups (the moderate CES-D group and the high CES-D group) at a significance level of 0.01. 

As presented in the general form of the test (Equation 3.8), the log-rank test uses the summed observed minus expected score (O – E) in each group to form the test statistic. In such a way, the log-rank test assigns an equal weight of one to each failure time when combining observed minus expected failures in each group, regardless of the number of individuals at risk at each time point (Kleinbaum and Klein 2012). However, the number of at-risk subjects (or the size of the risk set) at a later time is usually smaller because individuals who experience the event and/or are censored are subsequently removed from the analysis. This means that the log-rank test is more likely to statistically detect differences in later survival times, due to the equal weight. One way to deal with this is to use the Wilcoxon test. The Wilcoxon test uses weights equal to the number of subjects at risk at each survival time, thereby placing more emphasis on the information at the beginning of the survival curve where the number at risk is large and allowing early failures to receive more weight than later failures. Therefore, the Wilcoxon test is more likely to detect differences in earlier survival times and can be used to assess whether the effect of an exposure on survival is stronger in the earlier phases of the exposure and tends to be less effective over time. 

When the option of “TEST = LOGRANK” is removed, the SAS PROC LIFETEST generates both the log-rank test and the Wilcoxon test. It is sufficient to report only the results of the log-rank test if the two tests generate a similar level of significance. However, if the two tests generate different levels of significance, both sets of results should be reported to provide a more comprehensive understanding of how the survival times may differ between the comparison groups. 

The assumptions underlying the log-rank test include (1) independence between censoring and survival time, (2) independence between censoring and exposure, and (3) proportionality of hazards between the groups being compared. The first two assumptions have been discussed in Session 3.2. Assumption 3 requires that the hazard ratio between the two groups remains constant over time. This assumption is similar to the assumption made for the Cox PH model and will be discussed in detail in Section 3.5. The log-rank test is most likely to detect a difference between groups when the hazard of an event is consistently greater for one group than another, as shown in the example presented here and in Figure 3.8a. In cases where survival curves cross (Figure 3.8b), violating the proportional assumption, the log-rank test is unlikely to detect a difference. Therefore, the use of the log-rank test should always be accompanied by a visual examination of the survival curves. 

In summary, both the Kaplan–Meier curve and the log-rank test are commonly used in cohort studies; however, they possess some limitations. These approaches can only analyze one variable at a time and are unable to control for potential confounding variables or assess potential modification effects. In this univariate and binary analysis, quantitative risk factors must be categorized to form strata, but the selection of cut-offs for categorization may not always be meaningful or straightforward. Moreover, the log-rank test only provides information about whether there is a statistically significant difference between comparison groups, without directly revealing the magnitude of the difference. Fortunately, there are other statistical approaches that can overcome these limitations. For instance, Cox PH regression is capable of incorporating multiple variables simultaneously, controlling for confounding variables, and assessing interaction effects. 

## 3.4 Cox Proportional Hazard Model

From this section onward, we will introduce regression models specifically designed to analyze data from cohort studies that involve censoring. The primary objective of these models is to study the time leading up to either the occurrence of an outcome event or until censoring. In scenarios without censoring, a linear regression model can be utilized to estimate the conditional mean of the outcome variable (T), given that T represents a continuous outcome, such as time to event, based on exposure variables and other covariates. However, when censoring is present, linear regression fails to use the partial information provided by censored subjects about the outcome. Consistent with other chapters, survival analysis primarily emphasizes the association model over the prediction model. This approach stems from the nature of epidemiological research, which often seeks to elucidate the relationship between a risk factor and an outcome while accounting for both modification and confounding effects. 

## 3.4.1 Cox Proportional Hazard Model as a Semiparametric Model

In epidemiology, two commonly used regression models for survival data are semiparametric and parametric models. The semiparametric model assumes that the distribution of survival time can be modeled using an unspecified baseline distribution, while parametric models necessitate the specification of a theoretical probability distribution for the data. 

One of the prominent semiparametric models used in survival analysis, particularly in epidemiology, is the Cox proportional hazard model (Cox PH model). This model has become the standard in survival analysis. To illustrate the Cox PH model, let’s consider a scenario where study subjects are exposed to a risk factor denoted as $X ,$ with a coding of 1 for exposed and 0 for unexposed. In this context, $h _ { 1 } ( t )$ represents the hazard for exposed subjects, and $h _ { 0 } ( t )$ represents the hazard for unexposed subjects. The hazard can be estimated from this simple Cox PH model that includes only one explanatory variable X: 

$$
h (t | X) = h _ {0} (t) \exp (\beta X). \tag {3.9}
$$

When $X = 0$ (corresponding to subjects in the unexposed group), $\beta X = 0 ,$ and the hazard function becomes $h ( t | X ) = h _ { 0 } ( t )$ . In other words, $h _ { 0 } ( t )$ represents the hazard function for subjects in the unexposed group, often referred to as the baseline hazard. On the other hand, when $X = 1$ (referring to subjects in the exposed group), $\beta X = \beta ,$ , and the hazard function becomes $h ( t | X ) = h _ { 0 } ( t ) \mathrm { { e x p } } ( \beta )$ . This simple Cox PH model is considered semiparametric because it does not assume any specific shape for the baseline hazard, $h _ { 0 } ( t )$ . The coefficient $\beta$ represents the log relative hazard of the exposed subjects in relation to the unexposed subjects. The hazard ratio of the exposed group relative to the unexposed group is equal to eβ. As mentioned in Section 2.3.2, the hazard ratio can be interpretable as an incidence rate ratio. 

In many cases, researchers employ the multiple Cox PH regression model to assess the association between survival time and an exposure variable while considering potential confounding variables and exploring modification effects. The Cox PH model estimates the hazard at a given time point t for an individual based on a specific set of independent variables. Suppose a research question focuses on understanding the relationship between survival time (T) and an exposure variable (X), while adjusting for a set of covariates (Z). Here, the notation $\pmb { Z } = ( Z _ { 1 } , . . . , Z _ { \mathrm { p } } )$ represents a collection or vector of covariates. To address this research question, we can utilize the following Cox PH model: 

$$
h (t | X, \mathbf {Z}) = h _ {0} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + \quad + \beta_ {p} Z _ {p}\right). \tag {3.10}
$$

In this equation, $\mathrm { h } ( t | X , Z )$ denotes the hazard at time $t ,$ given the values of X and $Z .$ The coefficients $\beta _ { x } , \beta _ { 1 } , . . . , \beta _ { p }$ represent regression coefficients associated with the exposure variable X and the covariates Z. The term $h _ { 0 } ( t )$ represents the baseline hazard, corresponding to the hazard function when all X and Z values are equal to 0. By exponentiating the coefficient $\beta _ { x } ,$ we obtain a hazard ratio that quantifies the strength of association between the outcome and the exposure variable X while adjusting for the covariates Z. 

Suppose we have subjects in the exposed group (coded as 1) with covariates $X _ { 1 } , Z _ { 1 1 } , Z _ { 1 2 } , . . . , Z _ { 1 { \mathrm { p } } } ,$ and subjects in the unexposed group (coded as 0) with covariates $X _ { 0 } , Z _ { 0 1 } , Z _ { 0 2 } , . . . , Z _ { 0 { \mathrm { p } } } .$ . We can calculate the relative hazard of the exposed group compared to the unexposed group using the hazard ratio (HR): 

$$
\begin{array}{l} H R = \frac {h (t \mid X = 1)}{h (t \mid X = 0)} = \frac {h _ {0} (t) \exp \left(\beta_ {x} X _ {1} + \beta_ {1} Z _ {1 1} + \beta_ {2} Z _ {1 2} + + \beta_ {p} Z _ {1 p}\right)}{h _ {0} (t) \exp \left(\beta_ {x} X _ {0} + \beta_ {1} Z _ {0 1} + \beta_ {2} Z _ {0 2} + + \beta_ {p} Z _ {0 p}\right)} \tag {3.11} \\ = \exp \Big [ \beta_ {x} (X _ {1} - X _ {0}) + \beta_ {1} (Z _ {1 1} - Z _ {0 1}) + \beta_ {2} (Z _ {1 2} - Z _ {0 2}) + + \beta_ {p} (Z _ {1 p} - Z _ {0 p}) \Big ] \\ \end{array}
$$

If we consider X as a binary exposure variable, with a value of 1 for exposed and 0 for unexposed, we simplify the hazard ratio to: 

$$
\mathrm{HR} = \exp \left[ \beta_ {x} \left(X _ {1} - X _ {0}\right) \right] = \exp \left[ \beta_ {x} (1 - 0) \right] = \exp (\beta_ {x}) \tag {3.12}
$$

In this case, the HR is the exponentiation of the coefficient $\beta _ { x } .$ . If $\beta _ { x }$ is equal to 0, the HR is 1, indicating that the two groups have the same survival experience. When X is a continuous variable, exp(βx) represents the HR corresponding to a one-unit increase in X, such as from 0 to 1 or from 11 to 12, depending on the range of X. 

According to Equation 3.10, the hazard at a specific time point t is determined by the product of two components: the baseline hazard function, $h _ { 0 } ( t ) ,$ , and the exponential expression involving the linear sum of the exposure variable X and other covariates Z. Importantly, the baseline hazard function, $h _ { 0 } ( t ) ,$ is solely a function of survival time t and does not involve the X and Z variables. Thus, the Cox PH model does not require the specification of a baseline hazard function when examining the associations between $\bar { X } ^ { }$ and survival time, adjusting for Z. This nonparametric aspect of the model allows for the estimation of regression coefficients without making assumptions about the shape or form of the baseline hazard function. In epidemiological studies, the primary focus often revolves around investigating the impact of the exposure variable on survival time. Therefore, the explicit specification of the baseline hazard function holds less importance in such survival analyses. This characteristic contributes to the popularity of the Cox PH model in the field of epidemiological research. 

As described above, the exponential part of the Cox PH model is parametric, as it assumes a specific parametric form to capture the effects of X and Z on the hazard. This implies that the relationship between $X , Z ,$ and the hazard is assumed to follow a predefined parametric model. The Cox PH model is considered semiparametric because it combines both parametric and nonparametric components. The nonparametric aspect refers to the lack of assumptions about the shape or form of the baseline hazard function $h _ { 0 } ( t )$ , while the parametric aspect pertains to the exponential expression involving X and Z. 

In the Cox Proportional Hazard (PH) model, the exponential expression includes variables X and $\scriptstyle { Z , }$ but notably, it does not involve time (t). Consequently, X and Z are treated as time-independent variables, signifying that their values are assumed to remain constant and not change with time (t). This time-independent assumption is crucial for interpreting hazard ratios consistently across the entire time scale. To ensure the meaningful interpretation of hazard ratios, X and Z must be defined and measured either at or before the baseline of a cohort. 

For example, in the context of the Cox model, it assumes that factors like the level of depression are measured at the baseline and are considered constant over time. This assumption of time-independence is what underlies the proportional hazard (PH) assumption. The PH assumption posits that the hazard ratio, which quantifies the multiplicative effect of an exposure or covariate, remains constant as a function of time (t). However, when X and Z do vary over time, they are referred to as time-dependent variables. 

A time-dependent variable is defined as any variable whose values for a given subject change over time, such as age, weight, blood pressure, or exposure to air pollution. In this situation, the Cox model can still be utilized. However, as the PH assumption no longer holds, it is necessary to employ an extended Cox model, which will be discussed in Section 3.6. Nonetheless, it may be reasonable to treat certain time-dependent variables as time-independent if their values do not significantly change over time or if their effect on survival predominantly depends on their value at a single measurement point. 

The Cox PH model employs a technique known as partial likelihood estimation to estimate coefficients and their variances, without explicitly involving the baseline hazard function $h _ { 0 } ( t )$ . The term “partial” likelihood indicates that it focuses on probabilities related to uncensored subjects, disregarding explicit consideration of probabilities for censored subjects (Kleinbaum and Klein 2012). Nevertheless, survival time information up to the point of censoring is still utilized for censored subjects within the partial likelihood estimation. Given that partial likelihood estimates share the same properties as maximum likelihood estimates, their interpretation and evaluation align closely with regression models from Chapter 2 that use full maximum likelihood estimation. 

The validity of the partial likelihood relies on the absence of ties in the dataset, meaning there are no instances where two or more subjects experience the event simultaneously (i.e., they have the same event time). Ties present a challenge as the data cannot be uniquely sorted based on time, which is required for model fitting. In situations where there are numerous tied events in the dataset, alternative methods must be employed to address this issue (Section 3.4.5). 

## 3.4.2 Estimate Hazard Ratio in Simple Cox PH Model

In Example 3.4, we saw that the log-rank test indicated a difference between the survival curves for those with depression and those without. The next step involves quantifying this difference. This is done by providing a point estimate, specifically the HR, complemented by its 95% confidence interval. 

## Example 3.8

In the NHEFS dataset, there are two exposure groups: individuals without depression (dep = 0) and those with depression (dep = 1). The outcome variable of interest is the time in months until death or until censoring occurs. Study subjects are observed until they experience an event (death from any cause) or until they are censored. For the analysis using the Cox PH model, the SAS PROC PHREG statement is employed. 

```txt
PROC phreg data=nhefs83;; class dep (ref='0'); model Survtime*death(0)=dep/rl; 
```

RUN; 

To specify the reference group for coefficients in the analysis, the “class” option is used. By including $\prime \mathrm { e f } = 0 , \stackrel { \prime \prime } { }$ the unexposed group is designated as the reference group. The outcome variable, “Survtime,” is combined with the censoring variable “death,” where a value in parentheses indicates censoring. The values of “Survtime” are considered censored when the “death” value is 0, while they represent event times otherwise. By using the $" \mathrm { { r l } } ^ { \prime \prime }$ option, a HR along with its corresponding 95% confidence interval is generated. SAS Output 3.8 presents statistics estimated by this SAS syntax. 


SAS Output 3.8 Model fit, testing, and parameter estimates


<table><tr><td colspan="3">Model Fit Statistics</td></tr><tr><td>Criterion</td><td>Without Covariates</td><td>With Covariates</td></tr><tr><td>-2 LOG L</td><td>27,546.236</td><td>27,486.521</td></tr><tr><td>AIC</td><td>27,546.236</td><td>27,488.521</td></tr><tr><td>SBC</td><td>27,546.236</td><td>27,493.883</td></tr></table>

<table><tr><td colspan="4">Testing Global Null Hypothesis: BETA=0</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>Likelihood Ratio</td><td>59.7143</td><td>1</td><td>&lt;.0001</td></tr><tr><td>Score</td><td>67.1773</td><td>1</td><td>&lt;.0001</td></tr><tr><td>Wald</td><td>65.8184</td><td>1</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="8">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>1</td><td>0.49598</td><td>0.06114</td><td>&lt;.0001</td><td>1.642</td><td>1.457</td><td>1.851</td></tr></table>

$$
H R = \exp \left[ \beta_ {x} \left(\mathrm{dep} _ {1} - \mathrm{dep} _ {0}\right) \right] = \exp \left[ 0. 4 9 5 9 8 (1 - 0) \right] = \exp (0. 4 9 5 9 8) = 1. 6 4
$$

The results of three tests in the “Testing Global Null Hypothesis: BETA=0” table suggest that the survival curves for the two comparison groups of depression may not be the same. The likelihood ratio test measures the difference in −2logL between two nested models: one without any covariates (the null model) and the other with the covariates (“dep”). The difference is calculated as $2 7 5 4 6 . 2 3 6 - 2 7 4 8 6 . 5 2 1 = 5 9 . 7 1 5 ,$ with a corresponding p-value of <0.0001. Alternatively, the Wald test is employed. The Chi-Square value is obtained by squaring the coefficient (β) and dividing it by its standard error, resulting in (0.49598/0.06114)2 = 65.82. The p-value for this test is also <0.0001. 

As presented in the table of “Analysis of Maximum Likelihood Estimates,” the hazard ratio for “dep,” which is calculated as the exponentiation of the regression coefficient, represents the ratio of the hazard functions between the two groups. The crude HR is 1.64 (95%CI: 1.46–1.85), indicating that the hazard for depressed subjects is 1.64 times higher than that for non-depressed subjects. In other words, individuals without depression tend to have a longer survival time compared to those with depression. 

If there is suspicion that the relationship between depression and death may be confounded by the level of education, it would be appropriate to include the number of years of education (“eduy”) as a confounder in the Cox PH model. By doing so, the model accounts for the potential confounding impact of education on the association between depression and mortality. 

## Example 3.9

In the syntax of PROC PHREG, the education variable, “eduy,” is added to the model that includes “dep.” 

```javascript
PROC phreg data=nhefs83;;
class dep (ref='0');
model Survtime*death(0)=dep eduy/rl; 
```

RUN; 


SAS Output 3.9 Mode fit, testing, and estimates


<table><tr><td colspan="3">Model Fit Statistics</td></tr><tr><td>Criterion</td><td>Without Covariates</td><td>With Covariates</td></tr><tr><td>-2 LOG L</td><td>27,354.753</td><td>26,743.818</td></tr><tr><td>AIC</td><td>27,354.753</td><td>26,747.818</td></tr><tr><td>SBC</td><td>27,354.753</td><td>26,758.528</td></tr></table>

<table><tr><td colspan="4">Testing Global Null Hypothesis: BETA=0</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>Likelihood Ratio</td><td>610.9348</td><td>2</td><td>&lt;.0001</td></tr><tr><td>Score</td><td>689.9607</td><td>2</td><td>&lt;.0001</td></tr><tr><td>Wald</td><td>689.6202</td><td>2</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>0.28611</td><td>0.06198</td><td>&lt;.0001</td><td>1.331</td><td>1.179</td><td>1.503</td></tr><tr><td>eduy</td><td>-0.17487</td><td>0.00705</td><td>&lt;.0001</td><td>0.840</td><td>0.828</td><td>0.851</td></tr></table>

$$
\begin{array}{l} H R = \exp \left[ \beta_ {x} \left(\mathrm{dep} _ {1} - \mathrm{dep} _ {0}\right) + \beta_ {\text {eduy}} (\text {eduy - eduy}) \right] = \exp \left[ 0. 2 8 6 1 1 (1 - 0) - 0. 1 7 4 8 7 (0) \right] \\ = \exp (0. 2 8 6 1 1 - 0) = 1. 3 3. \\ \end{array}
$$

In this model, the value of “eduy” is held equal between the two comparison groups (depressed vs. non-depressed) to evaluate the exposure effect of depression on death among individuals with the same education level. By fixing the education level, we can isolate and assess the specific effect of depression on all-cause death while controlling for potential confounding bias of educational attainment. 

After adjusting for the potential confounding effect of education years, the HR measuring the association between depression and death is reduced to 1.33 (95% CI: 1.18–1.50) from the crude HR of 1.64. This corresponds to a change-in-estimate of 23.3% [(1.64–1.33)/1.33]. When accounting for education years, the hazard of death for individuals with depression is 33.1% [(1.331−1)*100] higher than that for non-depressed individuals. These findings suggest that education acts as a positive confounder in the relationship between depression and mortality in this cohort study, as education is negatively associated with both depression and death (see Section 1.4.3 in Chapter 1 for positive confounding). 

If one is interested in examining the association between education and death while controlling for depression, the adjusted HR is 0.84. When dealing with quantitative covariates such as the number of education years, a more informative statistic can be obtained by subtracting 1.0 from the HR and multiplying the result by 100. This calculation provides an estimated percent change in the hazard for each 1-unit increase in the covariate. Applying this approach to the HR of 0.84, we find 100 ×(0.84 − 1) = −16. Therefore, for each additional year of education, the hazard of death is estimated to decrease by approximately 16%. This suggests that higher education is associated with a lower risk of death, independent of the presence of depression. 

If there is a belief that the association between depression and death may vary depending on the level of systolic blood pressure, one can examine the potential modification effect between depression and systolic blood pressure on the outcome of death. This analysis can help determine whether the effect of depression on death differs across different levels of systolic blood pressure. 

## Example 3.10

In order to evaluate the potential modification effect of depression and systolic blood pressure on death, we include a product term called “depsys” in the Cox PH model. This product term is created by multiplying the variables “dep” (depression) and centered systolic variable “c_systolic.” Systolic blood pressure is centered by its mean of 130 mmHg. The Cox PH model includes this product term as well as the two variables involved in the product term, depression and systolic pressure. 

```matlab
proc phreg data=nhefs83 ;
class dep (ref='0');
model Survtime*death(0)=dep c_systolic depsys;
depsys=dep*c_systolic;
run; 
```

Given that the coefficient of the product term “depage” is −0.00584 and its associated p-value is 0.0315, we conclude that the effect of the two variables on death is not multiplicative, and thus, there is a modification effect between depression and systolic blood pressure on the risk of death. 


SAS Output 3.10 Analysis of maximum likelihood estimates


<table><tr><td colspan="6">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>0.54577</td><td>0.06574</td><td>68.9197</td><td>&lt;.0001</td></tr><tr><td>C_systolic</td><td>1</td><td>0.02842</td><td>0.00120</td><td>562.0974</td><td>&lt;.0001</td></tr><tr><td>depsys</td><td>1</td><td>-0.00584</td><td>0.00272</td><td>4.6276</td><td>0.0315</td></tr></table>

$$
\begin{array}{l} H R = \exp \left[ \beta_ {x} \left(\operatorname{dep} _ {1} - \operatorname{dep} _ {0}\right) + \beta_ {c _ {-} s y s t o l i c} \left(c _ {-} s y s t o l i c - c _ {-} s y s t o l i c\right) \right. \\ \left. + \beta_ {d e p s y s} \left(\mathrm{dep} _ {1} ^ {*} \mathrm {c\_ systolic} - \mathrm{dep} _ {0} ^ {*} \mathrm {c\_ systolic}\right) \right] \\ = \exp [ 0. 5 4 5 7 7 (1 - 0) + 0. 0 2 8 4 2 (0) - 0. 0 0 5 8 4 (1 ^ {*} c _ {-} s y s t o l i c - 0 ^ {*} c _ {-} s y s t o l i c) \\ = \exp \Big (0. 5 4 5 7 7 - 0. 0 0 5 8 4 * c \_ s y s t o l i c \Big). \\ \end{array}
$$

To examine how systolic pressure modifies the association between all-cause death and depression, we can estimate hazard ratios at various values of systolic pressure. For this analysis, we select specific values for systolic pressure, such as 120, 130, 150, and 160. 

When systolic pressure = 120 (c_systolic=−10), HR = exp(0.54577 − 0.00584*−10) = 1.83 

When systolic pressure = 130 (c_systolic=0), HR = exp(0.54577 − 0.00584*0) = 1.73 

When systolic pressure = 150 (c_systolic=20), HR = exp(0.54577 − 0.00584*20) = 1.54 

When systolic pressure = 160 (c_systolic=30), HR = exp(0.54577 − 0.00584*30) = 1.45 

This numerical example indicates that the association between depression and death is attenuated as systolic pressure increases. By utilizing the “HAZARDRATE” option in “PROC PHREG,” we can estimate the four individual hazard ratios along with their corresponding 95% confidence intervals. 

```txt
PROC phreg data=nhefs83;
class dep (ref='0');
model Survtime*death(0) = dep|c_systolic;
hazard ratio dep/diff=ref at (c_systolic=-10 0 20 30);
RUN; 
```


SAS Output 3.11 Hazard ratios at the selected levels of systolic pressure


<table><tr><td colspan="4">Hazard Ratios for dep</td></tr><tr><td>Description</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0 At c_systolic=-10</td><td>1.830</td><td>1.565</td><td>2.139</td></tr><tr><td>dep 1 vs 0 At c_systolic =0</td><td>1.726</td><td>1.517</td><td>1.963</td></tr><tr><td>dep 1 vs 0 At c_systolic =20</td><td>1.536</td><td>1.343</td><td>1.756</td></tr><tr><td>dep 1 vs 0 At c_systolic =30</td><td>1.448</td><td>1.229</td><td>1.708</td></tr></table>

The “DIFF=REF” option is used to specify the reference group that corresponds to the reference group defined under the “class” option. In this context, “DIFF=REF” ensures that the hazard ratio compares the hazard for the depressed group to that of the nondepressed group at each specified systolic blood pressure. The “AT” option is used to indicate the variable (c_systolic) that modifies the association between depression and all-cause death and provides a list of values for the modifier (c_systolic) at which hazard ratios are computed. In this case, hazard ratios are computed at each value in the list, which includes “systolic = −10 0 20 30.” 

Interpreting the results from the above examples requires caution, as they are crude analyses and the associations indicated by the HR may be confounded by other confounders. To estimate the strength of the association accurately, it is essential to specify the association model correctly using the methods outlined in Chapter 1 and incorporate it into a multiple Cox PH model. 

## 3.4.3 Estimate Hazard Ratio in Multiple Cox PH Model

While the previous section introduced the simple Cox PH model, emphasizing a model with a singular confounder and modifier, this section expands on that foundation by illustrating the application of multiple Cox PH models. These models help estimate hazard ratios while accounting for multiple confounders simultaneously. The following examples are used to illustrate the modeling procedures. 

## Example 3.11

In this example, we will explore the potential role of positive affect in the causal pathway from depression (exposure) to death (outcome). Positive affect refers to the experience of positive moods such as joy, happiness, spirit, satisfaction, excitement, or pride (Okely, Weiss, and Gale 2017). This variable is centered by its mean score of 12, called “c_paffect,” 

We consider eight potential confounding variables: sex (1: male, 0: female), age (in years), race (1: white, 0: other races), education years (eduy), marital status (marital, 0: marriage, 1: never married, 2: widowed, divorced, or separated), residence areas (area, 0: rural area, 1: city, 2: city suburbs), family income (income, 0: less than or equal to $3,999, 1: $4,000–5,999, 2: $6,000–9,999, 3: $10,000–19,999, 4: $20,000–34,999, 5: equal to or greater than $35,000), and BMI (bmi3, 0: 18.5–24.9, 1: <18.5, 2: 25.91–29.92, 3: >29.92). Previous research suggests that these potential confounders are associated with depression and serve as risk factors for death. Therefore, we include these variables as confounders when estimating the association between depression and death, as well as the role of positive affect in the association between depression and death. 

Let’s start by evaluating the role of positive affect in the causal pathway linking depression to death. This role could be conceptualized either as a confounder or as 