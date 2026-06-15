Fred Brauer Carlos Castillo-Chavez Zhilan Feng 

## Mathematical Models in Epidemiol ogy

# Texts in Applied Mathematics

Volume 69 

## Series Editors

Anthony Bloch, University of Michigan, Ann Arbor, MI, USA 

Charles L. Epstein, University of Pennsylvania, Philadelphia, PA, USA 

Alain Goriely, University of Oxford, Oxford, UK 

Leslie Greengard, New York University, New York, NY, USA 

## Advisory Board

J. Bell, Lawrence Berkeley National Lab, Berkeley, USA 

R. Kohn, New York University, New York, USA 

P. Newton, University of Southern California, Los Angeles, USA 

C. Peskin, New York University, New York, USA 

R. Pego, Carnegie Mellon University, Pittsburgh, USA 

L. Ryzhik, Stanford University, Stanford, USA 

A. Singer, Princeton University, Princeton, USA 

A. Stevens, Max-Planck-Institute for Mathematics, Leipzig, Germany 

A. Stuart, University of Warwick, Coventry, UK 

T. Witelski, Duke University, Durham, USA 

S. Wright, University of Wisconsin, Madison, USA 

The mathematization of all sciences, the fading of traditional scientific boundaries, the impact of computer technology, the growing importance of computer modeling and the necessity of scientific planning all create the need both in education and research for books that are introductory to and abreast of these developments. The aim of this series is to provide such textbooks in applied mathematics for the student scientist. Books should be well illustrated and have clear exposition and sound pedagogy. Large number of examples and exercises at varying levels are recommended. TAM publishes textbooks suitable for advanced undergraduate and beginning graduate courses, and complements the Applied Mathematical Sciences (AMS) series, which focuses on advanced textbooks and research-level monographs. 

More information about this series at http://www.springer.com/series/1214 

# Mathematical Models in Epidemiology

Fred Brauer 

University of British Columbia 

Department of Mathematics 

Vancouver, BC, Canada 

Zhilan Feng 

Purdue University 

Department of Mathematics 

West Lafayette, IN, USA 

Carlos Castillo-Chavez 

Mathematical and Computational Modeling 

Center (MCMSC) 

Department of Mathematics and Statistics 

Arizona State University 

Tempe, AZ, USA 

ISSN 0939-2475 

ISSN 2196-9949 (electronic) 

Texts in Applied Mathematics 

ISBN 978-1-4939-9826-5 

ISBN 978-1-4939-9828-9 (eBook) 

https://doi.org/10.1007/978-1-4939-9828-9 

Mathematics Subject Classification: 92D30 

© Springer Science+Business Media, LLC, part of Springer Nature 2019 

This work is subject to copyright. All rights are reserved by the Publisher, whether the whole or part of the material is concerned, specifically the rights of translation, reprinting, reuse of illustrations, recitation, broadcasting, reproduction on microfilms or in any other physical way, and transmission or information storage and retrieval, electronic adaptation, computer software, or by similar or dissimilar methodology now known or hereafter developed. 

The use of general descriptive names, registered names, trademarks, service marks, etc. in this publication does not imply, even in the absence of a specific statement, that such names are exempt from the relevant protective laws and regulations and therefore free for general use. 

The publisher, the authors, and the editors are safe to assume that the advice and information in this book are believed to be true and accurate at the date of publication. Neither the publisher nor the authors or the editors give a warranty, express or implied, with respect to the material contained herein or for any errors or omissions that may have been made. The publisher remains neutral with regard to jurisdictional claims in published maps and institutional affiliations. 

This Springer imprint is published by the registered company Springer Science+Business Media, LLC, part of Springer Nature. 

The registered company address is: 233 Spring Street, New York, NY 10013, U.S.A. 

## Foreword

The subject of infectious diseases has been one of the richest areas of application of mathematics in biology, dating back to Sir Ronald Ross’ classic contributions to the management of malaria at the beginning of the last century. Infectious diseases obviously impose great burdens of morbidity and mortality on humanity, as well as on non-human populations of importance to us; and hence, the ability to use formal models to reduce those burdens has attracted the attention of exceptional mathematicians, including all three of the authors of this volume. All have made major contributions to the subject, independently and in collaboration with each other, and the current volume profits from their complementary talents and expertise. The authors combine broad expertise built on excellent scholarship, their own fundamental research and masterful exposition, and I am delighted to have been asked to write this Foreword. 

The subject of mathematical epidemiology has seen great progress in the century since Ross, as new diseases like SARS and HIV–AIDS have appeared and as older ones, like measles and TB, have waned and waxed and re-emerged in places where they were thought to be defeated. But our battle with infectious diseases can never be won completely; like Lewis Carroll’s Red Queen said, we must keep running just “to keep in the same place”; and we will need to run even faster if we are to make progress in this perpetual struggle. Highly adaptive agents like influenza A continue to evolve in a continual struggle with immune defenses, fostering increased efforts to develop a universal vaccine; similarly, pathogenic bacteria have evolved resistance to the drugs that had at first tamed them. At the same time, a growing and increasingly mobile world population has accelerated the spread of disease, including novel diseases that previously would have remained endemic or died out. Climate change has added yet another challenge, as the vectors of diseases, from insects to migrant birds, shift their ranges to carry diseases into areas whose populations are unprepared to deal with them. As discussed in the next paragraph, social influences raise new challenges for management and for mathematical modeling. Even our own microbiomes have been dramatically affected by environmental influences, antibiotic uses, and medical practices such as C-sections, changing the background against which management must operate. 

Medical science has responded brilliantly to these challenges, through the development of new antibiotics, vaccines, and treatment protocols, guided along the way by improved mathematical modeling. Such models have needed to address the multi-scale dynamics of an interacting system of within-host immune dynamics, the population-level modeling of disease spread, the dynamics of vector populations, and the socioeconomic context within which diseases spread. The socioeconomic issues include not only the economics of control measures but also the behavioral responses before and during outbreaks, from vaccine hesitancy to the avoidance of social contacts involving infectious individuals. The overuse of antibiotics and underuse of vaccines have created new dilemmas for practitioners and new avenues for mathematical modeling to make contributions, guiding individual decisions, medical practice, hospital decision-making, and public policy at all levels. 

This volume is a comprehensive treatment of the classical theory and modern extensions of that theory. It is constructed as a textbook for students with solid mathematical foundations, including problem sets that illuminate the issues. As such, it should find wide use as the basis for beginning and advanced courses in this important subject and serve as a complement and update to the excellent 2001 text by Brauer and Castillo-Chavez; clearly, a lot has happened in the field in the nearly two decades since that book appeared, and those advances are well documented in this book. But this volume, as the earlier one, also will be a treasure trove for mathematicians and other researchers looking for an authoritative introduction to the literature and to open problems to the solutions of which they might contribute their skills. It should find its way onto the shelves of every researcher interested in the topic. 

Princeton University Princeton, NJ, USA 

Simon Levin 

## Preface

The goal of this book is to interest students of mathematics and public health professionals in the modeling of infectious diseases transmission. We believe that some knowledge of disease transmission models can give useful insights to epidemiologists and that there are interesting mathematical problems in such models. The mathematical background necessary for studying this book is a knowledge of calculus, some matrix theory, and some ordinary differential equations, specifically approximate and qualitative methods. Our emphasis is on describing the mathematical results being used and showing how to apply them rather than on detailed proofs. We hope that eventually the education of biologists and public health professionals will include these mathematical topics in the first 2 years of university so that this book can be accessible to upper-level undergraduate students. 

A course based on this book should cover the first section on basic concepts and some of the chapters on specific diseases in the second section. In addition, some of the more advanced topics from the third section, depending on the interests of the students and the time available, can be included. Throughout the book, there are suggested projects giving a sense of research topics that could be attacked by students in groups. In the first section of the book, there are also numerous exercises, and answers to selected exercises are available. We believe that a book should go beyond a course based on it, to lead to further reading, and the last three chapters of the book and the epilogue are intended to suggest some topics for further thought. 

In order to make the book more accessible to the readers with minimal mathematical background, we have put some mathematical review material on matrix algebra, differential equations, and systems of differential equations into some appendices to this book. We have also established a website 

https://mcmsc.asu.edu/content/mathematical-models-epidemiology 

containing review notes covering some topics in calculus, matrix algebra, and dynamical systems (ordinary differential equations and difference equations). We have also starred difficult exercises and difficult sections which are intended for the readers with strong mathematical backgrounds. 

Stochastic disease transmission models form an important area that we have largely omitted in order to keep the size of this book within bounds. For readers who may wish to explore this subject, we have included some references near the end of Chap. 1. Discrete disease transmission models are not studied in the main text, but there are several projects introducing the subject in addition to some references near the end of Chap. 1. 

Our emphasis in this book is on relatively simple models whose goal is to describe general qualitative behavior and establish broad principles. Public health professionals are more concerned with detailed models to make short-term quantitative predictions. Such detailed models are generally difficult or impossible to solve analytically, but the relatively recent development of the availability of highspeed computing has made detailed models available for quantitative predictions and comparison of different possible management strategies. The emphasis in this book is on relatively simple models, but readers should remember that there is another important aspect of the subject. 

Vancouver, BC, Canada 

Tempe, AZ, USA 

West Lafayette, IN, USA 

Fred Brauer 

Carlos Castillo-Chavez 

Zhilan Feng 

## Acknowledgments

It is always hard to write acknowledgments because so many have contributed in a multitude of ways to the content of his book, and so we hope that our public recognition in this section is accepted by those who are not mentioned explicitly. Thanks for your understanding. This book, like our textbook Mathematical Models in Population Biology and Epidemiology by FB and CCC, has finally been completed after many detours and delays. This volume has been enriched by the inclusion of a third author, Zhilan Feng (ZF). The three of us have been involved in mathematical epidemiology and its applications for roughly three decades, an effort that was intensified by the establishment of the Mathematical and Theoretical Biology Institute (MTBI) by Carlos Castillo-Chavez (CCC) in 1996. This is a summer institute that has mentored nearly 500 undergraduates (152 have completed a PhD), nearly 180 graduate students, several postdocs, and a dozen young faculty. The energy of MTBI and its regular faculty has been a source of inspiration, energy, and ideas for this project. The staff of the Simon A. Levin Mathematical, Computational, and Modeling Sciences Center (SAL-MCMSC) has been involved in the logistics of the MTBI and of this project. We are particularly thankful to Kamal Barley for his invaluable help in drawing most of the figures; to Baltazar Espinoza and Victor Moreno for their assistance in indexing, in various chapters, and some of the computations and graphics; and to MTBI alumni for their useful comments. In addition, Baltazar wrote much of the material on age distributions in Chap. 13. All books have misprints. This one has many fewer misprints than it might otherwise have had because of the proofreading by Baltazar Espinosa, Ceasar Montalvo, Anarina Murillo, and Marisabel Rodriguez. 

CCC wants to thank his three children, Carlos W, Gabi, and Melissa, and his wife, Nohora, for their support, ideas, and inspiration. ZF wants to thank her daughter, Haiyun, and son, Henry, for all their love and support. FB wants to thank his wife, Esther; his children, David, Deborah, and Michael; and his grandchildren, Noah, Sophie, Benjamin, and Evan, for their support and tolerance. One of the lessons learned from the MTBI is that a cooperating group can accomplish much more than any of the individuals in the group, and this applies to families even without direct involvement. 

We would like to restate our appreciation for the deliberate or unsuspecting mentoring that we have received over the years from our undergraduate, graduate, and postdoctoral students, colleagues, collaborators, visitors, and researchers in the field across the world. This book would have not completed without the support that we have received over the years by the National Science Foundation, DOD, and occasionally by the NIH, as well as the Canadian group MITACS. The MITACS (Mathematics of Information Technology and Complex Systems) program in response to the SARS epidemic of 2002–2003 has instigated much cooperation of mathematical modelers and public health professionals to learn to communicate with one another. The support that the SAL-MCMSC has received from the Offices of the President and Provost, the PhD Program in Applied Mathematics in the Life and Social Sciences, and the School of Human Evolution and Social Change at Arizona State University have been critical for this effort. We thank them all. 

## Contents

Foreword 

Preface. vii 

Acknowledgments . ix 

## Part I Basic Concepts of Mathematical Epidemiology

1 Introduction: A Prelude to Mathematical Epidemiology 3 

1.1 Introduction 3 

1.2 Some History. 4 

1.2.1 The Beginnings of Compartmental Models 5 

1.2.2 Stochastic Models 7 

1.2.3 Developments in Compartmental Models. 9 

1.2.4 Endemic Disease Models 11 

1.2.5 Diseases Transmitted by Vectors 12 

1.2.6 Heterogeneity of Mixing . 14 

1.3 Strategic Models and This Volume. 15 

References . 16 

2 Simple Compartmental Models for Disease Transmission 21 

2.1 Introduction to Compartmental Models. 23 

2.2 The SIS Model 26 

2.3 The SI R Model with Births and Deaths . 30 

2.4 The Simple Kermack–McKendrick Epidemic Model 35 

2.5 Epidemic Models with Deaths due to Disease. 43 

2.6 *Project: Discrete Epidemic Models . 46 

2.7 *Project: Pulse Vaccination. 47 

2.8 *Project: A Model with Competing Disease Strains . 49 

2.9 Project: An Epidemic Model in Two Patches. 52 

2.10 Project: Fitting Data for an Influenza Model 53 

2.11 Project: Social Interactions 54 

2.12 Exercises 55 

References . 60 

## 3 Endemic Disease Models . 63

3.1 More Complicated Endemic Disease Models 64 

3.1.1 Exposed Periods 64 

3.1.2 A Treatment Model 65 

3.1.3 Vertical Transmission 67 

3.2 Some Applications of the SIR Model 68 

3.2.1 Herd Immunity 68 

3.2.2 Age at Infection 69 

3.2.3 The Inter-Epidemic Period. 71 

3.2.4 “Epidemic” Approach to Endemic Equilibrium 72 

3.3 Temporary Immunity 73 

3.3.1 *Delay in an SIRS Model. 75 

3.4 A Simple Model with Multiple Endemic Equilibria 78 

3.5 A Vaccination Model: Backward Bifurcations 81 

3.5.1 The Bifurcation Curve 87 

3.6 *An SEI R Model with General Disease Stage Distributions . . . . 88 

3.6.1 *Incorporation of Quarantine and Isolation . 93 

3.6.2 *The Reduced Model of (3.42) Under GDA . 95 

3.6.3 *Comparison of EDM and GDM. 96 

3.7 Diseases in Exponentially Growing Populations 100 

3.8 Project: Population Growth and Epidemics 102 

3.9 *Project: An Environmentally Driven Infectious Disease 107 

3.10 *Project: A Two-Strain Model with Cross Immunity 

3.11 Exercises 112 

References . 114 

## 4 Epidemic Models 117

4.1 A Branching Process Disease Outbreak Model 118 

4.1.1 Transmissibility 123 

4.2 Network and Compartmental Epidemic Models 125 

4.3 More Complicated Epidemic Models 129 

4.3.1 Exposed Periods 129 

4.3.2 A Treatment Model 131 

4.3.3 An Influenza Model 133 

4.3.4 A Quarantine–Isolation Model 134 

4.4 An SIR Model with a General Infectious Period Distribution . . . . 137 

4.5 The Age of Infection Epidemic Model 139 

4.5.1 A General SEIR Model. 141 

4.5.2 A General Treatment Model 144 

4.5.3 A General Quarantine/Isolation Epidemic Model . . . . . . . 146 

4.6 The Gamma Distribution 148 

4.7 Interpretation of Data and Parametrization 151 

4.7.1 Models of SIR Type 152 

4.7.2 Models of SEIR Type 154 

4.7.3 Mean Generation Time. 156 

4.8 *Effect of Timing of Control Programs on Epidemic Final Size . 159 

4.9 Directions for Generalization. 161 

4.10 Some Warnings 161 

4.11 *Project: A Discrete Model with Quarantine and Isolation . . . . . 162 

4.12 Project: Epidemic Models with Direct and Indirect Transmission 167 

4.13 Exercises 171 

References . 176 

## 5 Models with Heterogeneous Mixing 179

5.1 A Vaccination Model 179 

5.2 The Next Generation Matrix and the Basic Reproduction Number . 182 

5.2.1 Some More Complicated Examples . 188 

5.3 Heterogeneous Mixing. 188 

5.3.1 *Optimal Vaccine Allocation in Heterogeneous Populations 202 

5.4 A Heterogeneous Mixing Age of Infection Model . 209 

5.4.1 The Final Size of a Heterogeneous Mixing Epidemic . . . 212 

5.5 Some Warnings 216 

5.6 *Projects: Reproduction Numbers for Discrete Models 217 

5.7 *Project: Modeling the Synergy Between HIV and HSV-2....... 221 

5.8 Project: Effect of Heterogeneities on Reproduction Numbers . . . . 223 

References . 225 

## 6 Models for Diseases Transmitted by Vectors 229

6.1 Introduction 229 

6.2 A Basic Vector Transmission Models . 230 

6.2.1 The Basic Reproduction Number. 232 

6.2.2 The Initial Exponential Growth Rate . 233 

6.3 Fast and Slow Dynamics 234 

6.3.1 Singular Perturbations 237 

6.4 A Vector-Borne Epidemic Model 239 

6.4.1 A Final Size Relation 240 

6.5 *Project: An SEIR/SEI Model 241 

6.6 *Project: Models for Onchocerciasis 241 

6.7 Exercises 244 

References . 244 

## Part II Models for Specific Diseases

## 7 Models for Tuberculosis. 249

7.1 A One-Strain Model with Treatment. 251 

7.2 A Two-Strain TB Model 252 

7.3 Optimal Treatment Strategies 256 

7.4 Modeling of the Long and Variable Latency of TB 260 

7.5 Backward Bifurcation in a TB Model with Reinfection 263 

7.6 Other TB Models with More Complexities . 265 

7.7 Project: Some Calculations for the Two-Strain Model 267 

7.8 Project: Refinements of the One-Strain Model 268 

7.9 Project: Refinements of the Two-Strain Model . 269 

References . 271 

## 8 Models for HIV/AIDS 273

8.1 Introduction 273 

8.2 A Model with Exponential Waiting Times 275 

8.3 An HIV Model with Arbitrary Incubation Period Distributions . . 278 

8.4 An Age of Infection Model. 281 

8.5 *HIV and Tuberculosis: Dynamics of Coinfections. 284 

8.6 *Modeling the Synergy Between HIV and HSV-2 292 

8.6.1 Reproduction Numbers for Individual Diseases 295 

8.6.2 Invasion Reproduction Numbers 297 

8.6.3 Influence of HSV-2 on the Dynamics of HIV. 299 

8.7 An HIV Model with Vaccination. 299 

8.8 A Model with Antiretroviral Therapy (ART) 301 

8.9 Project: What If Not All Infectives Progress to AIDS? 302 

References . 305 

## 9 Models for Influenza 311

9.1 Introduction to Influenza Models 311 

9.2 A Basic Influenza Model 312 

9.2.1 Vaccination 316 

9.3 Antiviral Treatment 319 

9.4 Seasonal Influenza Epidemics . 323 

9.4.1 Season to Season Transition 326 

9.5 Pandemic Influenza 326 

9.5.1 A Pandemic Outbreak . 327 

9.5.2 Seasonal Outbreaks Following a Pandemic . 328 

9.6 9.6 The Influenza Pandemic of 2009 . The Influenza Pandemic of 2009 330 330 

9.6.1 A Tactical Influenza Model 9.6.1A Tactical Influenza Model 9.6.1 A Tactical Influenza Model 330 330 330 

9.6.2 Multiple Epidemic Waves. 9.6.2Multiple Epidemic Waves . Multiple Epidemic Waves . 331 331 331 

9.6.3 Parameter Estimation and Forecast of the Fall Wave . . . . 334 9.6.3 Parameter Estimation and Forecast of the Fall Wave.... 334 

9.7 9.7 *An SIQR Model with Multiple Strains with Cross-Immunity... 337 *An SIQR Model with Multiple Strains with Cross-Immunity... 337 

9.7.1 *An SIQR Model with a Single Infectious Class . . . . . . . . 338 9.7.1 *An SIQR Model with a Single Infectious Class.... 338 9.7.1 *An SIQR Model with a Single Infectious Class 338 

9.7.2 *The Case of Two Strains with Cross-Immunity 9.7.2 *The Case of Two Strains with Cross-Immunity 342 342 

9.8 Exercises 347 

References . 348 

## 10 Models for Ebola. 351

10.1 Estimation of Initial Growth and Reproduction Numbers 351 

10.1.1 Early Detection . 358 

10.2 Evaluations of Control Measures 360 

10.3 The Legrand Model and Underlying Assumptions . 362 

10.3.1 The Legrand Model 362 

10.3.2 A Simpler System Equivalent to the Legrand Model.... 364 

10.4 *Models with Various Assumptions on Stage Transition Times.. 365 

10.5 Slower than Exponential Growth. 382 

10.5.1 The Generalized Richards Model 383 

10.5.2 The Generalized Growth Model 383 

10.5.3 The IDEA Model 384 

10.5.4 Models with Decreasing Contact Rates 384 

10.6 Project: Slower than Exponential Growth 385 

10.7 Project: Movement Restrictions as a Control Strategy . 386 

10.8 Project: Effect of Early Detection . 387 

References . 388 

11 Models for Malaria . 391 

11.1 A Malaria Model . 391 

11.2 Some Model Refinements 395 

11.2.1 Mosquito Incubation Periods 395 

11.2.2 Boosting of Immunity 396 

11.2.3 Alternative Forms for the Force of Infection. . 397 

11.3 *Coupling Malaria Epidemiology and Sickle-Cell Genetics .. . . . 398 

References . 407 

12 Dengue Fever and the Zika Virus . 409 

12.1 Dengue Fever 409 

12.1.1 Calculation of the Basic Reproduction Number . 411 

12.2 A Model with Asymptomatic Infectives . 412 

12.2.1 Calculation of the Basic Reproduction Number . 412 

12.3 The Zika Virus 414 

12.4 A Model with Vector and Direct Transmission . 414 

12.4.1 The Initial Exponential Growth Rate . 417 

12.5 A Second Zika Virus Model . 419 

12.6 Project: A Dengue Model with Two Patches 421 

12.7 Exercises 422 

References . 422 

## Part III More Advanced Concepts

13 Disease Transmission Models with Age Structure 429 

13.1 Introduction 429 

13.2 Linear Age Structured Models 430 

13.3 The Method of Characteristics 432 

13.4 Equivalent Formulation as an Integral Equation Model. 433 

13.5 Equilibria and the Characteristic Equation 435 

13.6 The Demographic Model with Discrete Age Groups 436 

13.7 Nonlinear Age Structured Models 437 

13.8 Age-Structured Epidemic Models. 439 

13.8.1 *Age-Dependent Vaccination in Epidemic Models . . . . . 440 

13.8.2 Pair-Formation in Age-Structured Epidemic Models. . . . 445 

13.9 A Multi-Age-Group Malaria Model 447 

13.10 *Project: Another Malaria Model 448 

13.11 Project: A Model Without Vaccination 451 

13.12 Project: An SI S Model with Age of Infection Structure 452 

13.13 Exercises 453 

References . 453 

## 14 Spatial Structure in Disease Transmission Models 457

14.1 Spatial Structure I: Patch Models 457 

14.1.1 Spatial Heterogeneity 457 

14.1.2 Patch Models with Travel 459 

14.1.3 Patch Models with Residence Times 461 

14.2 Spatial Structure II: Continuously Distributed Models 464 

14.2.1 The Diffusion Equation 465 

14.2.2 Nonlinear Reaction–Diffusion Equations 467 

14.2.3 Disease Spread Models with Diffusion 468 

14.3 Project: A Model with Three Patches . 471 

14.4 Project: A Patch Model with Residence Time . 474 

References . 475 

## 15 Epidemiological Models Incorporating Mobility, Behavior, and Time Scales . 477

15.1 Introduction 477 

15.2 General Lagrangian Epidemic Model in an SIS Setting 479 

15.3 Assessing the Efficiency of Cordon Sanitaire as a Control Strategy of Ebola. 481 

15.3.1 Formulation of the Model. 481 

15.3.2 Simulations 482 

15.4 *Mobility and Health Disparities on the Transmission Dynamics of Tuberculosis . 485 

15.4.1 *A Two-Patch TB Model with Heterogeneity in Population Through Residence Times in the Patches 486 

15.4.2 *Results: The Role of Risk and Mobility on TB Prevalence 486 

15.4.3 The Role of Risk as Defined by Direct First Time Transmission Rates. 487 

15.4.4 The Impact of Risk as Defined by Exogenous Reinfection Rates. 488 

15.5 *ZIKA . 490 

15.5.1 *Single Patch Model 491 

15.5.2 *Residence Times and Two-Patch Models . 492 

15.5.3 What Did We Learn from These Single Outbreak Simulations? . 500 

References . 501 

## Part IV The Future

## 16 Challenges, Opportunities and Theoretical Epidemiology 507

16.1 Disease and the Global Commons 508 

16.1.1 Contagion and Tipping Points 508 

16.1.2 Geographic and Spatial Disease Spread. 509 

16.2 Heterogeneity of Mixing, Cross-immunity, and Coinfection . . . . . 510 

16.3 Antibiotic Resistance 510 

16.4 Mobility 512 

16.4.1 A Lagrangian Approach to Modeling Mobility and Infectious Disease Dynamics 513 

16.5 Behavior, Economic Epidemiology, and Mobility 521 

16.5.1 Economic Epidemiology. 521 

16.5.2 Lagrangian and Economic Epidemiology Models . . . . . . . 523 

References . 524 

## Epilogue . 533

References . 537 

## A Some Properties of Vectors and Matrices . 539

A.1 Introduction 539 

A.2 Vectors and Matrices. 540 

A.3 Systems of Linear Equations 544 

A.4 The Inverse Matrix . 545 

A.5 Determinants 546 

A.6 Eigenvalues and Eigenvectors 548 

## B First Order Ordinary Differential Equations 553

B.1 Exponential Growth and Decay 553 

B.2 Radioactive Decay 555 

B.3 Solutions and Direction Fields 557 

B.4 Equations with Variables Separable . 562 

B.5 Qualitative Properties of Differential Equations. 569 

## C Systems of Differential Equations 579

C.1 The Phase Plane . 579 

C.2 Linearization of a System at an Equilibrium 581 

C.3 Solution of Linear Systems with Constant Coefficients. 584 

C.4 Stability of Equilibria . 593 

C.5 Qualitative Behavior of Solutions of Linear Systems 598 

## Index . 605

## Part I

## Basic Concepts of Mathematical

## Epidemiology

# Chapter 1 Introduction: A Prelude to Mathematical Epidemiology

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/12a2eb5bd1471921ff2365d9c3042c327820d2ecb03f6fbe76db2d31ec0b224a.jpg)


## 1.1 Introduction

Recorded history continuously documents the invasion of populations by infectious agents, some causing many deaths before disappearing, others reappearing in invasions some years later in populations that have acquired some degree of immunity, due to prior exposure to related infectious pathogens. The “Spanish” flu epidemic of 1918–1919 exemplifies the devastating impact of relatively rare pandemics; this one was responsible for about 50,000,000 deaths worldwide, while on the mild side of the spectrum we experience annual influenza seasonal epidemics that cause roughly 35,000 deaths in the USA each year. 

Communicable diseases have played a significant role in shaping human history. The Black Deaths (probably bubonic plague) spread starting in 1346, first through Asia and moving across Europe repeatedly during the fourteenth century. The Black Death has been estimated to have caused the death of as much as one-third of the population of Europe between 1346 and 1350. The disease reappeared regularly in various regions of Europe for more than 300 years, a notable outbreak being that of the Great Plague of London of 1665–1666. It gradually withdrew from Europe afterwards. 

Some diseases have become endemic (“permanently” established) in various populations causing a variable number of deaths particularly in countries with inefficient or resource-limited health care systems. Even within the twenty-first century, we see that millions of people die of measles, respiratory infections, diarrhea, and more. Individuals still die in significant numbers from diseases that are no longer considered dangerous, diseases that are easily treated or that have been well managed by resource-rich societies or by nations that invest in public health and prevention systematically. Some highly prevalent old foes include malaria, typhus, cholera, schistosomiasis, and sleeping sickness, endemic diseases in many parts of the world; diseases that have a significant negative impact on the mean life span of a population as well as on the economy of afflicted countries due to their impact on the health of the population. The World Health Organization has estimated that in 2011 there were 1,400,000 deaths due to tuberculosis, 1,200,000 deaths due to HIV/AIDS, and 627,000 deaths due to malaria (but other sources have estimated the number of malaria deaths to be more than 1,000,000). In short, HIV, malaria, and TB account for at least 9,000 deaths each day. The impact of vaccines can be dramatic, for example, there were 2,600,000 deaths due to measles in 1980 but only 160,000 by 2011. The development and availability of the measles vaccine led to a reduction in the number of deaths due to this childhood disease of nearly 94%. 

Epidemiologists, in response to a health emergency or as a result of systematic surveillance, first obtain and analyze observed data. They use data, observations, science, and theory as they work at identifying a pathogen (when unknown) behind an observed disease outbreak or as they proceed to plan or implement policies that ameliorates its impact. Naturally, understanding the causes and modes of transmission of each disease is central to forecasting or mitigating its impact within and across populations at risk. Mathematical models have played a substantial role in both short and long term planning for controlling the dynamics of a disease. 

This volume provides a guided tour of the role that mathematical models have played in epidemiology and public health policy. This tour introduces a wide range of models and tools that have proven useful in the study of disease dynamics and control. This book provides a framework that will position those interested in the use of modeling and computational tools in epidemiology, public health, and related fields, in a position to contribute to the study of the transmission dynamics and control of contagion. 

## 1.2 Some History

The study of infectious disease data began with the work of John Graunt (1620– 1674) in his 1662 book “Natural and Political Observations made upon the Bills of Mortality.” The Bills of Mortality were weekly records of numbers and causes of death in London parishes. The records, beginning in 1592 and kept continuously from 1603 on, provided the data that Graunt used to begin to understand or identify possible causes of observed mortality patterns. He analyzed the various causes of death and gave a method of estimating the comparative risks of dying from various diseases, giving the first approach to a theory of competing risks. 

In the eighteenth century smallpox was endemic and, perhaps not surprisingly, the first model in mathematical epidemiology was tied in to the work that Daniel Bernoulli (1700–1782) carried out on estimating the impact of inoculation against smallpox. Variolation, essentially inoculation with a mild strain, was introduced as a way to produce lifelong immunity against smallpox, but with a small risk of infection and death. There was heated debate about variolation, and Bernoulli was led to study the question of whether variolation was beneficial. His approach was to calculate the increase in life expectancy if smallpox were to be eliminated as a cause of death. His approach to the question of competing risks led to the publication of a brief outline in 1760 [7] followed in 1766 by a more complete exposition [8]. His work received a mainly favorable reception; research that has become known in the actuarial literature rather than in the epidemiological literature. More recently his approach has been generalized [31]. 

Another valuable contribution to the understanding of infectious diseases prior to our understanding of disease transmission processes was gained from the study of the temporal and spatial pattern of cholera cases during the 1855 epidemic in London carried out by John Snow. He was able to pinpoint the Broad Street water pump as the source of the infection [54, 71]. In 1873, William Budd was able to gain a similar understanding of the spread of typhoid [17]. Statistical theory also moved forward with William Farr’s study of statistical returns in 1840, a study that had as its goal the discovery of the laws that underlie the rise and fall of epidemics [36]. 

Many of the early developments in the mathematical modeling of communicable diseases are due to public health physicians. The first known result in mathematical epidemiology, as noted before, is a defense of the practice of inoculation against smallpox in 1760 by Daniel Bernoulli, a member of a famous family of mathematicians (eight spread over three generations) who had been trained as a physician. The first contributions to modern mathematical epidemiology are due to P.D. En’ko between 1873 and 1894 [30], and the foundations of the entire approach to epidemiology based on compartmental models were laid by public health physicians such as Sir R.A. Ross, W.H. Hamer, A.G. McKendrick, and W.O. Kermack between 1900 and 1935, along with important contributions from a statistical perspective by J. Brownlee. 

## 1.2.1 The Beginnings of Compartmental Models

In order to describe a mathematical model for the spread of a communicable disease, it is necessary to make some assumptions about the means of spreading infection. The idea of invisible living creatures as agents of disease goes back at least to the writings of Aristotle (384–322 BC). The existence of microorganisms was demonstrated by van Leeuwenhoek (1632–1723) with the aid of the first microscopes. The first expression of the germ theory of disease by Jacob Henle (1809–1885) came in 1840 and was developed by Robert Koch (1843–1910), Joseph Lister (1827–1912), and Louis Pasteur (1822–1875) in the late nineteenth and early twentieth centuries. The modern view is that many diseases are spread by contact through a virus or bacterium. We focus in this book on the problem of understanding the spread of disease at a population level. Similar modeling approaches can be used to study the dynamics of infection within a host for diseases including HIV. This area is the backbone of the field of mathematical and computational immunology and viral dynamics. An introduction to immunology may be found in the book by Nowak and May [67]. 

In 1906, W.H. Hamer argued that the spread of infection should depend on the number of susceptible individuals and the number of infective individuals [44]. He suggested a mass action law for the rate of new infections, and this idea has been basic in the formulation of compartmental models since that time. It is worth noting that the foundations of the entire approach to epidemiology based on compartmental models were laid, not by mathematicians, but primarily by public health physicians such as Sir R.A. Ross, W.H. Hamer, A.G. McKendrick, and W.O. Kermack between 1900 and 1935. 

A particularly instructive example is the work of Ross on malaria. Sir Ronald Ross was awarded the second Nobel Prize in Medicine in 1902 for his demonstration of the dynamics of the transmission of malaria between mosquitoes and humans. He discovered the malarial parasite in the gastrointestinal tract of the Anopheles mosquito from which he was able to characterize the life cycle of malaria. He concluded that this vector-borne disease was transmitted by the Anopheles mosquito and in the process he developed a program for controlling or eliminating it at the population level. 

It was generally believed that, so long as mosquitoes were present in a population, malaria could not be eliminated. Ross introduced a simple compartmental model [69] that included mosquitoes and humans. He showed that reducing the mosquito population below a critical level would be sufficient to eliminate malaria. This was the first introduction of the concept of the basic reproduction number, a central idea in mathematical epidemiology since that time. Field trials supported Ross’ conclusion leading sometimes to brilliant successes in malaria control. 

The basic compartmental models to describe the transmission of communicable diseases are contained in a sequence of three papers by W.O. Kermack and A.G. McKendrick in 1927, 1932, and 1933 [55–57]. The first of these papers described epidemic models. 

The Kermack–McKendrick epidemic model, introduced in Chap. 2 and studied in more detail in Chap. 4, included dependence on age of infection, that is, the time since becoming infected, and can be used to provide a unified approach to compartmental epidemic models. 

Various disease outbreaks including the SARS epidemic of 2002–2003, the concern about a possible H 5N1 influenza epidemic in 2005, the H 1N1 influenza pandemic of 2009, and the Ebola outbreak of 2014 have reignited interest in epidemic models, with the reformulation of the Kermack–McKendrick model by Diekmann, Heesterbeek, and Metz [27] highlighting the importance of looking at the foundational work. Chapter 4 contains a study of epidemic models. 

In the work of Ross and Kermack and McKendrick there is a threshold quantity, the basic reproduction number, which is now almost universally denoted by R0. Neither Ross nor Kermack and McKendrick identified this threshold quantity or gave it a name. It appears that the first person to name the threshold quantity explicitly was MacDonald [60] in his work on malaria. 

The basic reproduction number, R0 (referred to as the basic reproductive number by some authors), is defined as the expected number of disease cases (secondary infections) produced by a “typical” infected individual in a wholly susceptible population over the full course of the disease outbreak. In an epidemic situation, in which the time period is short enough to neglect demographic effects and all infected individuals recover with full immunity against reinfection, the threshold $\mathcal { R } _ { 0 } = 1$ is the dividing line between the infection dying out and the onset of an epidemic. In a situation that includes a flow of new susceptible individuals, either through demographic effects or recovery without full immunity against reinfection, the threshold $\mathcal { R } _ { 0 } = 1$ is the dividing line between an approach to a disease-free equilibrium and an approach to an endemic equilibrium, in which the disease is always present. This situation is studied in detail in Chap. 3. 

Since 1933, there has been a great deal of work on compartmental disease transmission models, with generalizations in many directions. In particular, it is assumed in [55–57] that stays in compartments are exponentially distributed. In the generalization to age of infection models in Chap. 4, we are able to assume arbitrary distributions of stay in a compartment. 

## 1.2.2 Stochastic Models

There are serious shortcomings in the simple Kermack–McKendrick model as a description of the beginning of a disease outbreak. Indeed, a very different kind of model is required since the Kermack–McKendrick compartmental epidemic model assumes that the sizes of the compartments are large enough that the mixing of members is homogeneous. However, at the beginning of a disease outbreak, there is a very small number of infective individuals and the transmission of infection is better captured if seen as a stochastic event that depends on the pattern of contacts between members of the population; a more satisfactory description should take such a stochastic pattern into account. We will not study stochastic models in this volume except for two sections at the start of Chap. 4 dealing with the initial stages of a disease outbreak. 

The process chosen here to describe it is known as a Galton–Watson process; the result was first given in [39, 77] although there was a gap in the convergence proof. The first complete proof was given much later by Steffensen [72, 73]. The result is now a standard theorem given in many sources on branching processes, for example, [45], but did not appear in the epidemiological literature until later. To the best of the authors’ knowledge, the first description in an epidemiological reference is [62] and the first epidemiological book source is the book by O. Diekmann and J.A.P. Heesterbeek [26] in 2000. 

A stochastic branching process description of the beginning of a disease outbreak begins with the assumption that there is a network of contacts of individuals, which may be described by a graph with members of the population represented by vertices and with contacts between individuals represented by edges. The study of graphs originated with the abstract theory of Erdös and Rényi of the 1950s and 1960s [33– 35], and has become important more recently in many areas, including in the study of social contacts, computer networks, and many other areas, as well as in the spread of communicable diseases. We will think of networks as bi-directional, with disease transmission possible in either direction along an edge. A brief taste of network models is given at the beginning of Chap. 4. It is however important to stress the fact that this book does not get involved in the study of stochastic models or in the study of epidemics in networks–areas that deserve their own volumes. 

We consider a disease outbreak that begins with a single infected individual (“patient zero”) who transmits infection to every individual to whom this individual is connected, that is, along every edge of the graph from the vertex corresponding to this individual. In other words, we assume that a disease outbreak begins when a single infective transmits infection to all of the people with whom he or she is in contact. Our development via branching processes is along the lines of that of [26]. Another approach, using a contact network perspective taken in [20, 65, 66] begins with an infected edge, corresponding to a disease outbreak started by an infective individual who passes the infection on to only one contact. This approach is the one taken more commonly in studies of epidemics on networks. It is somewhat more complicated and leads to somewhat different results, although the methods are quite similar. 

In a stochastic setting, it is possible to prove that there is also a number called the basic reproduction number denoted by $\mathcal { R } _ { 0 }$ with the properties that if $\mathcal { R } _ { 0 } < 1$ the probability that the infection will die out is 1, while if $\mathcal { R } _ { 0 } > 1$ there is a positive probability that the infection will persist leading to an epidemic. However, there is also a positive probability that the infection will increase initially but will produce only a minor outbreak dying out before triggering a major epidemic. This distinction between a minor outbreak and a major epidemic, and the result that if $\mathcal { R } _ { 0 } ~ > ~ 1$ there may be only a minor outbreak and not a major epidemic is intrinsic in these stochastic models and is not reflected in deterministic models, the primary theme of this book. 

A possible approach to a realistic description of an epidemic would consider the use of a branching process model initially, making a transition to a compartmental model when the epidemic has become established, that is, when there are enough infectives so that the mass action mixing in the population becomes a reasonable approximation. Another approach would be to continue to use a network model throughout the course of the epidemic [63, 64, 76]. It is possible to formulate this model dynamically with the limiting case of this dynamic model, as the population size becomes very large, being the same as the compartmental model. 

Past experiences and data have shown that the spread of infection in small populations is better captured in small communities as a random process. For this reason, stochastic models have an important role in disease transmission modeling. The most commonly used stochastic model includes the chain binomial model of Reed and Frost, first described in lectures in 1928 by W.H. Frost but not published until much later [1, 78]. The Reed–Frost model was actually anticipated nearly 40 years earlier by P.D. En’ko [30]. The work of En’ko was brought to public attention much later by K. Dietz [28]. E.B. Wilson and M.H. Burke have given a description of Frost’s 1928 lectures with a somewhat different derivation [78]. M. Greenwood introduced a somewhat different chain binomial model in 1931 [40]. The Reed– Frost model has been used widely as a basic stochastic model and many extensions have been formulated. The book [25] by D.J. Daley and J. Gani contains an account of some of the more recent extensions. Also, a stochastic analogue of the Kermack– McKendrick epidemic model has been described in [6]. 

## 1.2.3 Developments in Compartmental Models

In the mathematical modeling of disease transmission, as in most other areas of mathematical modeling, there is always a trade-off between simple, or strategic, models, which omit most details and are designed only to highlight general qualitative behavior, and detailed, or tactical, models, usually designed for specific situations including short-term quantitative predictions. Detailed models are generally difficult or impossible to solve analytically and hence their usefulness for theoretical purposes is limited, although their strategic value may be high. 

For example, very simple models for epidemics predict that an epidemic will die out after some time, leaving a part of the population untouched by disease, and this is also true of models that include control measures. This qualitative principle is not by itself very helpful in suggesting what control measures would be most effective in a given situation, but it implies that a detailed model describing the situation as accurately as possible might be useful for public health professionals. The ultimate in detailed models are agent-based models, which essentially divide the population into individuals or groups of individuals with identical behavior [32]. 

It is important to recognize that mathematical models to be used for making policy recommendations for management need quantitative results, and that the models needed in a public health setting require a great deal of detail in order to describe the situation accurately. For example, if the problem is to recommend what age group or groups should be the focus of attention in coping with a disease outbreak, it is essential to use a model which separates the population into a sufficient number of age groups and recognizes the interaction between different age groups. The development of high speed computing has made it possible to analyze highly detailed models rapidly. 

The development of mathematical methods for the study of models for communicable diseases led to a divergence between the goals of mathematicians, who sought broad understanding, and public health professionals, who sought practical procedures for management of diseases. While mathematical modeling led to many fundamental ideas, such as the possibility of controlling smallpox by vaccination and the management of malaria by controlling the vector (mosquito) population, the practical implementation was always more difficult than the predictions of simple models. Fortunately, in recent years there have been determined efforts to encourage better communication, so that public health professionals can better understand the situations in which simple models may be useful and mathematicians can recognize that real-life public health questions are much more complicated than simple models. 

In the study of compartmental disease transmission models, the population under study is divided into compartments and assumptions are made about the nature and time rate of transfer from one compartment to another. For example, in an SI R model, we divide the population being studied into three classes labeled S, I , and R. We let S(t) denote the number of individuals who are susceptible to the disease, that is, who are not (yet) infected at time t. I (t) denotes the number of infected individuals, assumed infectious and able to spread the disease by contact with susceptible individuals. R(t) denotes the number of individuals who have been infected and then removed from the possibility of being infected again or of spreading infection. In an SI S model, infectives recover with immunity against reinfection and the transitions are from susceptible to infective to susceptible. 

The rates of transfer between compartments are expressed mathematically as derivatives with respect to time of the sizes of the compartments. Initially, we assume that the duration of stay in each compartment is exponentially distributed, and as a result models are formulated initially as differential equations. Models in which the rates of transfer depend on the sizes of compartments over the past, as well as at the instant of transfer, lead to more general types of functional equations, such as differential–difference equations or integral equations. One way in which models have expressed the idea of a reduction in contacts as an epidemic proceeds is to assume a contact rate of the form $\beta S f ( I )$ with a function f (I ) that grows more slowly than linearly in I . Such an assumption, while not really a mechanistic model, may give better approximation to observed data than mass action contact. 

In the simple Kermack–McKendrick epidemic model there are two parameters, the rate of new infections and the recovery rate. Often, the recovery rate for a particular disease is known. In compartmental epidemic models with more compartments, the progression rate is more complicated but may also be known. It is possible to estimate the basic reproduction number if these parameters can be estimated, and there is an equation, known as the final size relation relating the basic reproduction number to the number of individuals infected over the course of the epidemic. There have been many presentations of this final size relation in various contexts, including models with heterogeneity of mixing [3, 12, 13, 15, 16, 26, 27, 59]. 

In their later work on disease transmission models [56, 57], Kermack and McKendrick did not include age of infection, and age of infection models were neglected for many years. Age of infection reappeared in the study of HIV/AIDS, in which the infectivity of infected individuals is high for a brief period after becoming infected, then quite low for an extended period, possibly several years, before increasing rapidly with the onset of full-blown AIDS. Thus the age of infection described by Kermack and McKendrick for epidemics became very important in some endemic situations; see, for example, [74, 75]. Also, HIV/AIDS has pointed to the importance of immunological ideas in the analysis on the epidemiological level. 

Typically, there is a stochastic phase at the beginning of a disease outbreak, followed by an exponential increase in the number of infectives, and it may be possible to estimate this initial exponential growth rate experimentally. An estimate of the initial exponential growth rate can be used to estimate the rate of new infections, and this enables estimation of the basic reproduction number 

The development and analysis of compartmental models has grown rapidly since the early models. Many of these developments are due to H.W. Hethcote [46–50]. We describe only a few of the important developments. While there are three basic compartmental disease transmission models, namely the SI S model, the SI R model without births and deaths, and the SI R model with births and deaths, each disease has its own properties which should be included in a model. We will describe the effects of adding heterogeneity of mixing in several chapters, including heterogeneity of mixing in Chap. 5, age structure in Chap. 13, and spatial heterogeneity in Chaps. 14 and 15. In addition, the chapters on individual diseases (Chaps. 7–12) include modeling aspects of the specific disease being studied. 

For influenza, there is a significant fraction of the population which is infected but asymptomatic, with lower infectivity than symptomatic individuals. There are seasonal outbreaks which may be closely related to the strain of the previous year, that is, modified by point mutations, or it may be less closely related or it may be unrelated. The level of relation of two strains, as measured by the response of hosts that have experienced a prior influenza infection, is what we refer to as strain crossimmunity. Cross-immunity measures the level of protection earned by individuals who were infected by a related strain in a previous year. Influenza models may consider the effect that a partially efficacious vaccination may have before an outbreak, as well as the role of antiviral treatment during an outbreak. Considering multiple modes of transmission is critical when the goal is to minimize the impact of a disease in a population. Cholera may be transmitted both by direct contact and by contact with pathogen shed by infectives. In tuberculosis some individuals progress rapidly to active tuberculosis, while others progress much more slowly. Also, active-tuberculosis individuals who fail to comply with long-term treatment schedules become prime candidates for the development of a drug-resistant strain. In HIV/AIDS, the infectivity of an individual depends strongly on the time since infection, while transmission depends on modes of transmission, mixing between individuals and more. In malaria, immunity against infection is boosted by exposure to infection or by genetics (sickle cell anemia). 

## 1.2.4 Endemic Disease Models

The analytic approaches to models for endemic diseases and epidemics are quite different. The analysis of a model for an endemic disease, carried out in Chap. 3, begins with the search for equilibria, which are, by definition, constant solutions of the model. Usually there is a disease-free equilibrium and there are one or more endemic equilibria, with a positive number of infected individuals. The next step is to linearize about each equilibrium and determine the stability of each equilibrium. Usually, if the basic reproduction number is less than 1, the only equilibrium is the disease-free equilibrium and this equilibrium is asymptotically stable. If the basic reproduction number is greater than 1, the usual situation is that the diseasefree equilibrium is unstable and there is a unique endemic equilibrium which is asymptotically stable. This approach also covers diseases in which there is vertical transmission, which is direct transmission from mother to offspring at birth [19]. 

However, more complicated behavior is possible. For example, if there are two strains of the disease being studied it is common to have regions in the parameter space in which there is an asymptotically stable equilibrium with only one of the strains present and a region in which there is an asymptotically stable equilibrium with both strains coexisting. Another possibility is that there is a unique endemic equilibrium but it is unstable. In this situation, there is often a Hopf bifurcation and an asymptotically stable periodic orbit around the endemic equilibrium. An example of such behavior may be found in an SIRS model, with a temporary immunity period of fixed length following recovery [51] and in an SV I R model [38]. If there is a periodic orbit with large amplitude and a long period, data must be gathered over a sufficiently large time interval to give an accurate picture. 

Another possible behavior is a backward bifurcation. As $\mathcal { R } _ { 0 }$ increases through 1 there is an exchange of stability between the disease-free equilibrium, which is asymptotically stable for $\mathcal { R } _ { 0 } < 1$ and unstable for $\mathcal { R } _ { 0 } > 1$ , and the endemic equilibrium which exists if $\mathcal { R } _ { 0 } > 1$ . The usual transition is a forward, or transcritical, bifurcation at $\mathcal { R } _ { 0 } = 1$ , with an asymptotically stable endemic equilibrium and an equilibrium infective population size depending continuously on $\mathcal { R } _ { 0 }$ . 

The behavior at a bifurcation may be described graphically by the bifurcation curve, which is the graph of the infective population size I at equilibrium as a function of the basic reproduction number $\mathcal { R } _ { 0 }$ . It has been noted [29, 42, 43, 58] that in epidemic models with multiple groups and asymmetry between groups or multiple interaction mechanisms it is possible to have a very different bifurcation behavior at $\mathcal { R } _ { 0 } = 1$ . There may be multiple positive endemic equilibria for values of $\mathcal { R } _ { 0 } < 1$ and a backward bifurcation at $\mathcal { R } _ { 0 } = 1$ . The qualitative behavior of a system with a backward bifurcation differs from that of a system with a forward bifurcation and the nature of these changes has been described in [11]. Since these behavioral differences are important in planning how to control a disease, it is important to determine whether a system can have a backward bifurcation. In the presence of two modes of sexually transmitted HIV, it was shown that multiple endemic equilibrium could be supported [53]. 

## 1.2.5 Diseases Transmitted by Vectors

Many diseases are transmitted from human to human indirectly, through a vector. Vectors are living organisms that can transmit infectious diseases between humans. Many vectors are bloodsucking insects that ingest disease-producing microorganisms during blood meals from an infected (human) host, and then inject it into a new host during a subsequent blood meal. The best known vectors are mosquitoes for diseases including malaria, dengue fever, chikungunya, Zika virus, Rift Valley fever, yellow fever, Japanese encephalitis, lymphatic filariasis, and West Nile fever, but ticks (for Lyme disease and tularemia), bugs (for Chagas’ disease), flies (for onchocerciasis), sandflies (for leishmaniasis), fleas (for plague, transmitted by fleas from rats to humans), and some freshwater snails (for schistosomiasis) are vectors for some diseases. 

Every year there are more than a billion cases of vector-borne diseases and more than a million deaths. Vector-borne diseases account for over 17% of all infectious diseases worldwide. Malaria is the most deadly vector-borne diseases, causing an estimated 627,000 deaths in 2012. The most rapidly growing vector-borne disease is dengue, for which the number of cases has multiplied by 30 in the last 50 years. These diseases are found more commonly in tropical and sub-tropical regions where mosquitoes flourish, and in places where access to safe drinking water and sanitation systems is uncertain. 

Some vector-borne diseases such as dengue, chikungunya, and West Nile virus are emerging in countries where they were unknown previously because of globalization of travel and trade and environmental challenges such as climate change. A troubling new development is the Zika virus, which has been known since 1952 but has developed a mutation in the South American outbreak of 2015 [70] which has produced very serious birth defects in babies born to infected mothers. In addition, the current Zika virus can be transmitted directly through sexual contact as well as through vectors. Chapter 6 is an introduction to the modeling of vector-borne diseases. Chapter 11 on malaria and Chap. 12 on dengue fever and the Zika virus describe modeling of specific vector-borne diseases. 

Many of the important underlying ideas of mathematical epidemiology arose in the study of malaria begun by Sir R.A. Ross [69]. Malaria is one example of a disease with vector transmission, the infection being transmitted back and forth between vectors (mosquitoes) and hosts (humans). It kills hundreds of thousands of people annually, mostly children and mostly in poor countries in Africa. Among communicable diseases, only tuberculosis causes more deaths. Other vector diseases include West Nile virus, yellow fever, and dengue fever. Human diseases transmitted heterosexually may also be viewed as diseases transmitted by vectors, because males and females must be viewed as separate populations and disease is transmitted from one population to the other. 

Vector-transmitted diseases require models that include both vectors and hosts. For most diseases transmitted by vectors, the vectors are insects, with a much shorter life span than the hosts, who may be humans as for malaria or animals as for West Nile virus, although there is malaria (not human malaria) in various animal populations and West Nile virus has infected humans as far as Arizona in the USA. 

The compartmental structure of the disease may be different in host and vector species; for many diseases with insects as vectors an infected vector remains infected for life so that the disease may have an SI or SEI structure in the vectors and an SI R or SEI R structure in the hosts. 

## 1.2.6 Heterogeneity of Mixing

In disease transmission models not all members of the population make contacts at the same rate. In sexually transmitted diseases there is often a “core” group of very active members who are responsible for most of the disease cases, and control measures aimed at this core group have been very effective in control [52]. In epidemics there are often “super-spreaders,” who make many contacts and are instrumental in spreading disease and in general some members of the population make more contacts than others. Chapter 5 deals with models for diseases with heterogeneous mixing and includes description of a general method (the next generation matrix) for determining the basic reproduction number for models with heterogeneous mixing. To model heterogeneity in mixing we may assume that the population is divided into subgroups with different activity levels. Formulation of models requires some assumptions about the mixing between subgroups. There have been many studies of mixing patterns in real populations, for example, [9, 10, 18, 37, 68]. 

It has often been observed in epidemics that most infectives do not transmit infections at all or transmit infections to very few others. This suggests that homogeneous mixing at the beginning of an epidemic may not be a good approximation. 

The SARS epidemic of 2002–2003 spread much more slowly than would have been expected on the basis of the data on disease spread at the start of the epidemic. Early in the SARS epidemic of 2002–2003 it was estimated that $\mathcal { R } _ { 0 }$ had a value between 2.2 and 3.6. At the beginning of an epidemic, the exponential rate of growth of the number of infectives is approximately $( \mathcal { R } _ { 0 } - 1 ) / \alpha$ , where $1 / \alpha$ is the generation time of the epidemic, estimated to be approximately 10 days for SARS. This would have predicted at least 30,000 cases of SARS in China during the first 4 months of the epidemic. In fact, there were fewer than 800 cases reported in this time. One explanation for this discrepancy is that the estimates were based on transmission data in hospitals and crowded apartment complexes or in the scaling of the model used to estimate parameters [24]. It was observed that there was intense activity in some locations and very little in others. This suggests that the actual reproduction number (averaged over the whole population) was much lower, perhaps in the range 1.2–1.6, and that heterogeneous mixing was a very important aspect of the epidemic. 

Age is one of the most important characteristics in the modeling of populations and infectious diseases. Individuals with different ages may have different reproduction and survival capacities. Diseases may have different infection rates and mortality rates for different age groups. Individuals of different ages may also have different behaviors, and behavioral changes are crucial in control and prevention of many infectious diseases. Young individuals tend to be more active in interactions with or between populations, and in disease transmissions. Age-structured models are studied in Chap. 13. 

Sexually transmitted diseases (STDs) are spread through partner interactions with pair-formations and the pair-formations process is age-dependent in most cases. For example, most HIV cases occur in the group of young adults. 

Childhood diseases, such as measles, chicken pox, and rubella, are spread mainly by contacts between children of similar ages. More than half of the deaths attributed to malaria are in children under 5 years of age due to their weaker immune systems. This suggests that in models for disease transmission in an age-structured population it is necessary to allow the contact rates between two members of the population to depend on the ages of both members. Another important motivation for using agestructured models for childhood diseases is that vaccination is age-dependent (e.g., measles). 

The development of age-structured models for disease transmission required development of the theory of age-structured populations. In fact, the first models for age-structured populations [61] were designed for the study of disease transmission in such populations. 

## 1.3 Strategic Models and This Volume

This book is intended for both mathematicians and public health professionals. However, it is a book aimed primarily at practitioners who are quantitatively trained. For readers less familiar with mathematics, we are providing a website that includes notes on calculus, linear algebra, ODEs, and difference equations. We would like to repeat that it is not a book about mathematics per se. Hence, mathematical rigor is not a priority albeit we have tried to document some assertions. We wish to present the truth and nothing but the truth, but not necessarily the whole truth. Our hope is that public health people will be sufficiently interested to review mathematics if necessary and make use of the book. 

We do not cover stochastic models, except for some material in Sects. 4.1 and 4.2. Some presentations of stochastic models may be found in [2, 4, 5, 25, 41]. 

Also, we do not cover discrete models in the main text. This is a deliberate choice that we have made to limit the size of this volume, despite the fact that a lot can be learned by the appropriate formulation of discrete models, which are unfortunately often seen as a discretization of continuous time models, that is, they are not derived directly from first principles, deviating the focus from the study of disease dynamics to the mathematical question of whether or not it is a proper discretization of a continuous time model. However, there are several projects that could give an introduction to this topic, and some references are [14, 21–23, 79]. 

The primary goal of this volume is to cover relatively simple models to indicate what qualitative results should be expected from more detailed tactical models. The chapters build on the work that we have done in applying epidemiological models in the context of specific diseases over the past 25 years—including some of our most recent work. It is our hope that the questions and problems highlighted in this introduction may help build collaborations between modelers, epidemiologists, and public health experts. 

## References



25. Daley, D.J. & J. Gani (1999) Epidemic Models: An Introduction, Cambridge Studies in Mathematical Biology 15, Cambridge University Press. 





Applications in Ecology, Epidemics and Population Problems, Academic Press, New York: 65–82. 





76. Volz, E. (2008) SIR dynamics in random networks with heterogeneous connectivity, J. Math. Biol., 56: 293–310. 





1. Abbey, H. (1952) An estimation of the Reed–Frost theory of epidemics, Human Biol. 24; 201– 223. 





26. Diekmann, O. & J.A.P. Heesterbeek (2000) Mathematical epidemiology of infectious diseases: Model building, analysis and interpretation, John Wiley and Sons, ltd. 





52. Hethcote, H.W. & J.A. Yorke (1984) Gonorrhea Transmission Dynamics and Control, Lect. Notes in Biomath. 56, Springer-Verlag. 





77. Watson, H.W. & F. Galton (1874) On the probability of the extinction of families, J. Anthrop. Inst. Great Britain and Ireland 4: 138–144. 





2. Allen, L.J.S. (2003) An Introduction to Stochastic Processes with Applications to Biology, Pearson Education Inc. 





27. Diekmann,O., Heesterbeek,J.A.P., Metz,J.A.J. (1995) The legacy of Kermack and McKendrick, in Mollison,D. (ed)Epidemic Models: Their Structure and Relation to Data. Cambridge University Press, Cambridge, pp. 95–115. 





53. Huang, W., K.L. Cooke, & C. Castillo-Chavez (1992) Stability and bifurcation for a multiple group model for the dynamics of HIV/AIDS transmission, SIAM J. App. Math. 52: 835–853. 





78. Wilson, E.B. & M.H. Burke (1942) The epidemic curve, Proc. Nat. Acad. Sci. 28: 361–367. 





3. Andreasen, V. (2011) The final size of an epidemic and its relation to the basic reproduction number, Bull. Math. Biol. 73: 2305–2321. 





28. Dietz, K, (1988) The first epidemic model: a historical note on P.D. En’ko, Australian J. Stat. 30A: 56–65. 





54. Johnson, S. (2006) The Ghost Map, Riverhead Books, New York, 





79. Yakubu, A. & C. Castillo-Chavez (2002) Interplay between local dynamics and dispersal in discrete-time metapopulation models, J. Theor. Biol. 218: 273–288. 





4. Bailey. N.T.J. (1975) The Mathematical Theory of Infectious Diseases and its Applications, Oxford Univ. Press. 





29. Dushoff, J., W. Huang, & C. Castillo-Chavez (1998) Backwards bifurcations and catastrophe in simple models of fatal diseases, J. Math. Biol. 36: 227–248. 





55. Kermack, W.O. & A.G. McKendrick (1927) A contribution to the mathematical theory of epidemics, Proc. Royal Soc. London, 115:700–721. 





5. Ball, F.G. (1983) The threshold behaviour of epidemic models, J. App. Prob. 20: 227–241. 





30. En’ko, P.D. (1889) On the course of epidemics of some infectious diseases, Vrach. St. Petersburg, X: 1008–1010, 1039–1042, 1061–1063. [translated from Russian by K. Dietz, Int. J. Epidemiology (1989) 18: 749–755]. 





56. Kermack, W.O. & A.G. McKendrick (1932) Contributions to the mathematical theory of epidemics, part. II, Proc. Roy. Soc. London, 138:55–83. 





6. Bartlett, M.S. (1949) Some evolutionary stochastic processes J. Roy. Stat. Soc. B 11: 211–229. 





31. Dietz, K. & J.A.P. Heesterbeek (2002) Daniel Bernoulli’s epidemiological model revisited, Math. Biosc. 180: 1–221. 





57. Kermack, W.O. & A.G. McKendrick (1933) Contributions to the mathematical theory of epidemics, part. III, Proc. Roy. Soc. London, 141:94–112. 





7. Bernoulli, D. (1760) Réflexions sur les avantages de l’inoculation, Mercure de Paris, p. 173. 





32. Epstein, J.M. & R.L. Axtell (1996) Growing Artificial Societies: Social Science from the Bottom Up, MIT/Brookings Institution. 





58. Kribs-Zaleta, C.K. & J.X. Velasco-Hernandez (2000) A simple vaccination model with multiple endemic states, Math Biosc. 164: 183–201. 





8. Bernoulli, D. (1766) Essai d’une nouvelle analyse de la mortalité causeé par la petite vérole, Mem. Math. Phys. Acad. Roy. Sci. Paris, 1–45. 





33. Erdös, P. & A. Rényi (1959) On random graphs, Publicationes Mathematicae 6: 290–297. 





59. Ma, J. & D.J.D. Earn (2006) Generality of the final size formula for an epidemic of a newly invading infectious disease, Bull. Math. Biol. 68: 679–702. 





9. Blythe, S.P., S. Busenberg & C. Castillo-Chavez (1995) Affinity and paired-event probability, Math. Biosc. 128: 265–84 . 





34. Erdös, P. & A. Rényi (1960) On the evolution of random graphs, Pub. Math. Inst. Hung. Acad. Science 5: 17–61. 





60. MacDonald, G. (1957) The Epidemiology and Control of Malaria, Oxford University Press. Oxford University Press. 





10. Blythe, S.P., C. Castillo-Chavez, J. Palmer & M. Cheng (1991) Towards a unified theory of mixing and pair formation, Math. Biosc. 107: 379–405. 





35. Erdös, P. & A. Rényi (1961) On the strengths of connectedness of a random graph, Acta Math. Scientiae Hung. 12: 261–267. 





61. McKendrick, A.G. (1926) Applications of mathematics to medical problems, Proc. Edinburgh Math. Soc. 44: 98–130. 





11. Brauer, F. (2004) Backward bifurcations in simple vaccination models, J. Math. Anal. & Appl. 298: 418–431. 





36. Farr, W. (1840) Progress of epidemics, Second Report of the Registrar General of England and Wales, 91–98. 





62. Metz, J.A.J. (1978) The epidemic in a closed population with all susceptibles equally vulnerable; some results for large susceptible populations and small initial infections, Acta Biotheoretica 78: 75–123. 





12. Brauer, F. (2008) Epidemic models with treatment and heterogeneous mixing, Bull. Math. Biol. 70: 1869–1885. 





37. Feng, Z., Hill, A.N., Smith, P.J. Glasser, J.W. (2015) An elaboration of theory about preventing outbreaks in homogeneous populations to include heterogeneity or preferential mixing, J. Theor. Biol. 386: 177–187. 





63. Miller, J.C. (2011) A note on a paper by Erik Volz: SIR dynamics in random networks, J. Math. Biol. 62: 349–358. 





13. Brauer, F. (2008) Age of infection models and the final size relation, Math. Biosc. & Eng. 5: 681–690. 





38. Feng, Z. and H.R. Thieme (1995) Recurrent outbreaks of childhood diseases revisited: the impact of isolation, Math. Biosc. 128: 93–130. 





64. Miller, J.C., & E. Volz (2013) Incorporating disease and population structure into models of SIR disease in contact networks, PLoS One 8: e69162, https://doi.org/10.1371/journal.pone. 0069162. 





14. Brauer, F., C. Castillo-Chavez, and Z. Feng (2010) Discrete epidemic models, Math. Biosc. & Eng. 7: 1–15. 





39. Galton, F. (1889) Natural Inheritance (2 nd ed.), App. F, pp. 241–248. 





65. Newman, M.E.J. (2002) The spread of epidemic disease on networks, Phys. Rev. E 66, 016128. ks, Phys. Rev. E 66, 016128. 





15. Brauer, F. & J. Watmough (2009) Age of infection models with heterogeneous mixing, J. Biol. Dyn. 3: 324–330. 





40. Greenwood, M. (1931) On the statistical measure of infectiousness, J. Hygiene 31: 336–351. 





66. Newman, M.E.J., S.H. Strogatz, & D.J. Watts (2001) Random graphs with arbitrary degree distributions and their applications, Phys. Rev. E 64, 026118. 





16. Breda, D., O. Diekmann, W.F. deGraaf, A. Pugliese, & R. Vermiglio (2012) On the formulation of epidemic models (an appraisal of Kermack and McKendrick, J. Biol. Dyn. 6: 103–117. 





41. Greenwood, P.E. & L.F. Gordillo (2009) Stochastic epidemic modeling, in Mathematical and Statistical Estimation Approaches in Epidemiology, G. Chowell, J.M. Hyman, L.M.A. Bettencourt, & C. Castillo-Chavez (eds.), Springer, pp. 31–52. 





67. Nowak, M., & R.M. May (1996) Virus Dynamics: Mathematical Principles of Immunology and Virology, Oxford Univ. Press. 





17. Budd, W. (1873) Typhoid Fever; Its Nature, Mode of Spreading, and Prevention, Longmans, London. 





42. Hadeler, K.P. & C. Castillo-Chavez (1995) A core group model for disease transmission, Math Biosc. 128: 41–55. 





68. Nold, A. (1980) Heterogeneity in disease transmission modeling, Math. Biosc. 52: 227–240. 





18. Busenberg, S. & C. Castillo-Chavez (1989) Interaction, pair formation and force of infection terms in sexually transmitted diseases, In Mathematical and Statistical Approaches to AIDS Epidemiology, Lect. Notes Biomath. 83, C. Castillo-Chavez (ed.), Springer-Verlag, Berlin-Heidelberg-New York, pp. 289–300. 





43. Hadeler, K.P. & P. van den Driessche (1997) Backward bifurcation in epidemic control, Math. Biosc. 146: 15–35. 





69. Ross, R.A.(1911) The prevention of malaria (2nd edition, with Addendum). John Murray, London. 





19. Busenberg, S. & K.L. Cooke (1993) Vertically Transmitted Diseases: Models and Dynamics, Biomathematics 23, Springer-Verlag, Berlin-Heidelberg-New York. 





44. Hamer, W.H. (1906) Epidemic disease in England - the evidence of variability and of persistence, The Lancet 167: 733–738. 





70. Schuler-Faccini, L. (2016) Possible association between Zika virus infections and microcephaly Brazil 2015, MMWR Morbidity and Mortality weekly report: 65. 





20. Callaway, D.S., M.E.J. Newman, S.H. Strogatz, & D.J. Watts (2000) Network robustness and fragility: Percolation on random graphs, Phys. Rev. Letters, 85: 5468–5471. 





45. Harris, T.E. (1963) The Theory of Branching Processes, Springer. 





71. Snow, J. (1855) The mode of communication of cholera (2 nd ed.), Churchill, London. 





21. Castillo-Chavez, C. & A. Yakubu (2001) Discrete-time SI S models with simple and complex dynamics, Nonlinear Analysis, Theory. Methods, and Applications 47: 4753–4762. 





46. Hethcote, H.W. (1976) Qualitative analysis for communicable disease models, Math. Biosc., 28:335–356. 





72. Steffensen, G.F. (1930) Om sandsynligheden for at affkommet uddor, Matematisk Tiddskrift B 1: 19–23. 





22. Castillo-Chavez, C. & A. Yakubu (2002) Discrete-time SI S models with simple and complex population dynamics, in Mathematical Approaches for Emerging and Reemerging Infectious Diseases IMA Vol. 125; 153–164. 





47. Hethcote, H.W. (1978) An immunization model for a heterogeneous population, Theor. Pop. Biol., 14:338–349. 





73. Steffensen, G.F. (1931) Deux problèmes du calcul des probabilités, Ann. Inst. H. Poincaré 3: 319–341. 





23. Castillo-Chavez, C. & A. Yakubu (2002) Intraspecific competition, dispersal and disease dynamics in discrete-time patchy environments, in Mathematical Approaches for Emerging and Reemerging Infectious Diseases IMA Vol. 125; 165–181. 





48. Hethcote, H.W. (1989) Three basic epidemiological models. In Applied Mathematical Ecology, S. A. Levin, T.G. Hallam and L.J. Gross, eds., Biomathematics 18: 119–144, Springer-Verlag, Berlin-Heidelberg-New York. 





74. Thieme, H.R. and C. Castillo-Chavez (1989) On the role of variable infectivity in the dynamics of the human immunodeficiency virus. In Mathematical and statistical approaches to AIDS epidemiology, C. Castillo-Chavez, ed., Lect. Notes Biomath. 83, 200–217, Springer-Verlag, Berlin-Heidelberg-New York. 





24. Chowell, G., P.W. Fenimore, M.A. Castillo-Garsow, and C.Castillo-Chavez (2003) SARS outbreaks in Ontario, Hong Kong and Singapore: the role of diagnosis and isolation as a control mechanism. J. Theor. Biol. 224: 1–8. 





49. Hethcote, H.W. (1997) An age-structured model for pertussis transmission, Math. Biosci., 145: 89–136. 





75. Thieme, H.R. and C. Castillo-Chavez (1993) How may infection-age dependent infectivity affect the dynamics of HIV/AIDS?, SIAM J. Appl. Math., 53:1447–1479. 





50. Hethcote, H.W. (2000) The mathematics of infectious diseases, SIAM Review, 42: 599–653. 





51. Hethcote, H.W., H.W. Stech and P. van den Driessche (1981) Periodicity and stability in epidemic models: a survey. In: S. Busenberg & K.L. Cooke (eds.) Differential Equations and 



# Chapter 2 Simple Compartmental Models for Disease Transmission

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/37403f239f138027e193ba87b63edd71c73f0e681be306314c92486da5003cc0.jpg)


Communicable diseases that are endemic (always present in a population) cause many deaths. For example, in 2011 tuberculosis caused an estimated 1,400,000 deaths and HIV/AIDS caused an estimated 1,200,000 deaths worldwide. According to the World Health Organization there were 627,000 deaths caused by malaria, but other estimates put the number of malaria deaths at 1,2000,000. Measles, which is easily treated in the developed world, caused 160,000 deaths in 2011, but in 1980 there were 2,600,000 measles deaths. The striking reduction in measles deaths is due to the availability of a measles vaccine. Other diseases such as typhus, cholera, schistosomiasis, and sleeping sickness are endemic in many parts of the world. The effects of high disease mortality on mean life span and of disease debilitation and mortality on the economy in afflicted countries are considerable. Most of these disease deaths are in less developed countries, especially in Africa, where endemic diseases are a huge barrier to development. A reference describing the properties of many endemic diseases is [2]. 

For diseases that are endemic in some region, public health physicians would like to be able to estimate the number of infectives at a given time as well as the rate at which new infections arise. The effects of quarantine or vaccine in reducing the number of victims are of importance. In addition, the possibility of defeating the endemic nature of the disease and thus controlling or even eradicating the disease in a population is worthy of study. 

An epidemic, which acts on a short temporal scale, may be described as a sudden outbreak of a disease that infects a substantial portion of the population in a region before disappearing. Epidemics invariably leave part of the population untouched. Often, epidemic outbreaks recur with intervals of several years between outbreaks, possibly decreasing in severity as populations develop some immunity. 

The “Spanish” flu epidemic of 1919–1920 caused an estimated 50,000,000 or more deaths worldwide. The AIDS epidemic, the SARS epidemic of 2002–2003, recurring influenza pandemics such as the H1N1 influenza pandemic of 2009–2010, and outbreaks of diseases such as the Ebola virus are events of concern and interest to many people. 

The essential difference between an endemic disease and an epidemic is that in an endemic disease there is some mechanism for a flow of susceptibles into the population being studied through births of new susceptibles, immigration of susceptibles, recovery from infection without immunity against reinfection, or loss of immunity of recovered individuals. This may result in a level of infection that remains in the population. In an epidemic, there is no flow of new susceptibles into the population and the number of infectives decreases to zero because of the resulting scarcity of susceptibles. 

There are many questions of interest to public health physicians confronted with a possible epidemic. For example, how severe will an epidemic be? This question may be interpreted in a variety of ways. For example, how many individuals will be affected and require treatment? What is the maximum number of people needing care at any particular time? How long will the epidemic last? Can an epidemic be averted by vaccination of enough members of the population in advance of the epidemic? How much good would quarantine of victims do in reducing the severity of the epidemic? 

The idea of invisible living creatures as agents of disease goes back at least to the writings of Aristotle (384–322 BC) and was developed as a theory in the sixteenth century. The existence of microorganisms was demonstrated by Leeuwenhoek (1632–1723) with the aid of the first microscopes. The first expression of the germ theory of disease by Jacob Henle (1809–1885) came in 1840 and was developed by Robert Koch (1843–1910), Joseph Lister (1827–1912), and Louis Pasteur (1827– 1875) in the latter part of the nineteenth century and the early part of the twentieth century. 

The mechanism of transmission of infections is now known for most diseases. Generally, diseases transmitted by viral agents, such as influenza, measles, rubella (German measles), and chicken pox, confer immunity against reinfection, while diseases transmitted by bacteria, such as tuberculosis, meningitis, and gonorrhea, confer no immunity against reinfection. Other diseases, such as malaria, are transmitted not directly from human to human but by vectors, agents (usually insects) who are infected by humans and who then transmit the disease to humans. Heterosexual transmission of HIV/AIDS is also a vector process in which transmission goes back and forth between males and females. 

In this chapter, our goal is to present and analyze simple compartmental models for disease transmission, both for endemic situations and for epidemics. Here we seek only to introduce the idea of the basic reproduction number and how it determines a threshold between two different outcomes. In later chapters we will study models with more detailed structure and will include the effects of different methods to try to control a disease. 

## 2.1 Introduction to Compartmental Models

We formulate our descriptions of disease transmission as compartmental models, with the population under study being divided into compartments and with assumptions about the nature and time rate of transfer from one compartment to another. We divide the population being studied into three classes labeled S, I , and R. Let S(t) denote the number of individuals who are susceptible to the disease, that is, who are not (yet) infected at time t. I (t) denotes the number of infected individuals, assumed infective and able to spread the disease by contact with susceptibles. R(t) denotes the number of individuals who have been infected and then removed from the possibility of being infected again or of spreading infection. Removal is carried out either through isolation from the rest of the population, or through immunization against infection, or through recovery from the disease with full immunity against reinfection, or through death caused by the disease. These characterizations of removed members are different from an epidemiological perspective but are often equivalent from a modeling point of view which takes into account only the state of an individual with respect to the disease. 

In many diseases, infectives return to the susceptible class on recovery because the disease confers no immunity against reinfection. Such models are appropriate for most diseases transmitted by bacterial agents or helminth agents, and most sexually transmitted diseases (including gonorrhea, but not such diseases as AIDS from which there is no recovery). We use the terminology SI S to describe a disease with no immunity against reinfection, to indicate that the passage of individuals is from the susceptible class to the infective class and then back to the susceptible class. 

We will use the terminology SI R to describe a disease which confers immunity against reinfection, to indicate that the passage of individuals is from the susceptible class S to the infective class I to the removed class R. Usually, diseases caused by a virus are of SI R type. 

In addition to the basic distinction between diseases for which recovery confers immunity against reinfection and diseases for which recovered members are susceptible to reinfection, and the intermediate possibility of temporary immunity signified by a model of SI RS type, more complicated compartmental structure is possible. For example, there are SEI R and SEI S models, with an exposed period between being infected and becoming infective. 

We are assuming that the disease transmission process is deterministic, that is, that the behavior of a population is determined completely by its history and by the rules which describe the model. In formulating models in terms of the derivatives of the sizes of each compartment, we are also assuming that the number of members in a compartment is a differentiable function of time. This assumption is plausible in describing an endemic state. However, in Chap. 4 we will describe the modeling of disease outbreaks and epidemics. At the beginning of a disease outbreak, there are only a few infectives and the start of a disease outbreak depends on random contacts with a small number of infectives. This will require a different approach that we shall study in Sect. 4.1, but for the present we begin with a description of deterministic compartmental models. 

The independent variable in our compartmental models is the time t, and the rates of transfer between compartments are expressed mathematically as derivatives with respect to time of the sizes of the compartments, and as a result our models are formulated initially as differential equations. Models in which the rates of transfer depend on the sizes of compartments over the past as well as at the instant of transfer lead to more general types of functional equations, such as differential–difference equations or integral equations. In this chapter, we will always assume that the duration of stay in each compartment is exponentially distributed so that our models will be systems of ordinary differential equations. In Chaps. 3 and 4 we will begin the study of more general classes of models. 

In order to formulate a compartmental disease transmission model, we will need to make assumptions on the rates of flow between compartments. In the simplest models we require expressions for the rate of being infected and the rate of recovery from infection. The most common assumption about transmission of infection is mass action incidence. It is assumed that in a population of size N on average an individual makes $\beta N$ contacts sufficient to transmit infection in unit time. Another possible assumption is standard incidence, in which it is assumed that on average an individual makes a constant number a of contacts sufficient to transmit infection in unit time. Standard incidence is a common assumption for sexually transmitted diseases. More realistically, one might assume that the parameters $\beta$ or a are not constants, but are functions of total population size. We will always assume that contacts are $e f f e c t i v e$ . By this we mean that if there is a contact between an infective individual and a susceptible individual, infection is always passed to the susceptibles. However, it is possible that infectives in one compartment are less infectious than individuals in another compartment. In such situations, we may include a reduction factor in some contacts to model this. 

With mass action incidence, (contact rate $\beta N )$ since the probability that a random contact by an infective is with a susceptible is $S / N$ , the number of new infections in unit time per infective is $( \beta N ) ( S / N )$ , giving a rate of new infections $( \beta N ) ( S / N ) I = \beta S I$ . Alternately, we may argue that for a contact by a susceptible the probability that this contact is with an infective is $I / N$ and thus the rate of new infections per susceptible is $( \beta N ) ( I / N )$ , giving a rate of new infections $( \beta N ) ( I / N ) S ~ = ~ \beta S I$ . Note that both approaches give the same rate of new infections; in models with more complicated compartmental structure one approach may be more appropriate than the other. 

With standard incidence, (contact rate a) similar reasoning leads to the result that the rate of new infections is 

$$
a S \frac {I}{N}.
$$

If the total population size N is constant, we may use a and $\beta N$ interchangeably. We will most commonly use $\beta N$ , partly for historical reasons. However, for sexually transmitted diseases the standard incidence form for contacts is more common. When we study heterogeneous mixing in Chap. 5 it will be more convenient to use the standard incidence form but it would be possible to use the mass action form instead. 

A common assumption is that infectives leave the infective class at a constant rate αI per unit time. This assumption requires a fuller mathematical explanation, since the assumption of a recovery rate proportional to the number of infectives has no clear epidemiological meaning. We consider the “cohort” of members who were all infected at one time and let $u ( s )$ denote the number of these who are still infective s time units after having been infected. If a fraction α of these leave the infective class in unit time then 

$$
u ^ {\prime} = - \alpha u,
$$

and the solution of this elementary differential equation is 

$$
u (s) = u (0) e ^ {- \alpha s}.
$$

Thus, the fraction of infectives remaining infective s time units after having become infective is $e ^ { - \alpha s }$ , so that the length of the infective period is distributed exponentially with mean $\int _ { 0 } ^ { \infty } e ^ { - \alpha s } d s = 1 / \alpha$ , and this is what is really assumed. This assumption is made for simplicity as it leads to ordinary differential equation models, but in a later chapter we will study models with other distributions of the infective period. 

To see that the mean infective period is $1 / \alpha$ , we point out since the fraction of infectives remaining infective s time units after being infected is $e ^ { - \alpha s }$ , the fraction with infective period exactly s is 

$$
- \frac {d}{d s} e ^ {- \alpha s}
$$

and the mean infective period is 

$$
\int_ {0} ^ {\infty} s \frac {d}{d s} e ^ {- \alpha s} d s.
$$

Integration by parts shows that this is 

$$
- \int_ {0} ^ {\infty} e ^ {- \alpha s} d s = \frac {1}{\alpha}.
$$

In this chapter, we will analyze SI S and SI R models for disease transmission, both with and without demographics (births and natural deaths). Our goal is to describe both endemic and epidemic situations in the simplest possible contexts. In later chapters, we will analyze more complicated models, including more compartmental structure, more general distributions of stay in compartments, and heterogeneity of mixing. In this chapter we focus on equilibrium analysis and asymptotic behavior of models for endemic diseases and on final size relations for epidemic models. 

A constant solution $y _ { 0 }$ of a differential equation 

$$
y ^ {\prime} = f (y), \tag {2.1}
$$

meaning a solution of the equation $f ( y ) = 0 $ , is called an equilibrium of the differential equation. An equilibrium y0 is said to be stable if every solution y(t) of the differential equation (2.1) with initial value $y ( 0 )$ sufficiently close to y0 remains close to the equilibrium y0 for all $t ~ \geq ~ 0$ . An equilibrium is said to be asymptotically stable if it is stable and if in addition every solution with initial value sufficiently close to y0 approaches the equilibrium as $t  \infty$ . We note that in this definition, there is no specification of the meaning of “sufficiently close.” Asymptotic stability is a local concept. An equilibrium y0 is said to be globally asymptotically stable if it is stable and if solutions of (2.1) for all initial values $y ( 0 )$ approach $y _ { 0 }$ as $t  \infty$ . An equilibrium that is not stable is said to be unstable. The concepts of asymptotic stability and instability are essential for the qualitative analysis of differential equations. An important basic result is that an equilibrium y0 of a differential equation (2.1) is asymptotically stable if $f ^ { \prime } ( y _ { 0 } ) < 0$ and unstable if $f ^ { \prime } ( y _ { 0 } ) > 0$ . The case $f ^ { \prime } ( y _ { 0 } ) = 0$ is more difficult to analyze. 

A central concept in both endemic and epidemic models is the basic reproduction number, to be defined in Sect. 2.2. 

In the next two sections, we will discuss models for endemic situations, and in the following two sections we will discuss epidemic models. 

## 2.2 The SIS Model

The basic compartmental models to describe the transmission of communicable diseases are contained in a sequence of three papers by W.O. Kermack and A.G. McKendrick in 1927, 1932, and 1933 [17–19]. 

The simplest SI S model, due to Kermack and McKendrick [18], is 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I + \alpha I \\ S ^ {\prime} = 0. 5 1, \end{array} \tag {2.2}
$$

$$
I ^ {\prime} = \beta S I - \alpha I.
$$

It is based on the following assumptions: 

(i) The rate of new infections is given by mass action incidence. 

(ii) Infectives leave the infective class at rate αI per unit time and return to the susceptible class. 

(iii) There is no entry into or departure from the population. 

(iv) There are no disease deaths, and the total population size is a constant N. 

In an SI S model, the total population size N is equal to $S + I$ . Later, we will allow the possibility that some infectives recover while others die of the disease to give a more general model. The hypothesis (iii) really says that the time scale of the disease is much faster than the time scale of births and deaths so that demographic effects on the population may be ignored. 

Because (2.2) implies $( S + I ) ^ { \prime } = 0$ , the total population $N = S + I$ is a constant. We may reduce the model (2.2) to a single differential equation by replacing S by $N - I$ 

$$
\begin{array}{l} I ^ {\prime} = \beta I (N - I) - \alpha I = (\beta N - \alpha) I - \beta I ^ {2} \\ = (\beta N - \alpha) I \left(1 - \frac {I}{N - \frac {\alpha}{\beta}}\right). \tag {2.3} \\ \end{array}
$$

Now (2.3) is a logistic differential equation of the form 

$$
I ^ {\prime} = r I \left(1 - \frac {I}{K}\right),
$$

with $r = \beta N - \alpha$ and with $K = N - \alpha / \beta$ . Let us recall the analysis of the logistic equation. 

The logistic equation may be solved explicitly using separation of variables; the solution satisfying the initial condition $x ( 0 ) = x _ { 0 }$ is 

$$
x (t) = \frac {K x _ {0} e ^ {r t}}{K - x _ {0} + x _ {0} e ^ {r t}} = \frac {K x _ {0}}{x _ {0} + (K - x _ {0}) e ^ {- r t}}. \tag {2.4}
$$

The expression (2.4) for the solution of the logistic initial value problem shows that x(t) approaches the limit K as $t  \infty$ if $x _ { 0 } > 0$ provided $r > 0 , K > 0$ . If $r < 0 , K < 0 , x ( t )$ approaches the limit 0 as $t \to \infty$ . This case, $K < 0$ arises in the analysis of the differential equation (2.3), but does not have any biological meaning in itself. 

This qualitative result tells us that for the model (2.3), if $\beta N - \alpha ~ < ~ 0$ or $\beta N / \alpha < 1$ , then all solutions with non-negative initial values approach the limit zero as $t ~  ~ \infty$ , (the constant solution $~ I ~ = ~ N - \beta / \alpha$ is negative), while if $\beta N / \alpha > 1$ , then all solutions with non-negative initial values except the constant solution $I ~ = ~ 0$ approach the limit $N - \alpha / \beta \ > \ 0$ as $t ~  ~ \infty$ . Thus there is always a single limiting value for I but the value of the quantity $\beta N / \alpha$ determines which limiting value is approached, regardless of the initial state of the disease. In epidemiological terms this says that if the quantity $\beta N / \alpha$ is less than one the infection dies out in the sense that the number of infectives approaches zero. For this reason the constant solution $I \ = \ 0$ , which corresponds to $S \ = \ N$ , is called the disease-free equilibrium. On the other hand, if the quantity $\beta N / \alpha$ exceeds one, the infection persists. The constant solution $I = N - \alpha / \beta$ , which corresponds to $S = \alpha / \beta$ , is called an endemic equilibrium. 

The value of 1 for the quantity $\beta N / \alpha$ is a tipping point in the sense that the behavior of the solution changes if this quantity passes through 1 because of some change in the parameters of the model. 

The quantity $\beta N / \alpha$ also has an epidemiological interpretation. Since $\beta N$ is the number of contacts made by an average infective per unit time and $1 / \alpha$ is the mean infective period, the quantity $\beta N / \alpha$ is the number of secondary infections caused by introducing a single infective into a wholly susceptible population. The basic reproduction number is defined as the number of secondary infections caused by an average infective introduced into a wholly susceptible population over the course of the disease. The basic reproduction number is usually denoted by $\mathcal { R } _ { 0 }$ . Here, the basic reproduction number or contact number for the disease is 

$$
\mathcal {R} _ {0} = \frac {\beta N}{\alpha}. \tag {2.5}
$$

In studying an infectious disease model, the basic reproduction number is a central concept and its determination is invariably an essential first step. The value one for the basic reproduction number defines a threshold at which the course of the infection changes between disappearance and persistence. It is intuitively clear that if $\mathcal { R } _ { 0 } ~ < ~ 1$ the infection should die out, while if $\mathcal { R } _ { 0 } ~ > ~ 1$ the infection should establish itself. In more highly structured models than the simple one we have developed here, the calculation of the basic reproduction number may be much more complicated, but the essential concept obtains–that of the basic reproduction number as the number of secondary infections caused by an average infective over the course of the disease. 

Since an endemic equilibrium corresponds to a long-term situation, it would be more realistic to include demographic processes, that is, births and natural deaths, in our model. 

A simple assumption is that there is a birth rate $\varLambda ( N )$ depending on total population size, and a proportional death rate $\mu$ . Just as for disease recovery rates the assumption of a proportional death rate is equivalent to an assumption of an exponentially distributed life span with mean $1 / \mu$ . In the absence of disease the total population size N satisfies the differential equation 

$$
N ^ {\prime} = \Lambda (N) - \mu N.
$$

At this point, it is necessary to introduce some basic definitions and results to describe the qualitative behavior of solutions of this differential equation, since it is not possible to solve the differential equation analytically. 

The carrying capacity of the population is the limiting population size $K$ satisfying 

$$
\Lambda (K) = \mu K, \quad \Lambda^ {\prime} (K) <   \mu .
$$

The condition $\mathit { A } ^ { \prime } ( K ) \ < \ \mu$ assures the asymptotic stability of the equilibrium population size K. It is reasonable to assume that K is the only positive equilibrium, so that 

$$
\Lambda (N) > \mu N
$$

for $0 \le N \le K$ . For most population models, 

$$
\Lambda (0) = 0, \quad \Lambda^ {\prime \prime} (N) \leq 0.
$$

However, if $\varLambda ( N )$ represents recruitment into a behavioral class, as would be natural for models of sexually transmitted diseases, it would be plausible to have $\varLambda ( 0 ) > 0$ , or even to consider $\varLambda ( N )$ to be a constant function. If $\varLambda ( 0 ) = 0$ , we require $\varLambda ^ { \prime } ( 0 ) >$ $\mu$ because if this requirement is not satisfied there is no positive equilibrium and the population would die out even in the absence of disease. 

A model for a disease from which infectives recover with no immunity against reinfection and that includes births and deaths is 

$$
\begin{array}{l} S ^ {\prime} = \Lambda (N) - \beta S I - \mu S + \alpha I \\ I ^ {\prime} = \beta S I - \mu S + \alpha I \end{array} \tag {2.6}
$$

$$
I ^ {\prime} = \beta S I - \alpha I - \mu I,
$$

describing a population with a density-dependent birth rate $\varLambda ( N )$ per unit time, a mass action contact rate, a proportional death rate $\mu$ in each class, and a recovery rate α. 

If we add the two equations of (2.6) and use $N = S + I$ , we obtain 

$$
N ^ {\prime} = \Lambda (N) - \mu N.
$$

Thus N approaches K as $t \to \infty$ . 

It is easy to verify that 

$$
\mathcal {R} _ {0} = \frac {\beta K}{\mu + \alpha}
$$

because a single infective introduced into a wholly susceptible population of size K causes $\beta K$ new infections in unit time and the mean infective period corrected for natural mortality is $1 / ( \mu + \alpha )$ . 

It can be shown that the endemic equilibrium of (2.6), which exists if $\mathcal { R } _ { 0 } > 1$ , is always asymptotically stable. If $\mathcal { R } _ { 0 } ~ < ~ 1$ , the system has only the diseasefree equilibrium and this equilibrium is asymptotically stable. The qualitative behavior of the model (2.6) is the same as the behavior of the model (2.2) without demographics. 

We were able to reduce the systems of two differential equations (2.2) to a single equation because of the assumption that the total population $S + I$ is constant or has a constant limit as $t \to \infty$ . If there are deaths due to the disease this assumption is violated, and it would be necessary to use a two-dimensional system as a model. 

Let us assume that infectives recover from infection at a rate αI , while infectives die of disease at a rate dI . Then the model (2.6) is replaced by the model 

$$
\begin{array}{l} S ^ {\prime} = \Lambda (N) - \beta S I - \mu S + \alpha I \\ I ^ {\prime} = \beta S I - (\alpha + \beta) I _ {1} - I _ {2} \end{array} \tag {2.7}
$$

$$
I ^ {\prime} = \beta S I - (\alpha + d) I - \mu I.
$$

Now the equation for total population size is 

$$
N ^ {\prime} = \Lambda (N) - \mu N - d I.
$$

The model (2.7) involves the three variables S, I, N, and we may reduce it to a twodimensional system with variables I and N by replacing S by (N I ) to give the model 

$$
I ^ {\prime} = \beta I (N - I) - (\alpha + d + \mu) I
$$

$$
N ^ {\prime} = \Lambda (N) - \mu N - d I.
$$

The analysis of this model is more difficult, and rather than going through this analysis now we will shift our attention to SI R models for which the general approach to models involving systems of ordinary differential equations is more readily illustrated. 

## 2.3 The SI R Model with Births and Deaths

The SI R model of Kermack and McKendrick [18] includes births in the susceptible class proportional to total population size and a death rate in each class proportional to the number of members in the class. This model allows the total population size to grow exponentially or die out exponentially if the birth and death rates are unequal. It is applicable to such questions as whether a disease will control the size of a population that would otherwise grow exponentially. We shall return to this topic, which is important in the study of many diseases in less developed countries with high birth rates. To formulate a model in which total population size remains bounded we could follow the approach suggested by Hethcote [12] in which the total population size N is held constant by making birth and death rates equal. Such a model is 

$$
S ^ {\prime} = - \beta S I + \mu (N - S)
$$

$$
I ^ {\prime} = \beta S I - \alpha I - \mu I
$$

$$
R ^ {\prime} = \alpha I - \mu R.
$$

Because $S + I + R = N$ and $N ^ { \prime } = 0$ , N is constant and we can view R as determined when S and I are known. Thus we may consider the two-dimensional system 

$$
S ^ {\prime} = - \beta S I + \mu (N - S) \tag {2.8}
$$

$$
I ^ {\prime} = \beta S I - \alpha I - \mu I.
$$

We shall examine a more general SI R model with births and deaths for a disease that may be fatal to some infectives. For such a disease, the class R of removed members should contain only recovered members, not members removed by death from the disease. It is not possible to assume that the total population size remains constant if there are deaths due to disease; a plausible model for a disease that may be fatal to some infectives must allow the total population to vary in time. 

With a mass action contact rate and a density-dependent birth rate we would have a model 

$$
S ^ {\prime} = \varLambda (N) - \beta S I - \mu S
$$

$$
I ^ {\prime} = \beta S I - \mu I - d I - \alpha I \tag {2.9}
$$

$$
N ^ {\prime} = \varLambda (N) - d I - \mu N.
$$

If $d = 0 .$ , so that there are no disease deaths, the equation for N is 

$$
N ^ {\prime} = \Lambda (N) - \mu N,
$$

so that $N ( t )$ approaches a limiting population size K provided $A ^ { \prime } ( K ) < \mu$ so that the equilibrium K of the equation for N is asymptotically stable. 

We shall analyze the model (2.9) with $d \ = \ 0$ qualitatively. This qualitative analysis depends on the ideas of equilibria and linearization of a system about an equilibrium, a general approach dating back to the early part of the twentieth century. In view of the remark above, our analysis will also apply to the more general model (2.9) if there are no disease deaths. Analysis of the system (2.9) with $d > 0$ is much more difficult. We will confine our study of (2.9) to a description without details. 

The first stage of the analysis is to note that the model (2.9) is a properly posed problem. A properly posed problem is a problem that has a unique solution (so that solving the mathematical problem yields an expression that can have epidemiological meaning), and that the solution remains non-negative (so that it has epidemiological meaning). That is, since $S ^ { \prime } \geq 0 { \mathrm { i f ~ } } S = 0$ and $I ^ { \prime } \geq 0$ if $I = 0$ , we have $S \ge 0 , I \ge 0$ for $t \geq 0$ and since $N ^ { \prime } \leq 0 \mathrm { i f } \ N = K$ we have $N \ \leq \ K$ for $t ~ \geq ~ 0$ . Thus the solution always remains in the biologically realistic region $S \geq 0 , I \geq 0 , 0 \leq N \leq K$ if it starts in this region. By rights, we should verify such conditions whenever we analyze a mathematical model, but in practice this step is frequently overlooked. 

Our approach will be to identify equilibria (constant solutions) and then to determine the asymptotic stability of each equilibrium. As we have defined at the end of Sect. 2.1, asymptotic stability of an equilibrium means that a solution starting sufficiently close to the equilibrium remains close to the equilibrium and approaches the equilibrium as $t  \infty$ , while instability of the equilibrium means that there are solutions starting arbitrarily close to the equilibrium that do not approach it. Equilibrium analysis of a system of two differential equations requires the idea of linearization of a system of differential equations and some matrix algebra. To find equilibria $( S _ { \infty } , I _ { \infty } )$ we set the right side of each of the two equations equal to zero. The second of the resulting algebraic equations factors gives two alternatives. The first alternative is $I _ { \infty } = 0$ , which will give a disease-free equilibrium, and the second alternative is $\beta S _ { \infty } = \mu + \alpha$ , which will give an endemic equilibrium, provided $\beta S _ { \infty } = \mu + \alpha < \beta K$ . If $I _ { \infty } = 0$ the other equation gives $S _ { \infty } = K = { \varLambda } / { \mu }$ . For the endemic equilibrium the first equation gives 

$$
I _ {\infty} = \frac {\varLambda}{\mu + \alpha} - \frac {\mu}{\beta}.
$$

We linearize about an equilibrium $( S _ { \infty } , I _ { \infty } )$ by letting $y = S - S _ { \infty } , z = I - I _ { \infty }$ , writing the system in terms of the new variables y and z and retaining only the linear terms in a Taylor expansion. We obtain a system of two linear differential equations, 

$$
y ^ {\prime} = - (\beta I _ {\infty} + \mu) y - \beta S _ {\infty} z
$$

$$
z ^ {\prime} = \beta I _ {\infty} y + (\beta S _ {\infty} - \mu - \alpha) z.
$$

The coefficient matrix of this linear system is 

$$
\left[ \begin{array}{c c} - \beta I _ {\infty} - \mu & - \beta S _ {\infty} \\ \beta I _ {\infty} & \beta S _ {\infty} - \mu - \alpha \end{array} \right].
$$

This matrix is also known as the Jacobian matrix. We then look for solutions whose components are constant multiples of $e ^ { \lambda t }$ ; this means that λ must be an eigenvalue of the coefficient matrix. The condition that all solutions of the linearization at an equilibrium tend to zero as $t  \infty$ is that the real part of every eigenvalue of this coefficient matrix is negative. At the disease-free equilibrium the matrix is 

$$
\left[ \begin{array}{c c} - \mu & - \beta K \\ 0 & \beta K - \mu - \alpha \end{array} \right],
$$

which has eigenvalues $- \mu$ and $\beta K - \mu - \alpha$ . Thus, the disease-free equilibrium is asymptotically stable if $\beta K < \mu + \alpha$ and unstable if $\beta K > \mu + \alpha$ . Note that this condition for instability of the disease-free equilibrium is the same as the condition for the existence of an endemic equilibrium. 

In general, the condition that the eigenvalues of a $2 \times 2$ matrix have negative real part is that the determinant be positive and the trace (the sum of the diagonal elements) be negative. Since $\beta S _ { \infty } = \mu + \alpha$ at an endemic equilibrium, the Jacobian matrix, or matrix of the linearization at an endemic equilibrium is 

$$
\left[ \begin{array}{c c} - \beta I _ {\infty} - \mu & - \beta S _ {\infty} \\ \beta I _ {\infty} & 0 \end{array} \right]
$$

and this matrix has positive determinant and negative trace. Thus, the endemic equilibrium, if there is one, is always asymptotically stable. If the quantity 

$$
\mathcal {R} _ {0} = \frac {\beta K}{\mu + \alpha} = \frac {K}{S _ {\infty}}
$$

is less than one, then the system has only the disease-free equilibrium and this equilibrium is asymptotically stable. In fact, it is not difficult to prove that this asymptotic stability is global, that is, that every solution approaches the disease-free equilibrium. If the quantity $\mathcal { R } _ { 0 }$ is greater than one, then the disease-free equilibrium is unstable, but there is an endemic equilibrium that is asymptotically stable. Again, the quantity $\mathcal { R } _ { 0 }$ is the basic reproduction number. It depends on the particular disease (determining the parameter $\alpha )$ and on the rate of contacts, which may depend on the population density in the community being studied. The disease model exhibits a threshold behavior: If the basic reproduction number is less than one, then the disease will die out, but if the basic reproduction number is greater than one, then the disease will be endemic. Just as for the SI S model of the preceding section, the basic reproduction number is the number of secondary infections caused by a single infective introduced into a wholly susceptible population because the number of contacts per infective in unit time is $\beta K$ , and the mean infective period (corrected for natural mortality) is $1 / ( \mu + \alpha )$ . 

There are two aspects of the analysis of the model (2.9) that are more complicated than the analysis of (2.8). The first is in the study of equilibria. Because of the dependence of $\varLambda ( N )$ on N, it is necessary to use two of the equilibrium conditions to solve for S and I in terms of N and then substitute this into the third condition to obtain an equation for N. Then by comparing the two sides of this equation for $N = 0$ and $N = K$ it is possible to show that there must be an endemic equilibrium value of N between 0 and K if $\mathcal { R } _ { 0 } > 1$ . 

The second complication is in the stability analysis. Since (2.9) is a threedimensional system that cannot be reduced to a two-dimensional system, the coefficient matrix of its linearization at an equilibrium is a $3 \times 3$ matrix and the resulting characteristic equation is a cubic polynomial equation of the form 

$$
\lambda^ {3} + a _ {1} \lambda^ {2} + a _ {2} \lambda + a _ {3} = 0.
$$

The Routh–Hurwitz conditions [16, 22] 

$$
a _ {1} > 0, \quad a _ {1} a _ {2} > a _ {3} > 0
$$

are necessary and sufficient conditions for all roots of the characteristic equation to have negative real part. A technically complicated calculation is needed to verify that these conditions are satisfied at an endemic equilibrium for the model (2.9). 

The asymptotic stability of the endemic equilibrium means that the compartment sizes approach a steady state. If the equilibrium had been unstable, there would have been a possibility of sustained oscillations. Oscillations in a disease model mean fluctuations in the number of cases to be expected. If the oscillations have a long period, then this could mean that experimental data for a short period would be quite unreliable as a predictor of the future. Epidemiological models that incorporate additional factors may exhibit oscillations. A variety of such situations is described in [14, 15]. 

From the third equation of (2.9) we obtain 

$$
N ^ {\prime} = \Lambda - \mu N - \alpha I,
$$

where $N = S + I + R$ . From this, we see that at the endemic equilibrium $N =$ $\varLambda / \mu - \alpha I / \mu$ , and the reduction in the population size from the carrying capacity K is 

$$
\frac {d}{d \mu} I _ {\infty} = \left[ \frac {\alpha K}{\mu + \alpha} - \frac {\alpha}{\beta} \right].
$$

The parameter α in the SI R model may be considered as describing the pathogenicity of the disease. If α is large, it is less likely that $\mathcal { R } _ { 0 } > 1$ . If α is small, then the total population size at the endemic equilibrium is close to the carrying capacity K of the population. Thus, the maximum population decrease caused by disease will be for diseases of intermediate pathogenicity with α not close to either 0 or 1. 

Numerical simulations indicate that the approach to endemic equilibrium for an SI R model is like a rapid and severe epidemic if the epidemiological and demographic time scales are very different. The same happens in the SI S model. If there are few disease deaths, the number of infectives at endemic equilibrium may be substantial, and there may be damped oscillations of large amplitude about the endemic equilibrium. For both the SI R and SI S models we may write the differential equation for I as 

$$
I ^ {\prime} = I [ \beta (N) S - (\mu + \alpha) ] = \beta (N) I [ S - S _ {\infty} ],
$$

which implies that whenever S exceeds its endemic equilibrium value $S _ { \infty }$ , I is increasing and epidemic-like behavior is possible. $\mathrm { I f } \mathcal { R } _ { 0 } < 1$ and $S < K$ , it follows that $I ^ { \prime } < 0$ , and thus I is decreasing. Thus, if $\mathcal { R } _ { 0 } < 1$ , I cannot increase and no epidemic can occur. 

## 2.4 The Simple Kermack–McKendrick Epidemic Model

One of the early triumphs of mathematical epidemiology was the formulation of a simple model by Kermack and McKendrick in 1927 [17] whose predictions are very similar to the behavior, observed in countless epidemics, of disease that invade a population suddenly, grow in intensity, and then disappear leaving part of the population untouched. The Kermack–McKendrick model is a compartmental model based on relatively simple assumptions on the rates of flow between different classes of members of the population. The SARS epidemic of 2002–2003 revived interest in epidemic models, which had been largely ignored since the time of Kermack and McKendrick, in favor of models for endemic diseases. 

The special case of the model proposed by Kermack and McKendrick in 1927 which is the starting point for our study of epidemic models is 

$$
S ^ {\prime} = - \beta S I
$$

$$
I ^ {\prime} = \beta S I - \alpha I \tag {2.10}
$$

$$
R ^ {\prime} = \alpha I.
$$

A flow chart is shown in Fig. 2.1. 

It is based on the same assumptions that were made for the SI S model of Sect. 2.2, except that recovered infectives go to a removed class rather than returning to the susceptible class. We will refer to this model as the simple Kermack– McKendrick epidemic model for convenience, but we remind the reader that it is a very special case of the actual Kermack–McKendrick epidemic model. From (2.10) we see that $N = S + I + R$ is constant. 

The assumptions of a constant rate of contacts and of an exponentially distributed recovery rate are unrealistically simple. More general models can be constructed and analyzed, but our goal here is to show what may be deduced from extremely simple models. It will turn out that many more realistic models exhibit very similar qualitative behaviors. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/8f24b7ff1a526f9472af406e2b25a41b08aae74c17d97e2e24ed6ce90ff0373b.jpg)



Fig. 2.1 Flow chart for the SI R model (2.10)


In our model, R is determined once S and I are known, and we can drop the R equation from our model, leaving the system of two equations 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I \\ I ^ {\prime} = 0, S I = I \end{array} \tag {2.11}
$$

$$
I ^ {\prime} = \beta S I - \alpha I,
$$

together with initial conditions 

$$
S (0) = S _ {0}, \quad I (0) = I _ {0}, \quad S _ {0} + I _ {0} = N.
$$

We think of introducing a small number of infectious individuals into a population of susceptibles and ask whether there will be an epidemic. We remark that the model makes sense only so long as S(t) and I (t) remain non-negative. Thus if either S(t) or I (t) reaches zero we consider the system to have terminated. We observe that $S ^ { \prime } < 0$ for all t and $I ^ { \prime } > 0$ if and only if $\beta S / \alpha > 1$ . Thus I increases so long as $\beta S / \alpha > 1$ but since S decreases for all t, I ultimately decreases and approaches zero. 

The quantity $\mathcal { R } _ { 0 } ~ { = } ~ \beta N / \alpha$ determines whether there is an epidemic. If $\mathcal { R } _ { 0 } ~ <$ < 1, the infection dies out because $I ^ { \prime } ( t ) \ < \ 0$ for all t , and there is no epidemic. Ordinarily, $S _ { 0 } \approx N$ . If the epidemic is started by a member of the population being studied, for example by returning from travel with an infection acquired away from home, we would have $I _ { 0 } > 0 , S _ { 0 } + I _ { 0 } = N$ . A second way would be for an epidemic to be started by a visitor from outside the population. In this case, we would have $S _ { 0 } = N$ . If $\mathcal { R } _ { 0 } > 1$ , I increases initially and this is interpreted as saying that there is an epidemic. 

Since (2.11) is a two-dimensional autonomous system of differential equations, the natural approach would be to find equilibria and linearize about each equilibrium to determine its stability. However, since every point with $I = 0$ is an equilibrium, the system (2.11) has a line of equilibria and this approach is not applicable (the linearization matrix at each equilibrium has a zero eigenvalue). The standard linearization theory for systems of ordinary differential equations is not applicable, and it is necessary to develop a new mathematical approach. 

The sum of the two equations of (2.11) is 

$$
(S + I) ^ {\prime} = - \alpha I.
$$

Thus $S + I$ is a non-negative smooth decreasing function and therefore tends to a limit as $t  \infty$ . Also, it is not difficult to prove that the derivative of a smooth decreasing function which is bounded below must tend to zero, and this shows that 

$$
I _ {\infty} = \lim _ {t \to \infty} I (t) = 0.
$$

Thus $S + I$ has limit $S _ { \infty }$ . 

Integration of the sum of the two equations of (2.11) from 0 to ∞ gives 

$$
- \int_ {0} ^ {\infty} (S (t) + I (t)) ^ {\prime} d t = S _ {0} + I _ {0} - S _ {\infty} = N - S _ {\infty} = \alpha \int_ {0} ^ {\infty} I (t) d t.
$$

Division of the first equation of (2.11) by S and integration from 0 to ∞ gives 

$$
\begin{array}{l} \log \frac {S _ {0}}{S _ {\infty}} = \beta \int_ {0} ^ {\infty} I (t) d t \\ = \frac {\beta}{\alpha} [ N - S _ {\infty} ] \tag {2.12} \\ = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right]. \\ \end{array}
$$

Equation (2.12) is called the final size relation. It gives a relation between the basic reproduction number and the size of the epidemic. Note that the final size of the epidemic, the number of members of the population who are infected over the course of the epidemic, is $N - S _ { \infty }$ . This is often described in terms of the attack rate $( 1 - S _ { \infty } / N )$ . [Technically, the attack rate should be called an attack ratio, since it is dimensionless and is not a rate]. The attack rate is the fraction of the population that becomes infected over the course of the epidemic. 

The final size relation (2.12) can be generalized to epidemic models with more complicated compartmental structure than the simple SI R model (2.11), including models with exposed periods, treatment models, and models including quarantine of suspected individuals and isolation of diagnosed infectives. The original Kermack–McKendrick model [17] included dependence on the time since becoming infected (age of infection), and this includes such models. We will describe this generalization in Chap. 4. 

Integration of the first equation of (2.11) from 0 to t gives 

$$
\begin{array}{l} \log \frac {S _ {0}}{S (t)} = \beta \int_ {0} ^ {t} I (t) d t \\ = \frac {\beta}{\alpha} [ N - S (t) - I (t) ], \\ \end{array}
$$

and this leads to the form 

$$
I (t) + S (t) - \frac {\alpha}{\beta} \log S (t) = N - \frac {\alpha}{\beta} \log S _ {0}. \tag {2.13}
$$

This implicit relation between S and I describes the orbits of solutions of (2.11) in the (S, I ) plane. 

In addition, since the right side of (2.12) is finite, the left side is also finite, and this shows that $S _ { \infty } > 0$ . It is not difficult to prove that there is a unique solution of the final size relation (2.12). To see this, we define the function 

$$
g (x) = \log \frac {S _ {0}}{x} - \mathcal {R} _ {0} \left[ 1 - \frac {x}{N} \right].
$$

Then 

$$
g (0 +) > 0, \quad g (N) <   0,
$$

and $g ^ { \prime } ( x ) < 0$ if and only if 

$$
0 <   x <   \frac {N}{\mathcal {R} _ {0}}.
$$

If $\mathcal { R } _ { 0 } \leq 1 , g ( x )$ is monotone decreasing from a positive value at $x \ = \ 0 +$ to a negative value at $x = N$ . Thus there is a unique zero $S _ { \infty }$ of $g ( x )$ with $S _ { \infty } < N .$ . A graph of the function $g ( x )$ is plotted in Fig. 2.2. 

If $\mathcal { R } _ { 0 } > 1 , g ( x )$ is monotone decreasing from a positive value at $x = 0 +$ to a minimum at $x = N / \mathcal { R } _ { 0 }$ and then increases to a negative value at $x = N _ { 0 }$ . Thus there is a unique zero $S _ { \infty }$ of $g ( x )$ with 

$$
S _ {\infty} <   \frac {N}{\mathcal {R} _ {0}}.
$$

In fact, 

$$
g \left(\frac {S _ {0}}{\mathcal {R} _ {0}}\right) = \log \mathcal {R} _ {0} - \mathcal {R} _ {0} + \frac {S _ {0}}{N}
$$

$$
\leq \log \mathscr {R} _ {0} - \mathscr {R} _ {0} + 1.
$$

Since log $\mathcal { R } _ { 0 } < \mathcal { R } _ { 0 } - 1$ for $\mathcal { R } _ { 0 } > 0$ , we actually have 

$$
g \left(\frac {S _ {0}}{\mathcal {R} _ {0}}\right) <   0,
$$


Fig. 2.2 Graph of the function g(x)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/a5437ae2f8bca235e6cfdb19240ce7c034d8ee80c99ba36f43b2610961acc31c.jpg)


and 

$$
S _ {\infty} <   \frac {S _ {0}}{\mathcal {R} _ {0}}. \tag {2.14}
$$

An important question is how the basic reproduction number changes if a parameter of the model varies. If $\mathcal { R } _ { 0 }$ , and therefore $S _ { \infty }$ , is a function of a parameter $\eta ,$ , implicit differentiation of the final size relation (2.12) gives 

$$
\left(\frac {\mathcal {R} _ {0}}{N} - \frac {1}{S _ {\infty}}\right) \frac {d S _ {\infty}}{d \eta} = \frac {d \mathcal {R} _ {0}}{d \eta} \left(1 - \frac {S _ {\infty}}{N}\right).
$$

Because of (2.14), if $\mathcal { R } _ { 0 }$ increases then $S _ { \infty }$ decreases. 

It is generally difficult to estimate the contact rate $\beta$ which depends on the particular disease being studied but may also depend on social and behavioral factors. The quantities $S _ { 0 }$ and $S _ { \infty }$ may be estimated by serological studies (measurements of immune responses in blood samples) before and after an epidemic, and from these data, the basic reproduction number $\mathcal { R } _ { 0 }$ may be estimated by using (2.12). This estimate, however, is a retrospective one which can be derived only after the epidemic has run its course. 

In order to prevent the occurrence of an epidemic, if infectives are introduced into a population, it is necessary to reduce the basic reproduction number $\mathcal { R } _ { 0 }$ below one. This may sometimes be achieved by immunization, which has the effect of transferring members of the population from the susceptible class to the removed class and thus of reducing $S ( 0 )$ . Immunization of some members of the population produces a new model. If a fraction $p$ of the population is successfully immunized the effect is to decrease the number of susceptibles from S(0) to $S ( 0 ) ( 1 - p )$ . Originally, the basic reproduction number is $\beta N / \alpha$ , but in the new situation with a decreased number of susceptibles the basic reproduction number would be $\beta N ( 1 - p ) / \alpha$ . This is less than 1 if $p$ satisfies $\beta N ( 1 - p ) / \alpha < 1$ . This gives $1 - p < \alpha / \beta N$ , or 

$$
p > 1 - \frac {\alpha}{\beta N} = 1 - \frac {1}{\mathcal {R} _ {0}}.
$$

Initially, the number of infectives grows exponentially because the equation for I may be approximated by 

$$
I ^ {\prime} = (\beta N - \alpha) I
$$

and the initial growth rate is 

$$
r = \beta N - \alpha = \alpha (\mathcal {R} _ {0} - 1)  .
$$

This initial growth rate r may be estimated from incidence data when an epidemic begins. Since N and α may be measured, $\beta$ may be calculated as 

$$
\beta = \frac {r + \alpha}{N}.
$$

However, because of incomplete data and under-reporting of cases, this estimate may not be very accurate. This inaccuracy is even more pronounced for an outbreak of a previously unknown disease, where early cases are likely to be mis-diagnosed. Because of the final size relation, estimation of $\beta$ or $\mathcal { R } _ { 0 }$ is an important question that has been studied by a variety of approaches. Estimation of the initial growth rate from data can provide an estimate of the contact rate $\beta$ . However, this relation is valid only for the model (2.11) and does not hold for models with different compartmental structure, such as an exposed period. 

If $\beta S _ { 0 } > \alpha$ , I increases initially to a maximum number of infectives when the derivative of I is zero, that is, when $S = \alpha / \beta$ . This maximum is given by 

$$
I _ {m a x} = S _ {0} + I _ {0} - \frac {\alpha}{\beta} \log S _ {0} - \frac {\alpha}{\beta} + \frac {\alpha}{\beta} \log \frac {\alpha}{\beta}, \tag {2.15}
$$

obtained by substituting $S = \alpha / \beta , I = I _ { m a x }$ into (2.13). 

Example 1 A study of Yale University freshmen [10] reported by Hethcote [13] described an influenza epidemic with $S _ { 0 } ~ = ~ 0 . 9 1 1 , ~ S _ { \infty } ~ = ~ 0 . 5 1 3$ . Here we are measuring the number of susceptibles as a fraction of the total population size, or using the population size K as the unit of size. Substitution into the final size relation gives the estimate $\beta N / \alpha = 1 . 1 8$ and $\mathcal { R } _ { 0 } ~ = ~ 1 . 1 8$ . Since we know that $1 / \alpha$ is approximately 3 days for influenza, we see that $\beta N$ is approximately 0.39 contacts per day per member of the population. 

Example 2 (The Great Plague in Eyam) The village of Eyam near Sheffield, England suffered an outbreak of bubonic plague in 1665–1666 the source of which is generally believed to be the Great Plague of London. The Eyam plague was survived by only 83 of an initial population of 350 persons. As detailed records were preserved and as the community was persuaded to quarantine itself to try to prevent the spread of disease to other communities, the disease in Eyam has been used as a case study for modeling [21]. Detailed examination of the data indicates that there were actually two outbreaks of which the first was relatively mild. Thus we shall try to fit the model (2.11) over the period from mid-May to mid-October 1666, measuring time in months with an initial population of 7 infectives and 254 susceptibles, and a final population of 83. Raggett [21] gives values of susceptibles and infectives in Eyam on various dates, beginning with $S ( 0 ) = 2 5 4 , I ( 0 ) = 7$ , shown in Table 2.1. 

The final size relation with $S _ { 0 } = 2 5 4 , I _ { 0 } = 7 , S _ { \infty } = 8 3 \mathrm { g i v e s } \beta / \alpha = 6 . 5 4 \times 1 0 ^ { - 3 }$ , $\alpha / \beta = 1 5 3$ . The infective period was 11 days, or 0.3667 month, so that $\alpha = 2 . 7 3$ . Then $\beta = 0 . 0 1 7 8$ . The relation (2.15) gives an estimate of 30.4 for the maximum number of infectives. We use the values obtained here for the parameters $\beta$ and $\alpha$ in the model (2.11) for simulations of the phase plane, the (S, I ) plane, and for graphs of S and I as functions of t (Figs. 2.3 and 2.4). Figure 2.5 plots these data points together with the phase portrait given in Fig. 2.3 for the model (2.11). 


Table 2.1 Eyam Plague data


<table><tr><td>Date (1666)</td><td>Susceptibles</td><td>Infectives</td></tr><tr><td>July 3/4</td><td>235</td><td>14.5</td></tr><tr><td>July 19</td><td>201</td><td>22</td></tr><tr><td>August 3/4</td><td>153.5</td><td>29</td></tr><tr><td>August 19</td><td>121</td><td>21</td></tr><tr><td>September 3/4</td><td>108</td><td>8</td></tr><tr><td>September 19</td><td>97</td><td>8</td></tr><tr><td>October 4/5</td><td>Unknown</td><td>Unknown</td></tr><tr><td>October 20</td><td>83</td><td>0</td></tr></table>


Fig. 2.3 The S–I plane


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/583f57a10873f278ff5ba75b6aa4b3cbb5d6c2d54a0f67f8dc57c65ffafb75b6.jpg)


The actual data for the Eyam epidemic are remarkably close to the predictions of this very simple model. However, the model is really too good to be true. Our model assumes that infection is transmitted directly between people. While this is possible, bubonic plague is transmitted mainly by rat fleas. When an infected rat is bitten by a flea, the flea becomes extremely hungry and bites the host rat repeatedly, spreading the infection in the rat. When the host rat dies its fleas move on to other rats, spreading the disease further. As the number of available rats decreases the fleas move to human hosts, and this is how plague starts in a human population (although the second phase of the epidemic may have been the pneumonic form of bubonic plague, which can be spread from person to person). One of the main reasons for the spread of plague from Asia into Europe was the passage of many trading ships; in medieval times ships were invariably infested with rats. An accurate model of plague transmission would have to include flea and rat populations, as well as movement in space. Such a model would be extremely complicated and its predictions might well not be any closer to observations than our simple unrealistic model. Raggett also used a stochastic model to fit the data, but the fit was rather poorer than the fit for the simple deterministic model (2.11). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/715f6ded78348f571c777c0916ae3f0c8f228e15b22235e6461908d60bc1c2b5.jpg)



Fig. 2.4 Time plot of S and I


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/87b8d248fd7603192f44a336812a14e2dc6cabb0e86f0b9ddbef1dd5294f1e01.jpg)



Fig. 2.5 The S–I plane, model and data


In the village of Eyam the rector persuaded the entire community to quarantine itself to prevent the spread of disease to other communities. One effect of this policy was to increase the infection rate in the village by keeping fleas, rats, and people in close contact with one another, and the mortality rate from bubonic plague was much higher in Eyam than in London. Further, the quarantine could do nothing to prevent the travel of rats and thus did little to prevent the spread of disease to other communities. One message this suggests to mathematical modelers is that control strategies based on false models that do not describe the epidemiological situation accurately may be harmful, and it is essential to distinguish between assumptions that simplify but do not alter the predicted effects substantially, and wrong assumptions which make an important difference. 

## 2.5 Epidemic Models with Deaths due to Disease

So far, we have analyzed only models with no disease deaths, for which it may be assumed that the total population size is constant. 

The assumption in the model (2.11) of a rate of contacts per infective which is proportional to population size N, called mass action incidence or bilinear incidence, was used in all the early epidemic models. However, it is quite unrealistic, except possibly in the early stages of an epidemic in a population of moderate size. It is more realistic to assume a contact rate which is a non-increasing function of the total population size. For example, a situation in which the number of contacts per infective in unit time is constant, called standard incidence, is a more accurate description for sexually transmitted diseases. If there are no disease deaths, so that the total population size remains constant, such a distinction is unnecessary. 

We generalize the model (2.11) by assuming that an average member of the population makes $N \beta ( N )$ contacts in unit time [4, 8]. It is reasonable to assume $\beta ^ { \prime } ( N ) \leq 0$ to express the idea of saturation in the number of contacts. Then mass action incidence corresponds to the choice $a ( N ) = \beta N$ , and standard incidence corresponds to the choice $a ( N ) = a$ . The assumptions $a ( N ) = N \beta ( N ) , a ^ { \prime } ( N ) \geq 0$ imply that 

$$
\beta (N) + N \beta^ {\prime} (N) \geq 0.
$$

Some epidemic models [8] have used a Michaelis–Menten type of interaction of the form 

$$
\beta (N) = \frac {a}{1 + b N}.
$$

Another form based on a mechanistic derivation for pair formation [11] leads to an expression of the form 

$$
\beta (N) = \frac {a}{1 + b N + \sqrt {1 + 2 b N}}.
$$

Data for diseases transmitted by contact in cities of moderate size [20] suggests that data fits the assumption of a form 

$$
\beta (N) = a N ^ {p - 1}
$$

with $p = 0 . 0 5$ quite well. All of these forms satisfy the conditions $\beta ^ { \prime } ( N ) \leq 0$ and (2.5). 

Because the total population size is now present in the model, we must include an equation for total population size in the model. This forces us to make a distinction between members of the population who die of the disease and members of the population who recover with immunity against reinfection. We assume, as in the previous chapter, a recovery rate αI and a disease death rate dI . We use S, I , and N as variables, with $N = S + I + R$ . We now obtain a three-dimensional model 

$$
S ^ {\prime} = - \beta (N) S I
$$

$$
I ^ {\prime} = \beta (N) S I - (\alpha + d) I \tag {2.16}
$$

$$
N ^ {\prime} = - d I.
$$

Since N is now a decreasing function, we define $N ( 0 ) = N _ { 0 } = S _ { 0 } + I _ { 0 }$ . We also have the equation $R ^ { \prime } = \alpha I$ , but we do not need to include it in the model since R is determined when S, I, and N are known. We should note that if $d = 0$ the total population size remains equal to the constant N, and the model (2.16) reduces to the simpler model (2.11) with $\beta ( N )$ replaced by the constant $\beta ( N _ { 0 } )$ . 

We wish to show that the model (2.16) has the same qualitative behavior as the model (2.11), namely that there is a basic reproduction number which distinguishes between disappearance of the disease and an epidemic outbreak, and that some members of the population are left untouched when the epidemic passes. These two properties are the central features of all epidemic models. 

For the model (2.16) the basic reproduction number is given by 

$$
\mathcal {R} _ {0} = \frac {N _ {0} \beta (N _ {0})}{\alpha + d}
$$

because a single infective introduced into a wholly susceptible population makes $c ( N _ { 0 } ) = N _ { 0 } \beta ( N _ { 0 } )$ contacts in unit time, all of which are with susceptibles and thus produce new infections, and the mean infective period, corrected for mortality, is $1 / ( \alpha + d )$ . 

We assume that $\beta ( 0 )$ is finite, thus ruling out standard incidence (standard incidence does not appear to be realistic if the total population N approaches zero, and it would be more natural to assume that $c ( N )$ grows linearly with N for small N ). If we let $t \to \infty$ in the sum of the first two equations of (2.16) we obtain 

$$
(\alpha + d) \int_ {0} ^ {\infty} I (s) d s = S _ {0} + I _ {0} - S _ {\infty} = N - S _ {\infty}.
$$

The first equation of (2.16) may be written as 

$$
- \frac {S ^ {\prime} (t)}{S (t)} = \beta (N (t)) I (t).
$$

Since 

$$
\beta (N) \geq \beta (N _ {0}),
$$

integration from 0 to ∞ gives 

$$
\begin{array}{l} \log \frac {S _ {0}}{S _ {\infty}} = \int_ {0} ^ {\infty} \beta (N (t)) I (t) d t \\ \geq \beta (N _ {0}) \int_ {0} ^ {\infty} I (t) d t \\ = \frac {\beta (N _ {0}) (N _ {0} - S _ {\infty})}{(\alpha + d) N _ {0}}. \\ \end{array}
$$

We now obtain a final size inequality 

$$
\begin{array}{l} \log \frac {S _ {0}}{S _ {\infty}} = \int_ {0} ^ {\infty} \beta (N (t)) I (t) d t \\ \geq \beta (N _ {0}) \int_ {0} ^ {\infty} I (t) d t = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N _ {0}} \right]. \\ \end{array}
$$

If the case fatality ratio $d / ( d + \alpha )$ is small, the final size inequality is an approximate equality. 

It is not difficult to show that $N ( t ) \geq \alpha N _ { 0 } / ( \alpha + d )$ and then a similar calculation using the inequality $\beta ( N ) \le \beta ( \alpha N _ { 0 } / ( \alpha + d ) ) < \infty$ shows that 

$$
\log \frac {S _ {0}}{S _ {\infty}} \leq \beta (\alpha N _ {0} / (\alpha + d)) \int_ {0} ^ {\infty} I (t) d t,
$$

from which we may deduce that $S _ { \infty } > 0 .$ . 

It is important to be able to estimate the fraction of infectives who die of disease over the course of the epidemic. At every time, the rate of recovery is αI and the rate of disease deaths is dI , and thus the mortality fraction at each time is 

$$
\frac {d}{d + \alpha}.
$$

This is what is sometimes described (incorrectly because it is not a rate) as the epidemic death rate. While the mortality fraction overall is $d / ( d + \alpha )$ , reports during the epidemic would underestimate the mortality fraction because there may be some infectives who would die later during the epidemic. On the other hand, for a disease like influenza, where many cases are mild enough to go unreported, reports would tend to overestimate the mortality fraction. 

## 2.6 *Project: Discrete Epidemic Models

The discrete analogue of the continuous-time epidemic model (2.11) is 

$$
S _ {j + 1} = S _ {j} G _ {j},
$$

$$
I _ {j + 1} = S _ {j} \left(1 - G _ {j}\right) + \sigma I _ {j}, \tag {2.17}
$$

$$
G _ {j} = e ^ {- \beta I _ {j} / N}, \quad j = 1, 2, \dots ,
$$

where $S _ { j }$ and $I _ { j }$ denote the numbers of susceptible and infective individuals at time $j .$ , respectively. Here, $G _ { j }$ is the probability that a susceptible individual at time j will remain susceptible to time $j + 1$ , that is, will not be infected between timej and time $j + 1$ , and $\sigma = e ^ { - \alpha }$ is the probability that an infected individual at time j will remain infected to time $j + 1$ . 

Assume that the initial conditions are $S ( 0 ) = S _ { 0 } \ : > \ : 0 , \ : I ( 0 ) = I _ { 0 } \ : > \ : 0$ , and $S _ { 0 } + I _ { 0 } = N$ . 

Exercise 1 Consider the system (2.17). 

(a) Show that the sequence $\{ S _ { j } + I _ { j } \}$ has a limit 

$$
S _ {\infty} + I _ {\infty} = \lim _ {j \rightarrow \infty} (S _ {j} + I _ {j}).
$$

(b) Show that 

$$
I _ {\infty} = \lim _ {j \to \infty} I _ {j} = 0.
$$

(c) Show that 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \beta \sum_ {m = 0} ^ {\infty} \frac {I _ {m}}{N}.
$$

(d) Show that 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right],
$$

with R0 = β . $\begin{array} { r } { \mathcal { R } _ { 0 } = \frac { \beta } { 1 - \sigma } } \end{array}$ 

− Next, consider the case that there are k infected stages and there is treatment in some stages, with treatment rates that can be different in different stages. Assume that selection of members for treatment occurs only at the beginning of a stage. Let I (i)j $I _ { j } ^ { ( i ) }$ and $T _ { j } ^ { ( i ) }$ denote the numbers of infected and treated individuals, respectively, in stage $i ( i = 1 , 2 , \dots , k )$ at time j . Let $\sigma _ { i } ^ { I }$ denote the probability that an infected individual in the $I ^ { ( i ) }$ stage continues on to the next stage, either treated or untreated, and let $\sigma _ { i } ^ { T }$ denote the probability that an individual in the $T ^ { ( i ) }$ stage continues on to the next treated stage. In addition, of the members leaving an infected stage $I ^ { ( i ) }$ , a fraction $p _ { i }$ enters treatment in $T ^ { ( i + 1 ) }$ ), while the remaining fraction $q _ { i }$ continues to $I ^ { ( i + 1 ) }$ . Let $m _ { i }$ denote the fraction of infected members who go through the stage $I ^ { ( i ) }$ , and $n _ { i }$ the fraction of infected members who go through the stage $T ^ { ( i ) }$ . Then, 

$$
m _ {1} = q _ {1}, m _ {2} = q _ {1} q _ {2}, \quad \dots , m _ {k} = q _ {1} q _ {2} \dots q _ {k},
$$

$$
n _ {1} = p _ {1}, n _ {2} = p _ {1} + q _ {1} p _ {2}, \dots , n _ {k} = p _ {1} + q _ {1} p _ {2} + \dots + q _ {1} q _ {2} \dots q _ {k - 1} p _ {k}.
$$

The discrete system with treatment is 

$$
S _ {j + 1} = S _ {j} G _ {j},
$$

$$
I _ {j + 1} ^ {(1)} = q _ {1} S _ {j} (1 - G _ {j}) + \sigma_ {1} ^ {I} I _ {j} ^ {(1)},
$$

$$
T _ {j + 1} ^ {(1)} = p _ {1} S _ {j} (1 - G _ {j}) + \sigma_ {1} ^ {T} T _ {j} ^ {(1)} \tag {2.18}
$$

$$
I _ {j + 1} ^ {(i)} = q _ {i} (1 - \sigma_ {i - 1} ^ {I}) I _ {j} ^ {(i - 1)} + \sigma_ {i} ^ {I} \eta_ {i} I _ {j} ^ {(i)},
$$

$$
T _ {j + 1} ^ {(i)} = p _ {i} (1 - \sigma_ {i - 1} ^ {I}) I _ {j} ^ {(i - 1)} + (1 - \sigma_ {i - 1} ^ {T}) T _ {j} ^ {(i - 1)} + \sigma_ {i} ^ {T} T _ {j} ^ {(i)},
$$

$[ i = 2 , \ldots , k , j \geq 0 ]$ , with 

$$
G _ {j} = e ^ {- \beta \sum_ {i = 1} ^ {k} \left(\epsilon_ {i} I _ {j} ^ {(i)} / N + \delta_ {i} T _ {j} ^ {(i)} / N\right)},
$$

where $\epsilon _ { i }$ is the relative infectivity of untreated individuals at stage i and $\delta _ { i }$ is the relative infectivity of treated individuals at stage i. 

(e) Show that 

$$
\mathcal {R} _ {c} = \beta N \sum_ {i = 1} ^ {k} \left[ \frac {\epsilon_ {i} m _ {i}}{1 - \sigma_ {i} ^ {I}} + \frac {\delta_ {i} n _ {i}}{1 - \sigma_ {i} ^ {T}} \right]
$$

and that 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {c} \left[ 1 - \frac {S _ {\infty}}{N} \right].
$$

## 2.7 *Project: Pulse Vaccination

Consider an SIR model (2.9) with $\varLambda = \mu K$ . For measles, typical parameter choices are $\mu = 0 . 0 2 , \beta = 1 8 0 0 , \alpha = 1 0 0 , K = 1$ (to normalize carrying capacity to 1) [9]. 

Question 1 Show that for these parameter choices $\mathcal { R } _ { 0 } \approx 1 8$ and to achieve herd immunity would require vaccination of about 95% of the susceptible population. 

In practice, it is not possible to vaccinate 95% of a population because not all members of the population would come to be vaccinated and not all vaccinations are successful. One way to avoid recurring outbreaks of disease is “pulse vaccination” [1, 24, 25]. The basic idea behind pulse vaccination is to vaccinate a given fraction $p$ of the susceptible population at intervals of time $T$ with $T$ (depending on $p )$ chosen to ensure that the number of infectives remains small and approaches zero. In this project we will give two approaches to the calculation of a suitable function $T ( p )$ . 

The first approach depends on the observation that I decreases so long as $S \ <$ < $\Gamma < ( \mu + \alpha ) / \beta$ . We begin by vaccinating $p T$ members, beginning with $S ( 0 ) =$ $( 1 - p ) T$ . From (8.7), 

$$
S ^ {\prime} = \mu K - \mu S - \beta S I \geq \mu K - \mu S.
$$

Then $S ( t )$ is greater than the solution of the initial value problem 

$$
S ^ {\prime} = \mu K - \mu S, \quad S (0) = (1 - p) \Gamma .
$$

Question 2 Solve this initial value problem and show that the solution obeys 

$$
S (t) <   \Gamma , 0 \leq t <   \frac {1}{\mu} \log \frac {K - (1 - p) \Gamma}{K - \Gamma}.
$$

Thus a suitable choice for $T ( p )$ is 

$$
T (p) = \frac {1}{\mu} \log \frac {K - (1 - p) \Gamma}{K - \Gamma} = \frac {1}{\mu} \log \left[ 1 + \frac {p \Gamma}{K - \Gamma} \right].
$$

Calculate $T ( p )$ for $\boldsymbol { p } = \boldsymbol { m } / 1 0 \left( \boldsymbol { m } = 1 , 2 , \ldots , 1 0 \right)$ . 

The second approach is more sophisticated. Start with $I = 0 , S ^ { \prime } = \mu K - \mu S$ . We let $t _ { n } = n T ( n = 0 , 1 , 2 , . . . )$ and run the system for $0 \leq t \leq t _ { 1 } = T$ . Then we let $S _ { 1 } = ( 1 - p ) S ( t _ { 1 } )$ . We then repeat, i.e. for $t _ { 1 } \leq t \leq t _ { 2 } , S ( t )$ is the solution of $S ^ { \prime } = \mu K - \mu S , S ( t _ { 1 } ) = S _ { 1 }$ , and $S _ { 2 } = ( 1 - p ) S _ { 1 }$ . We obtain a sequence $S _ { n }$ in this way. 

Question 3 Show that 

$$
S _ {n + 1} = (1 - p) K (1 - e ^ {- \mu T}) + (1 - p) S _ {n} e ^ {- \mu T}
$$

and for $t _ { n } \leq t \leq t _ { n + 1 }$ , 

$$
S (t) = K \left[ 1 - e ^ {- \mu (t - t _ {n})} \right] + S _ {n} e ^ {- \mu (t - t _ {n})}.
$$

Question 4 Show that the solution is periodic if 

$$
S _ {n + 1} = S _ {n} = S ^ {*} \quad (n = 0, 1, 2, \dots)
$$

with 

$$
S ^ {*} = K \left[ 1 - \frac {p e ^ {\mu T}}{e ^ {\mu T} - (1 - p)} \right]
$$

and that the periodic solution is 

$$
S (t) = \left\{ \begin{array}{l l} K \left[ 1 - \frac {p e ^ {\mu T}}{e ^ {\mu T} - (1 - p)} e ^ {- \mu (t - t _ {n})} \right]: & t _ {n} \leq t \leq t _ {n + 1}, \\ S ^ {*}: & t = t _ {n + 1} \end{array} \right. \qquad I (t) = 0.
$$

It is possible to show by linearizing about this periodic solution that the periodic solution is asymptotically stable if 

$$
\frac {1}{T} \int_ {0} ^ {T} S (t) d t <   \frac {\mu + \xi}{\beta}.
$$

If this condition is satisfied, the infective population will remain close to zero. 

Question 5 Show that this stability condition reduces to 

$$
\frac {K (\mu T - p) (e ^ {\mu T} - 1) + p K \mu T}{\mu T [ e ^ {\mu} - (1 - p) ]} <   \frac {\mu + \xi}{\beta}.
$$

Question 6 Use a computer algebra system to graph T (p), where T is defined implicitly by 

$$
\frac {K (\mu T - p) (e ^ {\mu T} - 1) + p K \mu T}{\mu T [ e ^ {\mu} - (1 - p) ]} = \frac {\mu + \xi}{\beta}.
$$

Compare this expression for T with the one obtained earlier in Question 2 in this project. A larger estimate for a safe value of T would save money by allowing less frequent vaccination pulses. 

## 2.8 *Project: A Model with Competing Disease Strains

We model a general discrete-time SIS model with two competing strains in a population with discrete and non-overlapping generations. This model arises from a particular discretization in time of the corresponding SIS continuous-time stochastic model for two competing strains. 

## State Variables

$S _ { n }$ Population of susceptible individuals in generation n 

$I _ { n } ^ { 1 }$ Population of infected individuals with strain 1 in generation n 

$I _ { n } ^ { 2 }$ Population of infected individuals with strain 2 in generation n 

$T _ { n }$ Total population in generation n 

$f$ Recruitment function 

## Parameters

$\mu$ Per capita natural death rate 

$\gamma _ { i }$ Per capita recovery rate for strain i 

$\alpha _ { i }$ Per capita infection rate for strain i 

Construction of the model equations: The model assumes that (i) the disease is not fatal; (ii) all recruits are susceptible and the recruitment function depends only on $T _ { n } { \mathrm { : } }$ ; (iii) there are no coinfections; (iv) death, infections, and recoveries are modeled as Poisson processes with rates $\mu , \alpha _ { i } , \gamma _ { i } \ ( i = 1 , 2 )$ ; (v) the time step is measured in generations; (vi) the populations change only because of “births” (given by the recruitment function), deaths, recovery, and infection of a susceptible individual for each strain; (vii) individuals recover but do not develop permanent or temporary immunity, that is, they immediately become susceptible again. 

By assumption we have that the probability of k successful encounters is a Poisson distribution, which in general has the form $p ( k ) ~ = ~ e ^ { - \beta } \beta ^ { k } / k !$ , where $\beta$ is the parameter of the Poisson distribution. In our context, only one success is necessary. Therefore, when there are no successful encounters, the expression $p ( 0 ) ~ = ~ e ^ { \stackrel { . } { - } \beta }$ represents the probability that a given event does not occur. For example, the probability that a susceptible individual does not become infective is Prob(not being infected by strain $i ) = e ^ { - \alpha _ { i } I _ { n } ^ { i } }$ , and, Prob(not recovering from strain $i ) = e ^ { - \gamma _ { i } I _ { n } ^ { i } }$ . Hence, Prob(not being infected)= Prob(not being infected by strain 1) Prob(not being infected by strain $2 ) = e ^ { - \alpha _ { 1 } I _ { n } ^ { 1 } } e ^ { - \alpha _ { 2 } I _ { n } ^ { 2 } }$ . 

Now the probability that a susceptible does become infected is given by $1 -$ $e ^ { - \alpha _ { i } I _ { n } ^ { i } }$ . Then, Prob(infected by strain i) = Prob(infected). Prob(infected by strain i | infected) $= ( 1 - e ^ { - ( \alpha _ { 1 } I _ { n } ^ { 1 } + \alpha _ { 2 } I _ { n } ^ { 2 } ) } ) \frac { \alpha _ { i } I _ { n } ^ { i } } { \alpha _ { 1 } I _ { n } ^ { 1 } + \alpha _ { 2 } I _ { n } ^ { 2 } }$ . 

(a) Using the above discussion, show that the dynamics are governed by the system 

$$
\begin{array}{l} S _ {n + 1} = f (T _ {n}) + S _ {n} e ^ {- \mu} e ^ {- (\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2})} + \sum_ {j = 1} ^ {2} I _ {n} ^ {j} e ^ {- \mu} (1 - e ^ {- \gamma_ {j}}), \\ I _ {n + 1} ^ {1} = \frac {\alpha_ {1} S _ {n} I _ {n} ^ {1}}{\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2}} e ^ {- \mu} (1 - e ^ {- (\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2})}) + I _ {n} ^ {1} e ^ {- \mu} e ^ {- \gamma_ {1}}, \tag {2.19} \\ I _ {n + 1} ^ {2} = \frac {\alpha_ {2} S _ {n} I _ {n} ^ {2}}{\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2}} e ^ {- \mu} (1 - e ^ {- (\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2})}) + I _ {n} ^ {2} e ^ {- \mu} e ^ {- \gamma_ {2}}. \\ \end{array}
$$

(b) Show that 

$$
T _ {n + 1} = f (T _ {n}) + T _ {n} e ^ {- \mu},
$$

where 

$$
T _ {n} = S _ {n} + I _ {n} ^ {1} + I _ {n} ^ {2}. \tag {2.20}
$$

This equation is called the demographic equation. It describes the total population dynamics. 

(c) If we set ${ \cal I } _ { n + 1 } ^ { 1 } = { \cal I } _ { n + 1 } ^ { 2 } = 0$ , then model (2.19) reduces to the demographic model 

$$
S _ {n} = f (S _ {n}) + S _ {n} e ^ {\mu}.
$$

and 

$$
T _ {n + 1} = f (T _ {n}) + T _ {n} e ^ {- \mu}.
$$

Check that this is the case. 

(d) Study the disease dynamics at a demographic equilibrium, that is, at a point where $T _ { \infty } = T _ { \infty } e ^ { - \mu } + f ( T _ { \infty } )$ . Substitute $\overset { \cdot } { S } _ { n } = \overset { \cdot } { T } _ { \infty } - I _ { n } ^ { 1 } - I _ { n } ^ { 2 }$ where $T _ { \infty }$ is a stable demographic equilibrium, that is, assume $T _ { 0 } = T _ { \infty }$ to get the following equations: 

$$
\begin{array}{l} I _ {n + 1} ^ {1} = \frac {\alpha_ {1} I _ {n} ^ {1}}{\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2}} (T _ {\infty} - I _ {n} ^ {1} - I _ {n} ^ {2}) e ^ {- \mu} \left(1 - e ^ {- (\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2})}\right) + I _ {n} ^ {1} e ^ {- \mu} e ^ {- \gamma_ {1}}, \\ I _ {n + 1} ^ {2} = \frac {\alpha_ {2} I _ {n} ^ {2}}{\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2}} (T _ {\infty} - I _ {n} ^ {1} - I _ {n} ^ {2}) e ^ {- \mu} \left(1 - e ^ {- (\alpha_ {1} I _ {n} ^ {1} + \alpha_ {2} I _ {n} ^ {2})}\right) + I _ {n} ^ {2} e ^ {- \mu} e ^ {- \gamma_ {2}}. \tag {2.21} \\ \end{array}
$$

System (2.21) describes the dynamics of a population infected with the two strains at a demographic equilibrium. 

Show that in system (2.21), if $\begin{array} { r } { R _ { 1 } = \frac { e ^ { - \mu } T _ { \infty } \alpha _ { 1 } } { 1 - e ^ { - ( \mu + \gamma _ { 1 } ) } } < 1 } \end{array}$ ∞ 1 e−(μ+γ1) e−μT α1 and $\begin{array} { r } { R _ { 2 } = \frac { e ^ { - \mu } T _ { \infty } \alpha _ { 2 } } { 1 - e ^ { - ( \mu + \gamma _ { 2 } ) } } < 1 } \end{array}$ , −then the equilibrium point (0, 0) is asymptotically stable. 

(e) Interpret biologically the numbers $R _ { i } , i = 1 , 2$ . 

(f) Consider $f ( T _ { n } ) = { \cal { A } }$ , where Λ is a constant. Show that 

$$
T _ {n + 1} = \Lambda + T _ {n} e ^ {- \mu}
$$

and that 

$$
T _ {\infty} = \frac {\varLambda}{1 - e ^ {- \mu}}.
$$

(g) Consider $f ( T _ { n } ) = r T _ { n } ( 1 - T _ { n } ) / k$ , and show that in this case the total population dynamic is given by 

$$
T _ {n + 1} = r T _ {n} \left(1 - \frac {T _ {n}}{k}\right) + T _ {n} e ^ {- \mu}
$$

and that the fixed points are 

$$
T _ {n} ^ {*} = 0, \quad T _ {n} ^ {* *} = \frac {k (r + e ^ {- \mu} - 1)}{r},
$$

whenever $r + e ^ { - \mu } > 1$ . 

(h) Assume that one of the strains is missing, and determine the boundary equilibria, that is, let $I _ { n } ^ { i } = 0$ for either $i = 1$ or 2. Equation (2.21) reduces to 

$$
I _ {n + 1} = (T _ {\infty} - I _ {n}) e ^ {- \mu} (1 - e ^ {\alpha_ {1} I _ {n}}) + I _ {n} e ^ {- (\mu + \gamma)}.
$$

Establish necessary and sufficient conditions for the stability and/or instability of boundary equilibria for the system (2.21). Compare your results with simulations of the system (2.21) and of the full system (2.19). 

(i) Does the system (2.21) have endemic $( I _ { 1 } ^ { * } > 0 , I _ { 2 } ^ { * } > 0 )$ equilibria? 

(j) Simulate the full system (2.19) when the demographic equation is in the period doubling regime, where there are orbits with periods of double the length of periods for smaller parameter values. What are your conclusions? 

References: [5, 6]. 

## 2.9 Project: An Epidemic Model in Two Patches

Consider the following SIS model with dispersion between two patches, Patch 1 and Patch 2, where in Patch $i \in \{ 1 , 2 \}$ at generation $t , S _ { i } ( t )$ denotes the population of susceptible individuals; $I _ { i } ( t )$ denotes the population of infected assumed infectious; $T _ { i } ( t ) \equiv S _ { i } ( t ) + I _ { i } ( t )$ denotes the total population size. The constant dispersion coefficients $D _ { S }$ and $D _ { I }$ measure the probability of dispersion by the susceptible and infective individuals, respectively. Observe that we are using a different notation from what we have used elsewhere, writing variables as a function of t rather than using a subscript for the independent variable in order to avoid needing double subscripts: 

$$
\begin{array}{l} S _ {1} (t + 1) = (1 - D _ {S}) \widetilde {S} _ {1} (t) + D _ {S} \widetilde {S} _ {2} (t), \\ I _ {1} (t + 1) = (1 - D _ {I}) \widetilde {I} _ {1} (t) + D _ {I} \widetilde {I} _ {2} (t), \\ S _ {2} (t + 1) = D _ {S} \widetilde {S} _ {1} (t) + (1 - D _ {S}) \widetilde {S} _ {2} (t), \\ I _ {2} (t + 1) = D _ {I} \widetilde {I} _ {1} (t) + (1 - D _ {I}) \widetilde {I} _ {2} (t), \\ \end{array}
$$

where 

$$
\widetilde {S} _ {i} (t) = f _ {i} \left(T _ {i} (t)\right) + \gamma_ {i} S _ {i} (t) \exp \left(\frac {- \alpha_ {i} I _ {i} (t)}{T _ {i} (t)}\right) + \gamma_ {i} I _ {i} (t) \left(1 - \sigma_ {i}\right),
$$

$$
\widetilde {I} _ {i} (t) = \gamma_ {i} (1 - \exp \left(\frac {- \alpha_ {i} I _ {i} (t)}{T _ {i} (t)}\right) S _ {i} (t) + \gamma_ {i} \sigma_ {i} I _ {i} (t)
$$

and 

$$
0 \leq \gamma_ {i}, \sigma_ {i}, \alpha_ {i}, D _ {S}, D _ {I} \leq 1.
$$

Let 

$$
f _ {i} (T _ {i} (t)) = T _ {i} (t) \exp (r _ {i} - T _ {i} (t)),
$$

where $r _ { i }$ is a positive constant. 

(a) Using computer explorations, determine whether it is possible to have a globally stable disease-free equilibrium on a patch (without dispersal) where the full system with dispersal has a stable endemic equilibrium. Do you have a conjecture? 

(b) Using computer explorations determine whether it is possible to have a globally stable endemic equilibrium on a patch (without dispersal) where the full system with dispersal has a stable disease-free equilibrium. Do you have a conjecture? 

References:[3, 7, 23]. 

## 2.10 Project: Fitting Data for an Influenza Model

Consider an SIR model (2.11) with basic reproduction number 1.5. 

1. Describe the qualitative changes in $( S , I , R )$ as a function of time for different values of $\beta$ and $\alpha$ with $\beta ~ \in ~ \{ 0 . 0 0 0 1 , 0 . 0 0 0 2 , \ldots , 0 . 0 0 0 9 \}$ , for the initial condition $( S , I , R ) = ( 1 0 ^ { 6 } , 1 , 0 )$ . 

2. Discuss the result of part (a) in terms of the basic reproduction number (what is $\beta / \gamma ? )$ . Use a specific disease such as influenza to provide simple interpretations for the different time courses of the disease for the different choices of $\beta$ and $\gamma$ . 

3. Repeat the steps in part (a) for values of $\mathcal { R } _ { 0 } \in \{ 1 . 7 5 , 2 , 2 . 5 \}$ , and for each value of $\mathcal { R } _ { 0 }$ , choose the best pair of values $( \beta , \alpha )$ that fits the slope before the first peak in the data found in Table 2.2 for reported H1N1 influenza cases in México. (Hint: normalize the data so that the peak is 1, and then multiply the data by the size of the peak in the simulations.) 


Table 2.2 Reported cases for H1N1-pandemic in Mexico


<table><tr><td>Day</td><td>Cases</td><td>Day</td><td>Cases</td><td>Day</td><td>Cases</td><td>Day</td><td>Cases</td><td>Day</td><td>Cases</td><td>Day</td><td>Cases</td></tr><tr><td>75</td><td>2</td><td>95</td><td>4</td><td>115</td><td>318</td><td>135</td><td>83</td><td>155</td><td>152</td><td>175</td><td>328</td></tr><tr><td>76</td><td>1</td><td>96</td><td>11</td><td>116</td><td>399</td><td>136</td><td>75</td><td>156</td><td>138</td><td>176</td><td>298</td></tr><tr><td>77</td><td>3</td><td>97</td><td>5</td><td>117</td><td>412</td><td>137</td><td>87</td><td>157</td><td>159</td><td>177</td><td>335</td></tr><tr><td>78</td><td>2</td><td>98</td><td>7</td><td>118</td><td>305</td><td>138</td><td>98</td><td>158</td><td>186</td><td>178</td><td>330</td></tr><tr><td>79</td><td>3</td><td>99</td><td>4</td><td>119</td><td>282</td><td>139</td><td>71</td><td>159</td><td>222</td><td>179</td><td>375</td></tr><tr><td>80</td><td>3</td><td>100</td><td>4</td><td>120</td><td>227</td><td>140</td><td>73</td><td>160</td><td>204</td><td>180</td><td>366</td></tr><tr><td>81</td><td>4</td><td>101</td><td>4</td><td>121</td><td>212</td><td>141</td><td>78</td><td>161</td><td>257</td><td>181</td><td>291</td></tr><tr><td>82</td><td>4</td><td>102</td><td>11</td><td>122</td><td>187</td><td>142</td><td>67</td><td>162</td><td>208</td><td>182</td><td>251</td></tr><tr><td>83</td><td>5</td><td>103</td><td>17</td><td>123</td><td>212</td><td>143</td><td>68</td><td>163</td><td>198</td><td>183</td><td>215</td></tr><tr><td>84</td><td>7</td><td>104</td><td>26</td><td>124</td><td>237</td><td>144</td><td>69</td><td>164</td><td>193</td><td>184</td><td>242</td></tr><tr><td>85</td><td>3</td><td>105</td><td>20</td><td>125</td><td>231</td><td>145</td><td>65</td><td>165</td><td>243</td><td>185</td><td>223</td></tr><tr><td>86</td><td>1</td><td>106</td><td>12</td><td>126</td><td>237</td><td>146</td><td>85</td><td>166</td><td>231</td><td>186</td><td>317</td></tr><tr><td>87</td><td>2</td><td>107</td><td>26</td><td>127</td><td>176</td><td>147</td><td>55</td><td>167</td><td>225</td><td>187</td><td>305</td></tr><tr><td>88</td><td>5</td><td>108</td><td>33</td><td>128</td><td>167</td><td>148</td><td>67</td><td>168</td><td>239</td><td>188</td><td>228</td></tr><tr><td>89</td><td>7</td><td>109</td><td>44</td><td>129</td><td>139</td><td>149</td><td>75</td><td>169</td><td>219</td><td>189</td><td>251</td></tr><tr><td>90</td><td>4</td><td>110</td><td>107</td><td>130</td><td>142</td><td>150</td><td>71</td><td>170</td><td>199</td><td>190</td><td>207</td></tr><tr><td>91</td><td>10</td><td>111</td><td>114</td><td>131</td><td>162</td><td>151</td><td>97</td><td>171</td><td>215</td><td>191</td><td>159</td></tr><tr><td>92</td><td>11</td><td>112</td><td>155</td><td>132</td><td>138</td><td>152</td><td>168</td><td>172</td><td>309</td><td>192</td><td>155</td></tr><tr><td>93</td><td>13</td><td>113</td><td>227</td><td>133</td><td>117</td><td>153</td><td>126</td><td>173</td><td>346</td><td>193</td><td>214</td></tr><tr><td>94</td><td>4</td><td>114</td><td>280</td><td>134</td><td>100</td><td>154</td><td>148</td><td>174</td><td>332</td><td>194</td><td>237</td></tr></table>

## 2.11 Project: Social Interactions

Suppose we have a system with multiple classes of mathematical biology teachers (MBT) at time t. The classes roughly capture the MBT individual attitudes toward learning new stuff. “Reluctant” means the class of MBTs that come into the door as new hires without a disposition to learn new stuff; the positive class corresponds to those who join the MBTs with the right attitude; and the rest of the classes should be self-explanatory. The total population is divided into five classes of MBT individuals: positive (P ), reluctant (R), masterful (M), unchangeable (that is, negative) (U), and inactive (I ). Assume that $N ( t ) = R ( t ) + P ( t ) + M ( t ) +$ $U ( t ) + I ( t )$ and that the total number of MBTs is constant, that is, $\begin{array} { r } { N ( t ) = \frac { K } { \mu } } \end{array}$ for all t, where K is a constant. The model is 

$$
\begin{array}{l} P ^ {\prime} = q K - \beta P \frac {M}{K} + \delta R - \mu P \\ R ^ {\prime} = (1 - q) K - (\delta + \mu) R - \alpha R \\ M ^ {\prime} = \beta P \frac {M}{K} - (\gamma + \mu) M \\ \end{array}
$$

## 2.12 Exercises

$$
U ^ {\prime} = - \mu U + \alpha R
$$

$$
I ^ {\prime} = \gamma M - \mu I,
$$

where $q , \beta , \delta , \mu , \gamma$ , and α are constants and $0 \leq q \leq 1$ . 

1. Interpret the parameters. 

2. Look at the stability of the simplest equilibrium (your choice). 

3. From $\mathcal { R } _ { 0 }$ , discuss what would be the impact of changing parameters $q , \gamma$ , and δ. 

4. What are your conclusions from this model? 

## 2.12 Exercises

1. Find the basic reproduction number and the endemic equilibrium for the SI S model 

$$
S ^ {\prime} = - \beta S I + \alpha I
$$

$$
I ^ {\prime} = \beta S I - (\alpha + d) I,
$$

with a death rate dI due to disease. 

2. Find the basic reproduction number for the SI S model (2.7) that includes births, natural deaths, and disease deaths. Show that the disease-free equilibrium is asymptotically stable if and only if $\mathcal { R } _ { 0 } ~ < ~ 1$ , and that if $\mathcal { R } _ { 0 } > 1$ there is an asymptotically stable endemic equilibrium. 

3. Modify the $S I S$ model (2.2) to the situation in which there are two competing strains of the same disease, generating two infective classes $I _ { 1 } , I _ { 2 }$ under the assumption that coinfections are not possible. Does the model predict coexistence of the two strains or competitive exclusion? 

4.∗ A communicable disease from which infectives do not recover may be modeled by the pair of differential equations 

$$
S ^ {\prime} = - \beta S I, \quad I ^ {\prime} = \beta S I.
$$

Show that in a population of fixed size K such a disease will eventually spread to the entire population. 

5.∗ Consider a disease spread by carriers who transmit the disease without exhibiting symptoms themselves. Let $C ( t )$ be the number of carriers and suppose that carriers are identified and isolated from contact with others at a constant per capita rate $\alpha ,$ , so that $C ^ { \prime } = - \alpha C$ . The rate at which susceptibles become infected is proportional to the number of carriers and to the number of susceptibles, so that $S ^ { \prime } = - \beta S C$ . Let $C _ { 0 }$ and $S _ { 0 }$ be the numbers of carriers and susceptibles, respectively, at time $t = 0$ . 

(a) Determine the number of carriers at time t from the equation for C. 

(b) Substitute the solution to part (a) into the equation for S and determine the number of susceptibles at time t. 

(c) Find $\scriptstyle \operatorname* { l i m } _ { t \to \infty } S ( t )$ , the number of members of the population who escape the disease. 

6. ∗ Consider a population of fixed size K in which a rumor is being spread by word of mouth. Let y(t) be the number of people who have heard the rumor at time t and assume that everyone who has heard the rumor passes it on to r others in unit time. Thus, from time t to time $( t + h )$ the rumor is passed on $h r y ( t )$ times, but a fraction $y ( t ) / K$ of the people who hear it have already heard it, and thus there are only $h r y ( t ) \left( \frac { K - y ( t ) } { K } \right)$ people who hear the rumor for the first time. Use these assumptions to obtain an expression for $y ( t + h ) - y ( t )$ , divide by h, and take the limit as $h  0$ to obtain a differential equation satisfied by $y ( t )$ . 

7. At 9 AM one person in a village of 100 inhabitants starts a rumor. Suppose that everyone who hears the rumor tells one other person per hour. Using the model of the previous exercise, determine how long it will take until half the village has heard the rumor. 

8. ∗ If a fraction λ of the population susceptible to a disease that provides immunity against reinfection moves out of the region of an epidemic, the situation may be modeled by a system 

$$
S ^ {\prime} = - \beta S I - \lambda S, \quad I ^ {\prime} = \beta S I - \alpha I.
$$

Show that both S and I approach zero as $t \to \infty$ 

9. Consider the basic SI R model. We now consider a vaccination class in place of recovery: 

$$
S ^ {\prime} (t) = \mu N - \beta S \frac {I}{N} - (\mu + \phi) S
$$

$$
I ^ {\prime} (t) = \beta S \frac {I}{N} - (\mu + \gamma) I \tag {2.22}
$$

$$
V ^ {\prime} (t) = \gamma I + \phi S - \mu V.
$$

(a) Show that $\begin{array} { r } { \frac { d N } { d t } = 0 } \end{array}$ . What does this result imply? 

(b) Discuss why it is enough to study the first two equations. 

(c) Let $\mathcal { R } _ { 0 } ( \phi )$ be $\mathcal { R } _ { 0 }$ when $\phi \neq 0$ , and $\mathcal { R } _ { 0 } ( 0 )$ be $\mathcal { R } _ { 0 }$ when $\phi = 0$ . Compute $\mathcal { R } _ { 0 } ( \phi )$ . What is the value of $\mathcal { R } _ { 0 } ( 0 ) ?$ Compare $\mathcal { R } _ { 0 } ( \phi )$ with $\mathcal { R } _ { 0 } ( 0 )$ . 

(d) Compute the equilibria. 

(e) Do the local stability analysis of the disease-free equilibrium state and the endemic state. 

10. In cases of constant recruitment, the limiting system as $t ~  ~ \infty$ and the original system usually have the same qualitative dynamics. We thus consider our previous SIR model with vaccination (refer to problem 9) changing the recruitment rate from the constant $\mu N$ to the constant Λ. This means that a certain fixed number of individuals join or arrive into the susceptible class per unit time. The model becomes 

$$
S ^ {\prime} (t) = \Lambda - \beta S \frac {I}{N} - \mu S
$$

$$
I ^ {\prime} (t) = \beta S \frac {I}{N} - (\mu + \gamma) I \tag {2.23}
$$

$$
V ^ {\prime} (t) = \gamma I - \mu V,
$$

where, again, $N ( t ) = S ( t ) + I ( t ) + V ( t )$ . 

(a) What are the units of $\varLambda , \beta S _ { N } ^ { I } , \mu , \gamma , \beta$ , and $\mu S ?$ 

(b) Find the equation for $N ^ { \prime } ( t )$ where $N = S + I + V$ , and solve this equation for $N ( t )$ . Observe that the population size for this model is not constant. 

(c) Show that $\begin{array} { r } { N ( t )  \frac { \lambda } { \mu } \mathrm { { a s } } t  \infty } \end{array}$ 

(d) Consider the limiting system 

$$
S ^ {\prime} (t) = \mu N - \beta S I - \mu S
$$

$$
I ^ {\prime} (t) = \beta S I - (\mu + \gamma) I \tag {2.24}
$$

$$
V ^ {\prime} (t) = \gamma I - \mu V.
$$

Explain why it is enough to consider the first two equations as $V ( t ) =$ $N - S ( t ) - I ( t )$ when studying the dynamics of this limiting system, find $\mathcal { R } _ { 0 }$ , and do the local stability analysis of the equilibria. 

11. An epidemic model with two latent classes is described by the following system of $\mathrm { O D E } ^ { \prime } \mathrm { s }$ : 

$$
S ^ {\prime} = \Lambda - \beta S \frac {I}{N} - \mu S
$$

$$
L _ {1} ^ {\prime} = p \beta S \frac {I}{N} - (\mu + k _ {1} + r _ {1}) L _ {1}
$$

$$
L _ {2} ^ {\prime} = (1 - p) \beta S \frac {I}{N} - (\mu + k _ {2} + r _ {2}) L _ {2}
$$

$$
I ^ {\prime} = k _ {1} L _ {1} + k _ {2} L _ {2} - (\mu + r _ {3}) I,
$$

where $N = S + L _ { 1 } + L _ { 2 } + I$ . A fraction $p , 0 < p < 1$ , goes into the first latent class and a fraction $1 - p$ goes into the second latent class. The two classes have different rates of progression to the infectious stage. Compute the basic reproduction number $\mathcal { R } _ { 0 }$ . 

12. If vaccination strategies are incorporated for newborns, we assume that not every new birth is susceptible. Suppose that the per capita vaccination rate is $p ;$ a newborn is vaccinated with probability $p .$ . The modified model is 

$$
S ^ {\prime} (t) = (1 - p) \mu N - \beta S \frac {I}{N} - \mu S
$$

$$
I ^ {\prime} (t) = \beta S \frac {I}{N} - (\mu + \gamma) I \tag {2.25}
$$

$$
V ^ {\prime} (t) = \gamma I - \mu V + p \mu N.
$$

(a) Calculate the Jacobian matrix of (2.25) at the disease-free equilibrium points? 

(b) Find the corresponding eigenvalues of the above matrix. 

(c) Find the basic reproduction numbers $( \mathcal { R } _ { 0 } )$ . 

(d) Study the stability of the disease-free equilibrium points of model (2.25). Although N is constant and we could reduce this to a 2-D system, derive the stability of the full $3 \times 3$ system by using the Routh–Hurwitz criteria. 

13. The same survey of Yale students described in Example 1, Sect. 2.4 reported that 91.1% were susceptible to influenza at the beginning of the year and 51.4% were susceptible at the end of the year. Estimate the basic reproduction number and decide whether there was an epidemic. 

14. What fraction of Yale students in Exercise 13 would have had to be immunized to prevent an epidemic? 

15. What was the maximum number of Yale students in Exercises 13 and 14 suffering from influenza at any time? 

16. An influenza epidemic was reported at an English boarding school in 1978 that spread to 512 of the 763 students. Estimate the basic reproduction number. 

17. What fraction of the boarding school students in Exercise 16 would have had to be immunized to prevent an epidemic? 

18. What was the maximum number of boarding school students in Exercises 16 and 17 suffering from influenza at any time? 

19. A disease is introduced by two visitors into a town with 1200 inhabitants. An average infective is in contact with 0.4 inhabitants per day. The average duration of the infective period is 6 days, and recovered infectives are immune against reinfection. How many inhabitants would have to be immunized to avoid an epidemic? 

20. Consider a disease with $\beta N = 0 . 4 , 1 / \alpha = 6$ days in a population of 1200 members. Suppose the disease conferred immunity on recovered infectives. How many members would have to be immunized to avoid an epidemic? 

21. A disease begins to spread in a population of 800. The infective period has an average duration of 14 days and the average infective is in contact with 0.1 persons per day. What is the basic reproduction number? To what level must the average rate of contact be reduced so that the disease will die out? 

22. European fox rabies is estimated to have a transmission coefficient $\beta$ of $8 0 \mathrm { k m } ^ { 2 }$ years/fox (assuming mass action incidence),and an average infective period of 5 days. There is a critical carrying capacity $K _ { c }$ measured in foxes per $\mathrm { k m } ^ { 2 }$ , such that in regions with fox density less than $K _ { c } ,$ rabies tends to die out, while in regions with fox density greater than $K _ { c }$ , rabies tends to persist. Use a simple Kermack–McKendrick epidemic model to estimate $K _ { c }$ . [Remark: It has been suggested in Great Britain that hunting to reduce the density of foxes below the critical carrying capacity would be a way to control the spread of rabies.] 

23. A large English estate has a population of foxes with a density of 1.3 foxes/km2. A large fox hunt is planned to reduce the fox population enough to prevent an outbreak of rabies. Assuming that the contact number $\beta / \alpha$ is $1 ~ \mathrm { k m } ^ { 2 } / \mathrm { f o x }$ , find what fraction of the fox population must be caught. 

## 2.12 Exercises

24. Following a complaint from the SPCA, organizers decide to replace the fox hunt of Exercise 23 by a mass inoculation of foxes for rabies. What fraction of the fox population must be inoculated to prevent a rabies outbreak? 

25. What actually occurs on the estate of these exercises is that 10% of the foxes are killed and 15% are inoculated. Is there danger of a rabies outbreak? 

26. Let S, I , and R represent the densities of susceptible, infected, and recovered individuals. Suppose that recovered individuals can become susceptible again after some time. The model equations are 

$$
\frac {d S}{d t} = - \beta S I + \theta R
$$

$$
\frac {d I}{d t} = \beta S I - \alpha I
$$

$$
\frac {d R}{d t} = \alpha I - \theta R
$$

where $N = S + I + R$ and $\beta , \theta$ , and α are the infection, loss of immunity, and recovery rates, respectively. 

(a) Reduce this model to a two-dimensional system of equations. Don’t forget to show that N is constant. 

(b) Find the equilibrium points. Is there a disease-free equilibria $( I = 0 ) \ ?$ Is there an endemic equilibria $( I \neq 0 ) \}$ If so, when does it exist? 

(c) Determine the local stability of each of the equilibrium points you found in (b). 

27. Here is another approach to the analysis of the SIR model (2.11). 

(a) Divide the two equations of the model to give 

$$
{\frac {I ^ {\prime}}{S ^ {\prime}}} = {\frac {d I}{d S}} = {\frac {(\beta S - \alpha) I}{- \beta S I}} = - 1 + {\frac {\alpha}{\beta S}}.
$$

(b) Integrate to find the orbits in the (S, I )-plane, 

$$
I = - S + \frac {\alpha}{\beta} \log S + c,
$$

with c an arbitrary constant of integration. 

(c) Define the function 

$$
V (S, I) = S + I - \frac {\alpha}{\beta} \log S
$$

and show that each orbit is given implicitly by the equation $V ( S , I ) = c$ for some choice of the constant c. 

(d) Show that no orbit reaches the I -axis and deduce that $\begin{array} { r l } { S _ { \infty } } & { { } = } \end{array}$ $\begin{array} { l } { \operatorname* { l i m } _ { t \to \infty } S ( t ) ~ > ~ 0 } \end{array}$ , which implies that part of the population escapes infection. 

28. For the model (2.16) show that the final total population size is given by 



9. Engbert, R. and F. Drepper (1994) Chance and chaos in population biology-models of recurrent epidemics and food chain dynamics, Chaos, Solutions & Fractals, 4(7):1147–1169. 



$$
N _ {\infty} = \frac {\alpha}{\alpha + d} N _ {0} + \frac {d}{\alpha + d} S _ {\infty}.
$$



10. Evans, A.S. (1982) Viral Infections of Humans, 2nd ed., Plenum Press, New York. 



29. Consider the basic SIR model with disease deaths, but we now consider a vaccination class in place of recovery: 



11. Heesterbeek, J.A.P. and J.A.J Metz (1993) The saturating contact rate in marriage and epidemic models. J. Math. Biol., 31: 529–539. 



$$
S ^ {\prime} (t) = \mu N - \beta S \frac {I}{N} - (\mu + \phi) S
$$



12. Hethcote, H.W. (1976) Qualitative analysis for communicable disease models, Math. Biosc., 28:335–356. 



$$
I ^ {\prime} (t) = \beta S \frac {I}{N} - (\mu + \gamma + \delta) I \tag {2.26}
$$



13. Hethcote, H.W. (1989) Three basic epidemiological models. In Applied Mathematical Ecology, S. A. Levin, T.G. Hallam and L.J. Gross, eds., Biomathematics 18, 119–144, Springer-Verlag, Berlin-Heidelberg-New York. 



$$
V ^ {\prime} (t) = \gamma I + \phi S - \mu V.
$$



14. Hethcote, H.W. and S.A. Levin (1989) Periodicity in epidemic models. In : S.A. Levin, T.G. Hallam & L.J. Gross (eds) Applied Mathematical Ecology, Biomathematics 18, Springer-Verlag, Berlin-Heidelberg-New York: pp. 193–211. 



(a) Let $\mathcal { R } _ { 0 } ( \phi )$ be $\mathcal { R } _ { 0 }$ when $\phi \neq 0$ , and $\mathcal { R } _ { 0 } ( 0 )$ be $\mathcal { R } _ { 0 }$ when $\phi = 0$ . Compute $\mathcal { R } _ { 0 } ( \phi )$ . What is the value of $\mathcal { R } _ { 0 } ( 0 ) ?$ Compare $\mathcal { R } _ { 0 } ( \phi )$ with $\mathcal { R } _ { 0 } ( 0 )$ . 



15. Hethcote, H.W., H.W. Stech and P. van den Driessche (1981) Periodicity and stability in epidemic models: a survey. In: S. Busenberg & K.L. Cooke (eds.) Differential Equations and Applications in Ecology, Epidemics and Population Problems, Academic Press, New York: 65–82. 



(b) Compute the equilibria. 



16. Hurwitz, A. (1895) Über die Bedingungen unter welchen eine Gleichung nur Wurzeln mit negativen reellen Teilen bezizt, Math. Annalen 46: 273–284. 



(c) Do the local stability analysis of the disease-free equilibrium state and the endemic state. 



17. Kermack, W.O. & A.G. McKendrick (1927) A contribution to the mathematical theory of epidemics. Proc. Royal Soc. London. 115: 700–721. 



## References



18. Kermack, W.O. & A.G. McKendrick (1932) Contributions to the mathematical theory of epidemics, part. II. Proc. Roy. Soc. London, 138: 55–83. 





19. Kermack, W.O. & A.G. McKendrick (1932) Contributions to the mathematical theory of epidemics, part. III. Proc. Roy. Soc. London, 141: 94–112. 





1. Agur,Z.L., G. Mazor, R. Anderson, and Y. Danon (1993) Pulse mass measles vaccination across age cohorts, Proc. Nat. Acad. Sci., 90:11698–11702. 





20. Mena-Lorca, J. & H.W. Hethcote (1992) Dynamic models of infectious diseases as regulators of population size. J. Math. Biol., 30: 693–716. 





2. Anderson, R.M. & R.M. May (1991) Infectious Diseases of Humans. Oxford University Press (1991) 





21. Raggett, G.F. (1982) Modeling the Eyam plague, IMA Journal, 18:221–226. 





3. Arreola R., A. Crossa, and M.C. Velasco (2000) Discrete-time SEIS models with exogenous re-infection and dispersal between two patches, Department of Biometrics, Cornell University, Technical Report Series, BU-1533-M. 





22. Routh, E.J. (1877) A Treatise on the Stability of a Given State of Motion: Particularly Steady Motion, MacMillan. 





4. Castillo-Chavez, C., K. Cooke, W. Huang, and S.A. Levin (1989a) The role of long incubation periods in the dynamics of HIV/AIDS. Part 1: Single Populations Models, J. Math. Biol., 27:373-98. 





23. Sánchez B.N., P.A. Gonzalez, R.A. Saenz (2000) The influence of dispersal between two patches on the dynamics of a disease, Department of Biometrics, Cornell University, Technical Report Series, BU-1531-M. 





5. Castillo-Chavez, C., W. Huang, and J. Li (1996a) Competitive exclusion in gonorrhea models and other sexually-transmitted diseases, SIAM J. Appl. Math, 56: 494–508. 





24. Shulgin, B., L. Stone, and Z. Agur (1998) Pulse vaccination strategy in the SIR epidemic model, Bull. Math. Biol., 60:1123–1148. 





6. Castillo-Chavez, C., W. Huang, and J. Li (1997) The effects of females’ susceptibility on the coexistence of multiple pathogen strains of sexually-transmitted diseases, Journal of Mathematical Biology, 35:503–522. 





25. Stone, L., B. Shulgin, Z. Agur (2000) Theoretical examination of the pulse vaccination in the SIR epidemic model, Math. and Computer Modeling, 31:207–215. 





7. Castillo-Chavez C., and A.A. Yakubu (2000) Epidemics models on attractors, Contemporary Mathematics, AMS, 284: 23–42. John Wiley & Sons, New York, 2000. 





8. Dietz, K. (1982) Overall patterns in the transmission cycle of infectious disease agents. In: R.M. Anderson, R.M. May (eds) Population Biology of Infectious Diseases. Life Sciences Research Report 25, Springer-Verlag, Berlin-Heidelberg-New York, pp. 87–102 (1982) 



# Chapter 3 Endemic Disease Models

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/56c3bbd6b43a23e4a785b2e753d3ecf84df8bff545cb4881c840bf109f1a0729.jpg)


In this chapter, we consider models for disease that may be endemic. In the preceding chapter we studied $S I S$ models with and without demographics and SI R models with demographics. In each model, the basic reproduction number $\mathcal { R } _ { 0 }$ determined a threshold. If $\mathcal { R } _ { 0 } < 1$ the disease dies out, while if $\mathcal { R } _ { 0 } > 1$ the disease becomes endemic. The analysis in each case involves determination of equilibria and determining the asymptotic stability of each equilibrium by linearization about the equilibrium. In each of the cases studied in the preceding chapter the disease-free equilibrium was asymptotically stable if and only if $\mathcal { R } _ { 0 } < 1$ and if $\mathcal { R } _ { 0 } > 1$ there was a unique endemic equilibrium that was asymptotically stable. In this chapter, we will see that these properties continue to hold for many more general models, but there are situations in which there may be an asymptotically stable endemic equilibrium when $\mathcal { R } _ { 0 } < 1$ , and other situations in which there is an endemic equilibrium that is unstable for some values of $\mathcal { R } _ { 0 } > 1$ . 

In Sect. 2.3 we analyzed the SI R model for diseases from which infectives recover with immunity against reinfection: 

$$
S ^ {\prime} = \Lambda (N) - \beta S I - \mu S
$$

$$
I ^ {\prime} = \beta S I - \mu I - \alpha I - d I \tag {3.1}
$$

$$
N ^ {\prime} = \Lambda (N) - d I - \mu N.
$$

The following basic result holds for (3.1). 

Theorem 3.1 The basic reproduction number for the model (3.1) is given by 

$$
\mathcal {R} _ {0} = \frac {\beta K}{\mu + \alpha} = \frac {K}{S _ {\infty}}.
$$

$I f \mathcal { R } _ { 0 } < 1$ , the system has only the disease-free equilibrium and this equilibrium is asymptotically stable. 

Here, K is the population carrying capacity and $S _ { \infty }$ is the susceptible population size at the endemic equilibrium. The theorem says that the disease-free equilibrium is locally asymptotically stable. We recall that this means that solutions with initial values close to this equilibrium remain close to the equilibrium and approach the equilibrium as $t \to \infty$ . In fact, it is not difficult to prove that this asymptotic stability is global, that is, that every solution approaches the disease-free equilibrium. If the quantity $\mathcal { R } _ { 0 }$ is greater than one, then the disease-free equilibrium is unstable, but there is an endemic equilibrium that is (locally) asymptotically stable. 

In fact, these properties hold for some endemic disease models with more complicated compartmental structure . We will describe some examples. 

## 3.1 More Complicated Endemic Disease Models

## 3.1.1 Exposed Periods

In many infectious diseases there is an exposed period after the transmission of infection from susceptibles to potentially infective members but before these potential infectives develop symptoms and can transmit infection. To incorporate an exposed compartment with mean exposed period $1 / \kappa$ we add an exposed class E and use compartments S, E, I, R and total population size $N = S + E + I + R$ to give a generalization of the epidemic model (3.1) 

$$
S ^ {\prime} = \Lambda (N) - \beta S I - \mu S
$$

$$
E ^ {\prime} = \beta S I - (\kappa + \mu) E \tag {3.2}
$$

$$
I ^ {\prime} = \kappa E - (\alpha + \mu) I.
$$

A flow chart is shown in Fig. 3.1. 

The analysis of this model is similar to the analysis of (3.1), but with I replaced by $E + I$ . That is, instead of using the number of infectives as one of the variables we use the total number of infected members, whether or not they are capable of transmitting infection. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/e069d43cc1dc3ee385309ccf286bdfeff22794bfe13f4267e22595fd1f79e32d.jpg)



Fig. 3.1 Flow chart for the SEI R endemic model (3.2)


## 3.1.2 A Treatment Model

One form of treatment that is possible for some diseases is vaccination to protect against infection before the beginning of an epidemic. For example, this approach is commonly used for protection against annual influenza outbreaks. A simple way to model this would be to reduce the total population size by the fraction of the population protected against infection. 

In reality, such inoculations are only partly effective, decreasing the rate of infection and also decreasing infectivity if a vaccinated person does become infected. This may be modeled by dividing the population into two groups with different model parameters which would require some assumptions about the mixing between the two groups. This is not difficult but we will not explore this direction until Chap. 5 on heterogeneous mixing. 

If there is a treatment for infection once a person has been infected, this may be modeled by supposing that there is a rate γ proportional to the number of infectives at which infectives are selected for treatment, and that treatment reduces infectivity by a fraction δ. Suppose that the rate of removal from the treated class is η. This leads to the SI T R model, where T is the treatment class, given by 

$$
S ^ {\prime} = \mu N - \beta S [ I + \delta T ] - \mu S
$$

$$
I ^ {\prime} = \beta S [ I + \delta T ] - (\alpha + \gamma + \mu) I \tag {3.3}
$$

$$
T ^ {\prime} = \gamma I - (\eta + \mu) T.
$$

A flow chart is shown in Fig. 3.2. In this model, we assume that the natural birth and death rates are equal so that the total population size remains constant. 

In order to calculate the basic reproduction number, we observe that an infective in a totally susceptible population causes $\beta N$ new infections in unit time, and the mean time spent in the infective compartment is $1 / ( \alpha + \gamma + \mu )$ . In addition, a fraction $\gamma / ( \alpha + \gamma + \mu )$ of infectives are treated because $( \gamma + \alpha + \mu )$ is the rate at which the number of infectives decreases overall while γ is the rate at which these infectives are selected for treatment. While in the treatment stage the number of new infections caused in unit time is $\delta \beta N$ , and the mean time in the treatment class is $1 / ( \eta + \mu )$ . Thus 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/a3036fb90a9dda67f5e1558af027e90e99c97ffc15a55f0500f53dcc1e852fd3.jpg)



Fig. 3.2 Flow chart for the SI T R endemic model (3.3)


$$
\mathcal {R} _ {0} = \frac {\beta N}{\alpha + \gamma + \mu} + \frac {\gamma}{\alpha + \gamma + \mu} \frac {\delta \beta N}{\eta + \mu}. \tag {3.4}
$$

It is possible that if $\delta < 1$ and $\alpha > \eta$ the treatment may increase the reproduction number. However, since $\alpha > \eta$ would mean that treatment prolongs the infection, this is quite unlikely. 

The equilibrium conditions for the model (3.3) are 

$$
\mu N = \beta S [ I + \delta T ] + \mu S
$$

$$
\beta S [ I + \delta T ] = (\alpha + \gamma + \mu) I \tag {3.5}
$$

$$
\gamma I = (\eta + \mu) T.
$$

Substitution of the last of these equilibrium conditions into the second gives 

$$
\beta S \frac {\delta \gamma + \eta + \mu}{\eta + \mu} I = (\alpha + \gamma + \mu) I,
$$

and this implies that either $I = 0$ (disease-free equilibrium) or 

$$
\beta S = \frac {(\alpha + \gamma + \mu) (\eta + \mu)}{\delta \gamma + \eta + \mu}
$$

(endemic equilibrium). An endemic equilibrium exists if and only if the value of S given by this condition is less than N , and this is equivalent to $\mathcal { R } _ { 0 } > 1$ . 

The Jacobian matrix or matrix of the linearization of (3.3) at an equilibrium $( S , I , T )$ is 

$$
\left[ \begin{array}{c c c} - \beta (I + \delta T) - \mu & - \beta S & - \delta \beta S \\ \beta (I + \delta T) & \beta S - (\alpha + \gamma + \mu) & \delta \beta S \\ 0 & \gamma & - (\eta + \mu) \end{array} \right],
$$

and at the disease-free equilibrium $( N , 0 , 0 )$ this is 

$$
\left[ \begin{array}{c c c} - \mu & - \beta N & - \delta \beta N \\ 0 & \beta N - (\alpha + \gamma + \mu) & \delta \beta N \\ 0 & \gamma & - (\eta + \mu) \end{array} \right].
$$

The eigenvalues of this matrix are $- \mu$ and the eigenvalues of the $2 \times 2$ matrix 

$$
\left[ \begin{array}{c c} \beta N - (\alpha + \gamma + \mu) & \delta \beta N \\ \gamma & - (\eta + \mu) \end{array} \right].
$$

The eigenvalues of a $2 \times 2$ matrix have negative real part if and only if the matrix has negative trace and positive determinant. The condition that the determinant is positive is 

$$
\beta N <   \frac {(\eta + \mu) (\alpha + \gamma + \mu)}{\eta + \mu + \delta \gamma}, \tag {3.6}
$$

and the condition that the trace is negative is 

$$
\beta N <   (\alpha + \gamma + \mu) + (\eta + \mu). \tag {3.7}
$$

Then, since 

$$
(\eta + \mu) (\alpha + \gamma + \mu) <   (\alpha + \gamma + \mu) (\eta + \mu + \delta \gamma) + (\eta + \mu + \delta \gamma) (\eta + \mu),
$$

if (3.6) is satisfied (3.7) is also satisfied. Thus the condition $\mathcal { R } _ { 0 } < 1$ is equivalent to (3.6) and the asymptotic stability of the disease-free equilibrium. 

To show that the endemic equilibrium is asymptotically stable if it exists, that is, if $\mathcal { R } _ { 0 } > 1$ , we must make use of the four conditions [26, 37] introduced in Chap. 2. A somewhat complicated calculation shows that this is indeed the case. 

## 3.1.3 Vertical Transmission

In some diseases, notably Chagas’ disease, HIV/AIDS, hepatitis B, and rinderpest (in cattle), infection may be transferred not only horizontally (by contact between individuals) but also vertically (from an infected parent to a newly born offspring) [8]. We formulate an SI R model with vertical transmission by assuming that a fraction $q$ of the offspring of infective members of the population are infective at birth. For simplicity, we assume that there are no disease deaths so that the total population size N is constant, and our model is based on (3.1). The birth rate in this model is $\varLambda = \mu N$ , and we assume that births are distributed proportionally among compartments. Thus the rate of births to infectives is $\mu I$ , the rate of newborn infectives is $q \mu I$ , and the rate of newborn susceptibles is $\mu N - q \mu I$ . This leads to the model 

$$
\begin{array}{l} S ^ {\prime} = \mu N - q \mu I - \beta S I - \mu S \\ I ^ {\prime} = I + 2 S I - I - I \end{array} \tag {3.8}
$$

$$
I ^ {\prime} = q \mu I + \beta S I - \mu I - \alpha I.
$$

From the second equation, we see that equilibrium requires either $I = 0$ (diseasefree) or $\beta S = \mu ( 1 - q ) + \alpha$ . At the disease-free equilibrium, $S = N , I = 0$ , and the matrix of the linearization is 

$$
\left[ \begin{array}{c c} - \mu & - q \mu - \beta N \\ 0 & \beta N - \mu (1 - q) - \alpha \end{array} \right].
$$

Thus the disease-free equilibrium is asymptotically stable if and only if 

$$
\beta N <   \mu (1 - q) + \alpha .
$$

This suggests that 

$$
\mathcal {R} _ {0} = \frac {\beta N + \mu q}{\mu + \alpha}.
$$

To see that this is indeed correct, we note that the term $\beta N / ( \mu + \alpha )$ represents horizontally transmitted infections at rate $\beta N$ over a death-adjusted infective period $1 / ( \mu + \alpha )$ , and the term $\frac { \mu q } { \mu + \alpha }$ represents vertically transmitted infections per + infective. It is not difficult to verify that the endemic equilibrium, which exists if and only if $\mathcal { R } _ { 0 } > 1$ is asymptotically stable. 

## 3.2 Some Applications of the SI R Model

## 3.2.1 Herd Immunity

In order to prevent a disease from becoming endemic, it is necessary to reduce the basic reproduction number $\mathcal { R } _ { 0 }$ below one. This may sometimes be achieved by immunization. If a fraction $p$ of the $\varLambda ( N )$ newborn members per unit time of the population is successfully immunized, the effect is to replace N by $N ( 1 - p )$ , and thus to reduce the basic reproduction number to $\mathcal { R } _ { 0 } ( 1 - p )$ . The requirement $\mathcal { R } _ { 0 } ( 1 - p ) < 1$ gives $1 - p < 1 / \mathcal { R } _ { 0 }$ , or 

$$
p > 1 - \frac {1}{\mathcal {R} _ {0}}.
$$

A population is said to have herd immunity if a large enough fraction has been immunized to assure that the disease cannot become endemic. The only disease for which this has actually been achieved worldwide is smallpox for which $\mathcal { R } _ { 0 }$ is approximately 5, so that 80% immunization does provide herd immunity, and rinderpest, a cattle disease. 

For measles, epidemiological data in the USA indicate that $\mathcal { R } _ { 0 }$ for rural populations ranges from 5.4 to 6.3, requiring vaccination of 81.5–84.1% of the population. In urban areas $\mathcal { R } _ { 0 }$ ranges from 8.3 to 13.0, requiring vaccination of 88.0–92.3% of the population. In Great Britain, $\mathcal { R } _ { 0 }$ ranges from 12.5 to 16.3, requiring vaccination of 92–94% of the population. The measles vaccine is not always effective, and vaccination campaigns are never able to reach everyone. As a result, herd immunity against measles has not been achieved (and probably never can be). An additional issue is that an anti-vaccination movement has developed, partly because of a fallacious belief that there is a link between the measles-mumpsrubella vaccine and the development of autism and partly because of a general opposition to vaccines. 

Since smallpox is viewed as more serious and requires a lower percentage of the population be immunized, herd immunity was attainable for smallpox. In fact, smallpox has been eliminated; the last known case was in Somalia in 1977, and the virus is maintained now only in laboratories. The eradication of smallpox was actually more difficult than expected because high vaccination rates were achieved in some countries but not everywhere, and the disease persisted in some countries. The eradication of smallpox was possible only after an intensive campaign for worldwide vaccination [22]. 

## 3.2.2 Age at Infection

In order to calculate the basic reproduction number $\mathcal { R } _ { 0 }$ for a disease modeled by a system (3.1), we need to know the values of the contact rate $\beta$ and the parameters μ, K, and $\alpha .$ . The parameters $\mu , K$ , and $\alpha$ can usually be measured experimentally but the contact rate $\beta$ is difficult to determine directly. There is an indirect method of estimating $\mathcal { R } _ { 0 }$ in terms of the life expectancy and the mean age at infection which enables us to avoid having to estimate the contact rate. In this calculation, we will assume that $\beta$ is constant, but we will also indicate the modifications needed when $\beta$ is a function of total population size N. The calculation assumes exponentially distributed life spans and infective periods. The result is valid so long as the life span is exponentially distributed, but if the life span is not exponentially distributed the result could be quite different. 

Consider the “age cohort” of members of a population born at some time $t _ { 0 }$ and let a be the age of members of this cohort. $\operatorname { I f } y ( a )$ represents the fraction of members of the cohort who survive to age (at least) $a$ , then the assumption that a fraction $\mu$ of the population dies per unit time means that $y ^ { \prime } ( a ) = - \mu y ( a )$ . Since $y ( t _ { 0 } ) = 1$ , we may solve this first order initial value problem to obtain $y ( a ) = e ^ { - \mu a }$ . The fraction dying at (exactly) age a is $- y ^ { \prime } ( a ) = \mu y ( a )$ . The mean life span is the average age at death, which is $\textstyle \int _ { 0 } ^ { \infty } a [ - y ^ { \prime } ( { \dot { a } } ) ] d a$ , and if we integrate by parts we find that this life expectancy is 

$$
\int_ {t _ {0}} ^ {\infty} [ - a y ^ {\prime} (a) ] d a = [ - a y (a) ] _ {t _ {0}} ^ {\infty} + \int_ {t _ {0}} ^ {\infty} y (a) d a = \int_ {t _ {0}} ^ {\infty} y (a) d a.
$$

Since $y ( a ) = e ^ { - \mu a }$ , this reduces to $1 / \mu$ . The life expectancy is often denoted by L, so that we may write 

$$
L = \frac {1}{\mu}.
$$

The rate at which surviving susceptible members of this cohort become infected at age a and time $t _ { 0 } + a \mathrm { i s } \beta I ( t _ { 0 } + a )$ . Thus, $\operatorname { i f } z ( a )$ is the fraction of the age cohort alive and still susceptible at age a $\ , z ^ { \prime } ( a ) = - [ \mu + \beta I ( t _ { 0 } + a ) ] z ( a )$ . Solution of this first linear order differential equation gives 

$$
z (a) = e ^ {- [ \mu a + \int_ {0} ^ {a} \beta I (t _ {0} + b) d b ]} = y (a) e ^ {- \int_ {0} ^ {a} \beta I (t _ {0} + b) d b}.
$$

The mean length of time in the susceptible class for members who may become infected, as opposed to dying while still susceptible, is 

$$
\int_ {0} ^ {\infty} e ^ {- \int_ {0} ^ {a} \beta I (t _ {0} + b) d b} d a,
$$

and this is the mean age at which members become infected. If the system is at an equilibrium $I _ { \infty }$ , this integral may be evaluated, and the mean age at infection, denoted by A, is given by 

$$
A = \int_ {0} ^ {\infty} e ^ {- \beta I _ {\infty} a} d a = \frac {1}{\beta I _ {\infty}}.
$$

For our model the endemic equilibrium is 

$$
I _ {\infty} = \frac {\mu K}{\mu + \alpha} - \frac {\mu}{\beta},
$$

and this implies 

$$
\frac {L}{A} = \frac {\beta I _ {\infty}}{\mu} = \mathcal {R} _ {0} - 1. \tag {3.9}
$$

This relation is very useful in estimating basic reproduction numbers. For example, in some urban communities in England and Wales between 1956 and 1969 the average age of contracting measles was 4.8 years. If life expectancy is assumed to be 70 years, this indicates $\mathcal { R } _ { 0 } = 1 5 . 6$ . 

If $\beta$ is a function $\beta ( N )$ of total population size and K is the carrying capacity, the relation (3.9) becomes 

$$
\mathcal {R} _ {0} = \frac {\beta (K)}{\beta (N _ {0})} \left[ 1 + \frac {L}{A} \right].
$$

If disease mortality does not have a large effect on total population size, in particular if there is no disease mortality, this relation is very close to (3.9). 

The relation between age at infection and basic reproduction number indicates that measures such as inoculations, which reduce $\mathcal { R } _ { 0 }$ , will increase the average age at infection. For diseases such as rubella (German measles), whose effects may be much more serious in adults than in children, this indicates a danger that must be taken into account: While inoculation of children will decrease the number of cases of illness, it will tend to increase the danger to those who are not inoculated or for whom the inoculation is not successful. Nevertheless, the number of infections in older people will be reduced, although the fraction of cases which are in older people will increase. 

## 3.2.3 The Inter-Epidemic Period

Many common childhood diseases, such as measles, whooping cough, chicken pox, diphtheria, and rubella, exhibit variations from year to year in the number of cases. These fluctuations are frequently regular oscillations, suggesting that the solutions of a model might be periodic. This does not agree with the predictions of the model we have been using in this section; however, it would not be inconsistent with solutions of the characteristic equation, which are complex conjugate with small negative real part corresponding to lightly damped oscillations approaching the endemic equilibrium. Such behavior would look like recurring epidemics. If the eigenvalues of the matrix of the linearization at an endemic equilibrium are $- u \pm i v .$ , where $i ^ { 2 } = - 1$ , then the solutions of the linearization are of the form $B e ^ { - u t } \cos ( v t + c )$ , with decreasing “amplitude” $B e ^ { - u t }$ and “period” $\frac { 2 \pi } { v }$ . 

For the model (3.1) we recall that at the endemic equilibrium we have 

$$
\beta I _ {\infty} + \mu = \mu \mathcal {R} _ {0}, \quad \beta S _ {\infty} = \mu + \alpha
$$

and the matrix of the linearization is 

$$
\left[ \begin{array}{c c} - \mu \mathcal {R} _ {0} & - (\mu + \alpha) \\ \mu (\mathcal {R} _ {0} - 1) & 0 \end{array} \right].
$$

The eigenvalues are the roots of the quadratic equation 

$$
\lambda^ {2} + \mu \mathcal {R} _ {0} \lambda + \mu (\mathcal {R} _ {0} - 1) (\mu + \alpha) = 0,
$$

which are 

$$
\lambda = \frac {- \mu \mathcal {R} _ {0} \pm \sqrt {\mu^ {2} \mathcal {R} _ {0} ^ {2} - 4 \mu (\mathcal {R} _ {0} - 1) (\mu + \alpha)}}{2}.
$$

If the mean infective period $1 / \alpha$ is much shorter than the mean life span $1 / \mu$ , we may neglect the terms that are quadratic in $\mu$ . Thus, the eigenvalues are approximately 

$$
\frac {- \mu \mathcal {R} _ {0} \pm \sqrt {- 4 \mu (\mathcal {R} _ {0} - 1) \alpha}}{2},
$$

and these are complex with imaginary part $\sqrt { \mu ( \mathcal { R } _ { 0 } - 1 ) \alpha }$ . This indicates oscillations with period approximately 

$$
\frac {2 \pi}{\sqrt {\mu (\mathcal {R} _ {0} - 1) \alpha}}.
$$

We use the relation $\mu ( \mathcal { R } _ { 0 } - 1 ) = \mu L / A$ and the mean infective period $\tau = 1 / \alpha$ to see that the interepidemic period T is approximately $2 \pi \sqrt { A \tau }$ . Thus, for example, for recurring outbreaks of measles with an infective period of 2 weeks or 1/26 year in a population with a life expectancy of 70 years with $R _ { 0 }$ estimated as 15, we would expect outbreaks spaced 2.76 years apart. Also, as the “amplitude” at time t is $e ^ { - \mu \hat { R } _ { 0 } t / 2 }$ , the maximum displacement from equilibrium is multiplied by a factor $e ^ { - ( 1 5 ) ( 2 . 7 6 ) / 1 4 0 } = 0 . 7 4 4$ over each cycle. In fact, many observations of measles outbreaks indicate less damping of the oscillations, suggesting that there may be additional influences that are not included in our simple model. To explain oscillations about the endemic equilibrium a more complicated model is needed. One possible generalization would be to assume seasonal variations in the contact rate [13, 27]. This is a reasonable supposition for a childhood disease most commonly transmitted through school contacts, especially in winter in cold climates. Note, however, that data from observations are never as smooth as model predictions and models are inevitably gross simplifications of reality which cannot account for random variations in the variables. It may be difficult to judge from experimental data whether an oscillation is damped or persistent. 

## 3.2.4 “Epidemic” Approach to Endemic Equilibrium

In the model (3.1) the demographic time scale described by the birth and natural death rates $\mu K$ and $\mu$ and the epidemiological time scale described by the rate α of departure from the infective class may differ substantially. Think, for example, of a natural death rate $\mu = 1 / 7 5$ , corresponding to a human life expectancy of 75 years, and epidemiological parameter $\alpha = 2 5$ , describing a disease from which all infectives recover after a mean infective period of 1/25 year, or 2 weeks. Suppose we consider a carrying capacity $K = 1 0 0 0$ and take $\beta = 0 . 1$ , indicating that an average infective makes $( 0 . 1 ) ( 1 0 0 0 ) { = } 1 0 0$ contacts per year. Then $\mathcal { R } _ { 0 } = 4 . 0 0$ , and at the endemic equilibrium we have $S _ { \infty } = 2 5 0 . 1 3 , I _ { \infty } = 0 . 4 0 , R _ { \infty } = 7 4 9 . 4 7$ . This equilibrium is globally asymptotically stable and is approached from every initial state. 

However, if we take $S ( 0 ) ~ = ~ 9 9 9 , ~ I ( 0 ) ~ = ~ 1 , ~ R ( 0 ) ~ = ~ 0 .$ , simulating the introduction of a single infective into a susceptible population and solve the system numerically we find that the number of infectives rises sharply to a maximum of 400 and then decreases to almost zero in a period of 0.4 year, or about 5 months. In this time interval the susceptible population decreases to 22 and then begins to increase, while the removed (recovered and immune against reinfection) population increases to almost 1000 and then begins a gradual decrease. The size of this initial “epidemic” could not have been predicted from our qualitative analysis of the system (3.1). On the other hand, since $\mu$ is so small compared to the other parameters of the model, we might consider neglecting $\mu ,$ , replacing it by zero in the model. If we do this, the model reduces to the simple Kermack–McKendrick epidemic model (without births and deaths) of Sect. 2.4. 

If we follow the model (3.1) over a longer time interval we find that the susceptible population grows to 450 after 46 years, then drops to 120 during a small epidemic with a maximum of 18 infectives, and exhibits widely spaced epidemics decreasing in size. It takes a very long time before the system comes close to the endemic equilibrium and remains close to it. The large initial epidemic conforms to what has often been observed in practice when an infection is introduced into a population with no immunity, such as the smallpox inflicted on the Aztecs by the invasion of Cortez. 

If we use the model (3.1) with the same values of β, K, and $\mu .$ , but take $\alpha = 0$ , $d = 2 5$ to describe a disease fatal to all infectives, we obtain very similar results. Now the total population is $S + I$ , which decreases from an initial size of 1000 to a minimum of 22 and then gradually increases and eventually approaches its equilibrium size of 250.53. Thus, the disease reduces the total population size to one-fourth of its original value, suggesting that infectious diseases may have large effects on population size. This is true even for populations which would grow rapidly in the absence of infection, as we shall see in a later section (Sect. 3.7). 

## 3.3 Temporary Immunity

In the SI R models that we have studied, it has been assumed that the immunity received by recovery from the disease is permanent. This is not always true, as there may be a gradual loss of immunity with time. In addition, there are often mutations in a virus, and as a result the active disease strain is sufficiently different from the strain from which an individual has recovered and the immunity received may wane. 

Temporary immunity may be described by an SI RS model in which a rate of transfer from R to S is added to an SI R model. For simplicity, we confine our attention to epidemic models, without including births, natural deaths, and disease deaths, but the analysis of models including births and deaths would lead to the same conclusions. Thus we begin with a model 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I + \theta R \\ I ^ {\prime} = \beta S I - \alpha I \\ R ^ {\prime} = \alpha I - \theta R, \\ \end{array}
$$

with a proportional rate θ of loss of immunity. 

Since $N ^ { \prime } = ( S + I + R ) ^ { \prime } = 0 \quad$ , the total population size N is constant, and we may replace R by $N - S - I$ and reduce the model to a two-dimensional system 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I + \theta (N - S - I) \\ I ^ {\prime} = 0, S I = I \end{array} \tag {3.10}
$$

$$
I ^ {\prime} = \beta S I - \alpha I.
$$

Equilibria are solutions of the system 

$$
\beta S I + \theta S + \theta I = \theta N
$$

$$
\alpha I + \theta S + \theta I = \theta N,
$$

and there is a disease-free equilibrium $S = \alpha / \beta , I = 0 . \mathrm { I f } \mathcal { R } _ { 0 } = \beta N / \alpha > 1$ , there is also an endemic equilibrium with 

$$
\beta S = \alpha , \quad (\alpha + \theta) I = \theta (N - S).
$$

The matrix of the linearization of (3.10) at an equilibrium (S, I ) is 

$$
A = \left[ \begin{array}{c c} - (\beta I + \theta) & - (\beta S + \theta) \\ \beta I & \beta S - \alpha \end{array} \right].
$$

At the disease-free equilibrium A has the sign structure 

$$
\left[ \begin{array}{c c} - & - \\ 0 & \beta N - \alpha \end{array} \right].
$$

This matrix has negative trace and positive determinant if and only if $\beta N < \alpha$ , or $\mathcal { R } _ { 0 } < 1$ . At an endemic equilibrium, the matrix has sign structure 

$$
\left[ \begin{array}{c c} - & - \\ + & 0 \end{array} \right].
$$

and thus always has negative trace and positive determinant. We see from this that, as in other models studied in this chapter, the disease-free equilibrium is asymptotically stable if and only if the basic reproduction number is less than 1 and the endemic equilibrium, which exists if and only if the basic reproduction number 

## 3.3 Temporary Immunity

exceeds 1, is always asymptotically stable. However, it is possible for a different SI RS model to have quite different behavior. 

## 3.3.1 *Delay in an SI RS Model

We consider an SI RS model, which assumes a constant period of temporary immunity following recovery from the infection in place of an exponentially distributed period of temporary immunity [24]. We assume that there is a temporary immunity period of fixed length ω, after which recovered infectives revert to the susceptible class. The resulting model is described by the system of differential– difference equations 

$$
S ^ {\prime} (t) = - \beta S (t) I (t) + \alpha I (t - \omega)
$$

$$
I ^ {\prime} (t) = \beta S (t) I (t) - \alpha I (t) \tag {3.11}
$$

$$
R ^ {\prime} (t) = \alpha I (t) - \alpha I (t - \omega).
$$

The equilibrium analysis of a system of differential–difference equations with a delay ω is analogous to the equilibrium analysis of a system of ordinary differential equations, but there are important variations. Instead of assigning an initial condition at $t ~ = ~ 0$ it is necessary to assign initial data on the interval $- \omega ~ \leq ~ t ~ \leq ~ 0$ . Equilibria of a system of differential–difference equations are constant solutions, just as for systems of differential equations, and the process of linearization about an equilibrium is the same. 

The characteristic equation at an equilibrium is the condition that the linearization at the equilibrium has a solution whose components are constant multiples of $e ^ { \lambda t }$ . In the ordinary differential equation case, this is just the equation that determines the eigenvalues of the coefficient matrix, a polynomial equation, but in the general case, it is a transcendental equation. The result on which our analysis depends, which we state without proof, is that an equilibrium is asymptotically stable if all roots of the characteristic equation have negative real part, or equivalently that the characteristic equation have no roots with real part greater than or equal to zero [5]. 

In (3.11), since $N = S + I + R$ is constant, we may discard the equation for R and use a two-dimensional model 

$$
\begin{array}{l} S ^ {\prime} (t) = - \beta S (t) I (t) + \alpha I (t - \omega) \\ I ^ {\prime} (t) = - \beta S (t) I (t) + \alpha I (t) \end{array} \tag {3.12}
$$

$$
I ^ {\prime} (t) = \beta S (t) I (t) - \alpha I (t).
$$

Equilibria are given by $I = 0 \mathrm { o r } \beta S = \alpha$ . There is a disease-free equilibrium $S =$ N, $I = 0$ . There is also an endemic equilibrium for which $\beta S = \alpha$ . However, the two equations for S and I give only a single equilibrium condition. To determine the endemic equilibrium $( S _ { \infty } , I _ { \infty } )$ , we must write the equation for R in the integrated form 

$$
R (t) = \int_ {t - \omega} ^ {t} \alpha I (x) d x
$$

to give $R _ { \infty } = \omega \alpha I _ { \infty }$ . We also have $\beta S _ { \infty } = \alpha$ , and from $S _ { \infty } + I _ { \infty } + R _ { \infty } = N$ we obtain 

$$
\beta I _ {\infty} = \frac {(\beta N - \alpha)}{1 + \omega \alpha}.
$$

To linearize about an equilibrium $( S _ { \infty } , I _ { \infty } )$ of (3.12) we substitute 

$$
S (t) = S _ {\infty} + u (t), \quad I (t) = I _ {\infty} + v (t),
$$

and neglect the quadratic term, giving the linearization 

$$
u ^ {\prime} (t) = - \beta I _ {\infty} u (t) - \beta S _ {\infty} v (t) + \alpha v (t - \omega)
$$

$$
v ^ {\prime} (t) = \beta I _ {\infty} u (t) + \beta S _ {\infty} v (t) - \alpha v (t).
$$

The characteristic equation is the condition on λ that this linearization has a solution 

$$
u (t) = u _ {0} e ^ {\lambda t}, \quad v (t) = v _ {0} e ^ {\lambda t},
$$

and this is 

$$
(\beta I _ {\infty} + \lambda) u _ {0} + (\beta S _ {\infty} - \alpha e ^ {- \lambda \omega}) v _ {0} = 0
$$

$$
\beta I _ {\infty} u _ {0} + (\beta S _ {\infty} - \alpha - \lambda) v _ {0} = 0,
$$

or 

$$
d e t \left[ \begin{array}{c c} \lambda + \beta I _ {\infty} & \beta S _ {\infty} - \alpha e ^ {\lambda \omega} \\ \beta I _ {\infty} & \beta S _ {\infty} - \alpha - \lambda \end{array} \right].
$$

This reduces to 

$$
\alpha \beta I _ {\infty} \frac {1 - e ^ {- \omega \lambda}}{\lambda} = - [ \lambda + \alpha + \beta S _ {\infty} + \beta I _ {\infty} ]. \tag {3.13}
$$

At the disease-free equilibrium $S _ { \infty } = N , I _ { \infty } = 0$ , this reduces to a linear equation with a single root $\lambda = - \beta N - \alpha$ , which is negative if and only if $\mathcal { R } _ { 0 } = \beta N / \alpha < 1$ . 

We think of ω and N as fixed and consider $\beta$ and $\alpha$ as parameters. If $\alpha = 0$ the Eq. (3.13) is linear and its only root is $- \beta S _ { \infty } - \beta I _ { \infty } < 0$ . Thus, there is a region in 

## 3.3 Temporary Immunity

the $( \alpha , \beta )$ parameter space containing the $\beta \mathrm { - a x i s . }$ , in which all roots of (3.13) have negative real part. In order to find how large this stability region is, we make use of the fact that the roots of (3.13) depend continuously on $\beta$ and $\alpha$ . A root can move into the right half-plane only by passing through the value zero or by crossing the imaginary axis as $\beta N$ and α vary. Thus, the stability region contains the $\beta \cdot$ -axis and extends into the plane until there is a root $\lambda = 0$ or until there is a pair of pure imaginary roots $\lambda = \pm i y$ with $y > 0$ . Since the left side and right side of (3.13) have opposite sign for real $\lambda \geq 0$ , there cannot be a root $\lambda = 0$ . 

The condition that there is a root $\lambda = i y$ is 

$$
\alpha \beta I _ {\infty} \frac {1 - e ^ {- i \omega \alpha}}{i y} = - (i y + \alpha + \beta S _ {\infty} + \beta I _ {\infty}) \tag {3.14}
$$

and separation into real and imaginary parts gives the pair of equations 

$$
\alpha \beta \frac {\sin \omega y}{y} = - [ \alpha + \beta S _ {\infty} + \beta I _ {\infty} ], \quad \alpha \beta I _ {\infty} \frac {1 - \cos \omega y}{y} = y. \tag {3.15}
$$

To satisfy the first condition, it is necessary to have ωα > 1 since | sin $\omega y | \leq | \omega y |$ for all y. This implies, in particular, that the endemic equilibrium is asymptotically stable if ωα $< ~ 1$ . In addition, it is necessary to have sin ωy $< ~ 0$ . There is an infinite sequence of intervals on which sin $\omega y < 0$ , the first being $\pi < \omega y < 2 \pi$ . For each of these intervals, the equations (3.15) define a curve in the $( \beta , \alpha )$ plane parametrically with y as parameter. The region in the plane below the first of these curves is the region of asymptotic stability, that is, the set of values of $\beta$ and $\alpha$ for which the endemic equilibrium is asymptotically stable. This curve is shown for ω 1, N 1 in Fig. 3.3. Since $\mathcal { R } _ { 0 } = \beta N / \alpha > 1$ , only the portion of the $( \beta , \alpha )$ plane below the line $\alpha = \beta N$ is relevant. 

The new feature of the model of this section is that the endemic equilibrium is not asymptotically stable for all parameter values. What is the behavior of the model if the parameters are such that the endemic equilibrium is unstable? A plausible suggestion is that since the loss of stability corresponds to a root $\lambda = i y$ of the characteristic equation there are solutions of the model behaving like the real part of $e ^ { i y t }$ , that is, that there are periodic solutions. This is exactly what does happen according to a very general result called the Hopf bifurcation theorem [25], which says that when roots of the characteristic equation cross the imaginary axis a stable periodic orbit arises. 

From an epidemiological point of view periodic behavior is unpleasant. It implies fluctuations in the number of infectives which makes it difficult to allocate resources for treatment. It is also possible for oscillations to have a long period. This means that if data are measured over only a small time interval the actual behavior may not be displayed. Thus, the identification of situations in which an endemic equilibrium is unstable is an important problem. 


Fig. 3.3 Region of asymptotic stability for endemic equilibria (ω 1, N 1)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/623484c7662a28237938b916d66fdc2cfeef698f86a422cef80858263be2d609.jpg)


## 3.4 A Simple Model with Multiple Endemic Equilibria

In compartmental models for the transmission of communicable diseases there is usually a basic reproduction number $\mathcal { R } _ { 0 }$ , representing the mean number of secondary infections caused by a single infective introduced into a susceptible population. If $\mathcal { R } _ { 0 } < 1$ there is a disease-free equilibrium which is asymptotically stable, and the infection dies out. If $\mathcal { R } _ { 0 } ~ > ~ 1$ the usual situation is that there is a unique endemic equilibrium which is asymptotically stable, and the infection persists. Even if the endemic equilibrium is unstable, the instability commonly arises from a Hopf bifurcation [25], described in Sect. 3.3, and the infection still persists but in an oscillatory manner. More precisely, as $\mathcal { R } _ { 0 }$ increases through 1 there is an exchange of stability between the disease-free equilibrium and the endemic equilibrium (which is negative as well as unstable and thus biologically meaningless if $\mathcal { R } _ { 0 } < 1 )$ . 

There are, however, situations in which there may be more than one endemic equilibrium even in very simple epidemic models, and we describe such a model suggested in [42, 43]. We consider an SI S model in a population of constant total size N with treatment of infectives, assuming that the treatment cures the infection but that there is a maximum capacity for treatment. Thus we assume a model 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I + h (I) \\ I ^ {\prime} = 0, S I = I _ {1} + h (I) \end{array} \tag {3.16}
$$

$$
I ^ {\prime} = \beta S I - \alpha I - h (I),
$$

assuming a treatment function h(I ) of the form 

$$
h (I) = \left\{ \begin{array}{l l} r I, & (I <   I ^ {*}) \\ r I ^ {*}, & (I \geq I ^ {*}), \end{array} \right.
$$

in which r is a constant representing the treatment rate up to a maximum capacity $r I ^ { * }$ . Since the total population size $S + I$ is a constant N, we may replace S by $N - I$ and reduce the model to a single equation 

$$
I ^ {\prime} = \beta I (N - I) - \alpha I - h (I) = g (I). \tag {3.17}
$$

There is a disease-free equilibrium $I = 0$ , and it is easily verified that the diseasefree equilibrium is asymptotically stable if and only if $\mathcal { R } _ { 0 } = \beta N / ( \alpha + r ) < 1$ . 

For $I \leq I ^ { * }$ 

$$
g (I) = \beta I (N - I) - (\alpha + r) I,
$$

and an endemic equilibrium with $I \ \leq \ I ^ { * }$ is a positive solution $I _ { \infty }$ of $g ( I ) = 0$ namely 

$$
I _ {\infty} = N - \frac {\alpha + r}{\beta} = N \left(1 - \frac {1}{\mathcal {R} _ {0}}\right),
$$

and there is such an equilibrium if and only if 

$$
I ^ {*} \geq N - \frac {\alpha + r}{\beta} = N \left(1 - \frac {1}{\mathcal {R} _ {0}}\right). \tag {3.18}
$$

For $I \leq I ^ { * }$ , 

$$
g ^ {\prime} (I) = \beta (N - 2 \beta I - (\alpha + r),
$$

and $g ^ { \prime } ( I _ { \infty } ) < 0$ if and only if 

$$
N - \frac {\alpha + r}{\beta} <   2 I _ {\infty} = 2 \left(N - \frac {\alpha + r}{\beta}\right),
$$

and this is equivalent to $\mathcal { R } _ { 0 } ~ > ~ 1$ . Thus, the equilibrium $I _ { \infty } \leq I ^ { * }$ exists and is asymptotically stable if and only if (3.18) is satisfied. 

Equilibria $I > I ^ { * }$ are solutions of the quadratic equation 

$$
g (I) = - \beta I ^ {2} + (\beta N - \alpha) I - r I ^ {*} = 0,
$$

which are 

$$
I = \frac {(\beta N - \alpha) + \sqrt {(\beta N - \alpha) ^ {2} - 4 r \beta I ^ {*}}}{2 \beta}, J = \frac {(\beta N - \alpha) - \sqrt {(\beta N - \alpha) ^ {2} - 4 \beta r I ^ {*}}}{2 \beta}.
$$

Then $J < ( \beta N - \alpha ) / 2 \beta$ and $I > ( \beta N - \alpha ) / 2 \beta$ . For these to qualify as equilibria, they must also be greater than $I ^ { * }$ and less than N , but it is possible to choose parameter values such that the model (3.16) has more than one endemic equilibrium. For example, the choices 

$$
\alpha = 0. 5, \quad r = 0. 5, \quad N = 1, \quad I ^ {*} = 0. 0 5,
$$

so that $\mathcal { R } _ { 0 } = \beta$ , give two equilibria I, J for some values of $\beta _ { ; }$ , including some values with $\mathcal { R } _ { 0 } < 1$ . With these parameter values, $I = J = 0 . 2 7 9$ when $\beta = 0 . 7 7 9$ . 

An equilibrium $I _ { \infty }$ of the differential equation $I ^ { \prime } = g ( I )$ is asymptotically stable if $g ^ { \prime } ( I _ { \infty } ) \ < \ 0$ , and unstable if $g ^ { \prime } ( I _ { \infty } ) > 0$ . From this, it is easy to deduce that the equilibrium J is unstable, while the equilibrium I is asymptotically stable. If we plot the equilibrium values as functions of $\beta$ , the curve I begins at the point (0.779, 0.279) and goes upwards to the right, while the curve J goes downward to the right from the same starting point. Because of the choice $I ^ { * } = 0 . 0 5$ , only the portion of the J curve above the line $I = 0 . 0 5$ is relevant. For $0 . 7 7 9 \leq \mathcal { R } _ { 0 } \leq 1$ there are two asymptotically stable equilibria, namely 0 and I separated by an unstable equilibrium J . For this reason, we have drawn the J curve as a dotted curve in Fig. 3.4. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/c9112e914bd10dd208e01c15736e749ef95718c13ec624bf1a1810dde62e80c9.jpg)



Fig. 3.4 Multiple endemic equilibria


A bifurcation curve, a graph of equilibria as a function of the basic reproduction number, as in Fig. 3.4, gives a good deal of information about the behavior of endemic equilibria. We observe, for example, that in Fig. 3.4, there are endemic equilibria for some values of the basic reproduction number less than 1, and that there is a discontinuity in the endemic equilibria at $\mathcal { R } _ { 0 } = 1$ . 

## 3.5 A Vaccination Model: Backward Bifurcations

In a compartmental model, there is a bifurcation, or change in equilibrium behavior, at $\mathcal { R } _ { 0 } = 1$ but the equilibrium infective population size depends continuously on $\mathcal { R } _ { 0 }$ . Such a transition is called a forward, or transcritical, bifurcation. 

The behavior at a bifurcation may be described graphically by the bifurcation curve, which is the graph of equilibrium infective population size I as a function of the basic reproduction number $\mathcal { R } _ { 0 }$ . For a forward bifurcation, the bifurcation curve is as shown in Fig. 3.5. 

It has been noted [14, 20, 21, 29] that in epidemic models with multiple groups and asymmetry between groups or multiple interaction mechanisms it is possible to have a very different bifurcation behavior at $\mathcal { R } _ { 0 } = 1$ . There may be multiple positive endemic equilibria for values of $\mathcal { R } _ { 0 } ~ < ~ 1$ and a backward bifurcation at $\mathcal { R } _ { 0 } = 1$ . This means that the bifurcation curve has the form shown in Fig. 3.4 with a broken curve denoting an unstable endemic equilibrium that separates the domains of attraction of asymptotically stable equilibria. 

The qualitative behavior of an epidemic system with a backward bifurcation differs from that of a system with a forward bifurcation in at least three important ways. If there is a forward bifurcation at $\mathcal { R } _ { 0 } = 1$ it is not possible for a disease to invade a population if $\mathcal { R } _ { 0 } ~ < ~ 1$ because the system will return to the disease-free equilibrium $I \ = \ 0$ if some infectives are introduced into the population. On the other hand, if there is a backward bifurcation at $\mathcal { R } _ { 0 } = 1$ and enough infectives are introduced into the population to put the initial state of the system above the unstable endemic equilibrium with $\mathcal { R } _ { 0 } ~ < ~ 1$ , the system will approach the asymptotically stable endemic equilibrium. 


Fig. 3.5 Forward bifurcation


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/f8d0bd30fb88a2fd923f261e0db42f6ca72859e7db28c5698e296bd493b3ed0e.jpg)


Other differences are observed if the parameters of the system change to produce a change in $\mathcal { R } _ { 0 }$ . With a forward bifurcation at $\mathcal { R } _ { 0 } = 1$ the equilibrium infective population remains zero so long as $\mathcal { R } _ { 0 } < 1$ and then increases continuously as $\mathcal { R } _ { 0 }$ increases. With a backward bifurcation at $\mathcal { R } _ { 0 } = 1$ , there is an asymptotically stable disease-free equilibrium so long as $\mathcal { R } _ { 0 } < 1$ but there is also an asymptotically stable endemic equilibrium for some values of $\mathcal { R } _ { 0 } < 1$ and as $\mathcal { R } _ { 0 }$ increases through 1 the infective population size jumps to the positive endemic equilibrium. In the other direction, if a disease is being controlled by means that decrease $\mathcal { R } _ { 0 }$ it is sufficient to decrease $\mathcal { R } _ { 0 }$ to 1 if there is a forward bifurcation at $\mathcal { R } _ { 0 } = 1$ but it is necessary to bring $\mathcal { R } _ { 0 }$ well below 1 if there is a backward bifurcation. 

These behavior differences are important in planning how to control a disease; a backward bifurcation at $\mathcal { R } _ { 0 } = 1$ makes control more difficult. One control measure often used is the reduction of susceptibility to infection produced by vaccination. By vaccination, we mean either an inoculation that reduces susceptibility to infection or an education program such as encouragement of better hygiene or avoidance of risky behavior for sexually transmitted diseases. Whether vaccination is inoculation or education, typically it reaches only a fraction of the susceptible population and is not perfectly effective. In an apparent paradox, models with vaccination may exhibit backward bifurcations, making the behavior of the model more complicated than the corresponding model without vaccination. It has been argued [6] that a partially effective vaccination program applied to only part of the population at risk may increase the severity of outbreaks of such diseases as HIV/AIDS. 

We will give a qualitative analysis of a model which may have a variable total population size $N \leq K$ for which there is a possibility of a backward bifurcation. The model we will study adds vaccination to the simple SIS model with births and natural deaths but with no disease deaths studied in Sect. 2.2. We have considered the model 

$$
\begin{array}{l} S ^ {\prime} = \Lambda (N) - \beta (N) S I - \mu S + \alpha I \\ I ^ {\prime} = \beta S I - (\text {   and   }) I \end{array} \tag {3.19}
$$

$$
I ^ {\prime} = \beta S I - (\mu + \alpha) I,
$$

where the population carrying capacity K is defined by $\varLambda ( K ) = \mu K , \varLambda ^ { \prime } ( K ) < \mu$ and the contact rate $\beta ( N )$ is a function of total population size with $N \beta ( N )$ nondecreasing and $\beta ( N )$ non-increasing. We have seen that there is a disease-free equilibrium $I = 0$ that is asymptotically stable if 

$$
\mathcal {R} _ {0} = \frac {K \beta (K)}{\mu + \alpha} <   1.
$$

If $\mathcal { R } _ { 0 } \ > \ 1$ the disease-free equilibrium is unstable but there is an endemic equilibrium that is asymptotically stable. 

To the model (3.19) we add the assumption that in unit time a fraction $\varphi$ of the susceptible class is vaccinated. The vaccination may reduce but not completely eliminate susceptibility to infection. We model this by including a factor $\sigma , 0 \le$ $\sigma \leq 1$ , in the infection rate of vaccinated members with $\sigma = 0$ meaning that the vaccine is perfectly effective and $\sigma = 1$ meaning that the vaccine has no effect. We describe the new model by including a vaccinated class $V$ , with 

$$
S ^ {\prime} = \mu N - \beta (N) S I - (\mu + \varphi) S + \alpha I
$$

$$
I ^ {\prime} = \beta (N) S I + \sigma \beta (N) V I - (\mu + \alpha) I \tag {3.20}
$$

$$
V ^ {\prime} = \varphi S - \sigma \beta (N) V I - \mu V
$$

and $N = S + I + V$ . Since N is constant, we can replace $s$ by $N - I - V$ to give the equivalent system 

$$
\begin{array}{l} I ^ {\prime} = \beta [ N - I - (1 - \sigma) V ] I - (\mu + \alpha) I \\ U ^ {\prime} = [ N - I ] - 2 U I - (\mu + \alpha) U \end{array} \tag {3.21}
$$

$$
V ^ {\prime} = \varphi [ N - I ] - \sigma \beta V I - (\mu + \varphi) V
$$

with $\beta = \beta ( N )$ . The system (3.21) is the basic vaccination model which we will analyze. We remark that if the vaccine is completely ineffective, $\sigma = 1$ , then (3.21) is equivalent to an $S I S$ model. If all susceptibles are vaccinated immediately (formally, $\varphi  \infty )$ , the model (3.21) is equivalent to 

$$
I ^ {\prime} = \sigma \beta I (K - I) - (\mu + \alpha) I
$$

which is an SI S model with basic reproduction number 

$$
\mathcal {R} _ {0} ^ {*} = \frac {\sigma \beta K}{\mu + \alpha} = \sigma \mathcal {R} _ {0} \leq \mathcal {R} _ {0}.
$$

We will think of the parameters $\mu , \alpha , \varphi .$ , and $\sigma$ as fixed and will view $\beta$ as variable. In practice, the parameter $\varphi$ is the one most easily controlled, and later we will express our results in terms of an uncontrolled model with parameters $\beta , \mu , \alpha$ , and $\sigma$ fixed and examine the effect of varying $\varphi .$ . With this interpretation in mind, we will use $\mathcal { R } ( \varphi ) \mathrm { t o }$ denote the basic reproduction number of the model (3.21), and we will see that 

$$
\mathcal {R} _ {0} ^ {*} \leq \mathcal {R} (\varphi) \leq \mathcal {R} _ {0}.
$$

Equilibria of the model (3.21) are solutions of 

$$
\beta I [ K - I - (1 - \sigma) V ] = (\mu + \alpha) I \tag {3.22}
$$

$$
\varphi [ K - I ] = \sigma \beta V I + (\mu + \varphi) V.
$$

If $I = 0$ , then the first of these equations is satisfied and the second leads to 

$$
V = \frac {\varphi}{\mu + \varphi} K.
$$

This is the disease-free equilibrium. 

The matrix of the linearization of (3.21) at an equilibrium (I, V ) is 

$$
\left[ \begin{array}{c c} - 2 \beta I - (1 - \sigma) \beta V - (\mu + \alpha) + \beta K & - (1 - \sigma) \beta I \\ - (\varphi + \sigma \beta V) & - (\mu + \varphi + \sigma \beta I) \end{array} \right].
$$

At the disease-free equilibrium this matrix is 

$$
\left[ \begin{array}{c c} - (1 - \sigma) \beta V - (\mu + \alpha) + \beta K & 0 \\ - (\varphi + \sigma \beta V) & - (\mu + \varphi) \end{array} \right]
$$

which has negative eigenvalues, implying the asymptotic stability of the disease-free equilibrium, if and only if 

$$
- (1 - \sigma) \beta V - (\mu + \alpha) + \beta K <   0.
$$

Using the value of V at the disease-free equilibrium this condition is equivalent to 

$$
\mathcal {R} (\varphi) = \frac {\beta K}{\mu + \alpha} \cdot \frac {\mu + \sigma \varphi}{\mu + \varphi} = \mathcal {R} _ {0} \frac {\mu + \sigma \varphi}{\mu + \varphi} <   1.
$$

The case $\varphi = 0$ is that of no vaccination with $\mathcal { R } ( 0 ) = \mathcal { R } _ { 0 }$ , and $\mathcal { R } ( \varphi ) < \mathcal { R } _ { 0 }$ if $\varphi > 0$ . We note that $\begin{array} { r } { \mathcal { R } _ { 0 } ^ { * } = \sigma \mathcal { R } _ { 0 } = \operatorname* { l i m } _ { \varphi \to \infty } \mathcal { R } ( \varphi ) < \mathcal { R } _ { 0 } } \end{array}$ . 

If $\ 0 \leq \sigma < 1$ endemic equilibria are solutions of the pair of equations 

$$
\begin{array}{l} \beta [ K - I - (1 - \sigma) V ] = \mu + \alpha \\ [ K - I ] = 0, V I + (\text {一}) V \end{array} \tag {3.23}
$$

$$
\varphi [ K - I ] = \sigma \beta V I + (\mu + \varphi) V.
$$

We eliminate V using the first equation of (3.23) and substitute into the second equation to give an equation of the form 

$$
A I ^ {2} + B I + C = 0 \tag {3.24}
$$

with 

$$
A = \sigma \beta
$$

$$
B = (\mu + \theta + \sigma \varphi) + \sigma (\mu + \alpha) - \sigma \beta K \tag {3.25}
$$

$$
C = \frac {(\mu + \alpha) (\mu + \theta + \varphi)}{\beta} - (\mu + \theta + \sigma \varphi) K.
$$

If $\sigma = 0 ( 3 . 2 4 )$ is a linear equation with unique solution. 

$$
I = K - \frac {(\mu + \alpha) (\mu + \varphi)}{\beta \mu} = K \left[ 1 - \frac {1}{\mathcal {R} (\varphi)} \right]
$$

which is positive if and only if $\mathcal { R } ( \varphi ) > 1$ . Thus if $\sigma = 0$ there is a unique endemic equilibrium if $\mathcal { R } ( \varphi ) > 1$ that approaches zero as $\mathcal { R } ( \varphi )  1 +$ and there cannot be an endemic equilibrium if $\mathcal { R } ( \varphi ) < 1$ . In this case, it is not possible to have a backward bifurcation at $\mathcal { R } ( \varphi ) = 1$ . 

We note that $C < 0 \mathrm { i f } \mathcal { R } ( \varphi ) > 1 , C = 0 \mathrm { i f } \mathcal { R } ( \varphi ) = 1$ , and $C > 0 \mathrm { i f } \mathcal { R } ( \varphi ) < 1$ . If $\sigma > 0 .$ , so that (3.24) is quadratic and if $\mathcal { R } ( \varphi ) > 1$ then there is a unique positive root of (3.24) and thus there is a unique endemic equilibrium. If $\mathcal { R } ( \varphi ) = 1$ , then $C = 0$ and there is a unique non-zero solution of (3.24) $I = - B / A$ which is positive if and only if $B < 0$ . If $B < 0$ when $C = 0$ there is a positive endemic equilibrium for $\mathcal { R } ( \varphi ) = 1$ . Since equilibria depend continuously on $\varphi$ there must then be an interval to the left of $\mathcal { R } ( \varphi ) = 1$ on which there are two positive equilibria 

$$
I = \frac {- B \pm \sqrt {B ^ {2} - 4 A C}}{2 A}.
$$

This establishes that the system (3.21) has a backward bifurcation at $\mathcal { R } ( \varphi ) = 1$ if and only if $B < 0$ when $\beta$ is chosen to make $C = 0$ . 

We can give an explicit criterion in terms of the parameters $\mu , \varphi , \sigma$ for the existence of a backward bifurcation at $\mathcal { R } ( \varphi ) = 1$ . When $\mathcal { R } ( \varphi ) = 1 , C = 0$ so that 

$$
(\mu + \sigma \varphi) \beta K = (\mu + \alpha) (\mu + \varphi). \tag {3.26}
$$

The condition $B < 0$ is 

$$
(\mu + \sigma \varphi) + \sigma (\mu + \alpha) <   \sigma \beta K
$$

with $\beta K$ determined by (3.26), or 

$$
\sigma (\mu + \alpha) (\mu + \varphi) > (\mu + \sigma \varphi) [ (\mu + \sigma \varphi) + \sigma (\mu + \alpha) ]
$$

which reduces to 

$$
\sigma (1 - \sigma) (\mu + \alpha) \varphi > (\mu + \sigma \varphi) ^ {2}. \tag {3.27}
$$

A backward bifurcation occurs at $\mathcal { R } ( \varphi ) = 1$ , with $\beta K$ given by (3.26) if and only if (3.27) is satisfied. We point out that for an SI model, where $\alpha = 0$ , the condition (3.27) becomes 

$$
\sigma (1 - \sigma) \mu \varphi > (\mu + \sigma \varphi) ^ {2}.
$$

But 

$$
\begin{array}{l} (\mu + \sigma \varphi) ^ {2} = \mu^ {2} + \sigma^ {2} \varphi^ {2} + 2 \mu \sigma \varphi \\ > 2 \mu \sigma \varphi > \sigma (1 - \sigma) \mu \varphi \\ \end{array}
$$

because $\sigma < 1$ . Thus a backward bifurcation is not possible if $\alpha = 0$ , that is, for an SI model. Likewise, (3.27) cannot be satisfied if $\sigma = 0$ . 

If $C \ > \ 0$ and either $B \ \geq \ 0$ or $B ^ { 2 } ~ < ~ 4 A C$ , there are no positive solutions of (3.24)and thus there are no endemic equilibria. Equation (3.24) has two positive solutions, corresponding to two endemic equilibria, if and only if $C > 0 , \operatorname { o r } \mathcal { R } ( \varphi ) <$ < 1, and $B < 0 , B ^ { 2 } > 4 A C$ , or $B \ < \ - 2 \sqrt { A C } \ < \ 0$ . If $B = - 2 { \sqrt { A C } }$ , there is one positive solution $I = - B / 2 A$ of (3.24). 

If (3.27) is satisfied, so that there is a backward bifurcation at $\mathcal { R } ( \varphi ) = 1$ , there are two endemic equilibria for an interval of values of $\beta$ from 

$$
\beta K = \frac {(\mu + \alpha) (\mu + \varphi)}{\mu + \sigma \varphi}
$$

corresponding to $\mathcal { R } ( \varphi ) = 1$ to a value $\beta _ { c }$ defined by $B = - 2 { \sqrt { A C } }$ . To calculate $\beta _ { c }$ , we let $x = \mu + \alpha - \beta K , U = \mu + \sigma \varphi$ to give $B = \sigma x + U , \beta C = \beta K U +$ $( \mu + \alpha ) ( \mu + \varphi )$ . Then $B ^ { 2 } = 4 A C$ becomes 

$$
(\sigma x + U) ^ {2} + 4 \beta \sigma K U - 4 \sigma (\mu + \alpha) (\mu + \varphi) = 0
$$

which reduces to 

$$
(\sigma x) ^ {2} - 2 U (\sigma x) + \left[ U ^ {2} + 4 \sigma (1 - \sigma) (\mu + \alpha) \varphi \right] = 0
$$

with roots 

$$
\sigma x = U \pm 2 \sqrt {\sigma (1 - \sigma) (\mu + \alpha) \varphi}.
$$

For the positive root $B = \sigma x + U > 0$ , and since we require $B \ < \ 0$ as well as $B ^ { 2 } - 4 A C = 0$ , we obtain $\beta _ { c }$ from $\sigma x = U - 2 \sqrt { \sigma ( 1 - \sigma ) ( \mu + \alpha ) \varphi }$ so that 

$$
\sigma \beta_ {c} K = \sigma (\mu + \alpha) + 2 \sqrt {\sigma (1 - \sigma) (\mu + \alpha) \varphi} - (\mu + \sigma \varphi). \tag {3.28}
$$

Then the critical basic reproduction number $\mathcal { R } _ { c }$ is given by 

$$
\mathcal {R} _ {c} = \frac {\mu + \sigma \varphi}{\mu + \varphi} \cdot \frac {\sigma (\mu + \alpha) + 2 \sqrt {\sigma (1 - \sigma) (\mu + \alpha) \varphi} - (\mu + \sigma \varphi)}{\sigma (\mu + \alpha) \varphi}
$$

and it is possible to verify with the aid of (3.28) that $\mathcal { R } _ { c } < 1$ . 

## 3.5.1 The Bifurcation Curve

In drawing the bifurcation curve (the graph of I as a function of $\mathcal { R } ( \varphi ) )$ , we think of $\beta$ as variable with the other parameters $\mu , \alpha , \sigma , Q , \varphi$ as constant. Then $\mathcal { R } ( \varphi )$ is a constant multiple of $\beta$ and we can think of $\beta$ as the independent variable in the bifurcation curve. 

Implicit differentiation of the equilibrium condition (3.24) with respect to $\beta$ gives 

$$
(2 A I + B) \frac {d I}{d \beta} = \sigma I (K - I) + \frac {(\mu + \alpha) (\mu + \varphi)}{\beta^ {2}}.
$$

It is clear from the first equilibrium condition in (3.23) that $I ~ \leq ~ K$ and this implies that the bifurcation curve has positive slope at equilibrium values with $2 A I + B > 0$ and negative slope at equilibrium values with $2 A I + B < 0$ . If there is not a backward bifurcation at $\mathcal { R } ( \varphi ) = 1$ , then the unique endemic equilibrium for $\mathcal { R } ( \varphi ) > 1$ satisfies 

$$
2 A I + B = \sqrt {B ^ {2} - 4 A C} > 0
$$

and the bifurcation curve has positive slope at all points where $I \ > \ 0 .$ . Thus the bifurcation curve is as shown in Fig. 3.5. 

If there is a backward bifurcation at $\mathcal { R } ( \varphi ) = 1$ , then there is an interval on which there are two endemic equilibria given by 

$$
2 A I + B = \pm \sqrt {B ^ {2} - 4 A C}.
$$

The bifurcation curve has negative slope at the smaller of these and positive slope at the larger of these. Thus the bifurcation curve is as shown in Fig. 3.4. 

The condition $2 A I + B > 0$ is also significant in the local stability analysis of endemic equilibria. An endemic equilibrium of (3.21) is (locally) asymptotically stable if and only if it corresponds to a point on the bifurcation curve at which the curve is increasing. To prove this, we observe that the matrix of the linearization of (3.21) at an equilibrium (I, V ) is 

$$
\left[ \begin{array}{c c} - 2 \beta I - (1 - \sigma) \beta V - (\mu + \alpha) + \beta K & - (1 - \sigma) \beta I \\ - (\varphi + \sigma \beta V) & - (\mu + \varphi + \sigma \beta I) \end{array} \right].
$$

Because of the equilibrium conditions (3.23), the matrix at an endemic equilibrium $( I , V )$ is 

$$
\left[ \begin{array}{c c} - \beta I & - (1 - \sigma) \beta I \\ - (\varphi + \sigma \beta V) & - (\mu + \varphi + \sigma \beta I) \end{array} \right].
$$

This has negative trace, and its determinant is 

$$
\begin{array}{l} \sigma (\beta I) ^ {2} + \beta I (\mu + \varphi) - (1 - \sigma) \varphi \beta I - (1 - \sigma) \beta V \cdot \sigma \beta I \\ = \beta I [ 2 \sigma \beta I + (\mu + \sigma \varphi) + \sigma (\mu + \alpha) - \sigma \beta K ] \\ = \beta I [ 2 A I + B ]. \\ \end{array}
$$

If $2 A I + B > 0$ , that is, if the bifurcation curve has positive slope, then the determinant is positive and the equilibrium is asymptotically stable. If $2 A I + B < 0$ the determinant is negative and the equilibrium is unstable. In fact, it is a saddle point. A saddle point in the plane is an equilibrium at which the linearization has one positive eigenvalue and one negative eigenvalue. This means that there are two orbits approaching the saddle point called stable separatrices and two orbits going out from the saddle point, called unstable separatrices. Because orbits cannot cross the separatrices, the stable separatrices divide the plane into two regions and divide the plane into two domains of attraction. The stable separatrices in the $( I , V )$ plane separate the domains of attraction of the other (asymptotically stable) endemic equilibrium and the disease-free equilibrium. 

## 3.6 *An SEI R Model with General Disease Stage Distributions

The ODE models considered in earlier parts of the chapter, except the SIRS model in Sect. 3.3, assume exclusively that the durations of disease stages (e.g., latent and infectious stages) are exponentially distributed. This assumption, while making the models and their analyses easier, is not biologically realistic for most infectious diseases. A more appropriate distribution is the gamma distribution, for which the probability of remaining in the stage is given by 

$$
p _ {n} (s) = \sum_ {k = 0} ^ {n - 1} \frac {(n \theta s) ^ {k} s ^ {- n \theta s}}{k !} \tag {3.29}
$$

where $1 / \theta$ is the mean of the distribution and n is the shape parameter. The exponential distribution is the special case when $n = 1$ . The other extreme case is when $n  \infty$ , which corresponds to a fixed duration. Figure 3.6 illustrates the gamma distribution for various n values. Let $1 / \kappa$ and $1 / \alpha$ denote the mean latent and infectious periods, and let m and n denote the shape parameter for the latent and infectious stages, respectively. It has been reported [44] that for measles 

$$
1 / \kappa = 8, 1 / \alpha = 5, m = n = 2 0,
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/fe391d28541ec0afc5e0f567e639ff55ada256ad8f9d003993136a1a62924fb4.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/2b7ca618ca1a3c7ffe1beabef6b47653f9eee389469c6b0fbf4c28deebb52639.jpg)



Fig. 3.6 Depictions of the survival probability (3.29) for the infectious period (left) and the probability density function (right) with different shape parameter values (n). The special case of n 1 gives the exponential distribution. The mean infectious period (1/θ) is chosen to be 1 week


and for smallpox 

$$
1 / \kappa = 1 4, 1 / \alpha = 8. 6, m = 4 0, n = 4.
$$

There are other cases where the disease stage durations do not fit well by the standard family distributions. Epidemiological models with non-exponential distributions such as the gamma distribution have been previously studied (see, for example, [23, 30, 31]. In these studies, the authors discussed various drawbacks associated with the exponential distribution assumption. For example, it is pointed out that constant recovery is a poor description of real-world infections, and they show that in models with more realistic distributions of disease stages less stable behavior may be expected and disease persistence may be diminished [23, 30]. In [18] it was demonstrated that when control measures such as quarantine and isolation are considered, models with exponential and gamma distributions may generate contradictory evaluations on control strategies. Thus, it will be helpful to have mathematical results for models that allow arbitrary distributions. This is the goal of this section. 

Let $P _ { E } , P _ { I } : [ 0 , \infty )  [ 0 , 1 ]$ describe the durations of the exposed (latent) and infective stages, respectively. That is, $P _ { i } ( s ) ( i = E , I )$ gives the probability that the disease stage i lasts longer than s time units (or the probability of being still in the same stage at stage age s). Then, the derivative $- { \dot { P } } _ { i } ( s ) \ ( i = E , I )$ gives the rate of removal from the stage i at stage age s by the natural progression of the disease. These duration functions have the following properties: 

$$
P _ {i} (0) = 1, \quad \dot {P} _ {i} (s) \leq 0, \quad \int_ {0} ^ {\infty} P _ {i} (s) d s <   \infty , \quad i = E, I.
$$

For the vital dynamics, we use the simplest function $e ^ { - \mu t }$ for the probability of survival (because our focus is on the effect of arbitrary distribution for disease stages). Let the numbers of initial susceptible and removed individuals be $S _ { 0 } >$ 0 and $R _ { 0 } ~ > ~ 0$ respectively. Let $E _ { 0 } ( t ) e ^ { - \mu t }$ and $I _ { 0 } ( t ) e ^ { - \mu t }$ be the non-increasing functions that represent the numbers of individuals that were initially exposed and infective, respectively, and are still alive and in the respective classes at time t. $E ( 0 )$ and $I ( 0 )$ are constants representing the number of individuals in the E and I classes, respectively, at time $t = 0$ . Let $\tilde { I } _ { 0 } ( t )$ denote those initially infected who have moved into the I , and are still alive at time t . Consider the force of infection $\lambda ( t )$ that takes the form 

$$
\lambda (t) = c \frac {I (t)}{N}. \tag {3.30}
$$

Then the number of individuals who became exposed at some time $s \in ( 0 , t )$ and are still alive and in the E class at time t is 

$$
E (t) = \int_ {0} ^ {t} \lambda (s) S (s) P _ {E} (t - s) e ^ {- \mu (t - s)} d s + E _ {0} (t) e ^ {- \mu t},
$$

and the number of infectious individuals at time t is 

$$
I (t) = \int_ {0} ^ {t} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - \dot {P} _ {E} (\tau - s) ] P _ {I} (t - \tau) e ^ {- \mu (t - s)} d s d \tau + I _ {0} (t) e ^ {- \mu t} + \tilde {I} _ {0} (t).
$$

Assume that the recruitment rate is $\mu N$ and they all enter the S class. Then the SEI R model reads 

$$
S (t) = \int_ {0} ^ {t} \mu N e ^ {- \mu (t - s)} d s - \int_ {0} ^ {t} \lambda (s) S (s) e ^ {- \mu (t - s)} d s + S _ {0} e ^ {- \mu t},
$$

$$
E (t) = \int_ {0} ^ {t} \lambda (s) S (s) P _ {E} (t - s) e ^ {- \mu (t - s)} d s + E _ {0} (t) e ^ {- \mu t}, \tag {3.31}
$$

$$
I (t) = \int_ {0} ^ {t} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - \dot {P} _ {E} (\tau - s) ] P _ {I} (t - \tau) e ^ {- \mu (t - s)} d s d \tau + \tilde {I} (t),
$$

where $\lambda ( t )$ is given in (3.30), and $\tilde { X } ( t ) = X _ { 0 } ( t ) e ^ { - \mu t } + \tilde { X } _ { 0 } ( t ) \ : ( X = Q , I , H , R )$ . It can be shown that under standard assumptions on initial data and parameter functions the system (3.31) has a unique non-negative solution defined for all positive time. 

When specific distributions are assumed for functions $P _ { E }$ and $P _ { I }$ the system (3.31) might be simplified. In particular, under the exponential distribution assumption (EDA) and gamma distribution assumption (GDA) the system can be reduced to be ODE systems, which will be referred to as the exponential distribution model (EDM) and gamma distribution model (GDM), respectively. This allows the examination of how the distribution assumptions may affect the model predictions. 

Let 

$$
a (\tau) = e ^ {- \mu \tau} \int_ {0} ^ {\tau} [ - \dot {P} _ {E} (\tau - u) ] P _ {I} (u) d u. \tag {3.32}
$$

The reproduction number is given by 

$$
\mathcal {R} _ {c} = \int_ {0} ^ {\infty} c a (\tau) d \tau . \tag {3.33}
$$

To see the biological meaning of the expression (3.33) and to simplify the notation in later sections we introduce the following quantities: 

$$
\mathcal {T} _ {E} = \int_ {0} ^ {\infty} [ - \dot {P} _ {E} (s) ] e ^ {- \mu s} d s, \mathcal {T} _ {I} = \int_ {0} ^ {\infty} [ - \dot {P} _ {I} (s) ] e ^ {- \mu s} d s, \tag {3.34}
$$

$$
\mathscr {D} _ {E} = \int_ {0} ^ {\infty} P _ {E} (s) e ^ {- \mu s} d s, \quad \mathscr {D} _ {I} = \int_ {0} ^ {\infty} P _ {I} (s) e ^ {- \mu s} d s.
$$

$\mathcal { T } _ { E } , \mathcal { T } _ { I }$ represent, respectively, the probability that exposed individuals survive and become infectious, and the probability that infectious individuals survive and become recovered. $\mathcal { D } _ { E }$ represents the mean sojourn time (death-adjusted) in the exposed stage, and $\mathcal { D } _ { I }$ represents the mean sojourn time (death-adjusted) in the infectious stage. Using (3.34) we can rewrite $\mathcal { R } _ { c }$ in (3.33) as 

$$
\mathcal {R} _ {c} = c \int_ {0} ^ {\infty} a (\tau) d \tau = c \mathcal {T} _ {E _ {k}} \mathcal {D} _ {I _ {l}}. \tag {3.35}
$$

System (3.31) always has the disease-free equilibrium (DFE), and an endemic equilibrium may exist depending on the value of $\mathcal { R } _ { 0 }$ as described below. The proof of the result can be found in [18]. 

Result For System (3.31), the DFE is a global attractor $i f \mathcal { R } _ { c } < 1$ and unstable if $\mathcal { R } _ { c } > 1$ , in which case an endemic equilibrium exists and is stable. 

To compare the model behavior under different stage distributions, let $P _ { E }$ and $P _ { I }$ be the gamma distributions with the duration functions $P _ { E } ( s ) = p _ { m } ( s , \kappa )$ and $P _ { I } ( s ) = p _ { n } ( s , \alpha )$ , with mean $1 / \kappa$ and $1 / \alpha$ , respectively. When $m = n = 1$ , where m and n are the shape parameters, $P _ { E }$ and $P _ { I }$ are exponential distributions the general model (3.31) has the usual form of the standard SEIR model: 

$$
S ^ {\prime} = \mu N - c S \frac {I}{N} - \mu S,
$$

$$
E ^ {\prime} = c S \frac {I}{N} - (\kappa + \mu) E, \tag {3.36}
$$

$$
I ^ {\prime} = \kappa E - (\alpha + \mu) I.
$$

For other integers m and n, then the integral equation model (3.31) can be reduced to an ordinary differential equation model. It has been noted that the use of the gamma distribution $p _ { n } ( s , \theta )$ for a disease stage, e.g., the exposed stage, is equivalent to assuming that the entire stage is replaced by a series of n sub-stages, and each of the sub-stages is exponentially distributed with the removal rate nθ and the mean sojourn time $T / n$ , where $T = 1 / \theta$ is the mean sojourn time of the entire stage (see, for example, [23, 30, 32]). This approach of converting a gamma distribution to a sequence of exponential distributions is known as the “linear chain trick”. In this case, the general model (3.31) reduces to the following ODEs: 

$$
S ^ {\prime} = \mu N - c S \frac {I}{N} - \mu S,
$$

$$
E _ {1} ^ {\prime} = c S \frac {I}{N} - (m \kappa + \mu) E _ {1},
$$

$$
E _ {j} ^ {\prime} = m \kappa E _ {j - 1} - (m \kappa + \mu) E _ {j}, \quad j = 2, \dots , m, \tag {3.37}
$$

$$
I _ {1} ^ {\prime} = m \kappa E _ {m} - (n \alpha + \mu) I _ {1},
$$

$$
I _ {j} ^ {\prime} = n \alpha I _ {j - 1} - (n \alpha + \mu) I _ {j}, \quad j = 2, \dots , n,
$$

$$
\text { with } I = \sum_ {j = 1} ^ {n} I _ {j}.
$$

From the formula (3.35) we get the reproduction number for system (3.37): 

$$
\mathcal {R} _ {c} = \frac {(m \kappa) ^ {m}}{(\mu + m \kappa) ^ {m}} \frac {c}{\mu + n \alpha} \sum_ {j = 0} ^ {n - 1} \frac {(n \alpha) ^ {j}}{(\mu + n \alpha) ^ {j}}. \tag {3.38}
$$

The qualitative behavior of the two systems (3.36) and (3.37) is the same due to the results stated above. For the quantitative behavior, some differences exist. For example, Fig. 3.7 illustrates that the model with gamma distributions tend to generate a lower frequency in oscillations than the model with exponential distributions. As for the magnitude of oscillations, either model can have a higher magnitude than the other depending on the initial conditions. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/9e53764e30d699475472ba418859f90280d13d3532b4584e72c1cd7acb8365de.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/6fb88161c16b64ee83b109301b4deb7b7a3e0085ddf5a45ddcd48de93454a083.jpg)



Fig. 3.7 Comparison of simulations of the SEIR model with exponential and gamma distributions (3.36) and (3.37). Plot in (a) is for the case when the initial fraction of infectious individuals is higher (0.0015) while in (b) it is lower (0.0001). We observe in (a) that the solution of the model with gamma distribution has much lower magnitude in the oscillation than the solution of the model with exponential distribution, whereas in (b) it is opposite. However, in both (a) and (b) the frequency of the oscillation is lower for the gamma distribution model than for the exponential distribution model. The parameter values used are $1 / \kappa = 2 ( \mathrm { d a y } )$ , $1 / \alpha = 7$ (day), $1 / \mu \ : = \ : 1 5$ (year). This is more appropriate for modeling school entry and exit. The values of c is chosen so that $\mathcal { R } _ { 0 } = 2$


## 3.6.1 *Incorporation of Quarantine and Isolation

As pointed out earlier, the model with gamma distributions for disease stages (3.37) has similar qualitative behavior as the model with exponential distributions (3.36). As will be shown in this section, when control measures with quarantine and isolation are considered, models with exponential and gamma distributions can generate very different quantitative outcomes, including contradictory evaluations regarding control strategies. 

Let $\rho$ denote the isolation efficiency with $\rho \quad = \quad 1$ representing complete effectiveness. Thus, when $\rho < 1$ the isolated individuals can transmit the infection with a reduced infectivity $1 - \rho$ . The force of infection is 

$$
\lambda (t) = c \frac {I (t) + (1 - \rho) H (t)}{N}. \tag {3.39}
$$

Let $k ( s ) , l ( s ) \colon [ 0 , \infty ) \ \to \ [ 0 , 1 ]$ denote, respectively, the probabilities that exposed, infective individuals have not been quarantined, isolated at stage age s. Hence, $1 - k ( s ) = : \bar { k } ( s ) , 1 - l ( s ) = : \bar { l } ( s )$ give the respective probabilities of being quarantined, isolated before reaching stage age s. Assume that $k ( 0 ) = l ( 0 ) = 1$ , $\dot { k } ( s ) ~ \le ~ 0$ and $i ( s ) \ \leq \ 0$ . Consider the simpler case when the survivals from quarantine and isolation are described by the exponential functions 

$$
k (s) = e ^ {- \chi s}, \quad l (s) = e ^ {- \phi s} \tag {3.40}
$$

with $\chi$ and $\phi$ being constants, we have 

$$
E _ {0} (t) = E (0) e ^ {- (\chi + \alpha) t}, \quad I _ {0} (t) = I (0) e ^ {- (\phi + \delta) t}, \quad \text { etc. } \tag {3.41}
$$

The model with general distributions as well as quarantine and isolation is 

$$
S (t) = \int_ {0} ^ {t} \mu N e ^ {- \mu (t - s)} d s - \int_ {0} ^ {t} \lambda (s) S (s) e ^ {- \mu (t - s)} d s + S _ {0} e ^ {- \mu t},
$$

$$
E (t) = \int_ {0} ^ {t} \lambda (s) S (s) P _ {E} (t - s) k (t - s) e ^ {- \mu (t - s)} d s + E _ {0} (t) e ^ {- \mu t},
$$

$$
Q (t) = \int_ {0} ^ {t} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - P _ {E} (\tau - s) \dot {k} (\tau - s) ] P _ {E} (t - \tau | \tau - s) e ^ {- \mu (t - s)} d s d \tau + \tilde {Q} (t),
$$

$$
I (t) = \int_ {0} ^ {t} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - \dot {P} _ {E} (\tau - s) k (\tau - s) ] P _ {I} (t - \tau) l (t - \tau) e ^ {- \mu (t - s)} d s d \tau + \tilde {I} (t),
$$

$$
H (t) = \int_ {0} ^ {t} \int_ {0} ^ {u} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - \dot {P} _ {E} (\tau - s) k (\tau - s) ] [ - P _ {I} (u - \tau) \dot {l} (u - \tau) ]
$$

$$
\times P _ {I} (t - u | u - \tau) e ^ {- \mu (t - s)} d s d \tau d u
$$

$$
+ \int_ {0} ^ {t} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - \dot {P} _ {E} (\tau - s) \bar {k} (\tau - s) ] P _ {I} (t - \tau) e ^ {- \mu (t - s)} d s d \tau + \tilde {H} (t),
$$

$$
R (t) = \int_ {0} ^ {t} \int_ {0} ^ {\tau} \lambda (s) S (s) [ - \dot {P} _ {E} (\tau - s) ] [ 1 - P _ {I} (t - \tau) ] e ^ {- \mu (t - s)} d s d \tau + \tilde {R} (t), \tag {3.42}
$$

where $\lambda ( t )$ is given in (3.39) and $\tilde { X } ( t ) = X _ { 0 } ( t ) e ^ { - \mu t } + \tilde { X } _ { 0 } ( t ) \ : ( X = Q , I , H , R )$ Again ${ \tilde { X } } ( t ) \to 0 { \mathrm { ~ a s ~ } } t \to \infty$ . 

$$
a _ {1} (\tau) = e ^ {- \mu \tau} \int_ {0} ^ {\tau} [ - \dot {P} _ {E} (\tau - u) k (\tau - u) ] P _ {I} (u) l (u) d u,
$$

$$
a _ {2} (\tau) = e ^ {- \mu \tau} \int_ {0} ^ {\tau} [ - \dot {P} _ {E} (\tau - u) k (\tau - u) ] P _ {I} (u) \bar {l} (u) d u, \tag {3.43}
$$

$$
a _ {3} (\tau) = e ^ {- \mu \tau} \int_ {0} ^ {\tau} [ - \dot {P} _ {E} (\tau - u) \bar {k} (\tau - u) ] P _ {I} (u) d u,
$$

where $\bar { k } ( s ) = 1 - k ( s ) , \bar { l } ( s ) = 1 - l ( s )$ . Let 

$$
A (\tau) = a _ {1} (\tau) + (1 - \rho) \left[ a _ {2} (\tau) + a _ {3} (\tau) \right].
$$

Then, the reproduction number is 

$$
\mathcal {R} _ {c} = c \int_ {0} ^ {\infty} A (\tau) d \tau . \tag {3.44}
$$

We can also rewrite $\mathcal { R } _ { 0 }$ in the following form: 

$$
\mathcal {R} _ {c} = \mathcal {R} _ {I} + \mathcal {R} _ {I H} + \mathcal {R} _ {Q H}, \tag {3.45}
$$

where 

$$
\mathcal {R} _ {I} = c \int_ {0} ^ {\infty} a _ {1} (\tau) d \tau = c \mathcal {T} _ {E _ {k}} \mathcal {D} _ {I _ {l}},
$$

$$
\mathcal {R} _ {I H} = (1 - \rho) c \int_ {0} ^ {\infty} a _ {2} (\tau) d \tau = (1 - \rho) c \mathcal {T} _ {E _ {k}} (\mathcal {D} _ {I} - \mathcal {D} _ {I _ {l}}),
$$

$$
\mathcal {R} _ {Q H} = (1 - \rho) c \int_ {0} ^ {\infty} a _ {3} (\tau) d \tau = (1 - \rho) c (\mathcal {T} _ {E} - \mathcal {T} _ {E _ {k}}) \mathcal {D} _ {I}.
$$

and 

$$
\begin{array}{l} \mathcal {T} _ {E} = \int_ {0 _ {\infty}} ^ {\infty} [ - \dot {P} _ {E} (s) ] e ^ {- \mu s} d s, \mathcal {T} _ {E _ {k}} = \int_ {0 _ {\infty}} ^ {\infty} [ - \dot {P} _ {E} (s) k (s) ] e ^ {- \mu s} d s, \\ \mathcal {T} _ {I} = \int_ {0} ^ {\infty} [ - \dot {P} _ {I} (s) ] e ^ {- \mu s} d s, \quad \mathcal {T} _ {I _ {l}} = \int_ {0} ^ {\infty} [ - \dot {P} _ {I} (s) l (s) ] e ^ {- \mu s} d s, \tag {3.46} \\ \mathscr {D} _ {E} = \int_ {0} ^ {\infty} P _ {E} (s) e ^ {- \mu s} d s, \quad \mathscr {D} _ {E _ {k}} = \int_ {0} ^ {\infty} P _ {E} (s) k (s) e ^ {- \mu s} d s, \\ \mathscr {D} _ {I} = \int_ {0} ^ {\infty} P _ {I} (s) e ^ {- \mu s} d s, \quad \mathscr {D} _ {I _ {l}} = \int_ {0} ^ {\infty} P _ {I} (s) l (s) e ^ {- \mu s} d s. \\ \end{array}
$$

The three components, $\mathcal { R } _ { I } , \mathcal { R } _ { I H } , \mathcal { R } _ { Q H }$ in $\mathcal { R } _ { c }$ represent contributions from the I class and from the H class through isolation and quarantine, respectively. $\mathcal { T } _ { E }$ and $\mathcal { T } _ { E _ { k } }$ represent, respectively, the probability and the “quarantine-adjusted” probability that exposed individuals survive and become infectious. $\mathcal { T } _ { I }$ and $\mathcal { T } _ { I _ { l } }$ represent, respectively, the probability and the “isolation-adjusted” probability that infectious individuals survive and become recovered. $\mathcal { D } _ { E }$ and $\mathcal { D } _ { E _ { k } }$ represent, respectively, the mean sojourn time (death-adjusted) and the “quarantine-adjusted” mean sojourn time (death-adjusted as well) in the exposed stage. $\mathcal { D } _ { I }$ and $\mathcal { D } _ { I _ { l } }$ represent, respectively, the mean sojourn time (death-adjusted) and the “isolationadjusted” mean sojourn time (death-adjusted as well) in the infectious stage. 

For system (3.42), the same results as for system (3.31) holds, i.e., the DFE is a global attractor if $\mathcal { R } _ { c } ~ < ~ 1$ and unstable if $\mathcal { R } _ { c } ~ > ~ 1$ , in which case an endemic equilibrium exists and is stable. 

## 3.6.2 *The Reduced Model of (3.42) Under GDA

Again let $P _ { E }$ and $P _ { I }$ be the gamma distributions with the duration functions $P _ { E } ( s ) = p _ { m } ( s , \kappa )$ and $P _ { I } ( s ) = p _ { n } ( s , \alpha )$ , with mean $1 /  \kappa$ and $1 / \alpha$ , respectively. Then using the functions $k ( s )$ and $l ( s )$ given in (3.40) we can differentiate the equations in system (3.42) and obtain the following system of ordinary differential equations 

$$
\begin{array}{l} S ^ {\prime} = \mu N - c S \frac {I + (1 - \rho) H}{N} - \mu S, \\ E _ {1} ^ {\prime} = c S \frac {I + (1 - \rho) H}{N} - (\chi + m \kappa + \mu) E _ {1}, \\ E _ {j} ^ {\prime} = m \kappa E _ {j - 1} - (\chi + m \kappa + \mu) E _ {j}, \qquad j = 2, \dots , m, \\ Q _ {1} ^ {\prime} = \chi E _ {1} - (m \kappa + \mu) Q _ {1}, \\ Q _ {j} ^ {\prime} = \chi E _ {j} + m \kappa Q _ {j - 1} - (m \kappa + \mu) Q _ {j}, \qquad j = 2, \dots , m, \\ I _ {1} ^ {\prime} = m \kappa E _ {m} - (\phi + n \alpha + \mu) I _ {1}, \tag {3.47} \\ \end{array}
$$

$$
I _ {j} ^ {\prime} = n \alpha I _ {j - 1} - (\phi + n \alpha + \mu) I _ {j}, \quad j = 2, \dots , n,
$$

$$
H _ {1} ^ {\prime} = m \kappa Q _ {m} + \phi I _ {1} - (n \alpha + \mu) H _ {1},
$$

$$
H _ {j} ^ {\prime} = n \alpha H _ {j - 1} + \phi I _ {j} - (n \alpha + \mu) H _ {j}, \qquad j = 2, \dots , n,
$$

$$
R ^ {\prime} = n \alpha I _ {n} + n \alpha H _ {n} - \mu R,
$$

$$
\text { with } I = \sum_ {j = 1} ^ {n} I _ {j}, H = \sum_ {j = 1} ^ {n} H _ {j}.
$$

In the special case when $m = n = 1$ , the system (3.47) reduces to: 

$$
S ^ {\prime} = \mu N - c S \frac {I + (1 - \rho) H}{N} - \mu S,
$$

$$
E ^ {\prime} = c S \frac {I + (1 - \rho) H}{N} - (\chi + \kappa + \mu) E,
$$

$$
Q ^ {\prime} = \chi E - (\kappa + \mu) Q, \tag {3.48}
$$

$$
I ^ {\prime} = \kappa E - (\phi + \alpha + \mu) I,
$$

$$
H ^ {\prime} = \kappa Q + \phi I - (\alpha + \mu) H.
$$

From the formula (3.45) we get the reproduction number for system (3.47): 

$$
\mathcal {R} _ {c} = \frac {(m \kappa) ^ {m}}{(\mu + m \kappa) ^ {m}} \frac {c}{\mu + n \delta} \sum_ {j = 0} ^ {n - 1} \frac {(n \alpha) ^ {j}}{(\mu + n \alpha) ^ {j}}
$$

$$
\left[ 1 - \rho \left(1 - \frac {(\mu + m \kappa) ^ {m}}{(\mu + m \kappa + \chi) ^ {m}} \frac {\mu + n \alpha}{\mu + n \alpha + \phi} \frac {\sum_ {j = 0} ^ {n - 1} \frac {(n \alpha) ^ {j}}{(\mu + n \alpha + \phi) ^ {j}}}{\sum_ {j = 0} ^ {n - 1} \frac {(n \alpha) ^ {j}}{(\mu + n \alpha) ^ {j}}}\right) \right], \tag {3.49}
$$

with the derivatives 

$$
\frac {\partial \mathcal {R} _ {c}}{\partial \chi} = - c \rho \frac {m (m \kappa) ^ {m}}{(\mu + m \kappa + \chi) ^ {m + 1}} \sum_ {j = 0} ^ {n - 1} \frac {(n \alpha) ^ {j}}{(\mu + n \alpha + \phi) ^ {j + 1}} <   0, \tag {3.50}
$$

$$
\frac {\partial \mathcal {R} _ {c}}{\partial \phi} = - c \rho \frac {(m \kappa) ^ {m}}{(\mu + m \kappa + \chi) ^ {m}} \sum_ {j = 0} ^ {n - 1} \frac {(j + 1) (n \alpha) ^ {j}}{(\mu + n \alpha + \phi) ^ {j + 2}} <   0. \tag {3.51}
$$

## 3.6.3 *Comparison of EDM and GDM

In this section, we show that when the GDA is used to replace the EDA, model predictions regarding the effectiveness of disease intervention policies may be different both quantitatively and qualitatively. We illustrate this by comparing the two models, GDM (3.47) and EDM (3.48). Two criteria are used in the comparison. 

One is the impact of control measures described by $\chi$ and $\phi$ on the reduction in the magnitude of $\mathcal { R } _ { c }$ and the other one is the reduction in the number of cumulative infections $C$ at the end of an epidemic (the final epidemic size). 

From (3.49) to (3.51) we know that the reproduction number $\mathcal { R } _ { c }$ for GDM decreases with increasing $\chi$ and $\phi .$ . Similarly, using the formula (3.45) we get the reproduction number for the EDM, $\mathcal { R } _ { c } = \mathcal { R } _ { I } + \mathcal { R } _ { I H } + \mathcal { R } _ { Q H }$ , where 

$$
\mathcal {R} _ {I} = \frac {c \kappa}{(\mu + \kappa + \chi) (\mu + \alpha + \phi)},
$$

$$
\mathcal {R} _ {I H} = \frac {(1 - \rho) c \kappa}{\mu + \kappa + \chi} \bigg (\frac {1}{\mu + \alpha} - \frac {1}{\mu + \alpha + \phi} \bigg),
$$

$$
\mathcal {R} _ {Q H} = (1 - \rho) c \bigg (\frac {\kappa}{\mu + \kappa} - \frac {\kappa}{\mu + \kappa + \chi} \bigg) \frac {1}{\mu + \alpha},
$$

which can be written in a simpler form as: 

$$
\mathcal {R} _ {c} = \frac {\kappa}{\mu + \kappa} \frac {c}{\mu + \alpha} \left[ 1 - \rho \left(1 - \frac {\mu + \kappa}{\mu + \kappa + \chi} \frac {\mu + \alpha}{\mu + \alpha + \phi}\right) \right]. \tag {3.52}
$$

The derivatives of $\mathcal { R } _ { c }$ with respect to the control parameters are 

$$
\begin{array}{l} \frac {\partial \mathcal {R} _ {c}}{\partial \chi} = - c \rho \frac {\kappa}{(\mu + \kappa + \chi) ^ {2}} \frac {1}{\mu + \alpha + \phi} <   0, \\ \frac {\partial \mathcal {R} _ {c}}{\partial \phi} = - c \rho \frac {\kappa}{\mu + \kappa + \chi} \frac {1}{(\mu + \alpha + \phi) ^ {2}} <   0. \\ \end{array}
$$

Hence, the reproduction number $\mathcal { R } _ { c }$ for EDM also decreases as the control parameters $\chi$ and $\phi$ increase. Therefore, both models seem to work well when the impact of each individual control measure is considered. When we try to compare model predictions of combined control strategies, however, inconsistent predictions by the two models are observed. For example, in Fig. 3.8a, b, $\mathcal { R } _ { c }$ for both models is plotted either as a function of $\phi$ for a fixed value of $\chi = 0 . 0 5$ , or as a function of $\chi$ for a fixed value $\phi = 0 . 0 5$ , or as a function of both $\chi$ and $\phi$ with $\chi = \phi$ . For any vertical line except the one at 0.1, the three curves intersect the vertical line at three points that represent three control strategies. The order of these points (from top to bottom) determines the order of effectiveness (from low to high) of the corresponding control strategies since a larger $\mathcal { R } _ { c }$ value will most likely lead to a higher disease prevalence. The order of these three points (labeled by a circle, a triangle, and a square) predicted by the EDM and the GDM is clearly different for the selected parameter sets, suggesting conflict assessments of interventions between the two models. These conflict assessments are also shown when we compare the $C$ values. For example, Fig. 3.8a shows that the strategy corresponding to $\chi = 0 . 3 , \phi = 0 . 0 5$ (indicated by the triangle) is more effective than the strategy corresponding to $\chi \ = \ 0 . 0 5 , \phi \ = \ 0 . 3$ (indicated by the solid circle). However, Fig. 3.8b shows the opposite, i.e., the strategy corresponding to $\chi = 0 . 3 , \phi = 0 . 0 5$ (indicated by the triangle) is less effective than the strategy corresponding to $\chi = 0 . 0 5 , \phi = 0 . 3$ (indicated by the solid circle). The parameter values used in Fig. 3.8 are $c ~ = ~ 0 . 2 , ~ \rho ~ = ~ 0 . 8 , ~ \kappa ~ = ~ 1 / 7$ , and $\alpha ~ = ~ 1 / 1 0$ , corresponding to a disease with a latency period of $1 / \kappa = 7$ days and an infectious period of $1 / \alpha = 1 0$ days (e.g., SARS). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/2a4955623706b55c98992b731298c678eb1b56a5278519fc1f4f3180d4fe24e8.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/4901c79396de7e82ddfa7dccb23318f9bd1e341b339b02c47652aae11acedb32.jpg)



Fig. 3.8 Comparison of the EDM and the GDM on the impact of various control measures. (a) and (b) are plots of the reproduction number $\mathcal { R } _ { c }$ as functions of control measures $( \chi$ and $\phi )$ for the EDM and GDM, respectively


To examine in more detail the quantitative differences between the two models we conducted intensive simulations of the EDM and the GDM for various control measures, some of which are illustrated in Fig. 3.9. In this figure, the parameters for gamma distributions are $m = n = 3$ , E and I represent the fraction of latent and infectious fractions $\displaystyle { E = ( E _ { 1 } + E _ { 2 } + E _ { 3 } ) / N }$ and $I = ( I _ { 1 } + I _ { 2 } + I _ { 3 } ) / N$ , respectively. The latent and infectious periods are $\kappa = 1 / 7$ and $\alpha = 1 / 1 0 \ :$ . The cumulative infection is calculated by integrating the incidence function, i.e., 

$$
C (t) = \int_ {0} ^ {t} c S (s) [ I (s) + (1 - \rho) H (s) ] / N d s
$$

where $H = H _ { 1 } + H _ { 2 } + H _ { 3 }$ . Figure 3.9a, b is for Strategy I which implements quarantine alone with $\chi = 0 . 0 7$ , and Fig. 3.9c, d is for Strategy II which implements isolation alone with $\phi ~ = ~ 0 . 0 6$ . The effectiveness of these control measures is reflected by the corresponding C(t) values. According to Fig. 3.9a, c, the EDM predicts that Strategy II is more effective than Strategy I as the number C of cumulative infections (fractions) under Strategy II is 30% lower than the C value under Strategy I (notice that $C ~ \approx ~ 0 . 3$ and $C \approx 0 . 2$ under strategies I and II, respectively). However, according to Fig. 3.9b, d, the GDM predicts that Strategy 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/a865aabe95ba82bba706b6899fcb849df294822362c137cec52e6ce1523bf2d6.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/bf13cea72e99059b7794b6baa91e3f346f51a816de4829c8f5fcabab68d4cbb7.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/01218705b2cac49111f448bd4c464dd8f280e6648d891528e30126a8d8483701.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/df4de2544c407fb4a94a81e91eebc53c0e7b17c52abe119dbbacce5409e107a5.jpg)



Fig. 3.9 Comparison of control strategies and evaluations given by the exponential distribution model (EDM) and the gamma distribution model (GDM) with $\textit { m } = \textit { n } = \textit { 3 }$ . Two strategies represented by $\chi$ and $\phi$ are compared: Strategy I involves quarantine alone $( \chi = 0 . 0 7$ and $\phi = 0 )$ while Strategy II involves isolation alone $( \chi = 0$ and $\phi = 0 . 0 6 )$ . Other parameter values used are $1 / \kappa = 7 ( \mathrm { d a y } )$ , 1/α = 10 (day), $1 / \mu = 7 5$ (year), and $c = 0 . 2$ . The time unit is day


II is less effective than Strategy II as the number C of cumulative infections under Strategy I is 30% lower than the C value under Strategy II (notice that $C \approx 0 . 2 3$ and $C \approx 0 . 3 6$ under strategies I and II, respectively). Obviously, in this example, the predictions by the EDM and by the GDM are inconsistent. 

One of the main reasons for the discrepancy between models with exponential and gamma distributions is the memoryless property of the exponential distribution. This can be made more transparent by examining the expected remaining sojourns from the distributions. Under the gamma distribution $p _ { n } ( s , \theta )$ (or simply denoted by $p _ { n } ( s ) )$ with $n \geq 2$ , the expected remaining sojourn at stage age s is 

$$
\mathcal {M} _ {n} (s) = \int_ {0} ^ {\infty} \frac {p _ {n} (t + s)}{p _ {n} (s)} d t = \frac {1}{p _ {n} (s)} \int_ {s} ^ {\infty} p _ {n} (t) d t = \frac {1}{n \theta} \frac {\sum_ {k = 0} ^ {n - 1} \sum_ {j = 0} ^ {k} \frac {(n \theta s) ^ {j}}{j !}}{\sum_ {k = 0} ^ {n - 1} \frac {(n \theta s) ^ {k}}{k !}}.
$$

After checking $\mathcal { M } _ { n } ^ { \prime } ( s ) < 0$ and $\smash { \operatorname* { l i m } _ { s \to \infty } \mathcal { M } _ { n } ( s ) \to T / n }$ where $T = 1 / \theta$ , we know that ${ \mathcal { M } } _ { n } ( s )$ strictly decreases with stage age s, and that when s is large the expected remaining sojourn can be as small as $T / n$ . Hence, the expected remaining sojourn in a stage is indeed dependent on the time already spent in the stage. Therefore, the gamma distribution $p _ { n } ( s )$ for $n \geq 2$ provides a more realistic description than the exponential distribution $p _ { 1 } ( s )$ for which $\mathcal { M } _ { 1 } ( s ) = T$ for all s. 

## 3.7 Diseases in Exponentially Growing Populations

Many parts of the world experienced very rapid population growth in the eighteenth century. The population of Europe increased from 118 million in 1700 to 187 million in 1800. In the same time period the population of Great Britain increased from 5.8 to 9.15 million, and the population of China increased from 150 to 313 million [33]. The population of English colonies in North America grew much more rapidly than this, aided by substantial immigration from England, but the native population, which had been reduced to one tenth of their previous size by disease following the early encounters with Europeans and European diseases, grew even more rapidly. While some of these population increases may be explained by improvements in agriculture and food production, it appears that an even more important factor was the decrease in the death rate due to diseases. Disease death rates dropped sharply in the eighteenth century, partly from better understanding of the links between illness and sanitation and partly because the recurring invasions of bubonic plague subsided, perhaps due to reduced susceptibility. One plausible explanation for these population increases is that the bubonic plague invasions served to control the population size, and when this control was removed the population size increased rapidly. 

In developing countries it is quite common to have high birth rates and high disease death rates. In fact, when disease death rates are reduced by improvements in health care and sanitation it is common for birth rates to decline as well, since families no longer need to have as many children to ensure that enough children survive to take care of the older generations. Again, it is plausible to assume that population size would grow exponentially in the absence of disease but is controlled by disease mortality. 

The SI R model with births and deaths of Kermack and McKendrick [28] includes births in the susceptible class proportional to population size and a natural death rate in each class proportional to the size of the class. Let us analyze a model of this type with birth rate r and a natural death rate $\mu \ < \ r$ . For simplicity we assume the disease is fatal to all infectives with disease death rate $\alpha ,$ , so that there is no removed class and the total population size is $N = S + I$ . Our model is 

$$
\begin{array}{l} \begin{array}{l} S ^ {\prime} = r (S + I) - \beta S I - \mu S \\ I ^ {\prime} = \beta S I - (\text {   and   }) I \end{array} \tag {3.53} \\ I ^ {\prime} = \beta S I - (\mu + \alpha) I. \\ \end{array}
$$

From the second equation we see that equilibria are given by either $I = 0$ or $\beta S =$ $\mu + \alpha . \mathrm { H } I = 0 $ , the first equilibrium equation is $r S = \mu S$ , which implies $S = 0$ since $r \ > \ \mu$ . It is easy to see that the equilibrium $^ { ( 0 , 0 ) }$ is unstable. What actually would happen if $I = 0$ is that the susceptible population would grow exponentially with exponent $r - \mu > 0 . \operatorname { I f } \beta S = \mu + \alpha$ , the first equilibrium condition gives 

$$
r \frac {\mu + \alpha}{\beta} + r I - (\mu + \alpha) I - \frac {\mu (\mu + \alpha)}{\beta} = 0,
$$

which leads to 

$$
(\alpha + \mu - r) I = \frac {(r - \mu) (\mu + \alpha)}{\beta}.
$$

Thus, there is an endemic equilibrium provided $r \textless \alpha + \mu$ , and it is possible to show by linearizing about this equilibrium that it is asymptotically stable. On the other hand, if $r > \alpha + \mu$ there is no positive equilibrium value for I . In this case we may add the two differential equations of the model to give 

$$
N ^ {\prime} = (r - \mu) N - \alpha I \geq (r - \mu) N - \alpha N = (r - \mu - \alpha) N
$$

and from this we may deduce that N grows exponentially. For this model, either we have an asymptotically stable endemic equilibrium or population size grows exponentially. In the case of exponential population growth we may have either vanishing of the infection or an exponentially growing number of infectives. 

If only susceptibles contribute to the birth rate, as may be expected if the disease is sufficiently debilitating, the behavior of the model is quite different. Let us consider the model 

$$
\begin{array}{l} S ^ {\prime} = r S - \beta S I - \mu S = S (r - \mu - \beta I) \\ I ^ {\prime} = \beta S I - (\mu + \nu) I - I (\beta S - \mu + \nu) \end{array} \tag {3.54}
$$

$$
I ^ {\prime} = \beta S I - (\mu + \alpha) I = I (\beta S - \mu - \alpha)
$$

which has the same form as the Lotka–Volterra predator–prey model of population dynamics. This system has two equilibria, obtained by setting the right sides of each of the equations equal to zero, namely (0, 0) and an endemic equilibrium $( ( \mu + \alpha ) / \beta , ( r - \mu ) / \beta )$ . It turns out that the qualitative analysis approach we have been using is not helpful as the equilibrium (0, 0) is unstable and the eigenvalues of the coefficient matrix at the endemic equilibrium have real part zero. In this case the behavior of the linearization does not necessarily carry over to the full system. However, we can obtain information about the behavior of the system by a method that begins with the elementary approach of separation of variables for first order differential equations. We begin by taking the quotient of the two differential equations and using the relation 

$$
\frac {I ^ {\prime}}{S ^ {\prime}} = \frac {d I}{d S}
$$

to obtain the separable first order differential equation 

$$
{\frac {d I}{d S}} = {\frac {I (\beta S - \mu - \alpha)}{S (r - \beta I)}}.
$$

Separation of variables gives 

$$
\int \left(\frac {r}{I} - \beta\right) d I = \int \left(\beta - \frac {\mu + \alpha}{S}\right) d S.
$$

Integration gives the relation 

$$
\beta (S + I) - r \log I - (\mu + \alpha) \log S = c
$$

where c is a constant of integration. This relation shows that the quantity 

$$
V (S, I) = \beta (S + I) - r \log I - (\mu + \alpha) \log S
$$

is constant on each orbit (path of a solution in the (S, I ) plane). Each of these orbits is a closed curve corresponding to a periodic solution. 

We may view the model as describing an epidemic initially, leaving a susceptible population small enough that infection cannot establish itself. Then there is a steady population growth until the number of susceptibles is large enough for an epidemic to recur. During this growth stage the infective population is very small and random effects may wipe out the infection, but the immigration of a small number of infectives will eventually restart the process. As a result, we would expect recurrent epidemics. In fact, bubonic plague epidemics did recur in Europe for several hundred years. If we modify the demographic part of the model to assume limited population growth rather than exponential growth in the absence of disease, the effect would be to give behavior like that of the model studied in the previous section, with an endemic equilibrium that is approached slowly in an oscillatory manner if $\mathcal { R } _ { 0 } > 1$ . 

## 3.8 Project: Population Growth and Epidemics

When one tries to fit epidemiological data over a long time interval to a model, it is necessary to include births and deaths in the population. Throughout the book we have considered population models with birth and death rates that are constant in time. However, population growth often may be fit better by assuming a linear population model with a time-dependent growth rate, even though this does not have a model-based interpretation. There could be many reasons for variations in birth and death rates; we could not quantify the variations even if we knew all of the reasons. Let $\begin{array} { r } { r ( t ) = \frac { d N } { d t } / N } \end{array}$ denote the time-dependent per capita growth rate. To estimate $r ( t )$ from linear interpolation of census data, proceed as follows: 

1. Let $N _ { i }$ and $N _ { i + 1 }$ be the consecutive census measurements of population size taken at times $t _ { i }$ and $t _ { i + 1 }$ , respectively. Let $\Delta N = N _ { i + 1 } - N _ { i } , \Delta t = t _ { i + 1 } - t _ { i }$ , and $\delta N = N ( t + \delta t ) - N ( t )$ . 

2. If ti t  ti 1, $\begin{array} { r } { t _ { i } \le t \le t _ { i + 1 } , \frac { \Delta N } { \Delta t } = \frac { \delta N } { \delta t } } \end{array}$ , then we make the estimate $\begin{array} { r } { r ( t ) \approx \frac { \varDelta N } { \varDelta t N ( t ) } } \end{array}$ . 

3. A better approximation is obtained by replacing $N ( t )$ by $\boldsymbol { N } ( t + \dot { \delta } t / 2 )$ . Why? $\begin{array} { r } { r ( t ) \approx ( \frac { \delta t } { 2 } + \frac { \bar { N ( t ) } \bar { \varDelta t } } { \varDelta N } ) ^ { - 1 } } \end{array}$ N (t )Δt )−1. ΔN 


Table 3.1 Population data growth for the USA


<table><tr><td>Year</td><td>Population size</td><td>Year</td><td>Population size</td><td>Year</td><td>Population size</td></tr><tr><td>1700</td><td>250,888</td><td>1800</td><td>5,308,483</td><td>1900</td><td>75,994,575</td></tr><tr><td>1710</td><td>331,711</td><td>1810</td><td>7,239,881</td><td>1910</td><td>91,972,266</td></tr><tr><td>1720</td><td>466,185</td><td>1820</td><td>9,638,453</td><td>1920</td><td>105,710,620</td></tr><tr><td>1730</td><td>629,445</td><td>1830</td><td>12,866,020</td><td>1930</td><td>122,775,046</td></tr><tr><td>1740</td><td>905,563</td><td>1840</td><td>17,069,453</td><td>1940</td><td>131,669,275</td></tr><tr><td>1750</td><td>1,170,760</td><td>1850</td><td>23,192,876</td><td>1950</td><td>151,325,798</td></tr><tr><td>1760</td><td>1,593,625</td><td>1860</td><td>31,443,321</td><td>1960</td><td>179,323,175</td></tr><tr><td>1770</td><td>2,148,076</td><td>1870</td><td>39,818,449</td><td>1970</td><td>203,302,031</td></tr><tr><td>1780</td><td>2,780,369</td><td>1880</td><td>50,155,783</td><td>1980</td><td>226,542,199</td></tr><tr><td>1790</td><td>3,929,214</td><td>1890</td><td>62,947,714</td><td>1990</td><td>248,718,301</td></tr><tr><td>-</td><td>-</td><td>-</td><td>-</td><td>2000</td><td>274,634,000</td></tr></table>


Fig. 3.10 Observed death rate (filled circle) and the best fit obtained with the function (3.55)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/f1491429a07e9fadf4744012f6ce8cf1090744ba556d2d3cd2ccbc4ad70cd30b.jpg)


Question 1 Use the data of Table 3.1 to estimate the growth rate r(t) for the population of the USA. 

Figure 3.10 shows the time evolution of the USA mortality rate. This mortality rate is fit well by 

$$
\mu = \mu_ {0} + \frac {\mu_ {0} - \mu_ {f}}{1 + e ^ {(t - t _ {1 / 2} ^ {\prime}) / \Delta^ {\prime}}} \tag {3.55}
$$

with $\mu _ { 0 } = 0 . 0 1 9 4 8$ , $\mu _ { f } = 0 . 0 0 8 7 7 1$ , $t _ { 1 / 2 } ^ { \prime } = 1 9 1 2$ , and $\varDelta ^ { \prime } = 1 6 . 6 1$ . Then the “effective birth rate” b(t) is defined as the real birth rate plus the immigration rate. 

Question 2 Estimate $b ( t )$ using $r ( t ) = b ( t ) - \mu ( t )$ , with $r ( t )$ found in Question 1. 

Consider an SEIR disease transmission model. We assume that: 

(a) An average infective individual produces $\beta$ new infections per unit of time when all contacts are with susceptibles but that otherwise, this rate is reduced by the ratio $S / N$ . 

(b) Individuals in the exposed class E progress to the infective class at the per capita rate $k .$ . 

(c) There is no disease-induced mortality or permanent immunity, and there is a mean infective period of $1 / \gamma$ . 

We define $\gamma = r + \mu$ . The model becomes: 

$$
\begin{array}{l} \frac {d S}{d t} = b N - \mu S - \beta S \frac {I}{N}, \\ \frac {d E}{d t} = \beta S \frac {I}{N} - (k + \mu) E, \tag {3.56} \\ \frac {d I}{d t} = k E - (r + \mu) I, \\ \frac {\frac {d t}{d R}}{d t} = r I - \mu R. \\ \end{array}
$$

## Question 3

(a) Show that the mean number of secondary infections (belonging to the exposed class) produced by one infective individual in a population of susceptibles is $Q _ { 0 } = \beta / \gamma$ . 

(b) Assuming that k and $\mu$ are time-independent, show that $\mathcal { R } _ { 0 }$ is given by $Q _ { 0 } f$ where $f = k / ( k + \mu )$ . What is the epidemiological interpretation of $Q _ { 0 } f 2$ 

The usual measure of the severity of an epidemic is the incidence of infective cases. The incidence of infective cases is defined as the number of new infective individuals per year. If we take 1 year as the unit of time, the incidence of infective cases is given approximately by $k E$ . The incidence rate of infective cases per 100,000 population is given approximately by $1 0 ^ { 5 } k E / N$ . 

Tuberculosis (TB) is an example of a disease with an exposed (noninfective) stage. Infective individuals are called active TB cases. Estimated incidence of active TB in the USA was in a growing phase until around 1900 and then experienced a subsequent decline. The incidence rate of active TB exhibited a declining trend from 1850 (see Table 3.2 and Fig. 3.11). The proportion of exposed individuals who $\textstyle f = { \frac { k } { k + \mu } }$ used as a measure of the risk of developing active TB by exposed individuals. 

Question 4 Assume that the mortality rate varies according to the expression (3.55), and that the value of $^ b$ found in Question 2 is used. Set $\gamma = 1 ~ \mathrm { y e a r s ^ { - 1 } }$ and $\beta =$ $1 0 \ \mathrm { y e a r s } \ ^ { - 1 }$ , both constant through time. Simulate TB epidemics starting in 1700 assuming constant values for $f .$ . Can you reproduce the observed trends (Table 3.2)? 


Table 3.2 Reported incidence and incidence rate (per 100,000 population) of active TB


<table><tr><td>Year</td><td>Incidence rate</td><td>Incidence</td><td>Year</td><td>Incidence rate</td><td>Incidence</td></tr><tr><td>1953</td><td>53</td><td>84,304</td><td>1976</td><td>15</td><td>32,105</td></tr><tr><td>1954</td><td>49.3</td><td>79,775</td><td>1977</td><td>13.9</td><td>30,145</td></tr><tr><td>1955</td><td>46.9</td><td>77,368</td><td>1978</td><td>13.1</td><td>28,521</td></tr><tr><td>1956</td><td>41.6</td><td>69,895</td><td>1979</td><td>12.6</td><td>27,769</td></tr><tr><td>1957</td><td>39.2</td><td>67,149</td><td>1980</td><td>12.3</td><td>27,749</td></tr><tr><td>1958</td><td>36.5</td><td>63,534</td><td>1981</td><td>11.9</td><td>27,337</td></tr><tr><td>1959</td><td>32.5</td><td>57,535</td><td>1982</td><td>11</td><td>25,520</td></tr><tr><td>1960</td><td>30.8</td><td>55,494</td><td>1983</td><td>10.2</td><td>23,846</td></tr><tr><td>1961</td><td>29.4</td><td>53,726</td><td>1984</td><td>9.4</td><td>22,255</td></tr><tr><td>1962</td><td>28.7</td><td>53,315</td><td>1985</td><td>9.3</td><td>22,201</td></tr><tr><td>1963</td><td>28.7</td><td>54,042</td><td>1986</td><td>9.4</td><td>22,768</td></tr><tr><td>1964</td><td>26.6</td><td>50,874</td><td>1987</td><td>9.3</td><td>22,517</td></tr><tr><td>1965</td><td>25.3</td><td>49,016</td><td>1988</td><td>9.1</td><td>22,436</td></tr><tr><td>1966</td><td>24.4</td><td>47,767</td><td>1989</td><td>9.5</td><td>23,495</td></tr><tr><td>1967</td><td>23.1</td><td>45,647</td><td>1990</td><td>10.3</td><td>25,701</td></tr><tr><td>1969</td><td>19.4</td><td>39,120</td><td>1992</td><td>10.5</td><td>26,673</td></tr><tr><td>1970</td><td>18.3</td><td>37,137</td><td>1993</td><td>9.8</td><td>25,287</td></tr><tr><td>1971</td><td>17.1</td><td>35,217</td><td>1994</td><td>9.4</td><td>24,361</td></tr><tr><td>1972</td><td>15.8</td><td>32,882</td><td>1995</td><td>8.7</td><td>22,860</td></tr><tr><td>1973</td><td>14.8</td><td>30,998</td><td>1996</td><td>8</td><td>21,337</td></tr><tr><td>1974</td><td>14.2</td><td>30,122</td><td>1997</td><td>7.4</td><td>19,885</td></tr><tr><td>1975</td><td>15.9</td><td>33,989</td><td>1998</td><td>6.8</td><td>18,361</td></tr></table>

It is not possible to obtain a good fit of the data of Table 3.2 to the model (3.56). It is necessary to use a refinement of the model that includes time-dependence in the parameters, and the next step is to describe such a model. The risk of progression to active TB depends strongly on the standard of living. An indirect measure of the standard of living can be obtained from the life expectancy at birth. The observed life expectancy for the USA is approximated well by the sigmoid shape function 

$$
\tau = \tau_ {f} + \frac {\left(\tau_ {0} - \tau_ {f}\right)}{1 + e x p [ (t - t _ {1 / 2}) / \Delta ]}, \tag {3.57}
$$

shown in Fig. 3.12. Here $\tau _ { 0 }$ and $\tau _ { f }$ are asymptotic values for life expectancy; $t _ { 1 / 2 } =$ 1921.3 is the time by which life expectancy reaches the value $( \tau _ { 0 } + \tau _ { f } ) / 2 ;$ and $\varDelta = 1 8 . 4 4 5$ determines the width of the sigmoid. 

Assume that the risk $f$ varies exactly like life expectancy, that is, assume that f is given by 

$$
f (t) = f _ {f} + \frac {(f _ {i} - f _ {f})}{1 + e x p [ (t - t _ {1 / 2}) / \Delta ]}. \tag {3.58}
$$


Fig. 3.11 Incidence of active TB


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/4462f8e56d4ba8347dfa90431ad5c931c8506373dd686672a0580dc472b4616f.jpg)



Fig. 3.12 Observed average life expectancy at birth (filled circle) and its best fit (continuous line) using expression (3.57)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/563d8ad3eccb1dbf1b97dcc3ad965892fde37f81046d43d284a2fc84f52d83a8.jpg)


We refine the model (3.56) by replacing the parameter k by the variable expression $\mu f ( t ) / ( 1 - f ( t ) )$ and $k + \mu$ by $\mu / ( 1 - f ( t ) )$ , obtained from the relation $f = k / ( k + \mu )$ . Since the time scale of the disease is much faster than the demographic time scale, the recovery rate r is approximately equal to $\gamma$ . This gives the model 

$$
\begin{array}{l} \frac {d S}{d t} = b (t) N - \mu (t) S - \beta S \frac {I}{N}, \\ \frac {d E}{d t} = \beta S \frac {I}{N} - \frac {\mu (t)}{1 - f (t)} E, \\ \frac {d I}{d t} = \frac {\mu (t) f (t)}{1 - f (t)} E - \gamma I, \tag {3.59} \\ \frac {d R}{d t} = \gamma I - \mu (t) R. \\ \end{array}
$$

Question 5 Simulate TB epidemics starting in 1700 using the model (3.59) with $\gamma ~ = ~ 1 ~ \mathrm { y e a r s } ^ { - 1 }$ and $\beta ~ = ~ 1 0 ~ \mathrm { y e a r s ^ { - 1 } }$ , both constant, and with $\mu ( t )$ given by (3.55) and $f ( t )$ given by (3.58). Find values of $f _ { 0 }$ and $f _ { f }$ for which an accurate reproduction of the observed TB trends (Table 3.2) is achieved. 

References: [1–4, 9–11, 15, 16, 38–41]. 

## 3.9 *Project: An Environmentally Driven Infectious Disease

Consider an environmentally driven infectious disease such as cholera and toxoplasmosis (a parasite disease caused by T. gondii). For this type of disease, the transmission occurs when susceptible hosts have contacts with a contaminated environment, and the rate of environment contamination is dependent on both the number of infected hosts and the average pathogen load within an infected host. One way to model the transmission dynamics for such a disease is to consider both the disease transmission at the population level and the infection process within the hosts. The following model couples a simple within-host system for cell–parasite interactions (e.g., see [34–36]) and an endemic SI model with an interaction with a contaminated environment: 

$$
\dot {T} = \Lambda - k V T - m T,
$$

$$
\dot {T} ^ {*} = k V T - (m + d) T ^ {*},
$$

$$
\dot {V} = g (E) + p T ^ {*} - c V, \tag {3.60}
$$

$$
\dot {S} = \mu (S + I) - \lambda E S - \mu S,
$$

$$
\dot {I} = \lambda E S - \mu I,
$$

$$
\dot {E} = \theta (V) I (1 - E) - \gamma E.
$$

Here, the variables for the within-host system $T = T ( t ) , T ^ { * } = T ^ { * } ( t )$ , and $V =$ $V ( t )$ are the densities of healthy cells, infected cells, and parasite load, respectively. $S = S ( t )$ and $I = I ( t )$ denote the numbers of susceptible and infective individuals at time t, respectively. Λ denotes the recruitment rate of cells; k is the per-capita infection rate of cells; m and $d$ are the per-capita background and infection-induced cell mortalities, respectively; p denotes the parasite production rate by an infected cell and c is the within-host clearance rate of pathogens. 

The variables $S ( t )$ and $I ( t )$ denote the numbers of susceptible and infective hosts at time $t ,$ and $E ( t ) ~ ( ~ 0 ~ \leq ~ E ~ \leq ~ 1 )$ represents the level of environmental contamination at time t, or the concentration of the pathogen per unit area of a region being considered. The parameter λ denotes the per-capita infection rate of hosts in a contaminated environment; $\mu$ denotes per-capita birth and natural death rate of hosts; and $\gamma$ denotes the rate of pathogen clearance in the environment. 

The function $g ( E )$ in the V equation represents an added rate in the change of parasite load due to the continuous ingestion of parasites by the host from a contaminated environment, and is assumed to have the following properties: 

$$
g (0) = 0, \quad g (E) \geq 0, \quad g ^ {\prime} (E) > 0, \quad g ^ {\prime \prime} (E) \leq 0. \tag {3.61}
$$

One of the simplest forms for $g ( E )$ is the linear function $g ( E ) = a E$ , where $a$ is a positive constant. Other forms of $g ( E )$ include $g _ { 1 } ( E ) = a E / ( 1 + b E )$ with a and b being positive constants and $g _ { 2 } ( E ) = a E ^ { q } ~ ( q < 1 )$ . 

For the analysis of the coupled model (3.60), a commonly used approach is to consider that the within-host system (consisting of the $T , T ^ { * }$ , and V equations) occurs on a much faster time scale than the between-host system (consisting of S, I , and E equations), which allows the substitution of a stable equilibrium of the fastsystem (treating the slow-variables as constant) into the slow-system and study the lower-dimensional slow system (see, e.g., [7, 12, 17, 19]). The system for the fast variables is 

$$
\dot {T} = \Lambda - k V T - m T
$$

$$
\dot {T} ^ {*} = k V T - (m + d) T ^ {*} \tag {3.62}
$$

$$
\dot {V} = g (E) + p T ^ {*} - c V,
$$

and the system for the slow variables is 

$$
\dot {S} = \mu (S + I) - \lambda E S - \mu S,
$$

$$
\dot {I} = \lambda E S - \mu I, \tag {3.63}
$$

$$
\dot {E} = \theta I V (1 - E) - \gamma E.
$$

Question 1 Consider the fast system (3.62). The within-host reproduction number $\mathcal { R } _ { w }$ (w for within) is given by 

$$
\mathcal {R} _ {w} = \frac {k p T _ {0}}{c (m + d)} \tag {3.64}
$$

where $T _ { 0 } = \varLambda / \mu$ 

(a) Let $E > 0$ be a constant. Show that (3.62) has a unique biologically feasible equilibrium (which depends on E) $\tilde { U } ( E ) = ( \tilde { T } ( E ) , \tilde { T } ^ { * } ( E ) , \tilde { V } ( \bar { E } ) )$ . 

(b) Show that the unique equilibrium $\tilde { U } ( E ) = ( \tilde { T } ( E ) , \tilde { T } ^ { * } ( E ) , \tilde { V } ( E ) )$ of (3.62) is globally, asymptotically stable. 

Hint: Consider the following Lyapunov function 

$$
\begin{array}{l} \mathscr {L} (T, T ^ {*}, V) = \tilde {T} \left(\frac {T}{\tilde {T}} - \log \frac {T}{\tilde {T}} - 1\right) + \tilde {T} ^ {*} \left(\frac {T ^ {*}}{\tilde {T} ^ {*}} - \log \frac {T ^ {*}}{\tilde {T} ^ {*}} - 1\right) \\ + \frac {m + d}{p} \tilde {V} \left(\frac {V}{\tilde {V}} - \log \frac {V}{\tilde {V}} - 1\right). \\ \end{array}
$$

Consider the case when $\mathcal { R } _ { w } > 1$ . It can be verified that $\tilde { V } ( 0 ) = \mathrm { l i m } _ { E  0 } \tilde { V } ( E ) > 0$ . Note that the total population of hosts $N = S + I$ remains constant for all $t \ >$ 0. Thus, the fast system (3.62) can be reduced to a two-dimensional system (by ignoring the S equations). Note also that $\tilde { U }$ is g.a.s. in the fast system. We can replace the fast variable V in (3.62) by $\tilde { V } ( E )$ and study the following fast system 

$$
\begin{array}{l} \dot {I} = \lambda E (N - I) - \mu I, \\ \dot {\tilde {I}} = \lambda \tilde {I} (\tilde {T}) (1 - \tilde {T}), \end{array} \tag {3.65}
$$

$$
\dot {E} = \theta I \tilde {V} (E) (1 - E) - \gamma E.
$$

The reproduction number for the between-host system, which is denoted by $\mathcal { R } _ { b }$ (b for between) and defined as 

$$
\mathcal {R} _ {b} = \frac {\theta \tilde {V} (0)}{\mu} \frac {\lambda N}{\gamma}. \tag {3.66}
$$

Therefore, $\mathcal { R } _ { b }$ represents the number of secondary infections through the environment by one infected individual during the entire infectious period in a completely susceptible host population and environment. 

Let $\hat { W } = ( \hat { I } , \hat { E } )$ denote a biologically feasible equilibrium for (3.65). Show that $\hat { I } = \lambda \hat { E } N / ( \lambda \hat { E } + \mu )$ and $\hat { E }$ is a solution of the equation $F ( E ) = G ( E ) , 0 < E < 1$ , where 

$$
F (E) = \frac {1 - E}{c} \left[ g (E) + \frac {p m}{m + d} \left(T _ {0} - \tilde {T} (E)\right) \right], \tag {3.67}
$$

$$
G (E) = \frac {\gamma E}{\theta N} + \frac {\mu \gamma}{\theta \lambda N}.
$$

Equivalently, $\hat { E }$ is a zero of the function $H ( E ) = F ( E ) - G ( E )$ with $0 < E < 1$ 

(a) Let $\hat { W } _ { 0 } = ( 0 , 0 )$ denote the infection-free equilibrium of (3.65). Show that $\hat { W } _ { 0 }$ locally asymptotically stable when $\mathcal { R } _ { b } < 1$ and unstable when $\mathcal { R } _ { b } > 1$ . 


Fig. 3.13 Plot of the function H (E) for different $\mathcal { R } _ { b }$ value between 0.75 and 2. A zero of $H ( E )$ in (0, 1) corresponds to positive equilibrium of the slow system (3.65)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/02d72d369ce82800b8b7ee9ea46ca98ec9419a4a8315716780d4ced3be286866.jpg)


(b) Show that it is possible for the equation $H ( E ) = F ( E ) - G ( E ) = 0$ to have 0, 1, or 2 solutions in (0, 1). 

Hint: Show first that $H ^ { \prime \prime } ( E ) > 0$ for $0 < E < 1$ . 

(c) Figure 3.13 illustrates a numerical plot of the function H (E) for various $\mathcal { R } _ { b }$ (by varying λ) values between $0 . 7 5$ and 2. Other parameter values used are: $\begin{array} { r } { A = 6 \times 1 0 ^ { 3 } , k = 1 . 5 \times 1 0 ^ { - 6 } , m = 0 . 3 , d = 0 . 2 , a = 4 \times 1 0 ^ { 5 } , c = 5 0 , } \end{array}$ , $\mathcal { R } _ { w 0 } = 1 . 0 9 \left( p = 9 0 8 \right) , N = 1 0 ^ { 4 } , \mu = 4 \times 1 0 ^ { - 4 } , \theta = 1 \times 1 0 ^ { - 1 0 }$ , and $\gamma = 0 . 0 2$ . What do you observe? How does the number of solutions of $H ( E ) = 0$ depend on $\mathcal { R } _ { b } ?$ 

(d) From the plot in part (c) we can observe that there exists a lower bound $\mathcal { R } _ { b L } \in$ (0, 1) such that for all $\mathcal { R } _ { b } \in ( \mathcal { R } _ { b L } , 1 )$ , the equation $H ( E ) = F ( E ) - G ( E ) = 0$ has two solutions in (0, 1), which correspond to two positive equilibria $\hat { W } _ { i } =$ $( \hat { I } _ { i } , \hat { E } _ { i } ) ~ ( i = 1 , 2 )$ with $\hat { I } _ { 2 } \ > \ \hat { I } _ { 1 }$ . In this case, prove analytically that $\hat { W } _ { 2 }$ is locally asymptotically stable and $\hat { W } _ { 1 }$ is unstable. (Hint: Check the sign of the eigenvalues of the Jacobian matrix at $\hat { W } )$ . 

(e) For the full system (3.60), conduct numerical simulations to confirm the results stated in parts (a)–(d), which are obtained by separating the fast and slow systems. 

(i) Reproduce the Fig. 3.14 (left) by plotting the fraction of infected $I ( t ) / N$ vs. time with several sets of initial conditions. Use the same parameter values as in Part (c) except that $p = 8 5 0$ (corresponding to $\mathcal { R } _ { b } = 0 . 3 7 < 1 ) , a = 5 \times 1 0 ^ { 5 }$ , $\lambda = 5 . 5 \times 1 0 ^ { - 4 }$ , and $\gamma = 0 . 0 1 5$ . 

(ii) Reproduce the phase portrait shown in Fig. 3.14 (right), which illustrates one fast variable (V ) and one slow variable (E). Use the same parameter values as in Part (c) except that $p = 1 0 ^ { 3 }$ (corresponding to $\mathcal { R } _ { b } > 1 )$ and $a = 4 \times 1 0 ^ { 4 }$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/3184adad04a4df7cd95bc6203a46a1adec9f45762fcc957a3add15e60ce952e9.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/33831ac89f07ea97ef99f9d2b85e9b4dd274cfe099d5436a5a4a56902e89bc2e.jpg)



Fig. 3.14 Left: Time plot of the full system (3.60) for $\mathcal { R } _ { b } \in ( \mathcal { R } _ { b L } , 1 )$ , in which case there are two stable equilibria, one with the infection-free and one with positive infection level. Right: Phase portrait of the full system (3.60) for $\mathcal { R } _ { b } > 1$ , in which case there is a unique stable equilibrium


## 3.10 *Project: A Two-Strain Model with Cross Immunity

This project concerns a two-strain model with cross immunity. Divide the population into ten different classes: susceptibles (S), infected with strain $i ~ ( I _ { i } )$ , primary infection), isolated with strain $i ~ ( Q _ { i } )$ , recovered from strain $\textit { i } \left( R _ { i } \right.$ , as a result of primary infection), infected with strain $i \ ( V _ { i }$ , secondary infection), given that the population had recovered from strains $j \neq i$ , and recovered from both strains (W ). Let A denote the population of non-isolated individuals and let $\frac { \beta _ { i } S ( I _ { i } + V _ { i } ) } { A }$ be the rate at which susceptibles become infected with strain i. That is, the ith $( i \neq j )$ incidence rate is assumed to be proportional to both the number of susceptibles and the available modified proportion of i-infectious individuals, (Ii +Vi ) . Let σij $\frac { ( I _ { i } + V _ { i } ) } { A }$ $\sigma _ { i j }$ denote a measure of the cross-immunity provided by a prior infection with strain i to exposure with strain $j ~ ( i \neq j )$ . Consider the following model 

$$
\begin{array}{l} \frac {d S}{d t} = \varLambda - \sum_ {i = 1} ^ {2} \beta_ {i} S \frac {(I _ {i} + V _ {i})}{A} - \mu S, \\ \frac {d I _ {i}}{d t} = \beta_ {i} S \frac {(I _ {i} + V _ {i})}{A} - (\mu + \gamma_ {i} + \delta_ {i}) I _ {i}, \\ \frac {d Q _ {i}}{I _ {i}} = \delta_ {i} I _ {i} - (\mu + \alpha_ {i}) Q _ {i}, \\ \frac {d t}{d R _ {i}} = \gamma_ {i} I _ {i} + \alpha_ {i} Q _ {i} - \beta_ {j} \sigma_ {i j} R _ {i} \frac {\left(I _ {j} + V _ {j}\right)}{A} - \mu R _ {i}, \quad j \neq i \tag {3.68} \\ \frac {d V _ {i}}{d t} = \beta_ {i} \sigma_ {i j} R _ {j} \frac {(I _ {i} + V _ {i})}{A} - (\mu + \gamma_ {i}) V _ {i}, \quad j \neq i \\ \frac {d W}{d t} = \sum_ {i = 1} ^ {2} \gamma_ {i} V _ {i} - \mu W, \\ A = S + W + \sum_ {i = 1} ^ {2} (I _ {i} + V _ {i} + R _ {i}). \\ \end{array}
$$

The basic reproduction number for strain i is 

$$
\mathcal {R} _ {i} = \frac {\beta_ {i}}{\mu + \gamma_ {i} + \delta_ {i}}, i = 1, 2.
$$

Assume that $\sigma _ { 1 2 } = \sigma _ { 2 1 } = \sigma$ . The values of reproduction numbers $\mathcal { R } _ { i }$ and the crossimmunity levels σ determine the existence and stability of equilibrium points of the system (3.68). Let $E _ { i }$ denote the boundary equilibria where only strain i is present $( i = 1 , 2 )$ . 

Question 1 Consider the case when changes in $\mathcal { R } _ { i }$ are due to changes in $\beta _ { i }$ . Let $f ( \mathcal { R } _ { 1 } )$ and $g ( \mathcal { R } _ { 2 } )$ be the two functions given by 

$$
f (\mathcal {R} _ {1}) = \frac {\mathcal {R} _ {1}}{1 + \sigma (\mathcal {R} _ {1} - 1) \left(1 + \frac {\delta_ {2}}{\mu + \gamma_ {2}}\right) \left(1 - \frac {\mu (\mu + \alpha_ {1})}{(\mu + \gamma_ {1}) (\mu + \alpha_ {1}) + \alpha_ {1} \delta_ {1}}\right)} \tag {3.69}
$$

and 

$$
g (\mathcal {R} _ {2}) = \frac {\mathcal {R} _ {2}}{1 + \sigma (\mathcal {R} _ {2} - 1) \left(1 + \frac {\delta_ {1}}{\mu + \gamma_ {1}}\right) \left(1 - \frac {\mu (\mu + \alpha_ {2})}{(\mu + \gamma_ {2}) (\mu + \alpha_ {1}) + \alpha_ {2} \delta_ {2}}\right)}, \tag {3.70}
$$

and let $\sigma _ { 1 } ^ { * }$ and $\sigma _ { 2 } ^ { * }$ be the critical values such that 

$$
f ^ {\prime} (\mathcal {R} _ {1}) \equiv \frac {\partial f (\mathcal {R} _ {1} , \sigma)}{\partial \mathcal {R} _ {1}} \Big | _ {\sigma_ {1} ^ {*}} = 0, \quad g ^ {\prime} (\mathcal {R} _ {2}) \equiv \frac {\partial g (\mathcal {R} _ {2} , \sigma)}{\partial \mathcal {R} _ {2}} \Big | _ {\sigma_ {2} ^ {*}} = 0. \tag {3.71}
$$

Determine the properties of $f$ and g and sketch these functions in the $\mathcal { R } _ { 1 } - \mathcal { R } _ { 2 }$ plane. 

## Question 2

(a) Determine the region(s) in the $\mathcal { R } _ { 1 } - \mathcal { R } _ { 2 }$ plane for the existence of $E _ { 1 }$ and $E _ { 2 }$ . 

(b) Determine the conditions for the stabilities of $E _ { 1 }$ and $E _ { 2 }$ 

## 3.11 Exercises

1. Consider the following SEIR model with disease-induced mortality: 

$$
\frac {d S}{d t} = \mu N - \beta S \frac {I}{N} - \mu S,
$$

$$
\frac {d E}{d t} = \beta S \frac {I}{N} - (\kappa + \mu) E,
$$

$$
\frac {d I}{d t} = \kappa E - (\gamma + \mu + \delta) I,
$$

$$
\frac {d R}{d t} = \gamma I - \mu R,
$$

$$
N = S + E + I + R,
$$

where δ denotes the per capita rate of disease related death. 

(a) Compute the basic reproduction number $\mathcal { R } _ { 0 }$ . 

(b) Does the system have an endemic equilibrium? If yes, find the condition in terms of $\mathcal { R } _ { 0 }$ . 

(c) Show that the endemic equilibrium is locally asymptotically stable whenever it exists. 

(d) Reduce the system to a three-dimensional system by introducing fractions $u = S / N , x = E / N , y = I / N , z = R / N .$ . 

2. Show that the endemic equilibrium of (3.3) is asymptotically stable if $\mathcal { R } _ { 0 } > 1$ . 

3. Consider a population in which a fraction $p \in ( 0 , 1 )$ of newborns are successfully vaccinated and assume permanent immunity after infection and vaccination. Assume that infectious individuals are treated at a per capita rate r. Let $\mathcal { R } _ { c }$ denote the control reproduction number such that the disease-free equilibrium is locally asymptotically stable when $\mathcal { R } _ { c } ~ < ~ 1$ . Consider a disease for which $\beta = 0 . 8 6 , \gamma = 1 / 1 4 d a y s ^ { - 1 } , \mu = 1 / 7 5 \ y e a r s ^ { - 1 }$ . Use the following SIR model to calculate the threshold immunity level $p _ { c }$ such that $\mathcal { R } _ { c } < 1$ for $p > p _ { c }$ . 

$$
\begin{array}{l} \frac {d S}{d t} = \mu N (1 - p) - \beta S \frac {I}{N} - \mu S, \\ \frac {d I}{d t} = \beta S \frac {I}{N} - (\gamma + \mu + r) I, \\ \frac {d R}{d t} = \mu N p + (\gamma + r) I - \mu R, \\ N = S + I + R. \\ \end{array}
$$

(a) Find $p _ { c }$ in the absent of treatment $( \mathrm { i } . \mathrm { e } . , r = 0 )$ . 

(b) Find $p _ { c }$ when $r = 0 . 2 \AA$ . 

(c) Plot $p _ { c }$ as a function of $r .$ . 

(d) Plot $\mathcal { R } _ { c }$ as a function of $p$ and r 

(e) Plot several contour curves of $\mathcal { R } _ { c }$ in the $( p , r )$ plane including the curve for $\mathcal { R } _ { c } = 1$ . 

4. Consider the SIRS model (3.10). 

(a) Find the expression for the fraction $I ^ { * } / N$ of the infected individuals at the endemic equilibrium. 

(b) Explore the dependence of $I ^ { * } / N$ on the immunity loss (θ ), particularly in the two extreme cases when the immunity period is very short or very long. 

5. ∗ Consider the SIR model with delay (3.12). 



9. Castillo-Chavez, C., and Z. Feng (1997) To treat or not to treat; the case of tuberculosis, J. Math. Biol, 35: 629–656. 





34. Nowak, M.A., S. Bonhoeffer, G. M. Shaw and R. M. May (1997) Anti-viral drug treatment: dynamics of resistance in free virus and infected cell populations, J. Theor. Biol. 184: 203–217. 



(a) Find the endemic equilibrium. 



10. Castillo-Chavez, C., and Z. Feng (1998) Global stability of an age-structure model for TB and its applications to optimal vaccination strategies, Math. Biosc. 151: 135–154. 





35. Perelson, A.S., D. E. Kirschner and R. De Boer (1993) Dynamics of HIV infection of $\mathrm { C D 4 ^ { + } }$ T cells, Math. Biosc. 114: 81–125. 



(b) Let $\beta = 0 . 8 6$ and $\alpha = 1 / 1 4$ . Determine the threshold value $\omega _ { c }$ such that the stability of the endemic equilibrium switches its stability. 



11. Castillo-Chavez, C. and Z. Feng (1998) Mathematical models for the disease dynamics of tuberculosis, Advances in Mathematical Population Dynamics - Molecules, Cells, and Man (O. Arino, D. Axelrod, M. Kimmel, (eds)): 629–656, World Scientific Press, Singapore. 





36. Perelson, A.S. and P. W. Nelson (2002) Modelling viral and immune system dynamics, Nature Rev. Immunol. 2: 28–36. 



6. Consider the vaccination model (3.21). 



12. Cen, X., Z. Feng and Y. Zhao (2014) Emerging disease dynamics in a model coupling withinhost and between-host systems, J. Theor. Biol. 361: 141–151. 





37. Routh, E.J. (1877) A Treatise on the Stability of a Given State of Motion: Particularly Steady Motion, MacMillan. 





13. Conlan, A.J.K. and B.T. Grenfell (2007) Seasonality and the persistence and invasion of measles, Proc. Roy. Soc. B. 274: 1133–1141. 





38. U. S. Bureau of the Census (1975) Historical statistics of the United States: colonial times to 1970, Washington, D. C. Government Printing Office. 



(a) Verify that $\mathcal { R } _ { c } < 1$ whenever there is a backward bifurcation. 



14. Dushoff, J., W. Huang, & C. Castillo-Chavez (1998) Backwards bifurcations and catastrophe in simple models of fatal diseases, J. Math. Biol. 36: 227–248. 





39. U.S. Bureau of the Census (1980) Statistical Abstracts of the United States, 101st edition. 



(b) Show how to choose ϕ to make $\mathcal { R } _ { c } < \mathcal { R } _ { 0 }$ , assuming that all parameters other than ϕ are kept fixed. 



15. Feng, Z., C. Castillo-Chavez, and A. Capurro (2000) A model for TB with exogenous reinfection, J. Theor. Biol. 5: 235–247. 





40. U.S. Bureau of the Census (1991) Statistical Abstracts of the United States, 111th edition. 



(c) Is it possible to improve the vaccine (decrease σ ) enough to make $\mathcal { R } _ { c } < \mathcal { R } _ { 0 }$ , assuming all parameters other than $\sigma$ are kept fixed? 



16. Feng, Z., W. Huang and C. Castillo-Chavez (2001) On the role of variable latent periods in mathematical models for tuberculosis, J. Dynamics and Differential Equations 13: 425–452. 





41. U.S. Bureau of the Census (1999) Statistical Abstracts of the United States, 119th edition. 



7. ∗ Consider the model with a gamma distribution (3.47) and the exponential distribution (3.48). Compare the behavior of the two models under the scenarios specified below. Assume that all parameters have the same values as in Fig. 3.10 except the control parameters $\chi$ and $\varphi .$ . 



17. Feng, Z., J. Velasco-Hernandez and B. Tapia-Santos (2013) A mathematical model for coupling within-host and between-host dynamics in an environmentally-driven infectious disease, Math. Biosc. 241: 49–55. 





42. Wang, W. (2006) Backward bifurcations of an epidemic model with treatment, Math. Biosc. 201: 58–71. 





18. Feng, Z., D. Xu, & H. Zhao (2007) Epidemiological models with non-exponentially distributed disease stages and applications to disease control, Bull. Math. biol. 69: 1511–1536. 





43. Wang, W. and S. Ruan (2004) Bifurcations in an epidemic model with constant removal rate of the infectives, J. Math. Anal. & Appl. 291: 775–793. 



(a) $\chi = \varphi = 0$ . Do you observe any differences in the disease prevalence between the two models? Explain why or why not. 



19. Gilchrist, M.A. and D. Coombs (2006) Evolution of virulence: interdependence, constraints, and selection using nested models, Theor. Pop. Biol. 69: 145–153. 





44. Wearing, H. J., P. Rohani, & M. J. Keeling (2005) Appropriate models for the management of infectious diseases, PLoS Medicine 2 (7), e174. 



(b) Compare the two models under two strategies. Strategy I: $\chi = 0 . 0 8$ and $\varphi = 0$ , Strategy II: $\chi = 0$ and $\varphi = 0 . 0 8$ . Do you observe any differences in the disease prevalence between the two models? Explain why or why not. 



20. Hadeler, K.P. & C. Castillo-Chavez (1995) A core group model for disease transmission, Math Biosc. 128: 41–55. 



## References



21. Hadeler, K.P. and P. van den Driessche (1997) Backward bifurcation in epidemic control, Math. Biosc. 146: 15–35. 





22. Hethcote, H.W. (1978) An immunization model for a heterogeneous population, Theor. Pop. Biol. 14: 338–349. 





1. Aparicio, J.P., A. Capurro, and C. Castillo-Chavez (2000) Markers of disease evolution: the case of tuberculosis, J. Theor. Biol., 215: 227–238. 





23. Hethcote, H.W. and D.W. Tudor (1980) Integral equation models for endemic infectious diseases, J. Math. Biol. 9: 37–47. 





2. Aparicio J. P.,A.F. Capurro, and C. Castillo-Chavez (2000) On the fall and rise of tuberculosis. Department of Biometrics, Cornell University, Technical Report Series, BU-1477-M. 





24. Hethcote, H.W., H.W. Stech, and P. van den Driessche (1981) Periodicity and stability in epidemic models: A survey, in Differential Equations and Applications in Ecology, Epidemics, and Population Problems, S. Busenberg and K.L. Cooke (eds.), Academic Press, New York, pages 65–82. 





3. Aparicio J.P., A. Capurro, and C. Castillo-Chavez (2002) Frequency Dependent Risk of Infection and the Spread of Infectious Diseases. In: Mathematical Approaches for Emerging and Reemerging Infectious Diseases : Models, Methods and Theory, Edited by Castillo-Chavez, C. with S. Blower, P. van den Driessche, D. Kirschner, and A.A. Yakubu, Springer-Verlag (2002), pp. 341–350. 





25. Hopf, E. (1942) Abzweigung einer periodischen Lösungen von einer stationaren Lösung eines Differentialsystems, Berlin Math-Phys. Sachsiche Akademie der Wissenschaften, Leipzig, 94: 1–22. 





4. Aparicio, J.P., A. Capurro, and C. Castillo-Chavez (2002) On the long-term dynamics and re-emergence of tuberculosis. In: Mathematical Approaches for Emerging and Reemerging Infectious Diseases: Models, Methods and Theory, Edited by Castillo-Chavez, C. with S. Blower, P. van den Driessche, D. Kirschner, and A.A. Yakubu, Springer-Verlag, (2002) pp. 351–360. 





26. Hurwitz, A. (1895) Über die Bedingungen unter welchen eine Gleichung nur Wurzeln mit negativen reellen Teilen bezizt, Math. Annalen 46: 273–284. 





5. Bellman, R.E. and K.L. Cooke (1963) Differential-Difference Equations, Academic Press, New York. 





27. Keeling, M.J. and B.T. Grenfell (1997) Disease extinction and community size: Modeling the persistence of measles, Science 275: 65–67. 





6. Blower, S.M. & A.R. Mclean (1994) Prophylactic vaccines, risk behavior change, and the probability of eradicating HIV in San Francisco, Science 265: 1451–1454. 





28. Kermack, W.O. and A.G. McKendrick (1932) Contributions to the mathematical theory of epidemics, part. II, Proc. Roy. Soc. London, 138: 55–83. 





7. Boldin, B. and O. Diekmann (2008) Superinfections can induce evolutionarily stable coexistence of pathogens, J. Math. Biol. 56: 635–672. 





29. Kribs-Zaleta, C.M. and J.X. Velasco-Hernandez (2000) A simple vaccination model with multiple endemic states, Math Biosc. 164: 183–201. 





8. Busenberg, S. and K.L. Cooke (1993) Vertically Transmitted Diseases: Models and Dynamics, Biomathematics 23, Springer-Verlag, Berlin-Heidelberg-New York. 





30. Lloyd, A. L. (2001) Destabilization of epidemic models with the inclusion of realistic distributions of infectious periods, Proc. Royal Soc. London. Series B: Biological Sciences 268: 985–993. 





31. Lloyd, A. L. (2001b) Realistic distributions of infectious periods in epidemic models: changing patterns of persistence and 60 (1), 59–71. 





32. MacDonald, N. (1978) Time lags in biological models (Vol. 27), Heidelberg, Springer-Verlag. 





33. McNeill, W.H. (1976) Plagues and Peoples, Doubleday, New York. 



# Chapter 4 Epidemic Models

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/be696f103b72a6e3dc7ff8cd3cd6f89dd679de20201f2c8445c2679eb0d49253.jpg)


In this chapter we describe models for epidemics, acting on a sufficiently rapid time scale that demographic effects, such as births, natural deaths, immigration into and emigration out of a population may be ignored. The prototype epidemic model is the simple Kermack–McKendrick model studied in Sect. 2.4. 

We have established that the simple Kermack–McKendrick epidemic model 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I \\ I ^ {\prime} = \beta S I, \dots , I \end{array} \tag {4.1}
$$

$$
I ^ {\prime} = \beta S I - \alpha I
$$

has the basic properties: 

1. There is a basic reproduction number $\mathcal { R } _ { 0 }$ such that if $\mathcal { R } _ { 0 } < 1$ , the disease dies out while if $\mathcal { R } _ { 0 } > 1$ there is an epidemic. 

2. The number of infectives always approaches zero and the number of susceptibles always approaches a positive limit $S _ { \infty }$ as $t \to \infty$ . 

3. There is a relation 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right] \tag {4.2}
$$

between the reproduction number and the final size of the epidemic which is an equality if there are no disease deaths. 

We will extend this model to models with more compartments and general distributions of stay in a compartment, for which these properties also hold, but we begin this chapter by presenting a more realistic description of the beginning of a disease outbreak than the compartmental approach. We will assume throughout this chapter that there are no disease deaths; the effects of including disease deaths in an epidemic model are the same as those described for the Kermack–McKendrick model with disease deaths in Sect. 2.5. 

## 4.1 A Branching Process Disease Outbreak Model

The Kermack–McKendrick compartmental epidemic model assumes that the sizes of the compartments are large enough that the mixing of members is homogeneous, or at least that there is homogeneous mixing in each subgroup if the population is stratified by activity levels. However, at the beginning of a disease outbreak, there is a very small number of infective individuals and the transmission of infection is a stochastic event depending on the pattern of contacts between members of the population; a description should take this pattern into account. 

Our approach will be to give a stochastic branching process description of the beginning of a disease outbreak to be applied so long as the number of infectives remains small, distinguishing a (minor) disease outbreak confined to this stage from a (major) epidemic, which occurs if the number of infectives begins to grow at an exponential rate. Once an epidemic has started we may switch to a deterministic compartmental model, arguing that in a major epidemic, contacts would tend to be more homogeneously distributed. Implicitly, we are thinking of an infinite population, and by a major epidemic, we mean a situation in which a nonzero fraction of the population is infected, and by a minor outbreak, we mean a situation in which the infected population may grow but remains a negligible fraction of the population. 

There is an important difference between the behavior of branching process models and the behavior of models of Kermack–McKendrick type, namely that, as we shall see in this section, for a stochastic disease outbreak model if $\mathcal { R } _ { 0 } < 1$ the probability that the infection will die out is 1, but if $\mathcal { R } _ { 0 } > 1$ there is a positive probability that the infection will increase initially but will produce only a minor outbreak and will die out before triggering a major epidemic. 

We describe the network of contacts between individuals by a graph with members of the population represented by vertices and with contacts between individuals represented by edges. The study of graphs originated with the abstract theory of Erdös and Rényi of the 1950s and 1960s [13–15]. It has become important in many areas of application, including social contacts and computer networks, as well as the spread of communicable diseases. We will think of networks as bidirectional, with disease transmission possible in either direction along an edge. 

An edge is a contact between vertices that can transmit infection. The number of edges of a graph at a vertex is called the degree of the vertex. The degree distribution of a graph is $\{ p _ { k } \}$ , where $p _ { k }$ is the fraction of vertices having degree k. The degree distribution is fundamental in the description of the spread of disease. 

We think of a small number of infectives in a population of susceptibles large enough that in the initial stage we may neglect the decrease in the size of the susceptible population. Our development begins along the lines of that of [12] and then develops along the lines of [10, 32, 34]. We assume that the infectives make contacts independently of one another and let $p _ { k }$ denote the probability that the number of contacts by a randomly chosen individual is exactly k, with $\scriptstyle \sum _ { k = 0 } ^ { \infty } p _ { k } \ = \ 1$ . In other words, $\{ p _ { k } \}$ is the degree distribution of the vertices of the graph corresponding to the population network. For the moment, we assume that every contact leads to an infection, but we will relax this assumption later. 

It is convenient to define the generating function 

$$
G _ {0} (z) = \sum_ {k = 0} ^ {\infty} p _ {k} z ^ {k}.
$$

Since $\scriptstyle \sum _ { k = 0 } ^ { \infty } p _ { k } \ = \ 1$ , this power series converges for $0 ~ \leq ~ z ~ \leq ~ 1$ , and may be differentiated term by term. Thus 

$$
p _ {k} = \frac {G _ {0} ^ {(k)} (0)}{k !}, \quad k = 0, 1, 2, \dots .
$$

It is easy to verify that the generating function has the properties 

$$
G _ {0} (0) = p _ {0}, \quad G _ {0} (1) = 1, \quad G _ {0} ^ {\prime} (z) > 0, \quad G _ {0} ^ {\prime \prime} (z) > 0.
$$

The mean degree, which we denote by k or $z _ { 1 }$ , is 

$$
\langle k \rangle = \sum_ {k = 1} ^ {\infty} k p _ {k} = G _ {0} ^ {\prime} (1).
$$

More generally, we define the moments 

$$
\langle k ^ {j} \rangle = \sum_ {k = 1} ^ {\infty} k ^ {j} p _ {k}, \quad j = 1, 2, \dots \infty .
$$

When a disease is introduced into a network, we think of it as starting at a vertex (patient zero) who transmits infection to every individual to whom this individual is connected, that is, along every edge of the graph from the vertex corresponding to this individual. We may think of this individual as being inside the population, as when a member of a population returns from travel after being infected, or as being outside the population, as when someone visits another population and brings back an infection. For transmission of disease after this initial contact, we need to use the excess degree of a vertex. If we follow an edge to a vertex, the excess degree of this vertex is one less than the degree. We use the excess degree because infection cannot be transmitted back along the edge whence it came. The probability of reaching a vertex of degree $k ,$ , or excess degree (k − 1), by following a random edge is proportional to $k ,$ and thus the probability that a vertex at the end of a random edge has excess degree (k −1) is a constant multiple of $k p _ { k }$ with the constant chosen to make the sum over k of the probabilities equal to 1. Then the probability that a 

vertex has excess degree (k 1) is 

$$
q _ {k - 1} = \frac {k p _ {k}}{<   k >}.
$$

This leads to a generating function $G _ { 1 } ( z )$ for the excess degree 

$$
G _ {1} (z) = \sum_ {k = 1} ^ {\infty} q _ {k - 1} z ^ {k - 1} = \sum_ {k = 1} ^ {\infty} \frac {k p _ {k}}{<   k >} z ^ {k - 1} = \frac {1}{<   k >} G _ {0} ^ {\prime} (z),
$$

and the mean excess degree, which we denote by $< k _ { e } >$ , is 

$$
\begin{array}{l} <   k _ {e} > = \frac {1}{<   k >} \sum_ {k = 1} ^ {\infty} k (k - 1) p _ {k} \\ = \frac {1}{<   k >} \sum_ {k = 1} ^ {\infty} k ^ {2} p _ {k} - \frac {1}{<   k >} \sum_ {k = 1} ^ {\infty} k p _ {k} \\ = \frac {<   k ^ {2} >}{<   k >} - 1 = G _ {1} ^ {\prime} (1). \\ \end{array}
$$

We let $\mathcal { R } _ { 0 } = G _ { 1 } ^ { \prime } ( 1 )$ , the mean excess degree. This is the mean number of secondary cases caused by patient zero over the course of the outbreak and is the basic reproduction number as usually defined; the threshold for an epidemic is determined by $\mathcal { R } _ { 0 }$ . The quantity $< k _ { e } > = G _ { 1 } ^ { \prime } ( 1 )$ is sometimes written in the form 

$$
<   k _ {e} > = G _ {1} ^ {\prime} (1) = \frac {z _ {2}}{z _ {1}},
$$

where $\begin{array} { r } { z _ { 2 } = \sum _ { k = 1 } ^ { \infty } k ( k - 1 ) p _ { k } = < k ^ { 2 } > - < k > } \end{array}$ is the mean number of second = neighbors of a random vertex. We note that $\mathcal { R } _ { 0 }$ depends not only on the mean degree but also on its variance. 

Our next goal is to calculate the probability that the infection will die out and will not develop into a major epidemic, proceeding in two steps. First we find the probability that a secondary infected vertex (a vertex which has been infected by another vertex in the population) will not spark a major epidemic. The computations are performed on a branching approximation to an actual epidemic valid only at the beginning of the epidemic. In an actual epidemic some contacts are “wasted” on individuals who have already been infected. 

Suppose that the secondary infected vertex has excess degree $j$ . We let $z _ { n }$ denote the probability that this infection dies out within the next n generations. For the infection to die out in n generations each of the $j$ secondary infections coming from the initial secondary infected vertex must die out in $( n - 1 )$ generations. The probability of this is $z _ { n - 1 }$ for each secondary infection, and the probability that all secondary infections will die out in $( n - 1 )$ generations is $z _ { n - 1 } ^ { j }$ . Now $z _ { n }$ is the sum over j of these probabilities, weighted by the probability $q _ { j }$ of j secondary infections. Thus 

$$
z _ {n} = \sum_ {j = 0} ^ {\infty} q _ {j} z _ {n - 1} ^ {j} = G _ {1} (z _ {n - 1}), \quad z _ {0} = 0.
$$

We assume $G _ { 1 } ( 0 ) \geq 0$ so that there is an interval $0 < z \le w$ on which $G _ { 1 } ( z ) \geq$ z; w is the smallest positive solution of $z = G _ { 1 } ( z )$ and $z _ { n } < w . \operatorname { I f } G _ { 1 } ( 0 ) = 0$ , then $q _ { 0 } = 0$ , and $p _ { 1 } = 0$ . Thus the assumption $G _ { 1 } ( 0 ) > 0$ is that the contact graph has no vertices with only one edge. 

The sequence $z _ { n }$ is an increasing sequence and has a limit $z _ { \infty }$ , which is the probability that this infection will die out eventually. Then $z _ { \infty }$ is the limit as $n \to \infty$ of the solution of the difference equation 

$$
z _ {n} = G _ {1} (z _ {n - 1}), \quad z _ {0} = 0.
$$

Thus $z _ { \infty }$ must be an equilibrium of this difference equation, that is, a solution of $z = G _ { 1 } ( z )$ . Since w is the smallest positive solution of $z = G _ { 1 } ( z ) , z \leq G _ { 1 } ( z ) \leq$ $G _ { 1 } ( w ) = w$ for $0 \leq z \leq w$ . It follows by induction that 

$$
z _ {n} \leq w, n = 0, 1, \dots \infty .
$$

From this we deduce that 

$$
z _ {\infty} = w.
$$

The equation $G _ { 1 } ( z ) = z$ has a root $z = 1$ since $G _ { 1 } ( 1 ) = 1$ . Because the function $G _ { 1 } ( z ) - z$ has a positive second derivative, its derivative $G _ { 1 } ^ { \prime } ( z ) - 1$ is increasing and can have at most one zero. This implies that the equation $G _ { 1 } ( z ) = z$ has at most two roots in $0 \leq z \leq 1 . \mathrm { I f } \mathcal { R } _ { 0 } < 1$ the function $G _ { 1 } ( z ) - z$ has a negative first derivative 

$$
G _ {1} ^ {\prime} (z) - 1 \leq G _ {1} ^ {\prime} (1) - 1 = \mathscr {R} _ {0} - 1 <   0
$$

and the equation $G _ { 1 } ( z ) = z$ has only one root, namely $z = 1$ . On the other hand, if $\mathcal { R } _ { 0 } > 1$ the function $G _ { 1 } ( z ) - z$ is positive for $z = 0$ and negative near $z = 1$ since it is zero at $z = 1$ and its derivative is positive for $z < 1$ and z near 1. Thus in this case the equation $G _ { 1 } ( z ) = z$ has a second root $z _ { \infty } < 1$ . 

This root $z _ { \infty }$ is the probability that an infection transmitted along one of the edges at the initial secondary vertex will die out, and this probability is independent of the excess degree of the initial secondary vertex. It is also the probability that an infection originating outside the population, such as an infection brought into the population under study from outside, will die out. 

Next, we calculate the probability that an infection originating at a primary infected vertex, such as an infection introduced by a visitor from outside the population under study, will die out. The probability that the disease outbreak will die out eventually is the sum over k of the probabilities that the initial infection in a vertex of degree k will die out, weighted by the degree distribution $\{ p _ { k } \}$ of the original infection, and this is 

$$
\sum_ {k = 0} ^ {\infty} p _ {k} z _ {\infty} ^ {k} = G _ {0} (z _ {\infty}).
$$

To summarize this analysis, we see that if $\mathcal { R } _ { 0 } ~ < ~ 1$ , the probability that the infection will die out is 1. On the other hand, if $\mathcal { R } _ { 0 } > 1$ , there is a solution $z _ { \infty } < 1$ of 

$$
G _ {1} (z) = z
$$

and there is a probability $1 - G _ { 0 } ( z _ { \infty } ) > 0$ that the infection will persist, and will lead to an epidemic. However, there is a positive probability $G _ { 0 } ( z _ { \infty } )$ that the infection will increase initially but will produce only a minor outbreak and will die out before triggering a major epidemic. This distinction between a minor outbreak and a major epidemic, and the result that if $\mathcal { R } _ { 0 } > 1$ , there may be only a minor outbreak and not a major epidemic are aspects of stochastic models not reflected in deterministic models. 

If contacts between members of the population are random, corresponding to the assumption of mass action in the transmission of disease, then the probabilities $p _ { k }$ are given by the Poisson distribution 

$$
p _ {k} = \frac {e ^ {- c} c ^ {k}}{k !}
$$

for some constant c [9, pp. 142–143]. The generating function for the Poisson distribution is $e ^ { c ( z - 1 ) }$ . Then $G _ { 1 } ( z ) = G _ { 0 } ( z )$ , and $\mathcal { R } _ { 0 } = c$ , so that 

$$
G _ {1} (z) = G _ {0} (z) = e ^ {\mathcal {R} _ {0} (z - 1)}.
$$

The commonly observed situation that most infectives do not pass on infection but there are a few “super-spreading events” [35] corresponds to a probability distribution that is quite different from a Poisson distribution, and could give a quite different probability that an epidemic will occur. For example, if $\mathcal { R } _ { 0 } ~ = ~ 2 . 5$ the assumption of a Poisson distribution gives $z _ { \infty } = 0 . 1 0 7$ and $G _ { 0 } ( z _ { \infty } ) = 0 . 1 0 7$ , so that the probability of an epidemic is 0.893. The assumption that nine out of ten infectives do not transmit infection while the tenth transmits 25 infections gives 

$$
G _ {0} (z) = (z ^ {2 5} + 9) / 1 0, \quad G _ {1} (z) = z ^ {2 4}, \quad z _ {\infty} = 0, \quad G _ {0} (z _ {\infty}) = 0. 9,
$$

from which we see that the probability of an epidemic is 0.1. Another example, possibly more realistic, is to assume that a fraction (1 p) of the population follows a Poisson distribution with constant r while the remaining fraction p consists of super-spreaders each of whom makes L contacts. This would give a generating function 

$$
G _ {0} (z) = (1 - p) e ^ {r (z - 1)} + p z ^ {L}
$$

$$
G _ {1} (z) = \frac {r (1 - p) e ^ {r (z - 1)} + p L z ^ {L - 1}}{r (1 - p) + p L},
$$

and 

$$
\mathcal {R} _ {0} = \frac {r ^ {2} (1 - p) + p L (L - 1)}{r (1 - p) + p L}.
$$

For example, if r = 2.2, L = 10, p = 0.01, numerical simulation gives 

$$
\mathscr {R} _ {0} = 2. 5, \quad z _ {\infty} = 0. 1 4 6,
$$

so that the probability of an epidemic is 0.849. 

These examples demonstrate that the probability of a major epidemic depends strongly on the nature of the contact network. Simulations suggest that for a given value of the basic reproduction number the Poisson distribution is the one with the maximum probability of a major epidemic. 

It has been observed that in many situations there is a small number of long range connections in the graph, allowing rapid spread of infection. There is a high degree of clustering (some vertices with many edges) and there are short path lengths. Such a situation may arise if a disease is spread to a distant location by an air traveler. This type of network is called a small world network. Long range connections in a network can increase the likelihood of an epidemic dramatically. 

## 4.1.1 Transmissibility

Contacts do not necessarily transmit infection. For each contact between individual of whom one has been infected and the other is susceptible, there is a probability that infection will actually be transmitted. This probability depends on such factors as the closeness of the contact, the infectivity of the member who has been infected, and the susceptibility of the susceptible member. We assume that there is a mean probability T , called the transmissibility, of transmission of infection. The transmissibility depends on the rate of contacts, the probability that a contact will transmit infection, the duration time of the infection, and the susceptibility. Until now we have assumed that all contacts transmit infection, that is, that T 1. 

In this section, we will continue to assume that there is a network describing the contacts between members of the population whose degree distribution is given by the generating function $G _ { 0 } ( z )$ , but we will assume in addition that there is a mean transmissibility T . 

When disease begins in a network, it spreads to some of the vertices of the network. Edges that are infected during a disease outbreak are called occupied, and the size of the disease outbreak is the cluster of vertices connected to the initial vertex by a continuous chain of occupied edges. 

The probability that exactly m infections are transmitted by an infective vertex of degree k is 

$$
\binom {k} {m} T ^ {m} (1 - T) ^ {k - m}.
$$

We define ${ \cal { T } } _ { 0 } ( z , T )$ be the generating function for the distribution of the number of occupied edges attached to a randomly chosen vertex, which is the same as the distribution of the infections transmitted by a randomly chosen individual for any (fixed) transmissibility T . Then 

$$
\begin{array}{l} \Gamma_ {0} (z, T) = \sum_ {m = 0} ^ {\infty} \left[ \sum_ {k = m} ^ {\infty} p _ {k} \binom {k} {m} T ^ {m} (1 - T) ^ {(k - m)} \right] z ^ {m} \\ = \sum_ {k = 0} ^ {\infty} p _ {k} \left[ \sum_ {m = 0} ^ {k} \binom {k} {m} (z T) ^ {m} (1 - T) ^ {(k - m)} \right] \tag {4.3} \\ = \sum_ {k = 0} ^ {\infty} p _ {k} [ z T + (1 - T) ] ^ {k} = G _ {0} (1 + (z - 1) T). \\ \end{array}
$$

In this calculation we have used the binomial theorem to see that 

$$
\sum_ {m = 0} ^ {k} \binom {k} {m} (z T) ^ {m} (1 - T) ^ {(k - m)} = [ z T + (1 - T) ] ^ {k}.
$$

Note that 

$$
\Gamma_ {0} (0, T) = G _ {0} (1 - T), \quad \Gamma_ {0} (1, T) = G _ {0} (1) = 1, \quad \Gamma_ {0} ^ {\prime} (z, T) = T G _ {0} ^ {\prime} (1 + (z - 1) T).
$$

For secondary infections we need the generating function ${ \cal { T } } _ { 1 } ( z , T )$ for the distribution of occupied edges leaving a vertex reached by following a randomly chosen edge. This is obtained from the excess degree distribution in the same way, 

$$
\Gamma_ {1} (z, T) = G _ {1} (1 + (z - 1) T)
$$

and 

$$
\Gamma_ {1} (0, T) = G _ {1} (1 - T), \quad \Gamma_ {1} (1, T) = G _ {1} (1) = 1, \quad \Gamma_ {1} ^ {\prime} (z, T) = T G _ {1} ^ {\prime} (1 + (z - 1) T).
$$

The basic reproduction number is now 

$$
\mathcal {R} _ {0} = \Gamma_ {1} ^ {\prime} (1, T) = T G _ {1} ^ {\prime} (1).
$$

The calculation of the probability that the infection will die out and will not develop into a major epidemic follows the same lines as the argument for $T = 1$ . The result is that if $\mathcal { R } _ { 0 } = T G _ { 1 } ^ { \prime } ( 1 ) < 1$ , the probability that the infection will die out is 1. If $\mathcal { R } _ { 0 } > 1$ there is a solution $z _ { \infty } ( T ) < 1$ of 

$$
\Gamma_ {1} (z, T) = z,
$$

and a probability $1 - \varGamma _ { 0 } ( z _ { \infty } ( T ) , T ) > 0$ that the infection will persist, and will lead to an epidemic. However, there is a positive probability $\begin{array} { r } { { \cal { T } } _ { 1 } ( z _ { \infty } ( T ) , T ) } \end{array}$ that the infection will increase initially but will produce only a minor outbreak and will die out before triggering a major epidemic. 

Another interpretation of the basic reproduction number is that there is a critical transmissibility $T _ { c }$ defined by 

$$
T _ {c} G _ {1} ^ {\prime} (1) = 1.
$$

In other words, the critical transmissibility is the transmissibility that makes the basic reproduction number equal to 1. If the mean transmissibility can be decreased below the critical transmissibility, then an epidemic can be prevented. 

The measures used to try to control an epidemic may include contact interventions, that is, measures affecting the network such as avoidance of public gatherings and rearrangement of the patterns of interaction between caregivers and patients in a hospital, and transmission interventions such as careful hand washing or face masks to decrease the probability that a contact will lead to disease transmission. 

## 4.2 Network and Compartmental Epidemic Models

Compartmental models for epidemics are not suitable for describing the beginning of a disease outbreak because they assume that all members of a population are equally likely to make contact with a very small number of infectives. Thus, as we have seen in the preceding section, stochastic branching process models are better descriptions of the beginning of an epidemic. They allow the possibility that even if a disease outbreak has a reproduction number greater than 1, it may be only a minor outbreak and may not develop into a major epidemic. One possible approach to a more realistic description of an epidemic would be to use a branching process model initially and then make a transition to a compartmental model when the epidemic has become established and there are enough infectives that mass action mixing in the population is a reasonable approximation. Another approach would be to continue to use a network model throughout the course of the epidemic. In this section we shall indicate how a compartmental approach and a network approach are related. The development is taken from [30, 31, 43]. 

We assume that there is a known static configuration model (CM) network in which the probability that a node u has degree $k _ { u }$ is $P ( k _ { u } )$ . We let $G _ { 0 } ( z )$ denote the probability generating function of the degree distribution, 

$$
G _ {0} (z) = \sum_ {k = 0} ^ {\infty} p _ {k} z ^ {k},
$$

with mean degree $\langle k \rangle = G _ { 0 } ^ { \prime } ( 1 )$ . 

The per-edge contact rate from an infected node is assumed to be $\beta ,$ and it is assumed that infected nodes recover at a rate α. We use an edge-based compartmental model because the probability that a random neighbor is infected is not necessarily the same as the probability that a random individual is infected. We let $S ( t )$ denote the fraction of nodes that are susceptible at time t, $I ( t )$ the fraction of nodes that are infective at time t, and $R ( t )$ the fraction of nodes that are recovered at time t . It is easy to write an equation for $R ^ { \prime }$ , the rate at which infectives recover. If we know $S ( t )$ , we can find $I ( t )$ , because a decrease in S gives a corresponding increase in I . Since 

$$
S (t) + I (t) + R (t) = 1,
$$

we need only find the probability that a randomly selected node is susceptible. 

We assume that the hazard of infection for a susceptible node u is proportional to the degree $k _ { u }$ of the node. Each contact is represented by an edge of the network joining u to a neighboring node. We let $\varphi _ { I }$ denote the probability that this neighbor is infective. Then the per-edge hazard of infection is 

$$
\lambda_ {E} = \beta \varphi_ {I}.
$$

Assuming that edges are independent, u’s hazard of infection at time t is 

$$
\lambda_ {u} (t) = k _ {u} \lambda_ {E} (t) = k _ {u} \beta \varphi_ {I} (t).
$$

Consider a randomly selected node u and let $\theta ( t )$ be the probability that a random neighbor has not transmitted infection to u at time t . Then the probability that u is susceptible is $\theta ^ { k _ { u } }$ . Averaging over all nodes, we see that the probability that a random node u is susceptible is 

$$
S (t) = \sum_ {k = 0} ^ {\infty} P (k) [ \theta (t) ] ^ {k} = G _ {0} (\theta (t)). \tag {4.4}
$$

We break θ into three parts, 

$$
\theta = \varphi_ {S} + \varphi_ {I} + \varphi_ {R},
$$

with $\varphi _ { S }$ the probability that a random neighbor v of $u$ is susceptible, $\varphi _ { I }$ the probability that a random neighbor v of u is infective but has not transmitted infection to $u ,$ and $\varphi _ { R }$ the probability that a random neighbor v has recovered without transmitting infection to u. Then the probability that v has transmitted infection to u is $1 - \theta$ . 

Since infected neighbors recover at rate α, the flux from $\varphi _ { I }$ to $\varphi _ { R }$ is $\alpha \varphi _ { I }$ . Thus 

$$
\varphi_ {R} ^ {\prime} = \alpha \varphi_ {I}.
$$

It is easy to see from this that 

$$
R ^ {\prime} = \alpha I. \tag {4.5}
$$

Since edges from infected neighbors transmit infection at rate $\beta$ , the flux from $\varphi _ { I }$ to $( 1 - \theta )$ is $\beta \varphi _ { I }$ . Thus 

$$
\theta^ {\prime} = - \beta \varphi_ {I}. \tag {4.6}
$$

To obtain $\varphi _ { I } ^ { \prime }$ we need the flux into and out of the $\varphi _ { I }$ compartment. The incoming flux from $\varphi _ { S }$ results from infection of the neighbor. The outgoing flux to $\varphi _ { R }$ corresponds to recovery of the neighbor without having transmitted infection, and the outgoing flux to $( 1 - \theta )$ corresponds to transmission without recovery. The total outgoing flux is $( \alpha + \beta ) \varphi _ { I }$ . 

To determine the flux from $\varphi _ { S }$ to $\varphi _ { I }$ , we need the rate at which a neighbor changes from susceptible to infective. Consider a random neighbor $v$ of $u ;$ the probability that v has degree $k$ is $k p ( k ) / \langle k \rangle$ . Since there are $( k - 1 )$ neighbors of $v$ that could have infected $v ,$ the probability that v is susceptible is $\theta ^ { k - 1 }$ . Averaging over all $k ,$ , we see that the probability that a random neighbor v of u is susceptible is 

$$
\varphi_ {S} = \sum_ {k = 0} ^ {\infty} \frac {k p (k)}{\langle k \rangle} \theta^ {k - 1} = \frac {G _ {0} ^ {\prime} (\theta)}{G _ {0} ^ {\prime} (1)}. \tag {4.7}
$$

To calculate $\varphi _ { R }$ , we note that the flux from $\varphi _ { I }$ to $\varphi _ { R }$ and the flux from $\varphi _ { I }$ to $( 1 - \theta )$ are proportional with proportionality constant $\alpha / \beta$ . Since both $\varphi _ { R }$ and $( 1 - \theta )$ start at zero, 

$$
\varphi_ {R} = \frac {\alpha}{\beta} (1 - \theta). \tag {4.8}
$$

Now, using (4.6)–(4.8), and 

$$
\varphi_ {I} = \theta - \varphi_ {S} - \varphi_ {R},
$$

we obtain 

$$
\theta^ {\prime} = - \beta \varphi_ {I} = - \beta \theta + \beta \varphi_ {S} + \beta \varphi_ {R} = - \beta \theta + \beta \frac {G _ {0} ^ {\prime} (\theta)}{G _ {0} ^ {\prime} (1)} + \alpha (1 - \theta). \tag {4.9}
$$

We now have a dynamic model consisting of Eqs. (4.4), (4.5), (4.9), and $S + I +$ $R = 1$ . We wish to show a relationship between this set of equations and the simple Kermack–McKendrick compartmental model (4.1). In order to accomplish this, we need only show under what conditions we would have $S ^ { \prime } = - \beta S I$ . 

Differentiating (4.4) and using (4.6), we obtain 

$$
S ^ {\prime} = G _ {0} ^ {\prime} (\theta) \theta^ {\prime} = - G _ {0} ^ {\prime} (\theta) \beta \varphi_ {I}.
$$

Consider a large population with N members, each making $C \le N - 1$ contacts, so that 

$$
S = \theta^ {C}, G _ {0} ^ {\prime} (\theta) = \frac {C S}{\theta} S ^ {\prime} (\theta),
$$

and 

$$
S ^ {\prime} = - \beta C S \frac {\varphi_ {I}}{\theta}.
$$

We now let $C \to \infty$ (which implies $N \to \infty )$ in such a way that 

$$
\hat {\beta} = \beta C
$$

remains constant. Then 

$$
S ^ {\prime} = - \hat {\beta} \frac {\varphi_ {I}}{\theta}.
$$

We will now show that 

$$
\frac {\varphi_ {I}}{\theta} \approx 1,
$$

and this will yield the desired approximation 

$$
S ^ {\prime} = - \hat {\beta} S I. \tag {4.10}
$$

The probability that an edge to a randomly chosen node has not transmitted infection is $\theta$ (assuming that the given target node cannot transmit infection), and the probability that in addition it is connected to an infected node is $\varphi _ { I }$ . Because ${ \hat { \beta } } = \beta C$ is constant and therefore bounded as C grows, only a fraction no greater than a constant multiple of $I / C$ of edges to the target node may have transmitted infection from a node that is still infected. For large values of C, ϕI is approximately I . Similarly, $\theta$ is approximately 1 as $C  \infty$ . Thus $\varphi _ { I } / \theta \approx I$ as $C  \infty$ . This gives the desired approximate equation for S. The result remains valid if all degrees are close to the average degree as the average degree grows. 

The edge-based compartmental modeling approach that we have used can be generalized in several ways. For example, heterogeneity of mixing can be included. In general, one would expect that early infections would be in individuals having more contacts, and thus that an epidemic would develop more rapidly than a mass action compartmental model would predict. When contact duration is significant, as would be the case in sexually transmitted diseases, an individual with a contact would play no further role in disease transmission until a new contact is made, and this can be incorporated in a network model. 

The network approach to disease modeling is a rapidly developing field of study, and there will undoubtedly be fundamental developments in our understanding of the modeling of disease transmission. Some useful references are [6, 27–29, 32– 34, 39] 

In the remainder of this chapter, we assume that we are in an epidemic situation following a disease outbreak that has been modeled initially by a branching process. Thus we return to the study of compartmental models. We will study models having more compartmental structure than the simple Kermack–McKendrick $S I R$ epidemic model (4.1). 

## 4.3 More Complicated Epidemic Models

## 4.3.1 Exposed Periods

In many infectious diseases there is an exposed period after the transmission of infection from susceptibles to potentially infective members but before these potential infectives develop symptoms and can transmit infection. To incorporate an exposed period with mean exposed period $1 /  \kappa$ we add an exposed class E and use compartments S, E, I, R and total population size $N = S + E + I + R$ to give a generalization of the epidemic model (4.1) 

$$
S ^ {\prime} = - \beta S I
$$

$$
E ^ {\prime} = \beta S I - \kappa E \tag {4.11}
$$

$$
I ^ {\prime} = \kappa E - \alpha I.
$$

A flow chart is shown in Fig. 4.1. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/cff4803c71c555c9d12c3b8eff8e19244fa96ab1dd2a88774c486d960a2574fb.jpg)



Fig. 4.1 Flow chart for the SEIR model (4.11)


In this model there are two infected compartments, namely E and I with different infectivities. The parameter $\beta$ represents the rate of effective contacts. The infectivity of a member of E is zero, and therefore contacts between members of S and members of E do not produce new infections. The analysis of this model is similar to the analysis of (4.1), but with I replaced by $E + I$ . That is, instead of using the number of infectives as one of the variables we use the total number of infected members, whether or not they are capable of transmitting infection. 

For the model (4.11) it is no longer possible to distinguish whether there is an epidemic or not by determining whether the number of infectives grows or decreases initially. A more general characterization is given by whether the equilibrium with all members of the population susceptible is unstable (epidemic) or asymptotically stable (no epidemic). We will use a situation in which the disease-free equilibrium is unstable as our definition of an epidemic. 

For the model (4.11), the matrix of the linearization at the equilibrium ${ \boldsymbol { S } } =$ $N , E = 0 , I = 0$ is 

$$
\left[ \begin{array}{c c c} 0 & 0 & - \beta N \\ 0 & - \kappa & \beta N \\ 0 & \kappa & - \alpha \end{array} \right].
$$

The eigenvalues of this matrix are zero and the eigenvalues of the $2 \times 2$ matrix are 

$$
\left[ \begin{array}{c c} - \kappa & \beta N \\ \kappa & - \alpha \end{array} \right].
$$

The zero eigenvalue corresponds to movement along the line of equilibria. The other two eigenvalues have negative real part, corresponding to stability of the equilibrium with respect to solutions starting near the equilibrium but not on the line of equilibria, and failure of an epidemic to develop (since the trace of the matrix is negative) if and only if the determinant of the matrix is positive. The determinant is $\kappa ( \alpha - \beta N )$ , and this is positive if and only if $\mathcal { R } _ { 0 } < 1$ . 

If there is an epidemic, the initial exponential growth rate is the largest eigenvalue of the matrix, and this is the largest root of the quadratic characteristic equation 

$$
\lambda^ {2} + (\alpha + \kappa) \lambda - \kappa (\beta N - \alpha) = 0.
$$

Since the constant term in this equation is negative if $\mathcal { R } _ { 0 } > 1$ , there is one negative and one positive root, and the positive root is 

$$
\lambda = \frac {- (\alpha + \kappa) + \sqrt {(\alpha - \kappa) ^ {2} + 4 \kappa \beta N}}{2}.
$$

This is the initial exponential growth rate; note that it is not the same as the initial exponential growth rate for the SI R model (4.1). The effect of an exposed period is to decrease the initial exponential growth rate. 

## 4.3.2 A Treatment Model

One form of treatment that is possible for some diseases is vaccination to protect against infection before the beginning of an epidemic. For example, this approach is commonly used for protection against annual influenza outbreaks. A simple way to model this would be to reduce the total population size by the fraction of the population protected against infection. 

In reality such inoculations are only partly effective, decreasing the rate of infection and also decreasing infectivity if a vaccinated person does become infected. This may be modeled by dividing the population into two groups with different model parameters which would require some assumptions about the mixing between the two groups. This is not difficult but we will not explore this direction until Chap. 5 on heterogeneous mixing. 

If there is a treatment for infection once a person has been infected, this may be modeled by supposing that a fraction γ per unit time of infectives is selected for treatment, and that treatment reduces infectivity by a fraction δ. Thus effective contacts between members of S and members of T would produce only δ new infections per contact. Suppose that the rate of removal from the treated class is η. This leads to the SI T R model, where T is the treatment class, given by 

$$
S ^ {\prime} = - \beta S [ I + \delta T ]
$$

$$
I ^ {\prime} = \beta S [ I + \delta T ] - (\alpha + \gamma) I \tag {4.12}
$$

$$
T ^ {\prime} = \gamma I - \eta T.
$$

A flow chart is shown in Fig. 4.2. 

It is reasonable to assume that treatment does not slow recovery, so that $\eta \geq \alpha$ . Also, since the total time in the infectious and treatment stages should not be greater than the mean infective period, we should expect that 

$$
\frac {1}{\alpha} \geq \frac {1}{\gamma} + \frac {1}{\eta}.
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/bfedd6aba9851a0af357402a4010702066c3a155ffa0242046decd22253af626.jpg)



Fig. 4.2 Flow chart for the SI T R model (4.12)


It is not difficult to prove, much as was done for the model (4.1) that 

$$
S _ {\infty} = \lim _ {t \to \infty} S (t) > 0, \quad \lim _ {t \to \infty} I (t) = \lim _ {t \to \infty} T (t) = 0.
$$

In order to calculate the basic reproduction number, we may argue that an infective in a totally susceptible population causes $\beta N$ new infections in unit time, and the mean time spent in the infective compartment is $1 / ( \alpha + \gamma )$ . In addition, a fraction $\gamma / ( \alpha + \gamma )$ of infectives are treated. While in the treatment stage the number of new infections caused in unit time is $\delta \beta N$ , and the mean time in the treatment class is $1 / \eta$ . Thus $\mathcal { R } _ { 0 }$ is 

$$
\mathcal {R} _ {0} = \frac {\beta N}{\alpha + \gamma} + \frac {\gamma}{\alpha + \gamma} \frac {\delta \beta N}{\eta}. \tag {4.13}
$$

It is also possible to establish the final size relation (4.2) by means very similar to those used for the simple model (4.1). We integrate the first equation of (4.12) to obtain 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \int_ {0} ^ {\infty} \beta [ I (t) + \delta T (t) ] d t.
$$

Integration of the third equation of (4.12) gives 

$$
\gamma \int_ {0} ^ {\infty} I (t) d t = \eta \int_ {0} ^ {\infty} T (t) d t.
$$

Integration of the sum of the first two equations of (4.12) gives 

$$
N - S _ {\infty} = (\alpha + \gamma) \int_ {0} ^ {\infty} I (t) d t.
$$

Combination of these three equations and (4.13) gives (4.2). 

For the model (4.12), the matrix of the linearization at the equilibrium ${ \boldsymbol { S } } =$ $N , I = 0 , T = 0$ is 

$$
\left[ \begin{array}{c c c} 0 & - \beta N & - \delta \beta N \\ 0 & \beta N - (\alpha + \gamma) & \delta \beta N \\ 0 & \gamma & - \eta \end{array} \right].
$$

The eigenvalues of this matrix are zero and the eigenvalues of the $2 \times 2$ matrix are 

$$
\left[ \begin{array}{c c} \beta N - (\alpha + \gamma) & \delta \beta N \\ \gamma & - \eta \end{array} \right].
$$

The nonzero eigenvalues have negative real part, corresponding to stability of the equilibrium and failure of an epidemic to develop if and only if the determinant of the matrix is positive and the trace is negative. The determinant is 

$$
- \beta N (\eta + \delta \gamma) + \eta (\alpha + \gamma),
$$

which is positive if and only if $\mathcal { R } _ { 0 } < 1$ , and this condition implies that the trace is negative. 

If there is an epidemic, the initial exponential growth rate is the largest eigenvalue of the matrix, and this is the largest root of the quadratic characteristic equation 

$$
\lambda^ {2} + [ \beta N - (\alpha + \gamma + \eta) ] \lambda + \beta N (\eta + \delta \gamma) - \eta (\alpha + \gamma) = 0.
$$

Since the constant term in this equation is negative if $\mathcal { R } _ { 0 } > 1$ , there is one negative and one positive root, and the positive root is the initial exponential growth rate. Notice that this rate depends on the treatment rate. 

## 4.3.3 An Influenza Model

In some diseases, such as influenza, at the end of a stage individuals may proceed to one of two stages. There is a latent period after which a fraction $p$ of latent individuals L proceeds to an infective stage I , while the remaining fraction $( 1 - p )$ proceeds to an asymptomatic stage A, with infectivity reduced by a factor δ and a different period $1 / \eta$ . The influenza model of [3, 5] is 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/8861fe7a6558292ee87a6f03b4cae8deeef433e82c5211720e40eeadd36faa80.jpg)



Fig. 4.3 Flowchart for the influenza model (4.14)


$$
S ^ {\prime} = - \beta S [ I + \delta A ]
$$

$$
\begin{array}{l} L ^ {\prime} = \beta S [ I + \delta A ] - \kappa L \\ I ^ {\prime} = \dots = I \end{array} \tag {4.14}
$$

$$
I ^ {\prime} = p \kappa L - \alpha I
$$

$$
A ^ {\prime} = (1 - p) \kappa L - \eta A
$$

and 

$$
\mathcal {R} _ {0} = \beta N \left[ \frac {p}{\alpha} + \frac {\delta (1 - p)}{\eta} \right].
$$

A flow chart is shown in Fig. 4.3. 

The same approach used in earlier examples leads to the same final size relation (4.2). 

The model (4.14) is an example of a differential infectivity model. In such models, also used in the study of HIV/AIDS [23], individuals enter a specific group when they become infected and stay in that group over the course of the infection. Different groups may have different parameter values. For example, for influenza infective and asymptomatic members may have different infectivities and different periods of stay in the respective stages. 

## 4.3.4 A Quarantine–Isolation Model

For an outbreak of a new disease, where no vaccine is available, isolation of diagnosed infectives and quarantine of people who are suspected of having been infected (usually by tracing of contacts of diagnosed infectives) are the only control measures available. We formulate a model to describe the course of an epidemic, originally introduced for modeling the SARS epidemic of 2002–2003 [19], when control measures are begun under the assumptions: 

1. Exposed members may be infective with infectivity reduced by a factor $\varepsilon _ { E } , 0 \leq$ $\varepsilon _ { E } < 1$ . 

2. Exposed members who are not isolated become infective at rate $\kappa _ { E }$ 

3. We introduce a class Q of quarantined members and a class J of isolated (hospitalized) members and exposed members are quarantined at a proportional rate $\gamma _ { Q }$ in unit time (in practice, a quarantine will also be applied to many susceptibles, but we ignore this in the model). Quarantine is not perfect, but reduces the contact rate by a factor $\varepsilon _ { Q }$ . The effect of this assumption is that some susceptibles make fewer contacts than the model assumes. 

4. Infectives are diagnosed at a proportional rate $\gamma _ { J }$ per unit time and isolated. Isolation is imperfect, and there may be transmission of disease by isolated members, with an infectivity factor of $\varepsilon _ { J }$ . 

5. Quarantined members are monitored and when they develop symptoms at rate $\kappa _ { Q }$ they are isolated immediately. 

6. Infectives leave the infective class at rate $\alpha _ { I }$ and isolated members leave the isolated class at rate $\alpha _ { J }$ . 

These assumptions lead to the SEQI J R model [19] 

$$
S ^ {\prime} = - \beta S [ \varepsilon_ {E} E + \varepsilon_ {E} \varepsilon_ {Q} Q + I + \varepsilon_ {J} J ]
$$

$$
E ^ {\prime} = \beta S [ \varepsilon_ {E} E + \varepsilon_ {E} \varepsilon_ {Q} Q + I + \varepsilon_ {J} J ] - (\kappa_ {E} + \gamma_ {Q}) E
$$

$$
Q ^ {\prime} = \gamma_ {Q} E - \kappa_ {J} Q \tag {4.15}
$$

$$
I ^ {\prime} = \kappa_ {E} E - (\alpha_ {I} + \gamma_ {J}) I
$$

$$
J ^ {\prime} = \kappa_ {Q} Q + \gamma_ {J} I - \alpha_ {J} J.
$$

The model before control measures are begun is the special case 

$$
\gamma_ {Q} = \gamma_ {J} = \kappa_ {Q} = \alpha_ {J} = 0, Q = J = 0
$$

of (4.15). It is the same as (4.11). 

A flow chart is shown in Fig. 4.4. 

We define the control reproduction number $\mathcal { R } _ { c }$ to be the number of secondary infections caused by a single infective in a population consisting only of susceptibles with the control measures in place. It is analogous to the basic reproduction number but instead of describing the very beginning of the disease outbreak it describes the beginning of the recognition of the epidemic. The basic reproduction number is the value of the control reproduction number with 

$$
\gamma_ {Q} = \gamma_ {J} = \kappa_ {Q} = \alpha_ {J} = 0.
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/ee223e9b7b1c4969a27f6095ba73d7a5809f8ca4db6995011596c7c9e412f03f.jpg)



Fig. 4.4 Flowchart for the SEQI J R model (4.15)


We have already calculated $\mathcal { R } _ { 0 }$ for (4.11) and we may calculate $\mathcal { R } _ { c }$ in the same way but using the full model with quarantined and isolated classes. We obtain 

$$
\mathcal {R} _ {c} = \frac {\beta N \varepsilon_ {E}}{D _ {1}} + \frac {\beta N \kappa_ {E}}{D _ {1} D _ {2}} + \frac {\varepsilon_ {Q} \beta N \varepsilon_ {E} \gamma_ {Q}}{D _ {1} \kappa_ {Q}} + \frac {\varepsilon_ {J} \beta N \kappa_ {E} \gamma_ {J}}{\alpha_ {J} D _ {1} D _ {2}} + \frac {\varepsilon_ {J} \beta N \gamma_ {Q}}{\alpha_ {J} D _ {1}},
$$

where $D _ { 1 } = \gamma _ { Q } + \kappa _ { E }$ and $D _ { 2 } = \gamma _ { J } + \alpha _ { I }$ . 

Each term of $\mathcal { R } _ { c }$ has an epidemiological interpretation. The mean duration in E is $1 / D _ { 1 }$ with contact rate $\beta \varepsilon _ { E }$ , giving a contribution to $\mathcal { R } _ { c }$ of $\beta N \varepsilon _ { E } / D _ { 1 }$ . A fraction $\kappa _ { E } / D _ { 1 }$ goes from E to I , with contact rate $\beta$ and mean duration $1 / D _ { 2 }$ , giving a contribution of $\beta N \kappa _ { E } / D _ { 1 } D _ { 2 }$ . A fraction $\gamma _ { Q } / D _ { 1 }$ goes from E to $Q .$ , with contact rate $\varepsilon _ { E } \varepsilon _ { Q } \beta$ and mean duration $1 / \kappa _ { Q }$ , giving a contribution of $\varepsilon _ { E } \varepsilon _ { Q } \beta N \gamma _ { Q } / D _ { 1 } \kappa _ { Q }$ . A fraction $\kappa _ { E } \gamma _ { J } / D _ { 1 } D _ { 2 }$ goes from $E$ to I to J , with a contact rate of $\varepsilon _ { J } \beta$ and a mean duration of $1 / \alpha _ { J }$ , giving a contribution of $\varepsilon _ { J } \beta N \kappa _ { E } \gamma _ { J } / \alpha _ { J } D _ { 1 } D _ { 2 }$ . Finally, a fraction $\gamma _ { Q } / D _ { 1 }$ goes from $E$ to $Q$ to J with a contact rate of $\varepsilon _ { J } \beta$ and a mean duration of $1 / \alpha _ { J }$ giving a contribution of $\varepsilon _ { J } \beta N \gamma _ { Q } / D _ { 1 } \alpha _ { J }$ . The sum of these individual contributions gives $\mathcal { R } _ { c }$ . 

In the model (4.15) the parameters $\gamma _ { Q }$ and $\gamma _ { J }$ are control parameters which may be chosen in the attempt to manage the epidemic. The parameters $\epsilon _ { Q }$ and $\epsilon _ { J }$ depend on the strictness of the quarantine and isolation processes and are thus also control measures in a sense. The other parameters of the model are specific to the disease being studied. While they are not variable, their measurements are subject to experimental error. 

The linearization of (4.15) at the disease-free equilibrium $( N , 0 , 0 , 0 , 0 )$ has matrix 

$$
\left[ \begin{array}{c c c c} \epsilon_ {E} \beta N - (\kappa_ {E} + \gamma_ {Q}) & \varepsilon_ {E} \varepsilon_ {Q} \beta & \beta N & \varepsilon_ {J} \beta N \\ \gamma_ {Q} & - \kappa_ {Q} & 0 & 0 \\ \kappa_ {E} & 0 & - (\alpha_ {I} + \gamma_ {J}) & 0 \\ 0 & \kappa_ {Q} & \gamma_ {J} & - \alpha_ {J} \end{array} \right].
$$

The corresponding characteristic equation is a fourth degree polynomial equation whose leading coefficient is 1 and whose constant term is a positive constant multiple of $1 - \mathcal { R } _ { c }$ , thus positive if $\mathcal { R } _ { c } ~ < ~ 1$ and negative if $\mathcal { R } _ { c } > 1 . \mathrm { ~ I f ~ } \mathcal { R } _ { c } > 1$ there is a positive eigenvalue, corresponding to an initial exponential growth rate of solutions of (4.15). If $\mathcal { R } _ { c } ~ < ~ 1$ it is possible to show that all eigenvalues of the coefficient matrix have negative real part, and thus solutions of (4.15) die out exponentially [42]. 

In order to show that analogues of the relation (4.2) and $S _ { \infty } > 0$ derived for the model (4.1) are valid for the management model (4.15), we begin by integrating the equations for $S + E , Q , I , J $ , of (4.15) with respect to t from $t = 0 \mathrm { t o } t = \infty$ , using the initial conditions 

$$
S (0) + E (0) = N (0) = N, \qquad Q (0) = I (0) = J (0) = 0.
$$

We continue by integrating the equation for S and then an argument similar to the one used for (4.1) but technically more complicated may be used to show that $S _ { \infty } >$ 0 for the treatment model (4.15) and also to establish the final size relation 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {c} \left[ 1 - \frac {S _ {\infty}}{N} \right].
$$

Thus the asymptotic behavior of the management model (4.15) is the same as that of the simpler model (4.1). 

In the various compartmental models that we have studied, there are significant common features. This suggests that compartmental models can be put into a more general framework. In fact, this general framework is the age of infection epidemic model originally introduced by Kermack and McKendrick in [24]. We will explore this generalization in Sect. 4.5. 

## 4.4 An SIR Model with a General Infectious Period Distribution

In the simple model (4.1) studied in Sect. 2.4 we have assumed that the infective period is exponentially distributed . Now let us consider an SI R epidemic model in a population of constant size N with mass action incidence in which $P ( s )$ is the fraction of individuals who are still infective at time s after having become infected. The model is 

$$
\begin{array}{l} S ^ {\prime} = - \beta S (t) I (t) \\ I (t) = I _ {0} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (t - s) ] P (s) d s. \tag {4.16} \\ \end{array}
$$

Here, $I _ { 0 } ( t )$ is the number of individuals infective initially at $t = 0$ who are still infective at time t. Then 

$$
I _ {0} (t) \leq (N - S _ {0}) P (t),
$$

because if all initial infectives were newly infected we would have equality in this relation, and if some initial infectives had been infected before the starting time $t = 0$ , they would recover earlier. 

We assume that $P ( s )$ is a non-negative, non-increasing function with $P ( 0 ) =$ 1. We assume also that the mean infective period $\begin{array} { r } { \int _ { 0 } ^ { \infty } \bar { P } ( s ) d s } \end{array}$ is finite. Since a single infective causes $\beta N$ new infections in unit time and $\textstyle { \int _ { 0 } ^ { \infty } P ( s ) d s }$ is the mean infective period, it is easy to calculate 

$$
\mathcal {R} _ {0} = \beta N \int_ {0} ^ {\infty} P (s) d s.
$$

In this model it would be possible to assume that not all contacts by infectives with susceptibles lead to new infections. This could be achieved by incorporating a reduction factor $\delta$ in the equation for S and in the distribution P . Since S is a nonnegative decreasing function, it follows as for (4.1) that $S ( t )$ decreases to a limit $S _ { \infty }$ as $t \to \infty$ , but we must proceed differently to show that $I ( t ) \to 0$ . This will follow if we can prove that $\textstyle \int _ { 0 } ^ { t } I ( s )$ ds is bounded as $t \to \infty$ . We have 

$$
\begin{array}{l} \int_ {0} ^ {t} I (s) d s = \int_ {0} ^ {t} I _ {0} (s) d s + \int_ {0} ^ {t} \int_ {0} ^ {s} [ - S ^ {\prime} (s - u) ] P (u) d u d s \\ \leq (N - S _ {0}) \int_ {0} ^ {t} P (s) d s + \int_ {0} ^ {t} \int_ {u} ^ {t} [ - S ^ {\prime} (s - u) ] d s P (u) d u \\ \leq (N - S _ {0}) \int_ {0} ^ {t} P (s) d s + \int_ {0} ^ {t} [ S _ {0} - S (t - u) ] P (s) d s \\ \leq N \int_ {0} ^ {t} P (s) d s. \\ \end{array}
$$

Since $\textstyle { \int _ { 0 } ^ { \infty } P ( s ) d s }$ is assumed to be finite, it follows that $\textstyle \int _ { 0 } ^ { t } I ( s )$ ds is bounded, and thence that $I ( t ) \to 0$ . 

Now integration of the first equation in (4.16) from 0 to $\infty$ gives 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \beta \int_ {0} ^ {\infty} I (s) d s <   \infty ,
$$

and this shows that $S _ { \infty } > 0$ . 

If all initially infected individuals are newly infected, so that $I _ { 0 } ( t ) \ = \ ( N \ -$ $S _ { 0 } ) P ( t )$ , integration of the second equation of (4.16) gives 

$$
\begin{array}{l} \int_ {0} ^ {\infty} I (s) d s = \int_ {0} ^ {\infty} I _ {0} (s) d s + \int_ {0} ^ {\infty} \int_ {0} ^ {s} [ - S ^ {\prime} (s - u) ] P (u) d u d s \\ = (N - S _ {0}) \int_ {0} ^ {\infty} P (u) d u + \int_ {0} ^ {\infty} \int_ {u} ^ {\infty} [ - S ^ {\prime} (s - u) ] d s P (u) d u \\ = (N - S _ {0}) \int_ {0} ^ {\infty} P (u) d u + \int_ {0} ^ {\infty} [ S _ {0} - S _ {\infty} ] P (u) d u \\ = (N - S _ {\infty}) \int_ {0} ^ {\infty} P (u) d u \\ = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right], \\ \end{array}
$$

and this is the final size relation, identical to (4.2). If there are individuals who were infected before time $t = 0$ , a positive term 

$$
(N - S _ {0}) \int_ {0} ^ {\infty} P (t) d t - \int_ {0} ^ {\infty} I _ {0} (t) d t
$$

must be subtracted from the right side of this equation. 

The generalization to arbitrary infective periods in this section is a component of the age of infection epidemic model of [24], which also incorporates general compartmental structures. The examples of this section and the previous section are all special cases of the age of infection model. 

## 4.5 The Age of Infection Epidemic Model

The general epidemic model described by Kermack and McKendrick [24] included a dependence of infectivity on the time since becoming infected (age of infection). We let $S ( t )$ denote the number of susceptibles at time t and let $\varphi ( t )$ be the total infectivity at time t, defined as the sum of products of the number of infected members with each infection age and the mean infectivity for that infection age. We assume that on average, members of the population make a constant number $\beta N$ of contacts in unit time. We let $B ( s )$ be the fraction of infected members remaining infected at infection age s and let $\pi ( s )$ with $0 \leq \pi ( s ) \leq 1$ be the mean infectivity (if infected) at infection age s. Then we let 

$$
A (s) = \pi (s) B (s),
$$

the mean infectivity of members of the population with infection age s including those who are no longer infectious. Here, the factor π must include the probability that a contact will produce a new infection. We assume that there are no disease deaths, so that the total population size is a constant N. 

Since $- S ^ { \prime } ( t - s )$ is the number of new infections at time $( t - s )$ and $A ( s )$ is the remaining infectivity of these new infections at time t (infection age (s)), the total infectivity at time t is 

$$
\varphi (t) = \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - s) ] A (s) d s.
$$

It is assumed that the disease outbreak begins at time $t = 0 ,$ , so that $S ( u ) = N$ for $u \ : < 0$ . There may be a discontinuity in $S ( u )$ at $u = 0$ corresponding to an initial infective distribution. 

We may write the age of infection epidemic model as 

$$
S ^ {\prime} = - \beta S \varphi \tag {4.17}
$$

$$
\varphi (t) = \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - s) ] A (s) d s = \int_ {0} ^ {\infty} \beta S (t - s) \varphi (t - s) A (s) d s.
$$

The parameter $\beta$ continues to represent the rate of effective contacts, and the transmission probability is contained in $\varphi .$ . The basic reproduction number is 

$$
\mathcal {R} _ {0} = \beta N \int_ {0} ^ {\infty} A (s) d s. \tag {4.18}
$$

We may write the model in a single equation 

$$
S ^ {\prime} (t) = \beta S (t) \int_ {0} ^ {\infty} A (s) S ^ {\prime} (t - s) d s.
$$

There is an invasion criterion. Initially, in a fully susceptible population when $S ( t )$ is close to $S _ { 0 } = N$ , we may replace $S ( t )$ by its initial value N in this single equation, giving a linear equation. The condition that this linear equation have a solution $S ( t ) = N e ^ { r t }$ is 

$$
1 = \beta N \int_ {0} ^ {\infty} A (s) e ^ {- r s} d s. \tag {4.19}
$$

The result that the initial exponential growth rate in an epidemic is given by the solution of (4.19) was given in [20, 36] and later in [44]. It allows us to estimate the basic reproduction number for an epidemic, provided we know not only the mean infective period but also the distribution of infective periods. This result is valid for age of infection epidemic models, and thus is applicable to compartmental models that can be interpreted in an age of infection context, that is, provided we are able to calculate the infectivity function $A ( s )$ . 

Combination of the relations (4.18) and (4.19) gives a relation between the initial exponential growth rate r and the basic reproduction number $\mathcal { R } _ { 0 }$ , namely 

$$
\mathcal {R} _ {0} = \frac {\int_ {0} ^ {\infty} A (s) d s}{\int_ {0} ^ {\infty} e ^ {- r s} A (s) d s}.
$$

Then $\mathcal { R } _ { 0 } > 1$ if and only if $r > 0$ . 

This relation provides a means to estimate the basic reproduction number from measurements of the initial exponential growth rate provided the infectivity distribution is known. We define an epidemic as a situation in which for the model we have $r > 0 .$ , so that initially the solution grows exponentially. 

Division of the model equation (4.17) by S(t) and integration with respect to t from 0 to $\infty { \mathrm { g i v e s } }$ , with an interchange of order of integration gives 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \int_ {0} ^ {\infty} [ S (- s) - S _ {\infty} ] A (s) d s.
$$

Since we are assuming $S ( - s ) = N { \mathrm { ~ i f ~ } } s > 0$ , we have 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \int_ {0} ^ {\infty} [ N - S _ {\infty} ] A (s) d s,
$$

and then we obtain the final size relation 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right].
$$

The final size relation is sometimes presented in the form 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{S _ {0}} \right], \tag {4.20}
$$

see for example [4, 12, 22], since normally $S ( 0 ) ~ \approx ~ N$ . This form would also represent the final size relation for an epidemic started by someone outside the population under study, so that $S _ { 0 } = N , I _ { 0 } = 0$ . 

## 4.5.1 A General SEIR Model

We consider an SEIR model with general distributions of stay in both the exposed and infective period. The model is related to the model (3.31), which also includes births and natural deaths. Suppose the fraction of exposed individuals who are still in the exposed class s time units after being exposed is $P _ { E } ( s )$ and the fraction of individuals who are still in the infectious class s time units after entering the infectious class is $P _ { I } ( s )$ , with $P _ { E } ( s ) , P _ { I } ( s )$ non-negative, non-increasing functions such that 

$$
P _ {E} (0) = P _ {I} (0) = 1, \quad \int_ {0} ^ {\infty} P _ {E} (s) d s <   \infty , \quad \int_ {0} ^ {\infty} P _ {I} (s) d s <   \infty .
$$

Then $P _ { E }$ and $P _ { I }$ represent survival probabilities in the classes E and I , respectively. The probability density function for E, which will appear in the model, is 

$$
q (\tau) = - P _ {E} ^ {\prime} (\tau).
$$

We assume that $E _ { 0 }$ newly exposed members enter the exposed class at time $t = 0$ . Then 

$$
S ^ {\prime} = - \beta S I
$$

$$
E (t) = E _ {0} P _ {E} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (u) ] P _ {E} (t - u) d u.
$$

In this equation we are assuming that all effective contacts transmit infection. Differentiation of the equation for $E ( t )$ gives 

$$
E ^ {\prime} (t) = E _ {0} P _ {E} ^ {\prime} (t) - S ^ {\prime} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (u) ] P _ {E} ^ {\prime} (t - u) d u,
$$

and this shows that the input to the infectious stage at time t is 

$$
- E _ {0} P _ {E} ^ {\prime} (t) - \int_ {0} ^ {t} [ - S ^ {\prime} (u) ] P _ {E} ^ {\prime} (t - u) d u.
$$

If we assume that $S ^ { \prime } ( u ) = 0$ for $u < 0$ and that $S ^ { \prime } ( u )$ has a jump of $- E _ { 0 }$ at $u = 0$ , then we may write the equation for $E ( t )$ as 

$$
E (t) = \int_ {0} ^ {\infty} [ - S ^ {\prime} (s) ] P _ {E} (t - s) d s.
$$

From the equation for $E ( t )$ , we see that the output from E to I is 

$$
- E _ {0} P _ {E} ^ {\prime} (t) - \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] P _ {E} ^ {\prime} (t - s) d s = - \int_ {0} ^ {\infty} [ - S ^ {\prime} (s) ] P _ {E} ^ {\prime} (t - s) d s.
$$

Then 

$$
\begin{array}{l} I (t) = - \int_ {0} ^ {\infty} \int_ {0} ^ {\infty} S ^ {\prime} (s) P _ {E} ^ {\prime} (t - s - u) P _ {I} (u) d u d s \\ - \int_ {0} ^ {\infty} \int_ {0} ^ {\infty} [ - S ^ {\prime} (s) ] P _ {E} ^ {\prime} (t - s - u) P _ {I} (u) d u S ^ {\prime} (s) d s. \\ \end{array}
$$

We now have 

$$
I (t) = \int_ {0} ^ {\infty} [ - S ^ {\prime} (s) ] A _ {I} (t - s) d s,
$$

with 

$$
A _ {I} (z) = - \int_ {0} ^ {\infty} P _ {E} ^ {\prime} (z - v) P _ {I} (v) d v.
$$

Then the model is 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I \\ E (t) = \int_ {0} ^ {\infty} [ - S ^ {\prime} (s) ] P _ {E} (t - s) d s \tag {4.21} \\ I (t) = \int_ {0} ^ {\infty} [ - S ^ {\prime} (s) ] A _ {I} (t - s) d s, \\ \end{array}
$$

which is in age of infection form with $\varPhi = I$ and $A ( z ) = A _ { I } ( z )$ . Then 

$$
\begin{array}{l} \mathscr {R} _ {0} = \beta N \int_ {0} ^ {\infty} A (z) d z \\ = - \beta N \int_ {0} ^ {\infty} \int_ {0} ^ {z} P _ {E} ^ {\prime} (z - u) P _ {I} (u) d u d z \tag {4.22} \\ = \beta N \int_ {0} ^ {\infty} P _ {I} (u) d u, \\ \end{array}
$$

using $\begin{array} { r } { - \int _ { 0 } ^ { \infty } P _ { E } ^ { \prime } ( v ) d v = P _ { E } ( 0 ) - P _ { E } ( \infty ) = 1 . } \end{array}$ 

The initial exponential growth rate of the general SEIR model (4.21) satisfies 

$$
\beta N \int_ {0} ^ {\infty} e ^ {- r s} \int_ {0} ^ {s} [ - P _ {E} ^ {\prime} (s - u) ] P _ {I} (u) d u d s = 1,
$$

which reduces to 

$$
\begin{array}{l} 1 = \beta N \int_ {0} ^ {\infty} q (v) e ^ {- r v} d v \int_ {0} ^ {\infty} e ^ {- r u} P _ {I} (u) d u \tag {4.23} \\ = \beta N \left[ 1 - r \int_ {0} ^ {\infty} e ^ {- r v} P _ {E} (v) d v \right] \int_ {0} ^ {\infty} e ^ {- r u} P _ {I} (u) d u, \\ \end{array}
$$

with the aid of integration by parts. 

It is important to remember that in this example we are assuming that effective contacts transmit new infections. We have not allowed for reductions in infectivity or susceptibility, but it would be possible to include these factors into the model. From (4.23) we see that the effect of an exposed period is to decrease the initial exponential growth rate. It also indicates that the result of using the relation (4.19) depends on knowledge of the compartmental structure of the model. 

## 4.5.2 A General Treatment Model

Consider the treatment model (4.12) of Sect. 4.3. We now extend this to an age of infection model with general infective and treatment staged distributions. Assume that the distribution of infective periods is given by $P _ { I } ( \tau )$ , and the distribution of periods in treatment is given by $P _ { T } ( \tau )$ . Then the SI T R model becomes 

$$
S ^ {\prime} (t) = - \beta S (t) [ I (t) + \delta T (t) ]
$$

$$
I (t) = I _ {0} P _ {I} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (t - \sigma) ] e ^ {- \gamma \sigma} P _ {I} (\sigma) d \sigma \tag {4.24}
$$

$$
T (t) = \int_ {0} ^ {\infty} \gamma I (t - \sigma) P _ {T} (\sigma) d \sigma ,
$$

and 

$$
\varphi (t) = I (t) + \delta T (t).
$$

Assuming that $S ( u )$ has a jump of $- I _ { 0 }$ at $u = 0$ , we may write the equation for I as 

$$
I (t) = - \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - s) ] e ^ {- \gamma s} P _ {I} (s) d s.
$$

Substituting the expression for I into the equation for T , we obtain 

$$
\begin{array}{l} T (t) = \int_ {0} ^ {\infty} \gamma \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - s - \sigma) ] e ^ {- \gamma s} P _ {I} (s) P _ {T} (\sigma) d s d \sigma \\ = \int_ {0} ^ {\infty} \gamma \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - s - \sigma) ] P _ {T} (\sigma) d \sigma e ^ {- \gamma s} P _ {I} (s) d s \\ \end{array}
$$

$$
\begin{array}{l} = \int_ {0} ^ {\infty} \gamma \int_ {s} ^ {\infty} [ - S ^ {\prime} (t - v) ] P _ {T} (v - s) d v e ^ {- \gamma s} P _ {I} (s) d s \\ = \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - v) ] \gamma \int_ {0} ^ {v} P _ {T} (v - s) e ^ {- \gamma s} P _ {I} (s) d s d v \\ = \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - v) ] A (v) d v, \\ \end{array}
$$

with 

$$
A (v) = \int_ {0} ^ {v} \gamma P _ {T} (v - s) e ^ {- \gamma s} P _ {I} (s) d s.
$$

Writing 

$$
\varphi (t) = I (t) + \delta T (t),
$$

we now have the model (4.24) in age of infection form (without transmission probabilities), 

$$
\begin{array}{l} S ^ {\prime} (t) = - \beta S (t) \varphi (t) \\ \varphi (t) = - \int_ {0} ^ {\infty} [ - S ^ {\prime} (t - s) ] \left[ e ^ {- \gamma s} P _ {I} (s) + \delta A (s) \right] d s. \tag {4.25} \\ \end{array}
$$

From this we see that 

$$
\begin{array}{l} \mathscr {R} _ {0} = \beta N \int_ {0} ^ {\infty} \left[ e ^ {- \gamma s} P _ {I} (s) + \delta A (s) \right] d s \\ = \beta N \int_ {0} ^ {\infty} e ^ {- \gamma s} P _ {I} (s) d s + \beta N \delta \gamma \int_ {0} ^ {\infty} \int_ {0} ^ {s} P _ {T} (s - u) d u d s ]. \\ \end{array}
$$

With exponentially distributed infective and treatment periods, $\begin{array} { r l } { P _ { I } ( s ) } & { { } = } \end{array}$ $e ^ { - \alpha s } , P _ { T } ( s ) = e ^ { - \eta s }$ we calculate $\mathcal { R } _ { 0 }$ , obtaining 

$$
\begin{array}{l} \mathcal {R} _ {0} = \beta N \int_ {0} ^ {\infty} e ^ {- (\alpha + \gamma) \tau} d \tau \left[ 1 + \delta \gamma \int_ {0} ^ {\infty} e ^ {- \eta \tau} d \tau \right] \\ = \frac {\beta N}{\alpha + \gamma} \left[ 1 + \frac {\delta \gamma}{\eta} \right], \\ \end{array}
$$

the same result as (4.13). 

An arbitrary choice of treatment period distribution with mean $1 / \eta$ does not affect the quantity $\mathcal { R } _ { 0 }$ , but different infective period distributions may have a significant effect. For example, let us take $\gamma = 1$ and assume the mean infective period is 1. Then, with an exponential distribution, $P _ { I } ( \tau ) = e ^ { - \tau }$ , 

$$
\int_ {0} ^ {\infty} e ^ {- \tau} P (\tau) d \tau = \int_ {0} ^ {\infty} e ^ {- 2 \tau} d \tau = \frac {1}{2}.
$$

With an infective period of fixed length 1, 

$$
\int_ {0} ^ {\infty} e ^ {- \tau} P _ {I} (\tau) d \tau = \int_ {0} ^ {1} e ^ {- \tau} d \tau = (1 - e ^ {- 1}) = 0. 6 3 2.
$$

Thus a model with an infective period of fixed length would lead to a basic reproduction number more than 25% higher than a model with an exponentially distributed infective period that has the same mean. 

## 4.5.3 A General Quarantine/Isolation Epidemic Model

To cope with a disease outbreak for which there is no (as yet) known treatment, the only methods available are isolation of diagnosed infective and quarantine of suspected exposed members of the population. This approach was used during the SARS epidemic of 2003, and modeled in [19]. An SEIR model with general exposed and infective periods as well as quarantine and isolation has been analyzed in [47]. While the model in [47] was deterministic, the analysis was from a probabilistic point of view. Here we add quarantine and isolation to the model (4.21) and derive some of the results of [47] from a compartmental approach. The model is related to the model (3.42), which includes births and natural deaths, and is more general because it does not assume that quarantine and isolation are perfectly effective. 

We move members from the exposed class to a quarantine class Q at rate ψ and from the infective class to an isolated (hospitalized) class H at rate $\varphi .$ . For simplicity, we assume that both quarantine and isolation are perfectly effective, so that no infections are transmitted from either quarantined or isolated members. Then we need not include Q or H in the model unless we wish to track the number of individuals quarantined and isolated. We need only adjust the model (4.21) to include the removals. With quarantine but not yet isolation, the new equation for E is 

$$
E (t) = E _ {0} e ^ {- \psi t} P _ {E} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] e ^ {- \psi (t - s)} P _ {E} (t - s) d s.
$$

The input to I at time u becomes 

$$
E _ {0} q _ {E} (u) + \int_ {0} ^ {u} [ - S ^ {\prime} (\tau) ] e ^ {- \psi (u - \tau)} q _ {E} (u - \tau) d \tau .
$$

Now, I (t) is given by 

$$
\begin{array}{l} I (t) = E _ {0} \int_ {0} ^ {t} q _ {E} (u) e ^ {- \psi (t - u)} P _ {I} (t - u) d u \\ + E _ {0} \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] q _ {E} (u - s) E ^ {- \psi (u - s)} d s P _ {I} (t - u) d u. \\ \end{array}
$$

The first term in this expression may be written as $I _ { 0 } ( t )$ , and the second term may be simplified, using interchange of the order of integration in the iterated integral much as in the previous section, to yield 

$$
\int_ {0} ^ {t} [ - S ^ {\prime} (s) ] T (t - s) d s
$$

with 

$$
T (v) = \int_ {0} ^ {v} q _ {E} (y) e ^ {- \psi y} P _ {I} (v - y) d y.
$$

Then the model is 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I \\ E (t) = E _ {0} e ^ {- \psi t} P _ {E} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] e ^ {- \psi (t - s)} P _ {E} (t - s) d s \\ I (t) = I _ {0} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] T (t - s) d s. \\ \end{array}
$$

If we add isolation at a rate ϕ of infectives, we obtain 

$$
I (t) = e ^ {- \varphi t} I _ {0} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] e ^ {- \varphi (t - s)} T (t - s) d s,
$$

and the quarantine/isolation model is 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I \\ E (t) = E _ {0} e ^ {- \psi t} P _ {E} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (s) ] e ^ {- \psi (t - s)} P _ {E} (t - s) d s \tag {4.26} \\ I (t) = E _ {0} e ^ {- \varphi t} I _ {0} (t) + \int_ {0} ^ {t ^ {0}} [ - S ^ {\prime} (s) ] e ^ {- \varphi (t - s)} T (t - s) d s. \\ \end{array}
$$

The reproduction number is now a control reproduction number $\mathcal { R } _ { c } ( \psi , \varphi )$ , depending on the control parameters $\psi$ and $\varphi$ , 

$$
\begin{array}{l} \mathcal {R} _ {c} (\psi , \varphi) = \beta N \int_ {0} ^ {\infty} e ^ {- \varphi \tau} T (\tau) d \tau \\ = \beta N \int_ {0} ^ {\infty} e ^ {- \varphi \tau} E _ {0} \int_ {0} ^ {\tau} q (y) e ^ {- \psi y} P _ {I} (\tau - y) d y d \tau \\ = \beta N \int_ {0} ^ {\infty} e ^ {- \psi y} q (y) \left[ \int_ {y} ^ {\infty} e ^ {- \varphi (\tau - y)} P _ {I} (\tau - y) d \tau \right] d y \\ = \beta N \int_ {0} ^ {\infty} e ^ {- \psi y} q (y) d y \int_ {0} ^ {\infty} e ^ {- \varphi u} P _ {I} (u) d u. \\ \end{array}
$$

If we know the functions $P _ { I }$ and $q ,$ we may calculate the sensitivity of $\mathcal { R } _ { 0 }$ to the quarantine and isolation rates and thus compare quarantine and isolation as management strategies. In [47], this expression is written in terms of the Laplace transforms of $q$ and $P _ { I }$ , 

$$
\mathcal {R} _ {c} (\psi , \varphi) = \beta N E _ {0} \mathcal {L} _ {q} (\psi) \mathcal {L} _ {P _ {I}} (\varphi).
$$

By comparison of the mean infectivity functions of the models (4.21) and (4.26), we see that the effect of quarantine and/or isolation on an SEIR model is to decrease the initial exponential growth rate. 

As suggested by these examples, there are general methods for calculation of integrals involving A(τ ) without the necessity of calculating the function A explicitly [7, 48]. 

A naive view of epidemic models suggests that if we know the basic reproduction number, we can determine the size of an epidemic. There are several quite different problems with this view. We have seen that estimation of the basic reproduction number from early observed data depends on the structure of the model being assumed. For example, if there is an exposed period, the initial exponential growth rate is less than if infected individuals become infectious immediately but this does not affect the basic reproduction number. This implies that an estimate of the basic reproduction number from the initial exponential growth rate will be too small. A second problem is that in an epidemic, early data may be incomplete and inaccurate, and its use may lead to a poor estimate of the reproduction number. 

## 4.6 The Gamma Distribution

There is ample evidence that exponential distributions of stay in compartments are much less realistic than gamma distributions [16, 17, 26, 46]. This has already been suggested in Sect. 3.6. A gamma distribution $P ( \tau )$ with parameter n and period 1/α can be represented as a sequence of n exponential distributions $P _ { i } ( \tau )$ with period $1 / n \alpha$ . Thus an $S I R$ epidemic model with a gamma distribution for the infectious period may be represented by the system 

$$
S ^ {\prime} = - \beta S I
$$

$$
I _ {1} ^ {\prime} = \beta S I - n \alpha I _ {1} \tag {4.27}
$$

$$
I _ {j} ^ {\prime} = n \alpha I _ {j - 1} - n \alpha I _ {j}, \quad j = 2, 3, \dots , n.
$$

We may view this as an age of infection model 

$$
S ^ {\prime} = - \beta S I
$$

$$
I (t) = I _ {0} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (t - \tau) ] P (\tau) d \tau , \tag {4.28}
$$

in which $P ( \tau )$ represents the fraction of infectives with infection age τ . 

To use the age of infection interpretation, we need to determine the kernel $P ( \tau )$ in order to calculate its integral. We let $u _ { k } ( \tau )$ be the fraction of infected members with infection age τ in the k-th subinterval. Then 

$$
\begin{array}{l} u _ {1} ^ {\prime} = - n \alpha u _ {1}, \quad u _ {1} (0) = 1 \\ \text {,} \end{array} \tag {4.29}
$$

$$
u _ {j} ^ {\prime} = n \alpha u _ {j - 1} - n \alpha u _ {j}, \quad u _ {j} (0) = 0, \quad j = 2, 3, \dots , n.
$$

It is easy to solve this system of differential equations recursively, and we obtain 

$$
u _ {k} (\tau) = \frac {(n \alpha) ^ {k - 1}}{(k - 1) !} \tau^ {k - 1} e ^ {- n \alpha \tau}, \quad k = 1 \dots n.
$$

This gives the desired kernel 

$$
P (\tau) = \sum_ {k = 1} ^ {n} u _ {k} (\tau) = \sum_ {k = 1} ^ {n} \frac {(n \alpha) ^ {(k - 1)}}{(k - 1) !} \tau^ {(k - 1)} e ^ {- n \alpha \tau}. \tag {4.30}
$$

In order to evaluate the integral $\textstyle \int _ { 0 } ^ { \infty } P ( \tau ) d \tau$ , we start with the integration formula 

$$
\int t ^ {k - 1} e ^ {- c t} d t = - \frac {1}{c} t ^ {k - 1} e ^ {- c t} + \frac {k - 1}{c} \int t ^ {k - 2} e ^ {- c t} d t, \tag {4.31}
$$

obtained using integration by parts; then with limits of integration 0 to $\infty$ and $c =$ nα, we obtain 

$$
\int_ {0} ^ {\infty} t ^ {k - 1} e ^ {- n \alpha t} d t = \frac {k - 1}{n \alpha} \int_ {0} ^ {\infty} t ^ {k - 2} e ^ {- n \alpha t} d t,
$$

which leads by induction to the formula 

$$
\int_ {0} ^ {\infty} t ^ {k - 1} e ^ {- n \alpha t} d t = \frac {(k - 1) !}{(n \alpha) ^ {k - 1}} \cdot \frac {1}{n \alpha}. \tag {4.32}
$$

Combination of (4.30), (4.32) gives 

$$
\int_ {0} ^ {\infty} P (\tau) d \tau = \sum_ {k = 1} ^ {n} \frac {1}{n \alpha} = \frac {1}{\alpha}.
$$

The mean infective period is independent of n but a larger value of n gives a smaller variance. The limiting case as $n  \infty$ is an infective period of fixed length 1/α. In practice, infective periods often are bunched closer together than would be predicted by an exponential distribution and it is common to choose a gamma distribution with a value of n corresponding to the observed distribution. 

We will need to use the value of $\textstyle \int _ { 0 } ^ { \infty } e ^ { - \lambda \tau } P ( \tau ) d \tau$ . To evaluate this integral, we have 

$$
\int_ {0} ^ {\infty} e ^ {- \lambda \tau} u _ {k} (\tau) d \tau = \frac {(n \alpha) ^ {k - 1}}{(k - 1) !} \int_ {0} ^ {\infty} \tau^ {k - 1} e ^ {- (\lambda + n \alpha) \tau} d \tau = \frac {(n \alpha) ^ {k - 1}}{(\lambda + n \alpha) ^ {k}},
$$

using (4.32). From this we obtain 

$$
\int_ {0} ^ {\infty} e ^ {- \lambda \tau} P (\tau) d \tau = \sum_ {k = 0} ^ {n - 1} \frac {(n \alpha) ^ {k - 1}}{(\lambda + n \alpha) ^ {k}} = \frac {1}{(\lambda + n \alpha)} \sum_ {k = 0} ^ {n - 1} \frac {n \alpha}{\lambda + n \alpha}. \tag {4.33}
$$

But this is a geometric series, whose sum is 

$$
\frac {1}{\lambda + n \alpha} \frac {1 - \left(\frac {n \alpha}{\lambda + n \alpha}\right) ^ {n}}{1 - \frac {n \alpha}{\lambda + n \alpha}} = \frac {1 - \left(\frac {n \alpha}{\lambda + n \alpha}\right) ^ {n}}{\lambda}.
$$

We now have the formula 

$$
\int_ {0} ^ {\infty} e ^ {- \lambda \tau} P (\tau) d \tau = \frac {1 - \left(\frac {n \alpha}{\lambda + n \alpha}\right) ^ {n}}{\lambda}. \tag {4.34}
$$

The limiting case as $n \to \infty$ of a gamma distribution is a distribution 

$$
P (t) = 1 \quad (0 \leq t \leq \frac {1}{\alpha}), \quad P (t) = 0 \quad (t > \frac {1}{\alpha}),
$$

for which 

$$
\int_ {0} ^ {\infty} e ^ {- \lambda t} P (t) d t = \frac {1 - e ^ {- \lambda / \alpha}}{\gamma}.
$$

Then 

$$
\frac {1}{\alpha + \frac {\gamma}{n}} <   \frac {1 - e ^ {- \gamma / \alpha}}{\lambda}. \tag {4.35}
$$

It is possible to show, by use of L’Hôpital’s rule that 

$$
\lim _ {n \to \infty} \left(\frac {n \alpha}{\lambda + n \alpha}\right) ^ {n} = e ^ {- \lambda / \alpha},
$$

and this implies that the limiting value as $n  \infty$ of the integral $\textstyle \int _ { 0 } ^ { \infty } e ^ { - \lambda \tau } P ( \tau ) d \tau$ for a gamma distribution with parameter n is the integral corresponding to the limiting distribution. 

## 4.7 Interpretation of Data and Parametrization

We have carried out qualitative analysis of various disease transmission models in terms of the parameters of the model. In modeling a specific disease outbreak it is necessary to assign values to the parameters of the model in order to estimate the effects of possible control measures. For an epidemic disease, we ignore demographic quantities. If we have information about the duration of infection in an individual, we need to estimate the contact rate and the rates of transitions between compartments in order to be able to estimate the basic reproduction number and then to analyze the qualitative behavior of the model. However, different assumptions about the compartmental structure of the model and about the transition rates between compartments would lead to different results. 

In an epidemic situation we may be able to estimate the contact rate from the initial exponential growth rate. For example, in the simplest possible epidemic model, the Kermack–McKendrick model with no disease deaths 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I \\ I ^ {\prime} = 0, S I = I \end{array} \tag {4.36}
$$

$$
I ^ {\prime} = \beta S I - \alpha I
$$

initially (or as long as S remains close to the total population size $N ) , I ( t )$ may be approximated by $e ^ { \bar { ( \beta N - \alpha ) t } }$ . Thus the initial exponential growth rate is approximately $\beta N - \alpha$ . If we plot observed values of log $I ( t )$ as a function of t, we would expect that the graph, after an initial stochastic phase would be a straight line, until $S / N$ becomes significantly less than 1 and the graph bends downward. 

Let us suppose that we can estimate the slope r of this line. Then the value of r gives an estimate of $\beta N - \alpha$ . From this, we obtain an estimate for the basic reproduction number 

$$
\mathcal {R} _ {0} = \frac {\beta N}{\alpha} \approx \frac {r + \alpha}{\alpha} = \frac {r}{\alpha} + 1. \tag {4.37}
$$

## 4.7.1 Models of SI R Type

In the simple Kermack–McKendrick epidemic model (4.36) we assume that the infectious period is exponentially distributed with mean $1 / \alpha$ . In practice, the period of stay in the infectious class usually has a smaller variance than an exponential distribution. 

As we have suggested in Sect. 4.6, a gamma distribution is likely to be much more realistic than an exponential distribution for stay in a compartment [16, 17, 26, 46]. A gamma distribution $P ( \tau )$ with parameter n and period $1 / \alpha$ can be represented as a sequence of n exponential distributions $P _ { i } ( \tau )$ with period $1 / n \alpha$ . Then an SI R epidemic model with a gamma distribution for the infectious period may be represented by the system (4.27). We used the formula (4.30) to evaluate the integrals 

$$
\int_ {0} ^ {\infty} P (\tau) d \tau = \sum_ {k = 1} ^ {n} \frac {1}{n \alpha} = \frac {1}{\alpha},
$$

and 

$$
\int_ {0} ^ {\infty} e ^ {- r \tau} P (\tau) d \tau = \frac {1 - \left(\frac {n \alpha}{r + n \alpha}\right) ^ {n}}{r}. \tag {4.38}
$$

The limiting case as $n \to \infty$ of a gamma distribution is a distribution 

$$
P (t) = 1 \quad (0 \leq t \leq \frac {1}{\alpha}), \quad P (t) = 0 \quad (t > \frac {1}{\alpha}),
$$

for which 

$$
\int_ {0} ^ {\infty} e ^ {- r t} P (t) d t = \frac {1 - e ^ {- r / \alpha}}{\alpha}.
$$

Then 

$$
\frac {1}{\alpha + \frac {\gamma}{n}} <   \frac {1 - e ^ {- \gamma / \alpha}}{r}. \tag {4.39}
$$

It is possible to show, by use of L’Hôpital’s rule that 

$$
\lim _ {n \to \infty} \left(\frac {n \alpha}{r + n \alpha}\right) ^ {n} = e ^ {- r / \alpha},
$$

and this implies that the limiting value as $n  \infty$ of the integral $\textstyle \int _ { 0 } ^ { \infty } e ^ { - r \tau } P ( \tau ) d \tau$ for a gamma distribution with parameter n is the integral corresponding to the limiting distribution. 

As we have seen in Sect. 4.4, for an age of infection SI R model with an infectious period distribution given by a function $P ( \tau )$ , the basic reproduction number is given by 

$$
\mathcal {R} _ {0} = \beta N \int_ {0} ^ {\infty} P (\tau) d \tau , \tag {4.40}
$$

while the initial exponential growth rate λ satisfies 

$$
\beta N \int_ {0} ^ {\infty} e ^ {- r \tau} P (\tau) d \tau = 1. \tag {4.41}
$$

Elimination of $\beta N$ between the Eqs. (4.40) and (4.41) gives a formula for the basic reproduction number determined by the initial exponential growth rate r and the distribution $P ( \tau )$ , 

$$
\mathcal {R} _ {0} = \frac {\int_ {0} ^ {\infty} P (\tau) d \tau}{\int_ {0} ^ {\infty} e ^ {- r \tau} P (\tau) d \tau}. \tag {4.42}
$$

If we assume that the mean infective period $\textstyle \int _ { 0 } ^ { \infty } P ( \tau ) d \tau$ is known and the initial exponential growth rate can be measured, we may use the relation (4.42) to calculate the basic reproduction number for various choices of the infectious period distribution. As more information about the infectious period distribution becomes known, it is possible to obtain more refined estimates of the reproduction number. 

Thus, for example, the choice of an exponentially distributed infective period $P ( \tau ) = e ^ { - \alpha \tau }$ gives 

$$
\int_ {0} ^ {\infty} e ^ {- \lambda \tau} d \tau = \frac {1}{\lambda + \alpha}, \mathcal {R} _ {0} = 1 + \frac {r}{\alpha}.
$$

The choice of a fixed length infective period gives 

$$
r \int_ {0} ^ {\infty} e ^ {- r \tau} d \tau = \frac {1 - e ^ {- r / \alpha}}{r}, \quad \mathcal {R} _ {0} = / \alpha (1 - e ^ {- r / \alpha}).
$$

For a gamma distribution with parameter n, 

$$
\int_ {0} ^ {\infty} e ^ {- \tau} P (\tau) d \tau = 1 - \left(\frac {n \alpha}{r + n \alpha}\right) ^ {n}, \quad \mathcal {R} _ {0} = \frac {1}{1 - (\frac {n \alpha}{r + n \alpha}) ^ {n}}.
$$

## 4.7.2 Models of SEIR Type

Now suppose we assume a simple SEIR model, 

$$
S ^ {\prime} = - \beta S I
$$

$$
E ^ {\prime} = \beta S I - \kappa E \tag {4.43}
$$

$$
I ^ {\prime} = \kappa E - \alpha I.
$$

The exponential growth rate for this model is 

$$
r = \frac {- (\alpha + \kappa) + \sqrt {(\alpha - \kappa) ^ {2} + 4 \kappa \beta N}}{2},
$$

and this yields the estimate 

$$
\beta N = \alpha + \frac {r ^ {2}}{\kappa} + r \frac {\alpha + \kappa}{\kappa}. \tag {4.44}
$$

Observe that this estimate for $\beta N$ is larger than the estimate obtained for the SI R model and therefore the assumption of an SEIR model leads to a larger estimate than the SI R model for $\mathcal { R } _ { 0 } = \beta N / \alpha$ . A given exponential growth rate in an SEIR model corresponds to a larger reproduction number than in an SIR model. 

## Example 1

Consider the data given in Table 2.2 in Sect. 2.10 for reported H1N1 influenza cases in México. We plot log I (t) as a function of t, obtaining the graph shown in Fig. 4.5. This graph, after an initial stochastic phase, appears to exhibit linear growth from day 97 to day 117, with a slope of 0.22. The data is for influenza, which we assume to be described by and SEIR model with an exposed period of 1.9 days followed by an infectious period of 4.1 days. The relation (4.45) with the values 

$$
\alpha = 1 / 4. 1, \quad \kappa = 1 / 1. 9, \quad r = 0. 2 2
$$

yields $\beta = 0 . 6 5$ , and then $\mathcal { R } _ { 0 } = \beta / \alpha = 2 . 6 7$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/797310d71e8054985914612cd44a0162279437a9bfd98b1aec96d582c0ce112f.jpg)



Fig. 4.5 Influenza cases in Mexico


It is important to note that this estimate depends not only on the initial exponential growth rate but also on the compartmental structure assumed for the model and on the transition rates between compartments. 

We may write a general SEIR model in age of infection form, 

$$
S ^ {\prime} = - \beta S \varphi
$$

$$
\varphi (t) = \varphi_ {0} (t) + \int_ {0} ^ {t} \beta S (t - \tau) \varphi (t - \tau) A (\tau) d \tau ,
$$

where $A ( \tau )$ is the mean infectivity of an infected individual, whether exposed or infective, at infection age $\tau$ . 

If we separate infected individuals into exposed and infective, and think of an exposed period distribution $P _ { E }$ and an infectious period distribution $P _ { I }$ , the model is the SEIR model of Sect. 4.5.1 

$$
S ^ {\prime} = - \beta S I
$$

$$
E (t) = E _ {0} P _ {E} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (u) ] P _ {E} (t - u) d u \tag {4.45}
$$

$$
I (t) = I _ {0} (t) - \int_ {0} ^ {t} [ - S ^ {\prime} (u) ] \left[ \int_ {u} ^ {t} P _ {E} ^ {\prime} (v - u) P _ {I} (t - v) d v \right] d u.
$$

This is of age of infection form with mean infectivity 

$$
A (t - u) = - \int_ {u} ^ {t} P _ {E} ^ {\prime} (v - u) P _ {E} (t - v) d v
$$

and 

$$
\int_ {0} ^ {\infty} A (\tau) d \tau = \int_ {0} ^ {\infty} P _ {I} (\tau) d \tau .
$$

Also, 

$$
\begin{array}{l} \int_ {0} ^ {\infty} e ^ {- r \tau} A (\tau) d \tau = - \int_ {0} ^ {\infty} P _ {E} ^ {\prime} (v) e ^ {- r v} d v \int_ {0} ^ {\infty} e ^ {- r u} P _ {I} (u) d u \\ = \left[ 1 - r \int_ {0} ^ {\infty} e ^ {- r v} P _ {E} (v) d v \right] \int_ {0} ^ {\infty} e ^ {- r u} P _ {I} (u) d u, \\ \end{array}
$$

and we may use this relation to calculate $\mathcal { R } _ { 0 }$ for a variety of choices of $P _ { E }$ and $P _ { I }$ , including gamma distributions and periods of fixed length. 

With exponentially distributed exposed and infectious periods, we obtain 

$$
\mathcal {R} _ {0} = 1 + \frac {r}{\alpha} + \frac {r}{\kappa} + \frac {r ^ {2}}{\alpha \kappa},
$$

while for exposed and infective periods of fixed lengths we obtain 

$$
\mathcal {R} _ {0} = \frac {r e ^ {r / \kappa}}{\alpha (1 - e ^ {- r / \alpha})} > e ^ {r} / \kappa .
$$

It is possible to show that the basic reproduction number corresponding to fixed exposed and infective periods is always larger than the basic reproduction number corresponding to exponentially distributed exposed and infectious periods, and the basic reproduction number corresponding to exposed and infectious periods both having gamma distributions is between these two values. 

## 4.7.3 Mean Generation Time

In a simple epidemic model, if we know the contact rate and the infective period, then we may be able to determine the basic reproduction number. As we have seen in the previous section, knowledge of the initial exponential growth rate, which may sometimes be observed experimentally leads to information about the contact rate. Another quantity which may sometimes be observed experimentally, is the mean generation time, meaning roughly the mean time between a primary case and a secondary case caused by this primary case. This quantity has been given various definitions, not all equivalent. Another term often used to describe this idea is the serial interval. 

The mean generation time is defined [18, 40] as the mean time from infection to the onset of infectiousness. It may be estimated from data early in a disease outbreak [40, 44, 45]. If we assume that the rate of secondary infections caused by an individual is proportional to the infectiousness of the individual [37], then the rate of secondary infections caused at infection age τ is proportional to $A ( \tau )$ . This assumption would be valid only early in an epidemic when the depletion of the susceptible population would be negligible and the number of infectives is a sufficiently small fraction of the total population size that a susceptible is at risk of infection only from a single infective. Thus the distribution of new infections caused at infection age τ is 

$$
\frac {A (s)}{\int_ {0} ^ {\infty} A (s) d s},
$$

whose mean is 

$$
T _ {G} = \frac {\int_ {0} ^ {\infty} s A (s) d s}{\int_ {0} ^ {\infty} A (s) d s}, \tag {4.46}
$$

and this is the mean generation time. We should note that this describes the time interval between successive infections, but what may be observed is the time interval between development of clinical symptoms, which is not the same thing, but we may hope that it is a reasonable approximation. 

In order to calculate the mean generation time for the general SEIR model (4.45), we use (4.46) with 

$$
A (s) = A _ {I} (s) = - \int_ {0} ^ {s} P _ {E} ^ {\prime} (s - u) P _ {I} (u) d u.
$$

As we have seen in the calculations for the model (4.45), $\begin{array} { r l } { \int _ { 0 } ^ { \infty } A ( s ) d s } & { { } = } \end{array}$ $\int _ { 0 } ^ { \infty } P _ { I } ( s ) d s$ . We have also, 

$$
\int_ {0} ^ {\infty} s A (s) d s = - \int_ {0} ^ {\infty} \int_ {0} ^ {s} s P _ {E} ^ {\prime} (s - u) P _ {I} (u) d s d u \tag {4.47}
$$

$$
= - \int_ {0} ^ {\infty} \left[ \int_ {u} ^ {\infty} s P _ {E} ^ {\prime} (s - u) d s \right] P _ {I} (u) d u.
$$

But 

$$
- \int_ {u} ^ {\infty} s E _ {Q} ^ {\prime} (s - u) d s = - \int_ {0} ^ {\infty} (u + v) P _ {E} ^ {\prime} (v) d v = u + \int_ {0} ^ {\infty} P _ {E} (v) d v,
$$

using integration by parts. Thus (4.47) becomes 

$$
\int_ {0} ^ {\infty} s A (s) d s = \int_ {0} ^ {\infty} u P _ {I} (u) d u + \int_ {0} ^ {\infty} P _ {I} (u) d u \int_ {0} ^ {\infty} P _ {E} (v) d v.
$$

This shows that the mean generation time for the SEIR model (4.45) is 

$$
T _ {G} = \frac {\int_ {0} ^ {\infty} u P _ {I} (u) d u}{\int_ {0} ^ {\infty} P _ {I} (u) d u} + \int_ {0} ^ {\infty} P _ {E} (u) d u.
$$

Note that this is the sum of the mean period of stay in the exposed stage and a quantity depending on the infective period distribution. It is easy to calculate that in the case of an exponential distribution with mean $1 / \alpha$ this quantity is $1 / \alpha .$ , the mean infective period, while in the case of a constant infectious period of length $1 / \alpha$ this quantity is $1 / 2 \alpha$ , half the mean infective period. In general, for an SEIR model the mean generation time is equal to the sum of the mean exposed period and a quantity depending on the distribution of the infective period. 

It is convenient to define the mean exposed time $T _ { E }$ and the mean infective time $T _ { I }$ . For the general SEIR model (4.45) that we have been studying, we have 

$$
T _ {E} = \frac {1}{\kappa}, T _ {I} = \frac {1}{\alpha}.
$$

For exponentially distributed exposed and infective periods, 

$$
T _ {G} = T _ {E} + T _ {I},
$$

and we may write 

$$
\mathcal {R} _ {0} = 1 + r \frac {1}{\kappa} + r \frac {1}{\alpha} + r ^ {2} \frac {1}{\kappa \alpha} = 1 + r T _ {E} + r T _ {I} + r ^ {2} T _ {E} (T _ {G} - T _ {E}).
$$

For exposed and infective periods of fixed length, 

$$
T _ {G} = T _ {E} + \frac {1}{2} T _ {I},
$$

and we have 

$$
\mathcal {R} _ {0} = \frac {\frac {r}{\alpha} e ^ {r / \kappa}}{1 - e ^ {- r / \alpha}} = \frac {\frac {r}{\alpha} e ^ {r / \kappa + r / 2 \alpha}}{e ^ {r / 2 \alpha} - e ^ {- r / 2 \alpha}} = \frac {\frac {r}{\alpha} e ^ {r T _ {G}}}{2 \sinh (r / 2 \alpha)}.
$$

Since sinh $x > x$ for $x > 0$ , we obtain the bound 

$$
\mathcal {R} _ {0} <   e ^ {r T _ {G}}. \tag {4.48}
$$

For a model with an exposed period having a gamma distribution with parameter m and an infective period having a gamma distribution with parameter n it is possible to show that the corresponding reproduction number, which we denote by $\mathcal { R } _ { 0 } ^ { ( m , n ) }$ n) , is 

$$
\mathcal {R} _ {0} ^ {(m, n)} = \frac {r \left(\frac {r}{\kappa m} + 1\right) ^ {m}}{\alpha \left[ 1 - (\frac {r}{\alpha n} + 1) ^ {- n} \right]}. \tag {4.49}
$$

It is possible to show that $\mathcal { R } _ { 0 } ^ { ( m , n ) }$ is an increasing function of both m and n, and $m , n  \infty , \mathcal { R } _ { 0 } ^ { ( m , n ) }$ approaches the reproduction number corresponding to exposed and infective periods of fixed length. 

## 4.8 *Effect of Timing of Control Programs on Epidemic Final Size

To explore the influence of seasonally forced transmission in disease control and the epidemic final size of influenza, we consider an extension of the standard SIR epidemic model by incorporating a periodic function $c ( t )$ for the transmission rate as well as drug treatment and/or vaccination. 

When model parameters vary with time, analytic results on final size will be very difficult to obtain. Most results are based on numerical simulations. The example presented here with periodic transmission rate examines the potential negative effect of vaccination and/or treatment uses depending on the timing of implementation. These scenarios are based on the consideration that vaccines and antiviral drugs may not be available at the beginning of an epidemic. We focus on three important measures when assessing the effect of a control program: (a) peak size of the epidemic curve (the maximum number of infections during the course of a pandemic); (b) peak time (the time at which the peak occurs); and (c) final size (the total number of infections at the end of a pandemic). Main objectives of effective control strategies should include lowering the peak size to keep demand for facilities below available supply, lowering the final size to reduce morbidity, and delaying the peak to provide more time for response. 

Unlike in the case of constant parameters, where vaccination and treatment will always help reduce morbidity, the case of a periodic transmission rate $c ( t )$ may generate non-intuitive results. That is, the model can exhibit outcomes in which an increased use of vaccination or antiviral drugs will lead to a higher morbidity. To demonstrate this, we first consider the following epidemic model with timedependent infection rate 

$$
\frac {d S}{d t} = - c (t) \frac {S I}{N} \tag {4.50}
$$

$$
\frac {d I}{d t} = c (t) \frac {S I}{N} - \alpha I,
$$

where 

$$
c (t) = c _ {0} \bigl [ 1 + \epsilon \cos (2 \pi t / 3 6 5) \bigr ]
$$

with the initial conditions 

$$
S (t _ {0}) = (1 - \varphi_ {0}) (N - I _ {0}), I (t _ {0}) = I _ {0}, R (t _ {0}) = 0. \tag {4.51}
$$

The parameter $\epsilon$ denotes the magnitude of the seasonal forcing and the period is assumed to be 1 year. We do not include vaccinated individuals in the R class because the value of $R ( t )$ at the end of the disease outbreak will be used to measure the final epidemic size. Notice that the initial time $t _ { 0 }$ represents the time at which the vaccination program starts. Some simulation results are presented in Fig. 4.6. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/0dcd74b14f5f2c6a8d8e64876bae059dccb065cd48d7052c1fa7c4b4a4c4fc2e.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/eb02a53c61d026c3b24e649bf90e9bb956a86acb63ee9caea58717831792904c.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/d7ad61be7ce24d3acdfd6f1bbb31d6988ecc757047c55c575bf46fe1f361bc39.jpg)


$$
\pmb {t} _ {0} = 3 0
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/f15bb54dd8635dd810458239b1cbc4ca8beb3041ed4f595ae7d0d8626d9ccbc5.jpg)


$$
t _ {0} = 4 0
$$

Fig. 4.6 Plots of epidemic curves and cumulative infections for different $t _ { 0 }$ values. These plots show the dramatic effect that the start time of an epidemic $\mathbf { \rho } ( t _ { 0 } )$ can have on its progression in a periodic environment given by the SIR model (4.50) with initial conditions (4.51). From the plots in (a) and (c) we observe that when $t _ { 0 } = 3 0 ,$ , vaccination reduced both the peak size and the peak time although there is not much delay in the peak time. However, plots in (b) and (d) show that, although the size of the first epidemic peak is reduced, a second (and higher) peak is also generated. More significantly, the final epidemic size is increased, showing the sensitivity of the behavior of the epidemic to t0 

In Fig. 4.6, both the epidemic curve and curve representing the cumulative infections are plotted. For the transmission function $c ( t )$ , the parameter values used are those of an H1N1-like disease with $c _ { 0 } = 0 . 5$ and $\epsilon = 0 . 3 5$ . We assume $1 / \alpha = 3$ days. These values are also used in other figures except when specified differently. The figure shows two sets of simulations corresponding to two different times $t _ { 0 }$ of initial introduction of pathogens. One case is for $t _ { 0 } = 3 0$ and the other is for $t _ { 0 } = 4 0$ , and for demonstration purposes the vaccination level is chosen to be $\varphi _ { 0 } = 0 . 1$ . 

Some interesting observations can be made from Fig. 4.6. We can first compare the outcomes between the model without vaccination (the solid curves) and the model with vaccination (the dashed curves). It demonstrates the dependence of the model outcomes on the time of introduction $\left( t _ { 0 } \right)$ of initial infections. Particularly, we observe that although the peak and final sizes are both decreased for the case of $t _ { 0 } = 3 0$ , the case of $t _ { 0 } = 4 0$ differs significantly. Although the first wave is reduced, the second wave is also generated; and moreover, the final epidemic size is even higher than that without vaccination, demonstrating a scenario in which the use of vaccine may have an adverse effect. 

## 4.9 Directions for Generalization

A fundamental assumption in the model (4.1) is homogeneous mixing, that all individuals are equivalent in contacts. A more realistic approach would include separation of the population into subgroups with differences in behavior. For example, in many childhood diseases the contacts that transmit infection depend on the ages of the individuals, and a model should include a description of the rate of contact between individuals of different ages. Other heterogeneities that may be important include activity levels of different groups and spatial distribution of populations. Network models may be formulated to include heterogeneity of mixing, or more complicated compartmental models can be developed. 

An important question which should be kept in mind in the formulation of epidemic models is the extent to which the fundamental properties of the simple model (4.1) carry over to more elaborate models. 

## 4.10 Some Warnings

An actual epidemic differs considerably from the idealized model (4.1) or (4.17). Some notable differences are: 

1. When it is realized that an epidemic has begun, individuals are likely to modify their behavior by avoiding crowds to reduce their contacts and by being more careful about hygiene to reduce the risk that a contact will produce infection. 

2. If a vaccine is available for the disease which has broken out, public health measures will include vaccination of part of the population. Various vaccination 

strategies are possible, including vaccination of health care workers and other first line responders to the epidemic, vaccination of members of the population who have been in contact with diagnosed infectives, or vaccination of members of the population who live in close proximity to diagnosed infectives. 

3. Isolation may be imperfect; in-hospital transmission of infection was a major problem in the SARS epidemic. 

4. In the SARS epidemic of 2002–2003, in-hospital transmission of disease from patients to health care workers because of imperfect isolation accounted for many of the cases. This points to an essential heterogeneity in disease transmission which must be included whenever there is any risk of such transmission. 

## 4.11 *Project: A Discrete Model with Quarantine and Isolation

Project 1 This project concerns a general single-outbreak discrete epidemic model involving arbitrarily distributed stage-duration distributions for the latent and the infectious stages. Clarity is added to model derivation by making use of a probabilistic perspective. Hence, we let X and Y represent the time an individual spends in latent $( E , Q )$ and infectious (I, H ) classes, respectively. Similarly, we denote by Z the time at which an exposed individual is quarantined (from E to Q), and W the time at which an infected individual is isolated (from I to H ). X, Y , Z, and W must take values on $\{ 1 , 2 , 3 , \ldots \}$ and their dynamics are assumed to be governed by underlying probabilistic processes. It is understood that the distribution of waiting time in each of the above classes can be described by probability distributions associated with the random variables X, Y , Z, and W : 

$$
p _ {i} = \mathbb {P} (X > i) \text { probability   of   remaining   latent } i \text { steps   after   entering } E,
$$

$$
q _ {i} = \mathbb {P} (Y > i) \text { probability   of   remaining   infectious } i \text { steps   after   entering } I,
$$

$$
k _ {i} = \mathbb {P} (Z > i) \text { probability   of   not   quarantined } i \text { steps   after   entering } E,
$$

$$
l _ {i} = \mathbb {P} (W > i) \text {   probability   of   not   isolated   } i \text {   steps   after   entering   } I. \tag {4.52}
$$

Assume that $p _ { 0 } \ = \ q _ { 0 } \ = \ k _ { 0 } \ = \ l _ { 0 } \ = \ 1$ , meaning that the latency, infectious, quarantine , and isolation periods last at least one time step. For ease of description, we introduce the following notation: 

$$
A _ {n} \text {   the   input   to   } E \text {   at   time   } n \text {(new infections),}
$$

$$
B _ {n} \text {   the   input   to   } I \text {   at   time   } n,
$$

$$
C _ {n} \text {   the   input   to   } Q \text {   at   time   } n,
$$

$$
D _ {n} \text {   the   input   to   } H \text {   from   } Q \text {   at   time   } n,
$$

$$
F _ {n} (= B _ {n} + D _ {n}) \text {   the   total   input   to   infectious   class   at   time   } n.
$$

A transition diagram using the above notation is shown in Fig. 4.7. 


Fig. 4.7 Transition diagram for the model with arbitrarily distributed stage durations


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/2d43d4b580cf0013a871ea1e1d1f15dbf5e52b63dc675c11dcf18271ac45ffbc.jpg)


Using the above notation the model with arbitrarily distributed stage durations can be written as: 

$$
S _ {n + 1} = S _ {n} G _ {n}, \qquad G _ {n} = e ^ {- \frac {\beta}{N} [ I _ {n} + (1 - \rho) H _ {n} ]},
$$

$$
E _ {n + 1} = A _ {n + 1} + A _ {n} p _ {1} k _ {1} + \dots + A _ {1} p _ {n} k _ {n} + A _ {0} p _ {n + 1} k _ {n + 1},
$$

$$
Q _ {n + 1} = A _ {n} p _ {1} (1 - k _ {1}) + \dots + A _ {1} p _ {n} (1 - k _ {n}) + A _ {0} p _ {n + 1} (1 - k _ {n + 1}), \tag {4.53}
$$

$$
I _ {n + 1} = B _ {n + 1} + B _ {n} q _ {1} l _ {1} + \dots + B _ {1} q _ {n} l _ {n},
$$

$$
H _ {n + 1} = F _ {n + 1} + F _ {n} q _ {1} + \dots + F _ {1} q _ {n} - I _ {n + 1}, \quad n = 0, 1, 2, \dots ,
$$

where $A _ { n } , B _ { n } , C _ { n }$ , and $D _ { n }$ are given by 

$$
A _ {n + 1} = S _ {n} (1 - G _ {n}) = S _ {n} - S _ {n + 1}, n \geq 0, \text { with } A _ {0} = E _ {0},
$$

$$
\begin{array}{l} B _ {n + 1} = A _ {n} (1 - p _ {1}) + A _ {n - 1} (p _ {1} - p _ {2}) k _ {1} + \dots + A _ {1} (p _ {n - 1} - p _ {n}) k _ {n - 1} \\ + A _ {0} (p _ {n} - p _ {n - 1}) k _ {n}, \text { with } B _ {0} = 0, k _ {0} = 1, \tag {4.54} \\ \end{array}
$$

$$
C _ {n + 1} = E _ {n} - E _ {n + 1} + A _ {n + 1} - B _ {n + 1}, \text { with } C _ {0} = 0,
$$

$$
D _ {n + 1} = Q _ {n} - (Q _ {n + 1} - C _ {n + 1}).
$$

The initial conditions in model (4.53) are $S _ { 0 } , E _ { 0 } > 0$ and $I _ { 0 } = Q _ { 0 } = H _ { 0 } = R _ { 0 } = 0$ . 

Question 1 Show that the control reproduction number $\mathcal { R } _ { c }$ is given by 

$$
\mathcal {R} _ {c} = \mathcal {R} _ {I} + \mathcal {R} _ {I H} + \mathcal {R} _ {Q H}, \tag {4.55}
$$

where 

$$
\mathcal {R} _ {I} = \beta \mathcal {T} _ {E _ {k}} \mathcal {D} _ {I _ {l}},
$$

$$
\mathcal {R} _ {I H} = \beta (1 - \rho) \mathcal {T} _ {E _ {k}} (\mathcal {D} _ {I} - \mathcal {D} _ {I _ {l}}), \tag {4.56}
$$

$$
\mathcal {R} _ {Q H} = \beta (1 - \rho) (1 - \mathcal {T} _ {E _ {k}}) \mathcal {D} _ {I}.
$$

Here, ${ \mathcal { D } } _ { E } = \mathbb { E } ( X )$ and ${ \mathcal { D } } _ { I } = \mathbb { E } ( Y )$ are the mean sojourn times in the exposed and infectious stages, respectively. $\mathcal { D } _ { E _ { k } }$ and $\mathcal { D } _ { I _ { l } }$ denote the “quarantine-adjusted” 

and “isolation-adjusted” mean sojourn times in the exposed and infective stages, respectively, given by 

$$
\mathcal {D} _ {E _ {k}} = \mathbb {E} (X \wedge Z) = \sum_ {j = 0} ^ {\infty} \mathbb {P} (X \wedge Z > j) = 1 + \sum_ {j = 1} ^ {\infty} p _ {j} k _ {j},
$$

$$
\mathcal {D} _ {I _ {l}} = \mathbb {E} (Y \wedge W) = \sum_ {j = 0} ^ {\infty} \mathbb {P} (Y \wedge W > j) = 1 + \sum_ {j = 1} ^ {\infty} q _ {j} l _ {j}.
$$

$\mathcal { T } _ { E _ { k } }$ denotes the proportion of individuals in the E class who become infective before going to the Q class, i.e., the event E → I occurs before $E  Q$ . This quantity is given by 

$$
\mathcal {T} _ {E _ {k}} = \mathbb {P} (X \leq Z) = \sum_ {j = 1} ^ {\infty} (p _ {j - 1} - p _ {j}) k _ {j - 1}.
$$

The three quantities in (4.56) represent the stage-specific reproduction numbers representing, respectively, the average number of secondary infections produced by individuals in the I stage, in the H stage with quarantine (QH ) and without (I H ). 

Question 2 Let $\mathcal { R } _ { c }$ be as given in (4.55). Show that the epidemic final size generated by the dynamics of model (4.53) satisfies the following final size relationship: 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \left(1 - \frac {S _ {\infty}}{N}\right) \mathcal {R} _ {c}. \tag {4.57}
$$

Question 3 Consider the case where the distributions in (4.52) are geometric. Assume that X Geom(α), Y Geom(δ), Z Geom(γ ), and W Geom(σ ). That is, 

$$
p _ {i} = \alpha^ {i}, q _ {i} = \delta^ {i}, k _ {i} = \gamma^ {i}, l _ {i} = \sigma^ {i}, i = 0, 1, 2, \ldots .
$$

In this case, the transition diagram 4.7 can be replaced by that shown in Fig. 4.8 


Fig. 4.8 Transition diagram for the model with geometric stage distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/3d7b9cd5c5350959746497d327a7e7b087ac6fac60deeb402f0274c735cf79ce.jpg)


Show that under this assumption, the general model (4.53) simplifies to 

$$
\begin{array}{l} S _ {n + 1} = S _ {n} G _ {n} \\ E _ {n + 1} = (1 - G _ {n}) S _ {n} + \alpha \gamma E _ {n} \\ Q _ {n + 1} = \alpha (1 - \gamma) E _ {n} + \alpha Q _ {n} \tag {4.58} \\ I _ {n + 1} = (1 - \alpha) E _ {n} + \delta \sigma I _ {n} \\ H _ {n + 1} = (1 - \alpha) Q _ {n} + \delta (1 - \sigma) I _ {n} + \delta H _ {n}, \quad n = 0, 1, 2, 3, \dots . \\ \end{array}
$$

Note that the system (4.58) has the same form as the usually considered model with constant probabilities for transitions between stages. We refer to this model as the geometric distribution model (GDM). The questions below concern the GDM (4.58). 

(a) Determine the quantities $\mathcal { D } _ { E } , \mathcal { D } _ { I } , \mathcal { D } _ { E _ { k } } , \mathcal { D } _ { I _ { l } }$ , and $\mathcal { T } _ { E _ { k } }$ . 

(b) Compute $\mathcal { R } _ { I } , \mathcal { R } _ { I H } , \mathcal { R } _ { Q H }$ , and the control reproduction number $\mathcal { R } _ { c }$ . 

Question 4 We can examine how different distribution assumptions may influence the values of the reproduction number $\mathcal { R } _ { c }$ given in (4.55) and (4.56). Particularly, the reduction in $\mathcal { R } _ { c }$ by quarantine and isolation can be different under different distribution assumptions. To examine this, we can consider two specific distributions, geometric distribution assumption (GDA) and Poisson distribution assumption (PDA). For the purpose of comparison, we take $X _ { g }$ and $X _ { p }$ with mean $\mu _ { 1 }$ and $Y _ { g }$ and $Y _ { p }$ with mean $\mu _ { 2 }$ (the subscripts $g$ and $p$ represent geometric and Poisson, respectively). The quarantine (Z) and isolation (W ) are assumed to have geometric distributions with parameters γ or σ , respectively. Consider the parameter values $\beta = 0 . 7 5 , \rho = 0 . 9 5 , \mu _ { 1 } = 5 , \mu _ { 2 } = 1 0$ . Compare two strategies: Strategy I corresponds to $\gamma = 0 . 5$ and $\sigma = 0 . 8$ and Strategy II corresponds to $\gamma = 0 . 8$ and $\sigma = 0 . 5$ . Figure 4.9 plots the control reproduction number $\mathcal { R } _ { c }$ vs $\gamma$ or σ . The left figure is for $\mathcal { R } _ { c , g }$ (i.e., when X and Y are geometric distributions) and the right figure is for $\mathcal { R } _ { c , p }$ (i.e., when X and Y are Poisson distributions). Figure 4.9 shows reduction in $\mathcal { R } _ { c }$ under Strategy I (represented by a dot on the dashed curve) and Strategy II (represented by a solid square on the solid curve). 

(a) Reproduce Fig. 4.9. 

(b) Under the GDA, which of the strategies I and II is more effective in reducing the control reproduction number? 

(c) Under the PDA, which of the strategies I and II is more effective in reducing the control reproduction number? 

(d) Do the two distribution assumptions generate the same assessment? Why or why not? 

(e) The formula (4.57) holds for arbitrarily distributed latent and infectious periods. Because reductions of $\mathcal { R } _ { c }$ by quarantine and isolation depend on distribution assumptions, compare the effects of these control measures on the epidemic final size under the GDA and PDA. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/10ba2eab84d38ced79a7c69435e51754615141b3d997208d6bdad227313f5fda.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/ff785f69909d8946e5af49aa6110ab33e56f29300b36e2595943f52e60908318.jpg)



Fig. 4.9 Comparison of the GDM and PDM in terms of their evaluations on various control measures when the corresponding control reproduction numbers, $\mathcal { R } _ { c , g }$ and $\mathcal { R } _ { c , p }$ are used. The two control strategies considered are represented by $\gamma = 0 . 5$ and $\sigma = 0 . 8$ (labeled with a dot on the dashed curve) and by $\gamma = 0 . 8$ and $\sigma = 0 . 5$ (labeled with a solid square on the solid curve)


Project 2 Consider the epidemic model (4.26), which includes general distributions for the latent and infectious stages with survival function $P _ { i } ( s ) \ ( i = E , I )$ , as well as a control measures quarantine and isolation represented by parameters ψ and $\varphi$ . The model also assumes that the isolation is 100% effective, i.e., the isolated individuals do not contribute to the disease transmission. Let $q _ { i } ( s ) ~ = ~ - P _ { i } ^ { \prime } ( s )$ $( i = E , I )$ . The corresponding reproduction number is 

$$
\mathcal {R} _ {c} (\psi , \varphi) = \beta N \int_ {0} ^ {\infty} e ^ {- \psi y} q _ {E} (y) d y \int_ {0} ^ {\infty} e ^ {- \varphi u} P _ {I} (u) d u, \tag {4.59}
$$

or in terms of the Laplace transforms of $q _ { E }$ and $P _ { I }$ 

$$
\mathcal {R} _ {c} (\psi , \varphi) = \beta N \mathcal {L} _ {q _ {E}} (\psi) \mathcal {L} _ {P _ {I}} (\varphi). \tag {4.60}
$$

In the more general case of imperfect isolation, the isolation may not be 100% effective. Let $\sigma$ denote the isolation efficiency for isolated individuals with $0 \leq \sigma \leq$ 1. Then the effective transmission rate for the isolated (or hospitalized) individuals (H ) is reduced to $( 1 - \sigma ) \beta$ . In this case, the S equation in (4.26) becomes 

$$
S ^ {\prime} = - \beta S [ I + (1 - \sigma) H ]. \tag {4.61}
$$

Question 1 Let $\mu _ { I }$ denote the mean infective period, i.e., $\begin{array} { r } { \mu _ { I } = \int _ { 0 } ^ { \infty } P _ { I } ( s ) d s } \end{array}$ . Show that the formula (4.60) can be extended to be a function of $\psi , \varphi ,$ , and σ as below: 

$$
\mathcal {R} _ {c} (\psi , \varphi , \sigma) = (1 - \sigma) \beta N \mathcal {L} _ {q _ {E}} (\psi) \mu_ {I} + \sigma \beta N \mathcal {L} _ {q _ {E}} (\psi) \mathcal {L} _ {P _ {I}} (\varphi). \tag {4.62}
$$

Question 2 Ifthe stage durations are both gamma distributed with shape parameters $k _ { E } \ge 1$ and $k _ { I } \geq 1 , \mathrm { i . e . }$ ., 

$$
q _ {i} (s, \mu_ {i}, k _ {i}) = \frac {1}{\Gamma (k _ {i})} \frac {k _ {i}}{\mu_ {i}} \Bigl (\frac {k _ {i}}{\mu_ {i}} s \Bigr) ^ {k _ {i} - 1} e ^ {- \frac {k _ {i}}{\mu_ {i}} s}, s > 0, i = E, I.
$$

(a) Show that in the absence of quarantine $( \mathrm { i . e . , } \phi = 0 )$ the control reproduction number is 

$$
\mathcal {R} _ {c} (0, \varphi , \sigma) = (1 - \sigma) \beta N \mu_ {I} + \frac {\sigma \beta N}{\varphi} \bigg [ 1 - \bigg (1 + \frac {\mu_ {I}}{k _ {I}} \varphi \bigg) ^ {- k _ {I}} \bigg ]. \tag {4.63}
$$

(b) Let $\beta N = 0 . 5$ . Plot $\mathcal { R } _ { c } ( 0 , \varphi , \sigma )$ given in (4.63) for various sets of values of $k _ { E } ~ = ~ k _ { I } ~ = ~ k , \mu _ { I }$ , and $\sigma _ { I }$ . For example, $k \ : = \ : 1 , 2 , 4 , \mu _ { I } \ : = \ : 3 , 5 , 8$ , and $\sigma = 0 . 1 , 0 . 5 , 0 . 8 , 1$ . Summarize the observations from these plots in terms of the dependence of $\mathcal { R } _ { c }$ on the shape parameter, mean period of infection, and isolation efficiency. 

(c) Let $k _ { E } = k _ { I } = k$ . Note that $k = 1$ corresponds to an exponentially distributed stage, which is the most commonly assumed distribution. For the two values $k = 1$ and 4, draw the contour plots of $\mathcal { R } _ { c } ( 0 , \varphi , \sigma )$ in the $( \varphi , \sigma )$ plane showing a few contour curves including the one corresponding to $\mathcal { R } _ { c } ( 0 , \varphi , \sigma ) ~ = ~ 1$ . Other parameter values are $\beta N = 0 . 5 , \mu _ { I } = 3 , \sigma = 1$ . Discuss the observed difference from the contour plots between the cases of $k = 1$ and $k = 4$ in terms of the threshold values of $\varphi$ for which $\mathcal { R } _ { c } ( 0 , \varphi , \sigma ) = 1$ . 

## 4.12 Project: Epidemic Models with Direct and Indirect Transmission

Some diseases may be spread in more than one manner. For example, cholera may be spread by person to person transmission but may also be transmitted indirectly through a pathogen released by infectives through a medium such as contaminated water [38, 41]. 

Consider an epidemic model with direct (person to person) and indirect (through a medium such as contaminated water) transmission. To a simple SI R model we add a pathogen B shed by infectives. We assume that the infectivity of the pathogen is proportional to its concentration, suggesting mass action transmission. The resulting model is 

$$
S ^ {\prime} = - \beta_ {1} S I - \beta_ {2} S B
$$

$$
I ^ {\prime} = \beta_ {1} S I + \beta_ {2} S B - \gamma I \tag {4.64}
$$

$$
R ^ {\prime} = \gamma I
$$

$$
B ^ {\prime} = r I - \delta B,
$$

with initial conditions 

$$
S (0) = S _ {0}, \quad I (0) = I _ {0}, \quad B (0) = B _ {0},
$$

in a population of constant total size $N = S _ { 0 } + I _ { 0 }$ , with $R ( 0 ) = 0 .$ . In general, $N = S + I + R$ . In this model r represents the rate at which an infectious individual sheds pathogen and $\delta$ represents the rate at which the pathogen loses infectivity. 

Question 1 Show that the basic reproduction number 

$$
\mathcal {R} _ {0} = \frac {\beta_ {1} N}{\gamma} + \frac {r \beta_ {2} N}{\gamma \delta}.
$$

In this expression, the first term represents secondary infections caused directly by a single infective introduced into a wholly susceptible population, infecting $\beta N$ susceptibles in unit time for a time period $1 / \gamma$ . The second term represents secondary infections caused indirectly through the pathogen since a single infective sheds a quantity r of pathogen in unit time for a time period $1 / \gamma$ and this pathogen infects $\beta N$ susceptibles in unit time for a time period $1 / \delta$ . 

Question 2 Derive the final size relation 

$$
\begin{array}{l} \log \frac {S _ {0}}{S _ {\infty}} = \left(\beta_ {1} + \frac {\beta_ {1} N r}{\gamma \delta}\right) \left[ 1 - \frac {S _ {\infty}}{N} \right] + \beta_ {1} \frac {B _ {0}}{\delta} \tag {4.65} \\ = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right] + \beta_ {1} \frac {B _ {0}}{\delta}. \\ \end{array}
$$

This implies $S _ { \infty } > 0$ . 

In order to cover such generalizations of the model (4.1) as multiple infective stages and arbitrary distributions of stay in a stage, we give an age of infection model 

$$
S ^ {\prime} (t) = - S (t) [ \beta_ {1} \varphi (t) + \beta_ {2} B (t) ]
$$

$$
\varphi (t) = \varphi_ {0} (t) + \int_ {0} ^ {t} [ - S ^ {\prime} (t - \tau) ] P (\tau) d \tau \tag {4.66}
$$

$$
B (t) = B _ {0} (t) + \int_ {0} ^ {t} r \varphi (t - \tau) Q (\tau) d \tau .
$$

In this model, $\varphi ( t )$ represents the total infectivity of individuals with age of infection $t , \varphi _ { 0 } ( t )$ represents the total infectivity at time t of individuals who were already infected at time $t ~ = ~ 0 , ~ B _ { 0 } ( t )$ represents the pathogen concentration at time t remaining from pathogen concentration that was already present at time $t \ = \ 0$ , $P ( \tau )$ represents the mean infectivity of individuals at age of infection τ , normally the product of the fraction of infectives still infective at age of infection τ and the relative infectivity at that infection age, and $Q ( \tau )$ represents the fraction of pathogen remaining τ time units after having been shed by an infective. The function Q is monotone non-increasing with $\begin{array} { r } { Q ( 0 ) = 1 , \int _ { 0 } ^ { \infty } Q ( \tau ) d \tau < \infty } \end{array}$ . Since infectivity of an individual may depend on the age of infection of the individual, the function P is not necessarily non-increasing, but we assume $\textstyle \int _ { 0 } ^ { \infty } P ( \tau ) d \tau < \infty$ . 

Question 3 Show that for the model (4.66), the basic reproduction number is 

$$
\mathcal {R} _ {0} = \beta_ {1} N \int_ {0} ^ {\infty} P (\tau) d \tau + r \beta_ {2} N \int_ {0} ^ {\infty} P (\tau) d \tau \int_ {0} ^ {\infty} Q (\tau) d \tau .
$$

In this expression, the first term represents new infection transmitted directly by a single infectious individual inserted into a totally susceptible population, while the second term represents secondary infections caused by this individual indirectly through shedding of pathogen. 

Question 4 Obtain the final size relation 

$$
\begin{array}{l} \log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ \frac {S _ {0} - S _ {\infty}}{c ^ {N}} \right] + \beta_ {1} \int_ {0} ^ {\infty} \varphi_ {0} (t) d t \tag {4.67} \\ + r \beta_ {2} \int_ {0} ^ {\infty} Q (t) d t \int_ {0} ^ {\infty} \varphi_ {0} (t) d t + \beta_ {2} \int_ {0} ^ {\infty} B _ {0} (t) d t. \\ \end{array}
$$

If all infections at time zero have infection age zero, then 

$$
\varphi_ {0} (t) = [ N - S _ {0} ] P (t), \quad \int_ {0} ^ {\infty} \varphi_ {0} (t) d t = [ N - S _ {0} ] \int_ {0} ^ {\infty} P (t) d t,
$$

and if the entire pathogen concentration at time zero has infection age zero, then 

$$
B _ {0} (t) = B _ {0} Q (t), \quad \int_ {0} ^ {\infty} B _ {0} (t) d t = B _ {0} \int_ {0} ^ {\infty} Q (t) d t
$$

with some constant $B _ { 0 }$ . In this case, the final size relation (9.10) takes the form 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right] + \beta_ {2} B _ {0} \int_ {0} ^ {\infty} Q (t) d t. \tag {4.68}
$$

The final size relation has a term arising from an initial pathogen concentration that tends to decrease $S _ { \infty }$ . 

In general, because Q is monotone non-increasing, 

$$
\int_ {0} ^ {\infty} B _ {0} (t) d t \leq B _ {0} \int_ {0} ^ {\infty} Q (t) d t.
$$

If P is monotone non-increasing, 

$$
\int_ {0} ^ {\infty} \varphi_ {0} (t) d t \leq [ N - S _ {0} ] \int_ {0} ^ {\infty} P (t) d t.
$$

If P is not monotone, which may occur, for example, if there is an exposed stage followed by an infective stage with higher infectivity, this is not necessarily true. However, if there are no infectives initially, so that the epidemic is started by the pathogen, then $\varphi _ { 0 } ( t ) = 0$ and $S _ { 0 } = N$ . Then (4.67) remains valid without the need to assume that P is monotone. 

These results have been established only for a constant rate of pathogen shedding. If the rate of pathogen depends on the age of infection, the equation for B in the model (4.66) should be replaced by an equation 

$$
B (t) = B _ {0} (t) + \int_ {0} ^ {t} r (t - \tau) \varphi (t - \tau) Q (\tau) d \tau .
$$

It is not possible to treat the corresponding model as an age of infection model, but we can view it as a staged progression model. 

We consider an epidemic with progression from S through k infected stages $I _ { 1 } , I _ { 2 } , \cdots , I _ { k }$ , as analyzed in [7], but with the addition of a pathogen. We assume that in stage j the relative infectivity is $\varepsilon _ { j }$ , the distribution of stay in the stage is given by $P _ { j }$ with $\begin{array} { r } { P _ { j } ( 0 ) = 1 , \int _ { 0 } ^ { \infty } P _ { j } ( t ) d t < \infty } \end{array}$ , and $P _ { j }$ monotone non-increasing, so that the infectivity of an individual in stage j is $A _ { j } ( \tau ) = \varepsilon _ { j } P _ { j } ( \tau )$ . There are no disease deaths and the total population size N is constant. We assume initial conditions 

$$
S (0) = 0, \quad I _ {1} (0) = I _ {0}, \quad I _ {2} (0) = I _ {3} (0) = \dots = I _ {k} (0) = 0, \quad R (0) = 0.
$$

The total infectivity is given by 

$$
\varphi (t) = \sum_ {j = 1} ^ {k} \varepsilon_ {j} I _ {j} (t).
$$

We let $B _ { j } ( t )$ be the quantity of pathogen shed by infectives in the stage $I _ { j }$ and let $Q _ { j }$ denote the distribution of stay of pathogen shed by infectives in this stage, with $\begin{array} { r } { \dot { Q _ { j } } ( 0 ) = 1 , \int _ { 0 } ^ { \infty } Q _ { j } ( t ) d t < \infty } \end{array}$ , and $Q _ { j }$ monotone non-increasing. We let $r _ { j }$ be the shedding rate in this stage. We also define the total quantity of pathogen, 

$$
B (t) = \sum_ {j = 1} ^ {k} B _ {j} (t).
$$

Then 

$$
B _ {j} (t) = B _ {j} ^ {0} (t) + \int_ {0} ^ {t} r _ {j} I _ {j} (t - \tau) Q _ {j} (\tau) d \tau . \tag {4.69}
$$

Question 5 Show that the basic reproduction number is 

$$
\mathcal {R} _ {0} = \beta_ {1} N \sum_ {j = 1} ^ {k} \varepsilon_ {j} \int_ {0} ^ {\infty} P _ {j} (t) d t + \beta_ {2} N \sum_ {j = 1} ^ {k} r _ {j} \int_ {0} ^ {\infty} P _ {j} (t) d t \int_ {0} ^ {\infty} Q _ {j} (t) d t.
$$

Question 6 For simplicity, we assume that all individuals infected at time zero have infection age zero for $t = 0 ,$ , and also that there is a new quantity of pathogen $B _ { 0 }$ introduced at time zero, so that $B _ { 0 } ( t ) = B _ { 0 } Q ( t )$ . Obtain the final size relation 

$$
\begin{array}{l} \log {\frac {S _ {0}}{S _ {\infty}}} = \beta_ {1} \sum_ {j = 1} ^ {k} \varepsilon_ {j} \int_ {0} ^ {\infty} P _ {j} (t) d t [ N - S _ {\infty} ] \\ + \beta_ {2} \sum_ {j = 1} ^ {k} r _ {j} \int_ {0} ^ {\infty} P _ {j} (t) d t \int_ {0} ^ {\infty} Q _ {j} (t) d t [ N - S _ {\infty} ] \\ + \beta_ {2} B _ {0} \int_ {0} ^ {\infty} Q (t) d t \tag {4.70} \\ = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {\infty}}{N} \right] + \beta_ {2} B _ {0} \int_ {0} ^ {\infty} Q (t) d t. \\ \end{array}
$$

References [8]. Other sources of information about cholera include [1, 2, 11, 21, 25, 38, 41]. 

## 4.13 Exercises

1. Show that it is not possible for a major epidemic to develop unless at least one member of the contact network has degree at least 3. 

2. What is the probability of a major epidemic if every member of the contact network has degree 3? 

3. Show that if $G _ { 1 } ( 0 ) = 0$ , then 

(a) $G _ { 1 } ^ { \prime } ( 0 ) \leq 0$ 

(b) $G _ { 1 } ( z ) < z$ for $0 \le z \le 1$ 

(c) $z _ { \infty } = 0$ 

(d) $\mathcal { R } _ { 0 } > 1$ 

4. Consider a truncated Poisson distribution, with 

$$
p _ {k} = \left\{ \begin{array}{l l} \frac {e ^ {- c} c ^ {k}}{k !}, & k \leq 1 0, \\ 0, & k > 1 0. \end{array} \right.
$$

Estimate (numerically) the probability of a major epidemic if $c = 1 . 5$ 

5. Show that the probability generating function for an exponential distribution, given by 

$$
p _ {k} = (1 - e ^ {- 1 / r}) e ^ {- k / r},
$$

is 

$$
G _ {0} (z) = \frac {1 - e ^ {- 1 / r}}{1 - z e ^ {- 1 / r}}.
$$

6. A power law distribution is given by 

$$
p _ {k} = C k ^ {- \alpha}.
$$

For what values of α is it possible to normalize this (i.e., choose C to make $\sum p _ { k } = 1 ) ?$ 

7. Consider a network in which the contacts between members of the population are random. Assume that the fraction of vertices having degree k, or the probabilities $p _ { k }$ are given by the Poisson distribution $p _ { k } = e ^ { c } c ^ { k } / k !$ , where $c = \mathcal { R } _ { 0 } = 3$ . Let P denote the probability of a minor outbreak. 

(a) Determine the equation that can be used to solve for P. 

(b) Find P. 

(b) Find the probability of a major epidemic. 

8. Compare the qualitative behaviors of the models 

$$
S ^ {\prime} = - \beta S I, \quad I ^ {\prime} = \beta S I - \alpha I,
$$

and 

$$
S ^ {\prime} = - \beta S I, \quad E ^ {\prime} = \beta S I - \kappa E, \quad I ^ {\prime} = \kappa E - \alpha I,
$$

with 

$$
\beta N = 1 / 3, \quad \alpha = 1 / 6, \quad \kappa = 1 / 2, \quad S (0) = 9 9 9, \quad I (0) = 1.
$$

These models represent an SIR epidemic model and an SEIR epidemic model respectively with a mean infective period of 6 days and a mean exposed period of 2 days. Do numerical simulations to decide whether the exposed period affects the behavior of the model noticeably. 

9. Consider three basic epidemic models—the simple SIR model, 

$$
\begin{array}{l} S ^ {\prime} = - \beta S I, \\ I ^ {\prime} = \beta S I - \alpha I, \\ \end{array}
$$

the SEIR model with some infectivity in the exposed period, 

$$
\begin{array}{l} S ^ {\prime} = - \beta [ S (I + \varepsilon E ], \\ E ^ {\prime} = \beta [ S (I + \varepsilon E) ] - \kappa E, \\ I ^ {\prime} = \kappa E - \alpha I, \\ \end{array}
$$

and the SIR model with treatment, 

$$
\begin{array}{l} S ^ {\prime} = - \beta S (I + \delta T), \\ I ^ {\prime} = \beta S (I + \delta T) - (\alpha + \varphi) I, \\ T ^ {\prime} = \varphi I - \eta T. \\ \end{array}
$$

Use the parameter values 

$$
\beta N = \frac {1}{3}, \quad \alpha = \frac {1}{4}, \quad \varepsilon = \frac {1}{2}, \quad \kappa = \frac {1}{2}, \quad \delta = \frac {1}{2}, \quad \eta = \frac {1}{4}, \quad \varphi = 1,
$$

and the initial values 

$$
S (0) = 9 9 5, \quad E (0) = 0, \quad I (0) = 5, \quad T (0) = 0.
$$

For each model, 

(a) Calculate the reproduction number and the epidemic final size. 

(b) Do some numerical simulations to obtain the epidemic size by determining the change in S, the maximum number of infectives by measuring I , and the duration of the epidemic. 

10. Consider the treatment model (4.12). Assume that $\beta N = 8 6 0 , \delta = 0 . 5 , \eta =$ $1 / 1 0 .$ , and $S _ { 0 } = N - 1$ . 

(a) Explore numerically how the final epidemic size can be affected by the treatment effort (measured by the parameter $\gamma )$ . Plot the relationship. 

(b) Determine the final epidemic size without treatment. 

(c) Is it possible to reduce the final size by 50% by increasing $\gamma ?$ If yes, find that γ value. 

11. For the model (4.15), what should be the constraints on parameter values so that passage from E to Q to J to R is at least as rapid as the passage from E to I to R, and the passage from I to J to R is at least as rapid as the passage from I to R? 

12. Consider the model (4.15) with quarantine and isolation. Assume that $\beta N =$ 860, $\kappa _ { E } = 1 / 4 , \alpha _ { I } = 1 / 1 0 , \varepsilon _ { E } = 0 . 4 , \varepsilon _ { Q } = 0 . 1 , \varepsilon _ { J } = 0 . 6 .$ . 

(a) In the absence of control (i.e., $\gamma _ { Q } = \gamma _ { J } = \kappa _ { Q } = \alpha _ { J } = 0 )$ , what is the final epidemic size? 

(b) Plot the final size as a function of $\gamma _ { Q }$ and $\gamma _ { J }$ . 

(c) Is it possible to reduce the final size by 50% by increasing $\gamma _ { Q }$ and/or $\gamma _ { J } ?$ If yes, identify one pair of values of $\gamma _ { Q }$ and $\gamma _ { J }$ to achieve the goal. 

13. Formulate an $S E I R T$ model, that is, a model with both an exposed class and a treatment class 

(a) Draw a flow chart and calculate the basic reproduction number 

(b) Determine the final size relation 

14. Consider an SIR model in which a fraction θ of infectives is isolated in a perfectly quarantined class $Q$ with standard incidence (meaning that individuals make a contacts in unit time of which a fraction $I / ( N - Q )$ is infective), given by the system 

$$
S ^ {\prime} = - \beta N S \frac {I}{N - Q},
$$

$$
I ^ {\prime} = \beta N S \frac {I}{N - Q} - (\theta + \alpha) I,
$$

$$
Q ^ {\prime} = \theta I - \gamma Q,
$$

$$
R ^ {\prime} = \alpha I + \gamma Q.
$$

(a) Find the equilibria. 

(b) Find the basic reproduction number $\mathcal { R } _ { 0 }$ . 

(c) For parameters, take $\alpha = 0 . 1 , \theta = 1 , 2 , 4 , \gamma = 0 . 2$ . Sketch the phase plane of the system and observe what is happening. 

15. Isolation/quarantine is a complicated process because we don’t live in a perfect world. In hospitals, patients may inadvertently or deliberately break from isolation and in the process have casual contacts with others including medical personnel and visitors. Taking this into account, we are led to the model 

$$
S ^ {\prime} = - \beta N S \frac {[ I + \rho \tau Q ]}{N - \sigma Q},
$$

$$
I ^ {\prime} = \beta N S \frac {[ I + \rho \tau Q ]}{N - \sigma Q} - (\theta + \alpha) I,
$$

$$
Q ^ {\prime} = \theta I - \gamma Q,
$$

$$
R ^ {\prime} = \alpha I + \gamma Q.
$$

(a) Determine all the parameters in the system and define each parameter. 

(b) Show that the population is constant. 

(c) Find all equilibria. 

(d) Find the reproduction number $\mathcal { R } _ { 0 }$ . 

(e) Describe the asymptotic behavior of the model, including its dependence on the basic reproduction number. 

16. Formulate a model analogous to (4.12) for which treatment is not started immediately, but begins at time $\tau \ > \ 0 .$ . Can you say anything about the dependence of the reproduction number on $\tau ?$ 

17. In the simple SI R model (4.1) it is assumed that all effective contacts between susceptibles and infectives lead to new infections. Suppose, however, that only a fraction δ of contacts by infectives actually transmit disease and only a fraction σ of contacts of susceptibles actually lead to new infections. This would lead to a model 

$$
S ^ {\prime} = - \delta \sigma \beta S I
$$

$$
I ^ {\prime} = \delta \sigma \beta S I - \alpha I.
$$

Find the basic reproduction number and the final size relation for this model. 

18. Consider the model in Sect. 4.4 and assume that $P ( \tau )$ has the value 1 if $0 \leq$ $\tau \leq T$ and 0 otherwise. 

(a) Calculate the basic reproduction number 

(b) Plot the final epidemic size for several different values of T . 

19. Consider the model in Sect. 4.4 and assume that $P ( \tau )$ follows a gamma distribution with mean equal to 10 and shape parameter equal to n. 

(a) Plot final epidemic size for n 1, 3, 5, 7, 9. 

(b) Does the final size change with n? If yes, what is the observed pattern of the change? 

20. The quarantine–isolation model (4.26) is not quite in the age of infection form that we have been studying in this section because of the initial terms in the equations. Transform it to age of infection form by incorporating the initial terms into infinite integrals and calculate the control reproduction number from this form. 

21. Determine the initial exponential growth rate for the model (4.11) by interpreting it as an age of infection model. 

22. Determine the initial exponential growth rate for the model (4.12) by interpreting it as an age of infection model. 

23. Determine the initial exponential growth rate for the general treatment model (4.24) of Sect. 4.5. 

24. Consider the model (4.23) with $A ( \tau ) = e ^ { - 0 . 1 \tau }$ . 

(a) Determine the critical value of $a _ { c }$ such that there is an epidemic if $a > a _ { c }$ and no epidemic if $a \textless a _ { c }$ . 

(b) Is there an epidemic for $a = 1 . 5 ? { \mathrm { I f } }$ yes, find the exponential grow rate of the epidemic. 

25. Find the solution of the system (4.29). 

26. Verify the relation (4.30). 



10. Callaway, D.S., M.E.J. Newman, S.H. Strogatz, D.J. Watts (2000) Network robustness and fragility: Percolation on random graphs, Phys. Rev. Letters, 85: 5468–5471. 





35. Riley, S., C. Fraser, C.A. Donnelly, A.C. Ghani, L.J. Abu-Raddad, A.J. Hedley, G.M. Leung, L-M Ho, T-H Lam, T.Q. Thach, P. Chau, K-P Chan, S-V Lo, P-Y Leung, T. Tsang, W. Ho, K-H Lee, E.M.C. Lau, N.M. Ferguson, & R.M. Anderson (2003) Transmission dynamics of the etiological agent of SARS in Hong Kong: Impact of public health interventions, Science 300: 1961–1966. 



27. Verify the Eq. (4.32). 



11. Codeço, C.T. (2001) Endemic and epidemic dynamics of cholera: the role of the aquatic reservoir, BMC Infectious Diseases 1: 1. 





36. Roberts, M.G. and J.A.P. Heesterbeek (2003) A new method for estimating the effort required to control an infectious disease, Pro. Roy. Soc. London B 270: 1359–1364. 



28. Determine the mean generation time for an SEIR model with an infectious period having a gamma distribution with parameter n. 



12. Diekmann,O. & J.A.P. Heesterbeek (2000) Mathematical Epidemiology of Infectious Diseases. Wiley, Chichester. 





37. Scalia-Tomba, G., A. Svensson, T. Asikaiainen, and J. Giesecke (2010) Some model based considerations on observing generation times for communicable diseases, Math. Biosc. 223: 24–31. 



29. Establish the relation (4.49). 



13. Erdös, P. & A. Rényi (1959) On random graphs, Publicationes Mathematicae 6: 290–297. 





38. Shuai, Z. & P. van den Driessche (2011) Global dynamics of cholera models with differential infectivity, Math. Biosc. 234: 118–126. 



30. Consider the model (4.50) with initial conditions given in (4.51) with $t _ { 0 } = 3 0$ . The parameter values $c _ { 0 } , \varepsilon ,$ , and α are the same as those used in Fig. 4.6. Make plots similar to those in Fig. 4.6 under the following scenarios. 



14. Erdös, P. & A. Rényi (1960) On the evolution of random Pub. Math. Inst. Hung. Acad. Science 5: 17–61. 





39. Strogatz, S.H. (2001) Exploring complex networks, Nature, 410: 268–276. 





15. Erdös, P. & A. Rényi (1961) On the strengths of connectedness of a random graph, Acta Math. Scientiae Hung. 12: 261–267. 





40. Svensson, A. (2007) A note on generation time in epidemic models, Math. Biosc. 208: 300– 311. 



(a) Plot the epidemic curves for three values of vaccination fraction $p \colon 0 . 0 5$ , 0.1, and 0.15. Compare the shape of each epidemic curve with that for the case of no vaccination (i.e., $p = 0 )$ . 



16. Feng, Z. (2007) Final and peak epidemic sizes for SEIR models with quarantine and isolation, Math. Biosc. & Eng. 4: 675–686. 





41. Tien, J.H. & D.J.D. Earn (2010) Multiple transmission pathways and disease dynamics in a waterborne pathogen model, Bull. Math. Biol. 72: 1506–1533. 



(b) Plot the cumulative cases for $p = 0 . 0 5 , 0 . 1$ , and 0.15. Compare each case with the case of no vaccination. 



17. Feng, Z., D. Xu & W. Zhao (2007) Epidemiological models with non-exponentially distributed disease stages and applications to disease control, Bull. Math. Biol. 69: 1511–1536. 





42. van den Driessche, P. & J. Watmough (2002) Reproduction numbers and sub-threshold endemic equilibria for compartmental models of disease transmission. Math. Biosc., 180: 29– 48. 



(c) How many epidemic waves do you observe in each of the three cases? 



18. Fine, P.E.M. (2003) The interval between successive cases of an infectious disease, Am. J. Epid. 158: 1039–1047. 





43. Volz, E. (2008) SIR dynamics in random networks with heterogeneous connectivity, J. Math. Biol., 56: 293–310. 



(d) Is it true that the higher the fraction of people vaccinated the lower the final size will be? 



19. Gumel, A., S. Ruan, T. Day, J. Watmough, P. van den Driessche, F. Brauer, D. Gabrielson, C. Bowman, M.E. Alexander, S. Ardal, J. Wu & B.M. Sahai (2004) Modeling strategies for controlling SARS outbreaks based on Toronto, Hong Kong, Singapore and Beijing experience, Proc. Roy. Soc. London 271: 2223–2232. 





44. Wallinga, J. & M. Lipsitch (2007) How generation intervals shape the relationship between growth rates and reproductive numbers, Proc. Royal Soc. B 274: 599–604. 





20. Diekmann, O., J.A.P. Heesterbeek, & J.A.J. Metz (1995) The legacy of Kermack and McKendrick, in Epidemic Models: Their Structure and Relation to Data, D. Mollison, ed., Cambridge University Press, pp. 95–115. 





45. Wallinga, J. & P. Teunis (2004) Different epidemic curves for severe acute respiratory syndrome reveal similar impacts of control measures, Am. J. Epidem. 160: 509–516, 



31. Repeat Exercise 30 but for $t _ { 0 } ~ = ~ 4 0$ . Describe the qualitative differences in epidemic curves and cumulative cases between the case $t _ { 0 } = 3 0$ and the case $t _ { 0 } = 4 0 ?$ What are the implications of these differences for public health policy decisions? 



21. Hartley, D.M., J.G. Morris Jr. & D.L. Smith (2006) Hyperinfectivity: a critical element in the ability of V. cholerae to cause epidemics? PLOS Med. 3:63–69. 





46. Wearing, H.J., P. Rohani & M. J. Keeling (2005) Appropriate models for the management of infectious diseases, PLOS Medicine, 2: 621–627. 



## References



22. Heffernan, J.M., R.J. Smith? & L.M. Wahl (2005) Perspectives on the basic reproductive ratio, J. Roy. Soc. Interface 2: 281–293. 





47. Yan, P. and Z. Feng (2010) Variability order of the latent and the infectious periods in a deterministic SEIR epidemic model and evaluation of control effectiveness Math. Biosc. 224: 43–52. 





23. Hyman, J.M., J. Li & E. A. Stanley (1999) The differential infectivity and staged progression models for the transmission of HIV, Math. Biosc. 155: 77–109. 





48. Yang, C.K. and F. Brauer (2009) Calculation of $\mathcal { R } _ { 0 }$ for age-of-infection models, Math. Biosc. & Eng. 5: 585–599 





1. Alexanderian, A., M.K. Gobbert, K.R. Fister, H. Gaff, S. Lenhart, and E. Schaefer (2011) An age-structured model for the spread of epidemic cholera: Analysis and simulation, Nonlin. Anal. Real World Appl. 12: 3483–3498. 





24. Kermack, W.O. & A.G. McKendrick (1927) A contribution to the mathematical theory of epidemics. Proc. Royal Soc. London. 115: 700–721. 





2. Andrews, J.R. & and S. Basu (2011) Transmission dynamics and control of cholera in Haiti: an epidemic model, Lancet 377: 1248–1255. 





25. King, A.A. E.L. Ionides, M. Pascual, & M.J. Bouma (2008) Inapparent infectious and cholera dynamics, Nature 454: 877–890. 





3. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2006) Simple models for containment of a pandemic, J. Roy. Soc. Interface, 3: 453–457. 





26. Lloyd, A.L. (2001) Realistic distributions of infectious periods in epidemic models: Changing patterns of persistence and dynamics, Theor. Pop. Biol., 60: 59–71. 





4. Arino, J. F. Brauer, P. van den Driessche, J. Watmough& J. Wu (2007) A final size relation for epidemic models, Math. Biosc. & Eng. 4: 159–176. 





27. Meyers, L.A. (2007) Contact network epidemiology: Bond percolation applied to infectious disease prediction and control, Bull. Am. Math. Soc., 44: 63–86. 





5. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2008) A model for influenza with vaccination and antiviral treatment, Theor. Pop. Biol. 253: 118–130. 





28. Meyers, L.A., M.E.J. Newman and B. Pourbohloul(2006) Predicting epidemics on directed contact networks, J. Theor. Biol., 240: 400–418. 





6. Bansal, S., J. Read, B. Pourbohloul, and L.A. Meyers (2010) The dynamic nature of contact networks in infectious disease epidemiology, J. Biol. Dyn., 4: 478–489. 





29. Meyers, L.A., B. Pourbohloul, M.E.J. Newman, D.M. Skowronski, and R.C. Brunham (2005) Network theory and SARS: predicting outbreak diversity, J. Theor. Biol., 232: 71–81. 





7. Brauer, F., C. Castillo-Chavez, and Z. Feng (2010) Discrete epidemic models, Math. Biosc. & Eng. 7: 1–15. 





30. Miller, J.C. (2010) A note on a paper by Erik Volz: SIR dynamics in random networks. J. Math. Biol. https://doi.org/10.1007/s00285-010-0337-9. 





8. Brauer, F., Z. Shuai, & P. van den Driessche (2013) Dynamics of an age-of-infection cholera model, Math. Biosc. & Eng. 10:1335–1349. 





31. Miller, J.C. and E. Volz (2011) Simple rules govern epidemic dynamics in complex networks, to appear. 





9. Brauer, F., P. van den Driessche and J. Wu, eds. (2008) Mathematical Epidemiology, Lecture Notes in Mathematics, Mathematical Biosciences subseries 1945, Springer, Berlin - Heidelberg - New York. 





32. Newman, M.E.J. (2002) The spread of epidemic disease on networks, Phys. Rev. E 66, 016128. 





33. Newman, M.E.J. (2003) The structure and function of complex networks. SIAM Review, 45: 167–256. 





34. Newman, M.E.J., S.H. Strogatz & D.J. Watts (2001) Random graphs with arbitrary degree distributions and their applications, Phys. Rev. E 64. 



# Chapter 5 Models with Heterogeneous Mixing

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/6718bd5f-9f3d-4116-9c51-c0259ce535fe/03d949ad4b89c044951b6a01751dfc5fa69b20230fc991d799c0756758158033.jpg)


## 5.1 A Vaccination Model

To cope with annual seasonal influenza epidemics there is a program of vaccination before the “flu” season begins. Each year a vaccine is produced aimed at protecting against the three influenza strains considered most dangerous for the coming season. We formulate a model to add vaccination to the simple SI R model under the assumption that vaccination reduces susceptibility (the probability of infection if a contact with an infected member of the population is made). 

We consider a population of total size N and assume that a fraction $\gamma$ of this population is vaccinated prior to a disease outbreak. Thus we have unvaccinated and vaccinated sub-populations of sizes $N _ { U } = ( 1 - \gamma ) N$ and $N _ { V } = \gamma N$ , respectively. We assume that vaccinated members have susceptibility to infection reduced by a factor $\sigma , 0 \leq \sigma \leq 1$ , with $\sigma = 0$ describing a perfectly effective vaccine and $\sigma = 1$ describing a vaccine that has no effect. We assume also that vaccinated individuals who are infected have infectivity reduced by a factor δ and both vaccinated and unvaccinated individuals have a recovery rate α. The number of contacts in unit time per member is $a _ { U }$ for unvaccinated individuals and $a _ { V }$ for vaccinated individuals. These may be equal. 

In this chapter we will study models in which there is more than one susceptible or infective compartment, and it is convenient to formulate such models using the number of contacts in unit time instead of the number of contacts multiplied by the total population size. Thus, for example, instead of writing the simple epidemic model as 

$$
S ^ {\prime} = \beta S I, \quad I ^ {\prime} = \beta S I - \alpha I,
$$

we would write it as 

$$
S ^ {\prime} = - a S \frac {I}{N}, \quad I ^ {\prime} = a S \frac {I}{N} - \alpha I.
$$

We let $S _ { U } , S _ { V } , I _ { U } , I _ { V }$ denote the number of unvaccinated susceptibles, the number of vaccinated susceptibles, the number of unvaccinated infectives, and the number of vaccinated infectives, respectively. The resulting model is 

$$
S _ {U} ^ {\prime} = - a _ {U} S _ {U} \left[ \frac {I _ {U}}{N _ {U}} + \delta \frac {I _ {V}}{N _ {V}} \right]
$$

$$
S _ {V} ^ {\prime} = - \sigma a _ {V} S _ {V} \left[ \frac {I _ {U}}{N _ {U}} + \delta \frac {I _ {V}}{N _ {V}} \right] \tag {5.1}
$$

$$
I _ {U} ^ {\prime} = a _ {U} S _ {U} \left[ \frac {I _ {U}}{N _ {U}} + \delta \frac {I _ {V}}{N _ {V}} \right] - \alpha I _ {U}
$$

$$
I _ {V} ^ {\prime} = \sigma a _ {V} S _ {V} \left[ \frac {I _ {U}}{N _ {U}} + \delta \frac {I _ {V}}{N _ {V}} \right] - \alpha I _ {V}.
$$

The initial conditions prescribe $S _ { U } ( 0 ) , S _ { V } ( 0 ) , I _ { U } ( 0 ) , I _ { V } ( 0 )$ , with 

$$
S _ {U} (0) + I _ {U} (0) = N _ {U}, \quad S _ {V} (0) + I _ {V} (0) = N _ {V}.
$$

Since the infection now is beginning in a population which is not fully susceptible, we speak of the control reproduction number $\mathcal { R } _ { c }$ rather than the basic reproduction number. However, as we will soon see, calculation of the control reproduction number will require a more general definition and a considerable amount of technical computation. The computation method is applicable to both basic and control reproduction numbers. We will use the term reproduction number to denote either a basic reproduction number or a control reproduction number. We are able to obtain final size relations without knowledge of the reproduction number but these final size relations do contain information about the reproduction number, and more. 

Since $S _ { U }$ and $S _ { V }$ are decreasing non-negative functions they have limits $S _ { U } ( \infty )$ and $S _ { V } ( \infty )$ , respectively, as $t ~  ~ \infty$ . The sum of the equations for $S _ { U }$ and $I _ { U }$ in (5.1) is 

$$
(S _ {U} + I _ {U}) ^ {\prime} = - \alpha I _ {U},
$$

from which we conclude, just as in the analysis of the simple SI R model in Sect. 2.4, that $I _ { U } ( t ) \to 0 { \mathrm { a s } } t \to \infty$ , and that 

$$
\alpha \int_ {0} ^ {\infty} I _ {U} (t) d t = N _ {U} - S _ {U} (\infty). \tag {5.2}
$$

## 5.1 A Vaccination Model

Similarly, using the sum of the equations for $S _ { V }$ and $I _ { V }$ , we see that $I _ { V } ( t ) \to 0$ as $t \to \infty$ , and that 

$$
\alpha \int_ {0} ^ {\infty} I _ {V} (t) d t = N _ {V} - S _ {V} (\infty). \tag {5.3}
$$

Integration of the equation for $S _ { U }$ in (5.1) and use of (5.2), (5.3) gives 

$$
\begin{array}{l} \log \frac {S _ {U} (0)}{S _ {U} (\infty)} = a _ {U} \left[ \int_ {0} ^ {\infty} I _ {U} (t) d t + \delta \int_ {0} ^ {\infty} I _ {V} (t) d t \right] \tag {5.4} \\ = \frac {a _ {U}}{\alpha} \left[ 1 - \frac {S _ {U} (\infty)}{N _ {U}} \right] + \frac {\delta a _ {U}}{\alpha} \left[ 1 - \frac {S _ {V} (\infty)}{N _ {V}} \right]. \\ \end{array}
$$

A similar calculation using the equation for $S _ { V }$ gives 

$$
\log \frac {S _ {V} (0)}{S _ {V} (\infty)} = \frac {\sigma a _ {V}}{\alpha} \left[ 1 - \frac {S _ {U} (\infty)}{N _ {U}} \right] + \frac {\delta \sigma a _ {V}}{\alpha} \left[ 1 - \frac {S _ {V} (\infty)}{N _ {V}} \right]. \tag {5.5}
$$

This pair of Eqs. (5.4) and (5.5) are the final size relations. They make it possible to calculate $S _ { U } ( \infty ) , S _ { V } ( \infty )$ if the parameters of the model are known. 

It is convenient to define the matrix 

$$
\mathcal {R} = \left[ \begin{array}{c c} \mathcal {R} _ {1 1} & \mathcal {R} _ {1 2} \\ \mathcal {R} _ {2 1} & \mathcal {R} _ {2 2} \end{array} \right] = \left[ \begin{array}{c c} \frac {a _ {U}}{\alpha} & \frac {\delta a _ {U}}{\alpha} \\ \frac {\sigma a _ {V}}{\alpha_ {U}} & \frac {\delta \sigma a _ {V}}{\alpha_ {V}} \end{array} \right].
$$

The element $\mathcal { R } _ { i j }$ can be interpreted as the average number of susceptibles of group i infected by an infective of type j over its infectious period. 

Then the final size relations (5.4), (5.5) may be written as 

$$
\log \frac {S _ {U} (0)}{S _ {U} (\infty)} = \mathcal {R} _ {1 1} \left[ 1 - \frac {S _ {U} (\infty)}{N _ {U}} \right] + \mathcal {R} _ {1 2} \left[ 1 - \frac {S _ {V} (\infty)}{N _ {V}} \right] \tag {5.6}
$$

$$
\log \frac {S _ {V} (0)}{S _ {V} (\infty)} = \mathcal {R} _ {2 1} \left[ 1 - \frac {S _ {U} (\infty)}{N _ {U}} \right] + \mathcal {R} _ {2 2} \left[ 1 - \frac {S _ {V} (\infty)}{N _ {V}} \right].
$$

The matrix $\mathcal { R }$ is closely related to the reproduction number. In the next section we describe a general method for calculating reproduction numbers that will involve a matrix which is similar to this matrix. 

## 5.2 The Next Generation Matrix and the Basic Reproduction Number

Up to this point, we have calculated reproduction numbers by following the secondary cases caused by a single infective introduced into a population. However, if there are sub-populations with different susceptibility to infection, as in the vaccination model introduced in Sect. 5.1, it is necessary to follow the secondary infections in the sub-populations separately, and this approach will not yield the reproduction number. It is necessary to give a more general approach to the meaning of the reproduction number, and this is done through the next generation matrix [18, 19, 45]. The underlying idea is that we must calculate the matrix whose $( i , j )$ entry is the number of secondary infections caused in compartment i by an infected individual in compartment $j$ . We will follow the development in [45, 46] for ordinary differential equation models, even though the approach of [18, 19] is more general. 

In a compartmental disease transmission model, we sort individuals into compartments based on a single, discrete state variable. A compartment is called a disease compartment if the individuals therein are infected. Note that this use of the term disease is broader than the clinical definition and includes stages of infection such as exposed stages in which infected individuals are not necessarily infective. Suppose there are n disease compartments and $m$ non-disease compartments, and let $x \in R ^ { n }$ and $\boldsymbol { y } ~ \in ~ \boldsymbol { R } ^ { m }$ be the sub-populations in each of these compartments. Further, we denote by $\mathcal { F } _ { i }$ the rate at which secondary infections increase the $i ^ { t h }$ disease compartment and by $\mathcal { V } _ { i }$ the rate at which disease progression, death, and recovery decrease the $i ^ { t h }$ compartment, that is, $\mathcal { V } _ { i }$ is the net outflow from the i th compartment due to disease progression, death, and recovery, with inflow from other compartments yielding a negative contribution. The compartmental model can then be written in the form 

$$
x _ {i} ^ {\prime} = \mathscr {F} _ {i} (x, y) - \mathscr {V} _ {i} (x, y), \quad i = 1, \dots , n, \tag {5.7}
$$

$$
y _ {j} ^ {\prime} = g _ {j} (x, y), \quad j = 1, \ldots , m.
$$

Note that the decomposition of the dynamics into $\mathcal { F }$ and $\mathcal { V }$ and the designation of compartments as infected or uninfected may not be unique; different decompositions correspond to different epidemiological interpretations of the model. The definitions of $\mathcal { F }$ and $\mathcal { V }$ used here differ slightly from those in [45]. 

The derivation of the basic reproduction number is based on the linearization of the ODE model about a disease-free equilibrium. We make the following assumptions: 

• $\mathcal { F } _ { i } ( 0 , y ) = 0$ and $\mathcal { V } _ { i } ( 0 , y ) = 0$ for all $y \ge 0$ and $i = 1 , \ldots , n$ . 

• The disease-free system $y ^ { \prime } = g ( 0 , y )$ has a unique equilibrium that is asymptotically stable, that is, all solutions with initial conditions of the form $( 0 , y )$ approach a point $( 0 , y _ { o } )$ as $t  \infty$ . We refer to this point as the disease-free equilibrium. 

The first assumption says that all new infections are secondary infections arising from infected hosts; there is no immigration of individuals into the disease compartments. It ensures that the disease-free set, which consists of all points of the form $( 0 , y )$ , is invariant. That is, any solution with no infected individuals at some point in time will be free of infection for all time. The second assumption ensures that the disease-free equilibrium is also an equilibrium of the full system. 

Next, we further assume that 

• $\mathcal { F } _ { i } ( x , y ) \geq 0$ for all non-negative x and y and $i = 1 , \ldots , n$ . 

• $\mathcal { V } _ { i } ( x , y ) \leq 0$ whenever $x _ { i } = 0 , i = 1 , \ldots , n .$ 

• $\textstyle \sum _ { i = 1 } ^ { n } { \mathcal { V } } _ { i } ( x , y ) \geq 0$ for all non-negative x and $y .$ 

The reasons for these assumptions are that the function $\mathcal { F }$ represents new infections and cannot be negative, each component, $\mathcal { V } _ { i }$ , represents a net outflow from compartment i and must be negative (inflow only) whenever the compartment $\textstyle \sum _ { i = 1 } ^ { n } { \mathcal { V } } _ { i } ( x , y )$ = compartments. Terms in the model leading to increases in $\textstyle \sum _ { i = 1 } ^ { n } x _ { i }$ are assumed to represent secondary infections and therefore belong in $\mathcal { F }$ . 

Suppose that a single infected person is introduced into a population originally free of disease. The initial ability of the disease to spread through the population is determined by an examination of the linearization of (5.7) about the disease-free equilibrium $( 0 , y _ { o } )$ . It is easy to see that the assumption $\mathcal { F } _ { i } ( 0 , y ) = 0 , \mathcal { V } _ { i } ( 0 , y ) = 0$ implies 

$$
\frac {\partial \mathcal {F} _ {i}}{\partial y _ {j}} (0, y _ {o}) = \frac {\partial \mathcal {V} _ {i}}{\partial y _ {j}} (0, y _ {o}) = 0
$$

for every pair $( i , j )$ . This implies that the linearized equations for the disease compartments, x, are decoupled from the remaining equations and can be written as 

$$
x ^ {\prime} = (F - V) x, \tag {5.8}
$$

where F and V are the $n \times n$ matrices with entries 

$$
F = \frac {\partial \mathcal {F} _ {i}}{\partial x _ {j}} (0, y _ {o}) \qquad \mathrm{and} \qquad V = \frac {\partial \mathcal {V} _ {i}}{\partial x _ {j}} (0, y _ {o}).
$$

Because of the assumption that the disease-free system $\begin{array} { r } { \boldsymbol { y } ^ { \prime } = \boldsymbol { g } ( 0 , \boldsymbol { y } ) } \end{array}$ has a unique asymptotically stable equilibrium, the linear stability of the system (5.7) is completely determined by the linear stability of the matrix $( F - V )$ in (5.8). 

The number of secondary infections produced by a single infected individual can be expressed as the product of the expected duration of the infective period and the rate at which secondary infections occur. For the general model with n disease compartments, these are computed for each compartment for a hypothetical index case. The expected time the index case spends in each compartment is given by the integral $\textstyle \int _ { 0 } ^ { \infty } \phi ( t , x _ { 0 } ) \ d t$ , where $\phi ( t , x _ { 0 } )$ is the solution of (5.8) with $F ~ = ~ 0$ (no secondary infections) and non-negative initial conditions, $x _ { 0 }$ , representing an infected index case: 

$$
x ^ {\prime} = - V x, \quad x (0) = x _ {0}. \tag {5.9}
$$

In effect, this solution shows the path of the index case through the disease compartments from the initial exposure through death or recovery with the ith $i ^ { \mathrm { t h } }$ component of $\phi ( t , x _ { 0 } )$ interpreted as the probability that the index case (introduced at time $t = 0 )$ is in disease state i at time t . The solution of (5.9) is $\phi ( t , x _ { 0 } ) =$ $e ^ { - V t } x _ { 0 }$ , where the exponential of a matrix is defined by the Taylor series 

$$
e ^ {A} = I + A + \frac {A ^ {2}}{2} + \frac {A ^ {3}}{3 !} + \dots + \frac {A ^ {k}}{k !} + \dots .
$$

This series converges for all t and $\begin{array} { r } { \int _ { 0 } ^ { \infty } \phi ( t , x _ { 0 } ) d t \ = \ V ^ { - 1 } x _ { 0 } } \end{array}$ (see, for example, [29]). The $( i , j )$ entry of the matrix $V ^ { - 1 }$ can be interpreted as the expected time an individual initially introduced into disease compartment j spends in disease compartment i. 

The $( i , j )$ entry of the matrix F is the rate at which secondary infections are produced in compartment i by an index case in compartment $j$ . Hence, the expected number of secondary infections produced by the index case is given by 

$$
\int_ {0} ^ {\infty} F e ^ {- V t} x _ {0} d t = F V ^ {- 1} x _ {0}.
$$

Following Diekmann and Heesterbeek [18], the matrix $K _ { L } = F V ^ { - 1 }$ is referred to as the next generation matrix with large domain for the system at the disease-free equilibrium. The $( i , j )$ entry of K is the expected number of secondary infections in compartment i produced by individuals initially in compartment $j ,$ , assuming, of course, that the environment seen by the individual remains homogeneous for the duration of its infection. 

Shortly, we will describe some results from matrix theory which imply that the matrix, $K _ { L } = F V ^ { - 1 }$ is non-negative and therefore has a non-negative eigenvalue, $\mathcal { R } _ { 0 } ~ = ~ \rho ( F V ^ { - 1 } )$ , such that there are no other eigenvalues of K with modulus greater than $\mathcal { R } _ { 0 }$ and there is a non-negative eigenvector ω associated with $\mathcal { R } _ { 0 }$ [7, Theorem 1.3.2]. This eigenvector is in a sense the distribution of infected individuals that produces the greatest number, $\mathcal { R } _ { 0 }$ , of secondary infections per generation. Thus, $\mathcal { R } _ { 0 }$ and the associated eigenvector $\omega$ suitably define a “typical” infective and the basic reproduction number can be rigorously defined as the spectral radius of the matrix, $K _ { L }$ . The spectral radius of a matrix $K _ { L }$ , denoted by $\rho ( K _ { L } )$ , is the maximum of the moduli of the eigenvalues of $K _ { L }$ . If $K _ { L }$ is irreducible, then $\mathcal { R } _ { 0 }$ is a simple eigenvalue of $K _ { L }$ and is strictly larger in modulus than all other eigenvalues of $K _ { L }$ . However, if $K _ { L }$ is reducible, which is often the case for diseases with multiple strains, then $K _ { L }$ may have several positive real eigenvectors corresponding to reproduction numbers for each competing strain of the disease. 

We have interpreted the reproduction number for a disease as the number of secondary infections produced by an infected individual in a population of susceptible individuals. If the reproduction number $\mathcal { R } _ { 0 } = \rho ( F V ^ { - 1 } )$ is consistent with the differential equation model, then it should follow that the disease-free equilibrium is asymptotically stable if $\mathcal { R } _ { 0 } < 1$ and unstable if $\mathcal { R } _ { 0 } > 1$ . 

This is shown through a sequence of lemmas. 

The spectral bound (or abscissa) of a matrix A is the maximum real part of all eigenvalues of A. If each entry of a matrix T is non-negative we write $T \geq 0$ and refer to T as a non-negative matrix. A matrix of the form $A = s I - B$ , with $B \geq 0$ , is said to have the Z sign pattern. These are matrices whose off-diagonal entries are negative or zero. If in addition, $s \geq \rho ( B )$ , then A is called an M-matrix. Note that in this section, I denotes an identity matrix, not a population of infectious individuals. The following lemma is a standard result from [7]. 

Lemma 5.1 If A has the Z sign pattern, then $A ^ { - 1 } \geq 0$ if and only if A is a nonsingular M-matrix. 

The assumptions we have made imply that each entry of F is non-negative and that the off-diagonal entries of V are negative or zero. Thus V has the Z sign pattern. Also, the column sums of V are positive or zero, which, together with the Z sign pattern, implies that V is a (possibly singular) M-matrix [7, condition $M _ { 3 5 }$ of Theorem 6.2.3]. In what follows, it is assumed that V is non-singular. In this case, $V ^ { - 1 } \geq 0$ , by Lemma 5.1. Hence, $K _ { L } = F V ^ { - 1 }$ is also non-negative. 

Lemma 5.2 If F is non-negative and V is a non-singular M-matrix, then $\mathcal { R } _ { 0 } =$ $\rho ( F V ^ { - 1 } ) < 1$ if and only if all eigenvalues of $( F - V )$ have negative real parts. 

Proof Suppose $F \_ { 0 }$ and V is a non-singular M-matrix. By the proof of Lemma 5.1, $V ^ { - 1 } \geq 0 $ . Thus, $( I ~ - ~ F V ^ { - 1 } )$ has the Z sign pattern, and by Lemma 5.1, $( I - F V ^ { - 1 } ) ^ { - 1 } \geq 0$ if and only if $\rho ( F V ^ { - 1 } ) < 1$ . From the equalities $( V - F ) ^ { - 1 } = V ^ { - 1 } ( I - F V ^ { - 1 } ) ^ { - 1 }$ and $V ( \dot { V _ { } } - F ) ^ { - 1 } = I + F ( V - F ) ^ { - 1 }$ , it follows that $( V - F ) ^ { - 1 } \geq 0$ if and only if $( I - F V ^ { - 1 } ) ^ { - 1 } \geq 0$ . Finally, $( V - F )$ has the Z sign pattern, so by Lemma 5.1, $( V - F ) ^ { - 1 } \geq 0$ if and only if $( V - F )$ is a non-singular M-matrix. Since the eigenvalues of a non-singular M-matrix all have positive real parts, this completes the proof. □ 

Theorem 5.1 Consider the disease transmission model given by (5.7). The diseasefree equilibrium of (5.7) is locally asymptotically stable $i f \mathcal { R } _ { 0 } < 1$ , but unstable if $\mathcal { R } _ { 0 } > 1$ . 