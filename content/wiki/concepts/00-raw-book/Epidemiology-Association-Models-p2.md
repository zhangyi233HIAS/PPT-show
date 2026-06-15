an effect modifier. We compare the adjusted HR estimated from two Cox PH models: “Model 1” includes the risk factor of depression and all eight confounding variables, but does not include positive affect; “Model 2” includes the risk factor, the eight confounding variables, and positive affect. The adjusted HR estimated from model 1 is 1.43 (95%CI: 1.26–1.61), with a corresponding −2logL value of 24795. On the other hand, the adjusted HR estimated from model 2 is 1.20 (95%CI: 1.05–1.38), with a −2logL value of 24730. 

The change-in-estimate in HRs between the two models is 19.2% [(1.43–1.20)/1.20 = 0.192]. This change suggests that the inclusion of positive affect as a variable in model 2 leads to a 19.2% reduction in the association between depression and death, after adjusting for the other confounding variables. This change may arise due to either confounding bias or the effect modification of positive affect. 

In model 3, we assess the potential modification effect between depression and positive affect while adjusting for the eight confounding variables. The regression coefficient of the product term is −0.06, with a corresponding p-value of 0.01. This indicates that the effect of depression and positive affect on death is not multiplicative, suggesting the presence of a modification effect. The value of −2logL in model 3 is 24,724. 

The following SAS syntaxes were used to execute the three Cox PH models: 

```txt
title 'Model 1';
PROC phreg data=nhefs83;
class dep (ref=first)sexsubj race marital area income bmi3(ref=first);
model Survtime*death(0)=dep age sexsubj race eduy marital area income bmi3 /r1;
RUN; 
```

```txt
title 'Model 2';
PROC phreg data=nhefs83;
class dep (ref=first) sexsubj race marital area income bmi3(ref=first);
model Survtime*death(0)=dep c_paffect age sexsubj race eduy marital area income bmi3 /r1;
RUN; 
```

```txt
title 'Model 3';
PROC phreg data=nhefs83;
class dep (ref=first) sexsubj race marital area income bmi3(ref=first);
model Survtime*death(0)=dep|c_paffect age sexsubj race eduy marital area income bmi3 /rl;
RUN; 
```

The likelihood ratio test is used to compare the fit of nested models and determine which model better fits the data. In this case, we compare model 1 and model 2. The null hypothesis is that the coefficient for positive affect $( \beta _ { \mathrm { { p a f f e c t } } } )$ is equal to zero, while the alternative hypothesis is that $\beta _ { \mathrm { { p a f f e c t } } }$ is not equal to zero. 

$$
\chi^ {2} = - 2 \log L _ {1} - \left(- 2 \log L _ {2}\right) = 2 4 7 9 5 - 2 4 7 3 0 = 6 5 d f = 2 - 1 = 1, p <   0. 0 0 1
$$

According to this result, model 2 fits the data better than model 1. 

However, as mentioned in the previous chapters, it’s important to note that the improved model fit with the inclusion of positive affect does not imply that positive affect is a confounding variable. The statistical significance of the association between positive affect and death does not indicate an association between positive affect and depression. Both confounding and modification effects can lead to changes in the hazard ratios. 

We next compare model 2 and model 3. 

Null hypothesis: $\beta _ { \mathrm { d e p } ^ { * } \mathrm { p a f f e c t } } = 0 ;$ Alternative hypothesis: $\beta _ { \mathrm { d e p } ^ { * } \mathrm { p a f f e c t } } \neq 0 .$ 

$$
\chi^ {2} = - 2 \log L _ {2} - \left(- 2 \log L _ {3}\right) = 2 4 7 3 0 - 2 4 7 2 4 = 6 d f = 3 - 2 = 1, p = 0. 0 1
$$

The results of the two comparisons indicate that model 3 fits the data better than the other two nested models. Based on the results of the likelihood ratio tests and the examination of the coefficient of the product term, it can be concluded there is a modification effect between depression and positive affect on the risk of death. 

However, it is important to acknowledge a critical caveat when using tests of fit to select confounding variables. This approach may lead to inappropriate decisions about confounder control, as variables may not be included in the model simply because they do not significantly improve the fit, even if they are important confounders (see Section 1.7 in Chapter 1). Thus, the selection of confounders cannot rely on the test of model fit (Greenland, Daniel, and Pearce 2016), see Table 3.5. 

The following SAS syntaxes are used to estimate the Chi-squared statistics and p-values presented above: 

```txt
DATA chitest;
model2 = 24730;
model3 = 24724;
DF = 1;
P_VALUE = 1 - PROBCHI(model2-model3,DF);
RUN; 
```

PROC freq data=chitest; tables p_value; RUN; 

Next, we assess how positive affect modifies the association between depression and death. 


TABLE 3.5 Summary of the Results from the Comparisons between the Three Nested Models


<table><tr><td></td><td>Covariates</td><td>Adjusted HR</td><td>-2logL</td><td><eq>\chi^2</eq></td><td>p-Value</td></tr><tr><td>Model 1</td><td>Depression + 8 confounders</td><td>1.43</td><td>24,795</td><td></td><td></td></tr><tr><td>Model 2</td><td>Depression + 8 confounders + positive affect</td><td>1.20</td><td>24,730</td><td>Model 1 vs. 265</td><td>&lt; 0.001</td></tr><tr><td>Model 3</td><td>Depression + 8 confounders + product terms of depression and positive affect</td><td></td><td>24,724</td><td>Model 2 vs. 36</td><td>0.01</td></tr></table>

## Example 3.12

In this Cox PH model, we include a product term called “dep*c_paffect” to assess the potential modification effect between depression and positive affect on death. We adjust for the eight confounding variables in the model. To examine how positive affect (c_paffect) modifies the association between depression and death, we estimate the depressiondeath association at three specific levels of positive affect: 10 (c_systolic = 10–12 = −2), 15 (c_systolic = 3), and 17 (c_systolic = 5). 

```txt
PROC phreg data=nhefs83;
class dep (ref=first) sexsubj race marital area income bmi3(ref=first);
model Survtime*death(0)=dep|c_paffect age sexsubj race eduy marital area income bmi3;
hazard ratio dep /diff=ref at (c_paffect=-2 3 5);
RUN; 
```


SAS Output 3.12 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.04971</td><td>0.09146</td><td>0.2954</td><td>0.5868</td></tr><tr><td>c_p affect</td><td></td><td>1</td><td>-0.04051</td><td>0.01177</td><td>11.8426</td><td>0.0006</td></tr><tr><td>c_p affect*dep</td><td>1</td><td>1</td><td>-0.06019</td><td>0.02368</td><td>6.4594</td><td>0.0110</td></tr><tr><td>age</td><td></td><td>1</td><td>0.07916</td><td>0.00257</td><td>946.1073</td><td>&lt;.0001</td></tr><tr><td>SEXSUBJ</td><td>1</td><td>1</td><td>0.79610</td><td>0.05852</td><td>185.0362</td><td>&lt;.0001</td></tr><tr><td>race</td><td>0</td><td>1</td><td>0.13682</td><td>0.07496</td><td>3.3317</td><td>0.0680</td></tr><tr><td>eduy</td><td></td><td>1</td><td>-0.02367</td><td>0.00845</td><td>7.8373</td><td>0.0051</td></tr><tr><td>marital</td><td>0</td><td>1</td><td>-0.18687</td><td>0.06397</td><td>8.5335</td><td>0.0035</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.07929</td><td>0.11960</td><td>0.4396</td><td>0.5073</td></tr><tr><td>area</td><td>0</td><td>1</td><td>0.09805</td><td>0.07894</td><td>1.5430</td><td>0.2142</td></tr><tr><td>area</td><td>1</td><td>1</td><td>0.24639</td><td>0.07702</td><td>10.2330</td><td>0.0014</td></tr><tr><td>income</td><td>0</td><td>1</td><td>-0.67481</td><td>0.13983</td><td>23.2901</td><td>&lt;.0001</td></tr><tr><td>income</td><td>1</td><td>1</td><td>-0.50558</td><td>0.11518</td><td>19.2675</td><td>&lt;.0001</td></tr><tr><td>income</td><td>2</td><td>1</td><td>-0.21670</td><td>0.09257</td><td>5.4799</td><td>0.0192</td></tr><tr><td>income</td><td>3</td><td>1</td><td>-0.20239</td><td>0.08826</td><td>5.2588</td><td>0.0218</td></tr><tr><td>income</td><td>4</td><td>1</td><td>-0.13163</td><td>0.09404</td><td>1.9589</td><td>0.1616</td></tr><tr><td>bmi3</td><td>1</td><td>1</td><td>0.39608</td><td>0.10657</td><td>13.8124</td><td>0.0002</td></tr><tr><td>bmi3</td><td>2</td><td>1</td><td>-0.11527</td><td>0.05854</td><td>3.8771</td><td>0.0489</td></tr><tr><td>bmi3</td><td>3</td><td>1</td><td>0.00956</td><td>0.07517</td><td>0.0162</td><td>0.8988</td></tr></table>

$$
H R = \exp \left(0. 0 4 9 7 1 - 0. 0 6 0 1 9 * c _ {-} p a f f e c t\right)
$$

As documented in the following results, the association between depression and death is attenuated as the score of positive affect increases. 


SAS Output 3.13 Hazard ratios at three levels of positive affect


<table><tr><td colspan="4">Hazard Ratios for dep</td></tr><tr><td>Description</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0 At c_paffect=-2</td><td>1.185</td><td>1.027</td><td>1.368</td></tr><tr><td>dep 1 vs 0 At c_paffect=3</td><td>0.877</td><td>0.659</td><td>1.168</td></tr><tr><td>dep 1 vs 0 At c_paffect=5</td><td>0.778</td><td>0.537</td><td>1.126</td></tr></table>


TABLE 3.6 Hazard Ratios of Depression on All-Cause Mortality at Three Levels of Positive Affect


<table><tr><td>Positive Affect</td><td>Death</td><td>N</td><td>HR</td><td>95%CI</td></tr><tr><td>Low</td><td>340</td><td>1,063</td><td>1.36</td><td>1.10–1.70</td></tr><tr><td>Moderate</td><td>787</td><td>3,591</td><td>1.10</td><td>0.90–1.34</td></tr><tr><td>High</td><td>447</td><td>2,809</td><td>1.10</td><td>0.68–1.77</td></tr></table>

Following the same approach as described in Section 2.7.6, we divided the sample into three subgroups based on the levels of positive affect: low (< 10), moderate (10-13), and high (> 13). We estimated the HR by adjusting for the eight confounding variables in a Cox PH model for each of these three groups. The results, presented in Table 3.6, show that in the low positive affect group, the hazard for depressed individuals is 1.36 times higher than the hazard for non-depressed individuals. However, in the moderate and high positive affect groups, the association between depression and death is close to the null. These findings suggest that positive affect may act as a buffer, reducing the impact of depression on all-cause mortality. The modification effects estimated in terms of hazard ratios are consistent with those estimated using incidence rate ratios (as discussed in Section 2.7.6). 

This example illustrates the data-driven approach described in Section 1.8.1 of Chapter 1 for assessing the potential role of positive affect in the causal pathway from depression to death. This analysis is conducted under the assumption that no prior knowledge is available to determine its role. In situations where we lack definitive knowledge to ascertain the role of a specific variable, whether it functions as a confounder or modifier, it is recommended to first evaluate for effect modification before examining confounding. This sequence is grounded in the rationale that if there is compelling evidence of modification by certain variables, the need to assess confounding with respect to these variables may become unnecessary (Hosmer, Lemeshow, and Sturdivant 2013, Kleinbaum and Klein 2010). 

## 3.4.4 Age Attained to Event as Timescale

In the previous sections, survival analysis has primarily utilized time-to-event as the timescale. However, an alternative approach involves using age attained at the event as the timescale. Section 2.2.4 discussed how age is often an important risk factor for diseases and deaths, and the hazard to change may be more as a function of age rather than as a function of time-to-event (Korn, Graubard, and Midthune 1997). For instance, if we consider a study subject aged 60 years who has been on a study for 10 years, we would anticipate a higher hazard compared to a subject aged 40 years who has also been on the study for 10 years. Given that observational cohort studies typically recruit subjects across a wide range of ages, it is important for survival analysis to account for the potential impact of age and other factors on hazards (Pencina, Larson, and D’Agostino 2007). 

The use of age as the timescale in survival analysis can present a challenge known as left truncation (Commenges et al. 1998). When time is measured in terms of age, study subjects are enrolled into a cohort at different ages, and their inclusion in the population at risk begins from that specific age onwards. To illustrate, if a subject enters a cohort at age 50 $( t _ { 0 } ) ,$ , their survival time is left-truncated at $t _ { 0 } { = } 5 0 ,$ , and their contribution to the risk set only starts from age 50. Consequently, left-truncated subjects are excluded from the risk set prior to their entry age (refer to Session 3.1.6 for a detailed explanation of the “risk set”). To address the issue of left truncation, one solution is to remove subjects from all risk sets before their entry age. The risk set at age t should include only those individuals who are still under study at that specific age t. In SAS PROC PHREG, the “ENTRY” option can be utilized to accomplish this adjustment (Gail et al. 2009). 


TABLE 3.7



Subjects’ Age at Entry and Age Attained to Death (d) or Censoring (c)


<table><tr><td>Subject</td><td>Death</td><td>Entry Age</td><td>Attained Age</td></tr><tr><td>A</td><td>d</td><td>66</td><td>69</td></tr><tr><td>B</td><td>c</td><td>65</td><td>72</td></tr><tr><td>C</td><td>c</td><td>57</td><td>61</td></tr><tr><td>D</td><td>d</td><td>55</td><td>60</td></tr><tr><td>E</td><td>c</td><td>58</td><td>66</td></tr><tr><td>F</td><td>d</td><td>67</td><td>70</td></tr></table>

Consider a hypothetical cohort consisting of six study subjects who entered at different ages (Table 3.7). Among them, three subjects (A, D, and F) died from the disease of interest (coded as “d”), while the remaining three (B, C, and E) were censored (coded as “c”). For instance, subject A entered the cohort at age 66 and died at age 69. 

To illustrate the concept of attained age as the timescale, Figure 3.12 displays the ages at which death and censoring occurred. 

Remember, the Kaplan–Meier method defines a risk set based on the observed time for each disease/death occurrence. The same approach is used here to define the risk sets. The first attained age at death is 60 (subject D), and at age 60, there are three subjects (C, D, E) in the risk set. The second attained age at death is 69 (subject A), and at age 69, three subjects (A, B, and F) are included in the risk set. The last attained age at death is 70 (subject F), and at age 70, two subjects (B and F) are included in the risk set. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/cab4530405f5b1f11d6e53af9f07437741b8d6b0a7b754090dfbec91d425c833.jpg)



FIGURE 3.12



Age as timescale with left truncation.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/c8c965f9818e2d0d07f793e760119365b421b4f0740eff2443d162c0ee73a873.jpg)



Time-to-event in year



FIGURE 3.13 Illustration of the time-to-event as the timescale in survival analysis.


Subject B entered the cohort at age 65 and remained at risk until being censored at age 72. Therefore, subject B is included in the risk sets at ages 69 and 70. Subject C entered the cohort at age 57 and lost to follow-up at age 61, thus being included only in the first risk set at age 60. Due to left truncation, subjects A, B, and F were not included in the first risk set at age 60. In contrast, if time-to-event were used as the timescale, the risk set in year 3, when subjects A and F died, would include all six subjects. Similarly, the risk set in year 5, when subject D died, would include subjects B, D, and E (Figure 3.13). 

To utilize attained age as the timescale, we modify Equation 3.10 by replacing $^ { \prime \prime } t ^ { \prime \prime }$ with “age” as the timescale in Equation 3.13: 

$$
h (t \mid X, \mathbf {Z}) = h _ {0} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}\right). \tag {3.10}
$$

$$
h (a g e \mid X, Z) = h _ {0} (a g e \mid e n t r y a g e) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + + \beta_ {p} Z _ {p}\right). \tag {3.13}
$$

Equation 3.13 differs from Equation 3.10 in that, in model 3.10, “t” represents the survival time since entry, whereas in Equation 3.13, “age” denotes the attained survival age at the event (death or censoring). Furthermore, it accounts for the left truncation at entry age. According to the regression model, age is treated as the time variable used to define the set of at-risk subjects at the time (age) that each case became a case. The underlying relation between the hazard and age is thus treated as an unknown nuisance function, $h _ { 0 } ,$ and the HR is assumed to be independent of age as exp $\begin{array} { r l } { \left( \beta _ { x } X + \beta _ { 1 } Z _ { 1 } + } & { { } + \beta _ { p } Z _ { p } \right) } \end{array}$ does not include the time variable of age. The Cox proportional hazards model assumptions remain applicable in the model utilizing attained age as the timescale. 

## Example 3.13

As depicted in Figure 3.14, the age distribution at entry into the NHANES study exhibited a considerable range among the study subjects. Additionally, the survival probability in both depressed and non-depressed subjects exhibited a strong association with age, as illustrated in Figure 3.15. The survival probability began to decline at age 50 and experienced a significant drop at age 70. These patterns observed in both figures suggest that utilizing attained age as the timescale in the Cox proportional hazards model may be more appropriate for the analysis. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/8319e3fe737922e78165a03ca534ceeee4e8cc8ea7ff0e4ddb080dfb7b970240.jpg)



FIGURE 3.14 Study subjects’ age at entry to NHANES study.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/08681c8534c07c702c859774c4f2e9fcfff190cd4caee8bfc9a30975cda04b62.jpg)



FIGURE 3.15 Survival probability over age (surage) among depressed and non-depressed subjects.


To re-analyze the interaction effect of depression and passive affect on death (Example 3.12), we will use attained age (“Surage”) as the timescale. For subjects who experienced an event (death), “Surage” represents the age at death. For censored subjects, “Surage” represents the age at censoring. The following SAS syntax can be used to model the associations. The ENTRY=age option is included to account for left truncation, with “age” representing the entry age variable. The variable of passive affect is centered by its mean of 12 scores. 

```txt
PROC phreg data=age_nhefs;
class dep (ref=first) sexsubj race marital area income
bmi3(ref=first);
model surage*death(0)=dep|c_paffect sexsubj race eduy
marital area income bmi3/entry=age;
hazard ratio dep /diff=ref at (c_paffect=-2 3 5);
RUN; 
```


SAS Output 3.14 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.07252</td><td>0.09137</td><td>0.6299</td><td>0.4274</td></tr><tr><td>c_p affect</td><td></td><td>1</td><td>-0.03697</td><td>0.01191</td><td>9.6323</td><td>0.0019</td></tr><tr><td>c_p affect*dep</td><td>1</td><td>1</td><td>-0.04904</td><td>0.02396</td><td>4.1912</td><td>0.0406</td></tr><tr><td>SEXSUBJ</td><td>1</td><td>1</td><td>0.77179</td><td>0.05919</td><td>170.0059</td><td>&lt;.0001</td></tr><tr><td>race</td><td>0</td><td>1</td><td>0.09581</td><td>0.07665</td><td>1.5626</td><td>0.2113</td></tr><tr><td>eduy</td><td></td><td>1</td><td>-0.02512</td><td>0.00859</td><td>8.5553</td><td>0.0034</td></tr><tr><td>marital</td><td>0</td><td>1</td><td>-0.16953</td><td>0.06513</td><td>6.7752</td><td>0.0092</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.05973</td><td>0.12062</td><td>0.2452</td><td>0.6204</td></tr><tr><td>area</td><td>0</td><td>1</td><td>0.10747</td><td>0.08042</td><td>1.7857</td><td>0.1815</td></tr><tr><td>area</td><td>1</td><td>1</td><td>0.25858</td><td>0.07844</td><td>10.8657</td><td>0.0010</td></tr><tr><td>income</td><td>0</td><td>1</td><td>-0.65333</td><td>0.14188</td><td>21.2043</td><td>&lt;.0001</td></tr><tr><td>income</td><td>1</td><td>1</td><td>-0.51067</td><td>0.11739</td><td>18.9242</td><td>&lt;.0001</td></tr><tr><td>income</td><td>2</td><td>1</td><td>-0.22098</td><td>0.09426</td><td>5.4961</td><td>0.0191</td></tr><tr><td>income</td><td>3</td><td>1</td><td>-0.19414</td><td>0.08989</td><td>4.6644</td><td>0.0308</td></tr><tr><td>income</td><td>4</td><td>1</td><td>-0.10314</td><td>0.09579</td><td>1.1595</td><td>0.2816</td></tr><tr><td>bmi3</td><td>1</td><td>1</td><td>0.39035</td><td>0.10986</td><td>12.6251</td><td>0.0004</td></tr><tr><td>bmi3</td><td>2</td><td>1</td><td>-0.11021</td><td>0.05930</td><td>3.4537</td><td>0.0631</td></tr><tr><td>bmi3</td><td>3</td><td>1</td><td>-0.00249</td><td>0.07668</td><td>0.0011</td><td>0.9741</td></tr></table>


SAS Output 3.15 Hazard ratios at three levels of positive affect


<table><tr><td colspan="4">Hazard Ratios for dep</td></tr><tr><td>Description</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0 At c_p affect=-2</td><td>1.186</td><td>1.026</td><td>1.370</td></tr><tr><td>dep 1 vs 0 At c_p affect=3</td><td>0.928</td><td>0.697</td><td>1.236</td></tr><tr><td>dep 1 vs 0 At c_p affect=5</td><td>0.841</td><td>0.581</td><td>1.219</td></tr></table>

Since the entry age was adjusted in the Cox PH model in Example 3.12, where time-toevent was used as the timescale, the results obtained from the two models are expected to be similar (see results in SAS Outputs 3.13 and 3.15). 

In summary, age is often utilized as a covariate in survival analysis when it should be treated as a left-truncation or delayed entry point. When age is used as a left-truncation point, it is not necessary to include it as a covariate in the model (Klein and Moeschberger 2010). However, researchers may opt to use attained age as the timescale in certain scenarios. This approach is particularly useful when subjects’ ages vary at the entry into a cohort, age serves as a strong predictor of hazards, and subjects have already been at risk for the outcome before their study entry. By adopting attained age as the timescale, the need to account for left-truncation is addressed, allowing for more accurate and informative analysis. 

## 3.4.5 Tied Event Time

As previously mentioned, the validity of the partial likelihood assumes the absence of ties in the dataset, meaning that no two or more subjects have the same event time. However, in real-world scenarios, it is common for data to contain tied event times. The extent of ties or the size of the sample can introduce bias. In SAS PROC PHREG, the default technique for handling tied event times is Breslow’s approximation, which generally performs well when ties are infrequent. However, if there are numerous ties in the dataset, the Breslow approximation may underestimate regression coefficients. 

The Efron method has demonstrated greater efficiency compared to the Breslow method, particularly when dealing with a large number of tied observations. Consequently, the Efron method yields more accurate estimates of the survival function in such cases. It also tends to produce less biased results than the Breslow method, especially when the sample size is small (Efron 1977, Hertz-Picciotto and Rockhill 1997). 

## Example 3.14

The addition of the SAS option of “ties=efron” changes the approximation technique to the Efron’s method from the Breslow’s. 

```txt
PROC phreg data=nhefs83 ;
class dep (ref=first) sexsubj race marital area income bmi3(ref=first);
model Survtime*death(0)=dep|c_paffect age sexsubj race eduy marital area income bmi3 /ties=efron;
RUN; 
```


SAS Output 3.16A Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.04931</td><td>0.09148</td><td>0.2905</td><td>0.5899</td></tr><tr><td>c_p affect</td><td></td><td>1</td><td>-0.04066</td><td>0.01177</td><td>11.9324</td><td>0.0006</td></tr><tr><td>c_p affect*dep</td><td>1</td><td>1</td><td>-0.06059</td><td>0.02369</td><td>6.5428</td><td>0.0105</td></tr><tr><td>age</td><td></td><td>1</td><td>0.07932</td><td>0.00257</td><td>949.5018</td><td>&lt;.0001</td></tr><tr><td>SEXSUBJ</td><td>1</td><td>1</td><td>0.79838</td><td>0.05853</td><td>186.0520</td><td>&lt;.0001</td></tr><tr><td>race</td><td>0</td><td>1</td><td>0.13679</td><td>0.07496</td><td>3.3299</td><td>0.0680</td></tr><tr><td>eduy</td><td></td><td>1</td><td>-0.02377</td><td>0.00845</td><td>7.9053</td><td>0.0049</td></tr><tr><td>marital</td><td>0</td><td>1</td><td>-0.18715</td><td>0.06397</td><td>8.5587</td><td>0.0034</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.07980</td><td>0.11960</td><td>0.4451</td><td>0.5046</td></tr><tr><td>area</td><td>0</td><td>1</td><td>0.09834</td><td>0.07893</td><td>1.5523</td><td>0.2128</td></tr><tr><td>area</td><td>1</td><td>1</td><td>0.24686</td><td>0.07702</td><td>10.2719</td><td>0.0014</td></tr><tr><td>income</td><td>0</td><td>1</td><td>-0.67578</td><td>0.13984</td><td>23.3544</td><td>&lt;.0001</td></tr><tr><td>income</td><td>1</td><td>1</td><td>-0.50704</td><td>0.11518</td><td>19.3804</td><td>&lt;.0001</td></tr><tr><td>income</td><td>2</td><td>1</td><td>-0.21764</td><td>0.09257</td><td>5.5276</td><td>0.0187</td></tr><tr><td>income</td><td>3</td><td>1</td><td>-0.20320</td><td>0.08825</td><td>5.3010</td><td>0.0213</td></tr><tr><td>income</td><td>4</td><td>1</td><td>-0.13223</td><td>0.09404</td><td>1.9771</td><td>0.1597</td></tr><tr><td>bmi3</td><td>1</td><td>1</td><td>0.39814</td><td>0.10657</td><td>13.9561</td><td>0.0002</td></tr><tr><td>bmi3</td><td>2</td><td>1</td><td>-0.11546</td><td>0.05854</td><td>3.8897</td><td>0.0486</td></tr><tr><td>bmi3</td><td>3</td><td>1</td><td>0.00949</td><td>0.07517</td><td>0.0159</td><td>0.8995</td></tr></table>

The results obtained using the Efron approximation closely resemble those obtained using the Breslow approximation, which could be attributed to either the large sample size or the presence of relatively few tied events. 

## 3.5 Proportional Hazard Assumption in Cox Model

In addition to the assumptions about censoring mentioned in Section 3.1, the Cox PH model relies on a specific assumption known as the proportional hazard (PH) assumption. As we recall, the exponential term in the model incorporates the independent variables but does not incorporate time (t). Consequently, once the model is fitted and the coefficients of the independent variables are determined, the exponential terms representing the estimated hazard ratios remain constant over time and do not vary as time changes. 

## 3.5.1 Violation of Proportional Hazard Assumption

The HR is expressed as the ratio of the hazard functions at time t for group 1 compared to group 0, and it can be calculated as exp(β), where β represents the coefficients obtained from the model. The proportional hazard assumption can be expressed mathematically as follows: 

$$
H R = \frac {h (t , g r o u p 1)}{h (t , g r o u p 0)} = \exp (\beta)
$$

$$
h (t, \text { group } 1) = \exp (\beta) ^ {*} h (t, \text { group } 0) \tag {3.14}
$$

According to Equation 3.14, the hazard function for group 1 at time t can be obtained by multiplying the hazard function for group 0 at time t by the proportionality constant exp(β). Importantly, this proportionality constant is not dependent on time and remains constant. 

Therefore, the proportional hazard assumption implies that the hazard functions for two comparison groups should exhibit parallel patterns over time, differing only by the coefficient β obtained from the regression analysis. According to this assumption, the association between the exposure variable and the outcome remains constant over time, without any modification effects of the covariates by time on the hazard ratio scale. The proportional hazard assumption plays a crucial role in observational studies as it determines whether an exposure factor is consistently associated with a higher or lower risk of the outcome over time. It is important to note that the constancy of the HR does not necessarily mean that each individual hazard is constant (Panel A in Figure 3.16). While this assumption may hold true in situations where the follow-up or survival time is relatively short, it may not remain valid when the follow-up period is long. 


（a）log $h _ { ( t ) }$


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/a800a70608022aa48574fa3a2511675294ad667b6151e38f0c2433ae3077b404.jpg)



（b）log $h _ { ( t ) }$


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/2524ea928ee741baabce802b4dfd1ed7d25421a6c3f65c60c420d3a9160f14bb.jpg)



FIGURE 3.16



(a) Parallel vs. (b) non-parallel log-hazard function.


In Figure 3.16, Figure A illustrates a scenario where $\beta$ remains constant over time, while Figure B shows a situation where $\beta$ varies over time. In Figure 3.16a, the hazard functions for the two groups are consistently equidistant from each other across different time points. The difference between these curves at any given time is $\beta ,$ regardless of the complexity of the baseline hazard function. This property allows the estimated HR, ${ \mathrm { H R } } = \exp ( \beta )$ , to serve as a straightforward measure of the overall association between a risk factor and the outcome over time, with a simple and interpretable interpretation (Hosmer, Lemeshow, and May 2008). 

For instance, if we have a HR of 1.63, it means that the hazard for the depressed subjects (group 1) is 1.63 times higher than the hazard for the non-depressed individuals (group 0), regardless of the specific time point. In other words, the hazard for the depressed group is consistently proportional to the hazard for the non-depressed group, and the proportionality constant between the two is 1.63. 

Indeed, when the proportional hazard assumption does not hold, as demonstrated in Figure 3.16b, the estimated regression coefficient $\beta$ becomes misleading because it does not represent the time-varying effect of the risk factor. In such cases, the effect of the exposure is clearly modified by time, and the estimated overall HR is an average over time of the time-varying hazard ratios. In Figure 3.16b, we can observe that before time 9, the hazard in group 1 is higher than that in group $0 \ ( H R > 1 )$ . However, after month 9, the hazard in group 1 becomes lower than that in group $0 \ ( H R < 1 )$ . Consequently, a single $\beta$ value cannot adequately capture the time-varying effect of the exposure. This violation of the proportional hazard assumption indicates that the Cox PH model is not appropriate in this scenario. 

Considering the complex nature of social, biological, and psychological processes and responses, the proportional hazard assumption is a strong assumption that requires careful examination. It is essential to assess whether this assumption holds true in the specific context under investigation, as its violation can significantly impact the validity and interpretation of the results. 

The proportional hazards assumption needs to be evaluated through a combination of graphical methods and statistical tests. Graphical methods provide a visual screening for non-proportionality, allowing for an assessment of the temporal pattern and the extent of non-proportionality over time. On the other hand, statistical tests help quantitatively evaluate violations of the proportional hazards assumption. Three commonly used methods are employed to assess this assumption: (1) graphical examination of Kaplan–Meier curves to ensure they do not intersect; (2) graphical examination of log-log survival plots to verify that the curves are parallel; and (3) utilization of the Kolmogorov-type supremum test to quantitatively evaluate this assumption. 

## 3.5.2 Graphical Examination of Kaplan–Meier Curves

This involves plotting separate Kaplan–Meier curves for different exposure groups and visually inspecting whether the curves cross each other. If the curves cross, it suggests non-proportionality and violates the assumption (Figure 3.16b). The graphs of survival curves, one for each comparison group, provide a quick and easy check of the assumption. If the assumption holds, the curves of log hazards, log(h ), should exhibit parallel patterns (Figure 3.16A), and the curves of survival probabilities, $S _ { t } ,$ should have a similar shape, starting in close proximity and then gradually diverging over the follow-up time (Figure 3.10). 

## 3.5.3 Graphical Examination of Log-Log Survival Plots

Another graphical approach commonly used to assess proportional hazards is the log-log survival plot. This method involves plotting the logarithm of the negative logarithm of survival probabilities against time. In the plot, parallel lines indicate that the proportional hazards assumption holds, while non-parallel lines or crossings suggest non-proportionality. 

To create a log-log survival plot, we transform the estimated survival curve by taking the natural logarithm of the negative logarithm of the survival probabilities, resulting in log(−logS(t)). If the assumption of proportional hazards is valid for a given variable, the plot of log(−logS(t)) against time should exhibit a consistent difference between the curves corresponding to different levels of the explanatory variable. The survival function, S(t, X), can be expressed as: 

$$
S (t, \mathbf {X}) = S _ {0} (t) ^ {\exp (\beta X)}, \tag {3.15}
$$

where, S(t, X) represents the survival function for an individual with covariates equal to X, and $S _ { 0 } ( t )$ is the baseline survival function for an individual with all covariates set to zero. By applying a negative logarithm to both sides of this equation, we have: 

$$
- \log S (t, \mathbf {X}) = - \exp (\beta \mathbf {X}) ^ {*} \log S _ {0} (t)
$$

We can then apply a positive logarithm to both sides, leading to: 

$$
\log \left[ - \log S (t, \mathbf {X}) \right] = \log \left[ \exp (\beta \mathbf {X}) \right] + \log \left[ - \log S _ {0} (t) \right] = \log \left[ - \log S _ {0} (t) \right] + \beta \mathbf {X} \tag {3.16}
$$

A log-cumulative hazard plot can be generated by plotting the values of log[−log S(t, X)] against log t. This plot produces separate curves for different values of a variable, such as x. When comparing two subjects with different values of x $( x _ { 1 }$ for subject 1 and $x _ { 2 }$ for subject 2), the difference between their log-log curves is defined by the regression coefficient $\beta$ as $\beta ( x _ { 2 } - x _ { 1 } ) \colon$ : 

$$
\left[ \log \left[ - \log S _ {0} (t) \right] + (\beta x _ {2}) \right] - \left[ \log \left[ - \log S _ {0} (t) \right] + (\beta x _ {1}) \right] = (\beta x _ {2}) - (\beta x _ {1}) = \beta (x _ {2} - x _ {1}) \tag {3.17}
$$

Therefore, the log-log curves for each group should have the same slope and be separated by a distance determined by the value of the regression coefficient $\beta .$ 

## Example 3.15

The log-log plot, based on Kaplan–Meier estimates, is used to assess the proportional hazards between the two comparison groups: depressed versus non-depressed. As illustrated in Figure 3.17, the two lines appear to be roughly parallel before reaching 8 months (which is 2.1 on the log scale). However, post the 8-month mark, the gap between the lines starts to narrow progressively. This suggests a potential decrease in the association between depression and all-cause mortality over time. 

The following SAS statement is used to draw the log-log plot of survival probability: 

```txt
PROC lifetest data=nhefs83 method=km plots=(s,lls) graphics;
time Survtime*death(0);
strata dep;
symbol1 v=none color=black line=1;
symbol2 v=none color=block line=2;
label survtime='Months of follow-up';
RUN; 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/033058f42ef6d9f204a5b27e8d4f5829781972d16800e17602d8952fa1b70061.jpg)



FIGURE 3.17 The log-log plot of survival probability for the depression variable.


The option of “Plots=(s, lls)” requests the plot of survival probability (s) and the plot of log-log of survival probability (lls). 

A closer examination of another log-log Kaplan–Meier curve for the variable “overweight” (Figure 3.18), reveals that they do not maintain a parallel pattern. This lack of parallelism indicates a violation of the proportional assumption for the “overweight” variable. As the survival time increases, the discrepancy between the two lines diminishes. Notably, the proportional assumption appears to hold reasonably well up to approximately 7.39 months of follow-up or 2 months in the log scale. Beyond this point, the two lines diverge, and their parallelism is no longer maintained. 

The use of the log-log plot approach for assessing proportional hazards has certain limitations. First, the determination of accepting or rejecting the assumption based on this graphical method, as demonstrated in the above examples, is highly subjective and reliant on individual interpretation. Second, it becomes particularly challenging to apply this approach when assessing the assumption for continuous variables or variables with several categories, as the resulting small sample sizes within each category can lead to unreliable estimates. Third, the log-log plot approach is not efficient in simultaneously assessing the assumption for multiple variables, as the combination of categories from these variables would result in a large number of groups with small sample sizes in each category. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/c74ac94d3bbec2e1f4bcd4beb84f01fc17973bfb0dc64a292383b3c62db3f90d.jpg)



FIGURE 3.18 The log-log plot of survival probability for the overweight variable.


## 3.5.4 Kolmogorov-Type Supremum Test

To overcome the limitations of graphical methods, the Kolmogorov-type supremum (KS) test can be employed as a quantitative approach to evaluate the proportional hazards assumption (Lin, Wei, and Ying 1993, Massey 1951). This method offers a test statistic and p-value, allowing for an objective assessment of the assumption for a specific variable. The KS test enables simultaneous evaluation of the proportional hazards assumption for multiple variables. In SAS, the “ASSESS” statement with the “PH” option within the “PROC PHREG” procedure offers a convenient way to test the proportional hazards assumption for multiple covariates. By utilizing the “RESAMPLE” option, the KS test can be requested to examine the null hypothesis of no model misspecification, indicating that the proportional hazards model is correctly specified. A small p-value, typically below 0.05, suggests that the variable being tested does not satisfy the proportional hazards assumption. 

## Example 3.16

To perform the KS test and assess the proportional hazards assumption for the variables “dep” (depression), “sex,” “overweight” and “eduy” (number of education years), we use the following SAS PROC PHREG syntax: 

$\begin{array} { r l } & { \mathrm { { \bf ~ P R O C ~ \ p h r e g ~ \ d a t a = n h e f s 8 3 : } } } \\ & { \mathrm { { \bf ~ m o d e l ~ \ c u r v t i m e ^ { \star } d e a t h ~ ( 0 ) = d e p ~ \ s e x ~ \ a g e ~ \ e a u y ~ \ o v e r w e i g h t : } } } \\ & { \mathrm { { \bf ~ a s s e s s ~ \ p h ~ / r e s a m p 1 e ~ ; } } } \\ & { \mathrm { { \bf ~ R U N } ; } } \end{array}$ 

The SAS statement generates a table that summarizes the results of the KS test for the proportional hazards assumption for each variable. Based on the statistical analysis, it is observed that the variables “age” and “overweight” exhibit evidence of a violation of the proportional hazards assumption. On the other hand, the variables of depression, sex, and education year (eduy) statistically satisfy the proportional hazards assumption. 


SAS Output 3.16B Supremum test for proportional hazards assumption


<table><tr><td colspan="5">Supremum Test for Proportionals Hazards Assumption</td></tr><tr><td>Variable</td><td>Maximum Absolute Value</td><td>Replications</td><td>Seed</td><td>Pr &gt; MaxAbsVal</td></tr><tr><td>dep</td><td>1.2058</td><td>1000</td><td>810427458</td><td>0.0840</td></tr><tr><td>sex</td><td>0.5158</td><td>1000</td><td>810427458</td><td>0.8910</td></tr><tr><td>age</td><td>2.0383</td><td>1000</td><td>810427458</td><td>&lt;.0001</td></tr><tr><td>eduy</td><td>1.2113</td><td>1000</td><td>810427458</td><td>0.1200</td></tr><tr><td>overweight</td><td>1.5390</td><td>1000</td><td>810427458</td><td>0.0130</td></tr></table>

The decision to accept or reject the null hypothesis of proportional hazards is based on the p-value obtained from the KS test. However, it is important to note that the p-value is influenced by sample size. A violation of the proportional hazards assumption may not be statistically significant if the sample size is small, while a non-violation of the assumption may be significant if the sample is very large. 

While the statistical test provides an objective approach for assessing the assumption, it does not provide information about the nature or specific patterns of the violation. On the other hand, the graphical approach, such as the log-log survival curve, allows us to visually examine how a variable departs from the assumption and at what time point the deviation occurs. For instance, in the case of the “overweight”: variable, the assumption may hold before the firs 2 months in the log scale (as shown in Figure 3.18), but it violates the assumption afterward. 

Therefore, it is recommended to combine both graphical and statistical approaches in assessing the proportional hazards assumption. This combination allows for a more comprehensive understanding of how variables behave over time and provides a more robust assessment of the proportional hazards assumption. 

## 3.6 Models That Address the Violation of PH Assumption

If one or more variables fail to satisfy the proportional hazards assumption, there are alternative approaches that can be employed while using the Cox model. These modifications include the use of the stratified Cox model and the Cox model with time-dependent variables. 

## 3.6.1 Stratified Cox Model

A stratified Cox model is a useful approach to address the violation of the proportional hazards assumption and control for confounding factors that may distort the association between a risk factor and an outcome. By stratifying the Cox model based on a variable that violates the proportional hazards assumption, the stratified Cox model takes into account the non-proportional effects of that variable. Stratification involves dividing the data into separate strata or groups based on the levels of the violating variable. Within each stratum, a separate baseline hazard function is estimated. The stratification ensures that the baseline hazard is adjusted appropriately for each stratum of the violating variable, thereby controlling for its non-proportional effect (Equation 3.18). 

$$
h _ {g} (t \mid X, \mathbf {Z}) = h _ {0 g} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + + \beta_ {p} Z _ {p}\right). \tag {3.18}
$$

Here, $' { g ^ { \prime \prime } }$ represents the categories or strata of a stratified variable and $h _ { 0 g } \left( t \right)$ denotes the baseline hazard within each of the stratum. For instance, the stratifying variable is the variable “overweight” with two categories. 

When overweight = 1 (g = 1 for overweight), the stratified Cox model is represented as: 

$$
h _ {1} (t \mid X, \mathbf {Z}) = h _ {0 1} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}\right). \tag {3.19}
$$

When overweight = 0 (g = 0 for normal weight), the stratified Cox model takes the form: 

$$
h _ {0} (t \mid X, \mathbf {Z}) = h _ {0 0} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + + \beta_ {p} Z _ {p}\right). \tag {3.20}
$$

Given that “overweight” has two levels, there exist two distinct baseline hazard functions, one for overweight subjects and another for those of normal weight. The stratified Cox model (Equation 3.18) omits the stratified variable (e.g., overweight) from the model because it fails to meet the proportional hazards (PH) assumption. Instead, this variable is managed through stratification. The only difference between model Equations 3.19 and 3.20 lie in their distinct baseline hazard functions: $h _ { 0 1 } ( t ) \mathrm { v s . } h _ { 0 0 } ( t )$ , while their coefficients remain identical. Thus, the model assumes that the effects of the covariates are constant across strata, with no interaction occurring between the stratifying variable and the covariates. 

Stratification necessitates that the violating variables are categorical in nature. If a violating variable is continuous, it must be categorized prior to the application of the stratified Cox model. Furthermore, the stratified Cox model can handle multiple variables that violate the proportional hazards assumption simultaneously, providing a comprehensive approach to adjust for non-proportionality across different covariates. 

## Example 3.17

In the analysis of the association between depression and all-cause death in the NHEFS data, considering sex, education years, and overweight as potential confounding variables, we find that the variable of overweight violates the proportional hazards assumption according to the KS test. However, the variables of dep, sex, and education do not violate the assumption (SAS Output 3.16B). To address the violation of the proportional hazards assumption for the overweight variable, we can employ a stratified Cox model. Stratification of the overweight variable (coded as $" 1 \prime $ for “overweight” and $\prime \prime 0 \prime \prime$ for “normal weight”) in a Cox model sets a different baseline hazard for each of the two overweight strata, and the model then estimates coefficients for sex and education, not for the stratified variable (overweight). 

```txt
PROC phreg data=nhefs83;
class sex (ref='0');
model Survtime*death(0)= dep sex eduy /r1;
strata overweight; 
```

RUN; 


SAS Output 3.17 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>0.40255</td><td>0.06269</td><td>&lt;.0001</td><td>1.496</td><td>1.323</td><td>1.691</td></tr><tr><td>sex</td><td>0.70354</td><td>0.05179</td><td>&lt;.0001</td><td>2.021</td><td>1.826</td><td>2.237</td></tr><tr><td>eduy</td><td>-0.16810</td><td>0.00694</td><td>&lt;.0001</td><td>0.845</td><td>0.834</td><td>0.857</td></tr></table>

The adjusted HR for the depressed subjects versus the non-depressed subjects is estimated at 1.50 (95%CI: 1.32–1.69), after adjusting for sex, education years, and overweight. 

Next, we employ the BASELINE statement in PROC PHREG to generate an output dataset (out1) that comprises Cox-adjusted survival estimates. This dataset is subsequently utilized to create adjusted survival curves; one represents the depressed subjects and the other for individuals without depression (Figure 3.19). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/8ac84d6cd6d3befdf89222128848cbbbc8989809ae62bc7334509b445773253c.jpg)



FIGURE 3.19 Adjusted survival curves for depressed and non-depressed subjects.


```txt
PROC phreg data=nhefs83;
class sex (ref='0');
model Survtime*death(0)= dep sex eduy /rl;
strata overweight;
baseline out=out1 survival=S1;
RUN;

PROC gplot data=out1;
symbol1 value=dot color=black;
symbol2 value=circle color=black;
plot S1*Survtime=depression;
RUN; 
```

Figure 3.19 presents the adjusted survival curves for subjects categorized as depressed and non-depressed. These curves have been adjusted to account for variables such as sex, years of education, and being overweight. 

In reality, a variable with non-proportionality may not always distort the association measures, especially when the statistical assessment of the assumption is conducted in large sample sizes (Therneau and Grambsch 2000). 

## Example 3.18

We use the Cox PH model without stratification of overweight to estimate the HR for sex, adjusted for sex, education year, and overweight. We then compare this result to the HR obtained from the stratified Cox model. 

```txt
PROC phreg data=nhefs83;
class sex (ref='0');
model Survtime*death(0)= dep sex eduy overweight /rl;
RUN; 
```


SAS Output 3.18 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>0.40319</td><td>0.06269</td><td>&lt;.0001</td><td>1.497</td><td>1.324</td><td>1.692</td></tr><tr><td>sex</td><td>0.70471</td><td>0.05180</td><td>&lt;.0001</td><td>2.023</td><td>1.828</td><td>2.239</td></tr><tr><td>eduy</td><td>-0.16830</td><td>0.00694</td><td>&lt;.0001</td><td>0.845</td><td>0.834</td><td>0.857</td></tr><tr><td>overweight</td><td>-0.21719</td><td>0.05116</td><td>&lt;.0001</td><td>0.805</td><td>0.728</td><td>0.890</td></tr></table>

In the stratified Cox model, as shown in Example 3.17, the estimated HR for depression is 1.50 (95%CI: 1.32–1.69). In the unstratified Cox model, which ignores the nonproportionality of overweight, the HR for depression is estimated to be 1.50 (95% CI: 1.32–1.69). Based on these results, it appears that the violation of the proportional hazards assumption does not have a substantial impact on the estimation of the association between depression and death. 

As mentioned before, the stratified Cox model assumes that the effect of the exposure (such as the effect of depression on death) measured by the HR is the same for all strata of the violating variable (e.g., overweight vs. normal weight). This assumption is known as the no-interaction assumption, which implies that the HR for depression is the same regardless of the level of overweight. In Example 3.17, the model estimates the HR to be 1.50, and assumes that the 

HR of 1.50 is the same for the overweight group and the normal-weight group. However, this assumption may not always hold true, and if it is violated, the stratified Cox model can produce misleading results. To address this issue, Mehrotra and colleagues proposed an alternative approach that does not rely on this assumption (Mehrotra, Su, and Li 2012). Let’s re-visit the example 3.18 and check if the no-interaction assumption is held. 

## Example 3.19

To compare HRs for depression, sex, and education at each stratum of overweight, we perform two separate Cox PH models, one for the overweight group, and the other for the normal weight group, using this SAS procedure: 

PROC sort; by overweight; RUN; 

PROC phreg data=nhefs83; model Survtime*death(0)= dep sex eduy /rl; by overweight; RUN; 

In the normal weight group, the HR for depression is estimated to be 1.47, 1.99 for sex, and 0.842 for education year (Output 3.19). In the overweight group, the HR for depression is estimated to be 1.51, 2.04 for sex, and 0.848 for education year (Output 3.20). 

SAS Output 3.19 The estimated hazard ratios among normally-weighted subjects 

<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>1.474</td><td>1.236</td><td>1.759</td></tr><tr><td>sex</td><td>1.990</td><td>1.717</td><td>2.308</td></tr><tr><td>eduy</td><td>0.842</td><td>0.826</td><td>0.859</td></tr></table>

SAS Output 3.20 The estimated hazard ratios among overweighed subjects 

<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>1.515</td><td>1.277</td><td>1.799</td></tr><tr><td>sex</td><td>2.042</td><td>1.774</td><td>2.351</td></tr><tr><td>eduy</td><td>0.848</td><td>0.832</td><td>0.864</td></tr></table>

Given the minimal differences in hazard ratios between the two groups (“normal weight” vs. “overweight”), we can infer that the non-interaction assumption is valid. In this specific sample, “overweight” is regarded as a confounding variable – along with “sex” and “years of education” – that could potentially distort the relationship between depression and allcause death. Consequently, the interaction effect is not considered relevant in this context. 

## Example 3.20

To account for the violation of the proportional hazards assumption in both the overweight variable and age, we employ the following SAS syntax to perform a stratified Cox model. In this instance, stratification is made by both variables. Given that age is a continuous variable, we categorize it into four levels based on its 3-quantiles (44, 54, and 68 years old). 

```matlab
PROC phreg data=nhefs83;
class sex (ref='0');
model Survtime*death(0)= dep sex eduy /r1;
strata overweight age (44,54,68);
RUN; 
```

The estimated HRs and their 95% confidence intervals are listed in SAS Output 3.21. 


SAS Output 3.21 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>0.41832</td><td>0.06263</td><td>&lt;.0001</td><td>1.519</td><td>1.344</td><td>1.718</td></tr><tr><td>sex</td><td>0.59156</td><td>0.05174</td><td>&lt;.0001</td><td>1.807</td><td>1.633</td><td>2.000</td></tr><tr><td>eduy</td><td>-0.06694</td><td>0.00722</td><td>&lt;.0001</td><td>0.935</td><td>0.922</td><td>0.949</td></tr></table>

## 3.6.2 Extended Cox Model

In certain scenarios, there are variables that exhibit changes in their values over time for a given subject. These variables are referred to as “time-dependent variables” and do not satisfy the proportional hazards assumption. In survival analysis, there are two types of time-dependent variables: natural time-dependent variables and defined time-dependent variables. A natural time-dependent variable undergoes changes in its value over time when it is repeatedly measured during the follow-up period. For instance, if the smoking status of individuals is assessed at each study visit, an individual may not smoke during the initial year of the follow-up but subsequently begin smoking at the start of the second year. Due to the change in smoking status over time, along with its multiple measurements throughout the study period, it is classified as a time-dependent variable. 

A time-independent variable refers to a variable that maintains a constant value over time, such as sex and race. However, the impact of such a variable on survival probability may vary with time. In such cases, its effect is influenced or modified by time, as depicted in Figure 3.16B. For instance, if time modifies the relationship between sex and hypertension, we can calculate hazard ratios for different time intervals to observe how the HR values change over time. To examine the time-varying effect of sex, we introduce a product term, sex*t, in addition to the sex variable in a Cox model. In this context, sex itself is a time-independent variable with a consistent value over time, while sex*t represents a “defined time-dependent variable” that alters its value over time. If the coefficient of the product term is statistically significant, it indicates that the time-modified effect should be accounted for in survival analysis. The Cox model that incorporates time-dependent variables is called the extended Cox model. 

The extended Cox model includes both time-independent and time-dependent variables. This can be represented as (Kleinbaum and Klein 2012): 

$$
h (t, \mathbf {X} (t)) = h _ {0} (t) \exp \left[ \sum_ {i = 1} ^ {p _ {1}} \beta_ {i} x _ {i} + \sum_ {j = 1} ^ {p _ {2}} \delta_ {j} x _ {j} (t) \right] \tag {3.21}
$$

In this equation, X(t) denotes the combination of both time-independent variables $x _ { i }$ and time-dependent variables $x _ { j } ( t )$ at time $t . \ p _ { 1 }$ denotes the number of time-independent variables, while $p _ { 2 }$ refers to the number of time-dependent variables. We have $x _ { i } = ( x _ { 1 } , x _ { 2 } , . . . x _ { p 1 } )$ and $x _ { j } ( t ) = x _ { 1 } ( t ) , x _ { 2 } ( t ) , . . . x _ { p 2 } ( t )$ . The model parameters $\beta _ { i }$ and $\delta _ { j }$ correspond to the coefficients associated with the time-independent and time-dependent variables, respectively. 

To assess the proportional hazards assumption and test for the absence of time-dependent effects, a statistical test can be conducted. The Wald Chi-square test is commonly employed in the SAS PROC PHREG procedure to examine the null hypothesis that all $\bar { \delta } _ { j }$ coefficients in the model are zero. 

## Example 3.21

In this example, we aim to assess the relationship between depression and the survival probability from all-cause death, while adjusting for sex and the number of education years. Depression is treated as a time-independent variable, assuming its value remains constant over time. To account for the potential time-varying effect of depression, we introduce a defined time-dependent variable, depression*t. The extended Cox model can be expressed as: 

$$
h (t, X (t)) = h _ {0} (t) \exp \left[ \beta_ {1} \text { depression } + \beta_ {2} \text { sex } + \beta_ {3} \text { deduction } + \delta (\text { depression } ^ {*} t) \right]
$$

According to Equation 3.21, $p _ { 1 } = 3$ (depression, sex, and education) and $p _ { 2 } ~ = ~ 1$ (depression*t). The variables $x _ { i }$ includes depression, sex, and education, while $x _ { j } ( t )$ includes depression*t. Depression is encoded as 1 for individuals with depression and 0 for those without depression. The HR at time t for the effect of depression, adjusted for sex and the number of education years, can be estimated as: 

$$
\begin{array}{l} H R (t) = h (t, \text { depressed }) / h (t, \text { non - depressed }) \\ = \exp \left[ \beta_ {1} (\text { depressed } - \text { non - depressed }) + \beta_ {2} (\text { sex }) + \beta_ {3} (\text { education }) \right. \\ + \delta \left[ (\text { depressed } * t) - (\text { non - depressed } * t) \right] \\ = \exp \left[ \beta_ {1} (1 - 0) + \beta_ {2} (\text {sex} - \text {sex}) + \beta_ {3} (\text {education year} - \text {education year}) \right. \tag {3.22} \\ + \delta \left[ (1 ^ {*} t) - (0 ^ {*} t) \right] \\ = \exp \left(\beta_ {1} + \delta_ {t}\right) \\ \end{array}
$$

When the regression model holds the values of sex and education year constant between the depressed and non-depressed groups, it results in equivalent distributions of these confounding variables across the exposure groups. Consequently, the differences in the equation between education year and sex become zero, thereby canceling out the $\beta _ { 2 }$ and $\beta _ { 3 }$ terms. As a result, the HR simplifies to exp $( \beta _ { 1 } + \delta _ { \mathrm { t } } )$ , making it a function of time t. If δ is positive, the HR increases with time, which violates the proportional hazards assumption. 

When closely examining the log-log plot of depression on survival time in the log scale (Figure 3.17), we observe that the two lines are parallel before 8 months (2.1 in the log scale). However, after 8 months, the distance between the lines diminishes, suggesting a decline in the association between depression and all-cause death over time. This indicates that time may modify the relationship between depression and death. 

Based on this visualization, we create two dichotomous time-interval variables: “dept1” (before 8 months) and “dept2” (8 months and after). We estimate two hazard ratios for each interval, adjusting for sex and education year. 

dept1 = 1 if t < 8 months; dept1 = 0 if t ≥ 8 months 

dept2 = 1 if t ≥ 8 months; dept2 = 0 if t < 8 months 

$$
H R _ {<   8 \text { months }} = \frac {\text { hazard   when   dept1 } = 1}{\text { hazard   when   dept2 } = 0}
$$

$$
H R _ {\geq 8 \text { months }} = \frac {\text { hazard   when   dept2 } = 1}{\text { hazard   when   dept1 } = 0}
$$

First, we estimate the HR for the period t < 8 months. In this timeframe, “dept1” is assigned a value of 1, while “dept2” is 0. The exponential component of the model simplifies to $\delta _ { 1 }$ (depression), and the HR becomes exp(δ1): 

$$
\begin{array}{l} h (t, X) = h _ {0} (t) \exp \left[ \delta_ {1} (\text { depression } \times \text { dept1 }) + \delta_ {2} (\text { depression } \times \text { dept2 }) \right] \\ = h _ {0} (t) \exp \left[ \delta_ {1} (\text { depression } \times 1) + \delta_ {2} (\text { depression } \times 0) \right] \\ = h _ {0} (t) \exp \left[ \delta_ {1} (\text { depression }) \right] \\ \end{array}
$$

$$
H R _ {\mathrm{dept1}} = \exp (\delta_ {1})
$$

Next, we estimate the HR for the period t ≥ 8 months. During this time frame, “dept1” is assigned a value of 0, while “dept2” is set to 1. In this case, the exponential part of the model simplifies to $\delta _ { 2 }$ (depression), and the HR becomes exp(δ2): 

$$
\begin{array}{l} h (t, X) = h _ {0} (t) \exp \left[ \delta_ {1} (\text { depression } \times \text { dept1 }) + \delta_ {2} (\text { depression } \times \text { dept2 }) \right] \\ = h _ {0} (t) \exp \left[ \delta_ {1} (\text { depression } \times 0) + \delta_ {2} (\text { depression } \times 1) \right] \\ = h _ {0} (t) \exp \left[ \delta_ {2} (\text { depression }) \right] \\ \end{array}
$$

$$
H R _ {\mathrm{dept2}} = \exp (\delta_ {2})
$$

By computing these two hazard ratios, we are able to assess the effect of depression on survival probability both before and after the 8-month mark. This offers valuable insights into the time-dependent relationship between depression and death. 

The following SAS syntax is utilized to generate two dichotomous time-interval variables, “dept1” (representing the time period before 8 months) and “dept2” (representing the time period of 8 months and beyond), and perform the extended Cox model analysis. 

PROC phreg data=nhefs83; model Survtime*death(0)= dept1 dept2 sex eduy age /rl; if Survtime<8 then dept1=dep; else dept1=0; if 8<=Survtime then dept2=dep; else dept2=0; 

RUN; 


SAS Output 3.21 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dept1</td><td>0.93014</td><td>0.55786</td><td>0.0954</td><td>2.535</td><td>0.849</td><td>7.565</td></tr><tr><td>dept2</td><td>0.40530</td><td>0.06285</td><td>&lt;.0001</td><td>1.500</td><td>1.326</td><td>1.696</td></tr><tr><td>sex</td><td>0.58287</td><td>0.05135</td><td>&lt;.0001</td><td>1.791</td><td>1.620</td><td>1.981</td></tr><tr><td>eduy</td><td>-0.05218</td><td>0.00728</td><td>&lt;.0001</td><td>0.949</td><td>0.936</td><td>0.963</td></tr><tr><td>age</td><td>0.08717</td><td>0.00239</td><td>&lt;.0001</td><td>1.091</td><td>1.086</td><td>1.096</td></tr></table>

The analysis results indicate that within the first 8 months, depressed individuals have a 2.54 times higher hazard of experiencing death compared to non-depressed individuals. However, starting from month 8 and onwards, the HR decreases to 1.50. It is important to note that the Cox model assumes a constant HR within each predefined time interval. Consequently, assuming a constant HR of 1.50 for the entire time interval from month 8 to month 120 may raise concerns. 

## Example 3.22

If we aim to examine the changes in the association between depression and death over time in more detail, we can divide the survival time into four distinct intervals: less than 8 months, 8–19 months, 20–49 months, and 50 months and beyond. By doing so, we can estimate four separate hazard ratios, each corresponding to a specific time interval. The following SAS syntax can be used to create the four time intervals and estimate HRs for each interval: 

```txt
PROC phreg data=nhefs83;
model Survtime*death(0)=dept1 dept2 dept3 dept4 sex eduy age /rl;
if Survtime<8 then dept1=dep; else dept1=0;
if 8<=Survtime<20 then dept2=dep; else dept2=0;
if 20<=Survtime<50 then dept3=dep; else dept3=0;
if 50<=Survtime then dept4=dep; else dept4=0; 
```

RUN; 

The estimated HRs for each intervals and their 95% confidence intervals are listed in SAS Output 3.22. 


SAS Output 3.22 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Parameter Estimate</td><td>Standard Error</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dept1</td><td>0.92971</td><td>0.55786</td><td>0.0956</td><td>2.534</td><td>0.849</td><td>7.562</td></tr><tr><td>dept2</td><td>0.69915</td><td>0.19436</td><td>0.0003</td><td>2.012</td><td>1.375</td><td>2.945</td></tr><tr><td>dept3</td><td>0.49578</td><td>0.11308</td><td>&lt;.0001</td><td>1.642</td><td>1.315</td><td>2.049</td></tr><tr><td>dept4</td><td>0.31532</td><td>0.08113</td><td>0.0001</td><td>1.371</td><td>1.169</td><td>1.607</td></tr><tr><td>sex</td><td>0.58073</td><td>0.05134</td><td>&lt;.0001</td><td>1.787</td><td>1.616</td><td>1.977</td></tr><tr><td>eduy</td><td>-0.05246</td><td>0.00728</td><td>&lt;.0001</td><td>0.949</td><td>0.935</td><td>0.963</td></tr><tr><td>age</td><td>0.08711</td><td>0.00239</td><td>&lt;.0001</td><td>1.091</td><td>1.086</td><td>1.096</td></tr></table>

The adjusted HRs exhibit a gradual decline from 2.53 to 1.37 as the survival time increases. Unlike the previous example where the model assumed a constant HR of 1.50 after 8 months, this approach involves estimating three distinct HRs for each of the subintervals within the time range from month 8 to month 120 (as shown in Figure 3.20). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/494052baf065f8d7ecd0da3388144a2cbccd5d21b8e1658f6c383ffb0f5e4834.jpg)



FIGURE 3.20 The log-log plot of survival probability of depression.


The observed reduction in the HR after 8 months suggests that the association between depression and mortality may vary over time. This time-varying effect implies that the HR could differ at various stages of the follow-up period. Assuming a constant HR throughout a lengthy interval may oversimplify the relationship and fail to capture potential changes in the association over time. Therefore, it is crucial to consider the limitations of assuming a constant HR and explore alternative modeling approaches to account for the timedependent nature of the association between depression and death. 

In the extended Cox model, it is important to understand that the impact of a timedependent variable, xj(t), on the survival probability at time t is assumed to rely solely on the value of x at that specific time t, and not on its value at preceding or subsequent time t. In the current example, we have assumed that the value of depression remains constant over time. However, if depression is repeatedly measured and its value undergoes changes over time, it becomes necessary to account for the lag-time effect of depression. Considering the potential influence of a one-month time lag on the survival probability, we can modify the time-dependent variable from depression × t to depression × (t−1). This adjustment ensures that the survival probability at time t is predicted by the value of depression measured one month earlier, at time t−1. By incorporating this lagged variable, we can capture the delayed cumulative effect of depression on the survival outcome, yielding a more accurate representation of the relationship between depression and survival probability. 

We have assumed that potential confounders remain constant over time. However, if the confounding variables are time-varying and their changes are influenced by the exposure variable, simply fitting an extended Cox model may lead to incorrect estimates of the association between the exposure and outcome. To address this issue, more complex models that address time-varying exposure and confounding variables are needed (Hernán and Robins 2020, VanderWeele 2021). 

## 3.7 Parametric Survival Models

As previously mentioned, survival regression models can be categorized into two types: parametric and semiparametric models. Semiparametric survival models do not specify a particular distribution for survival time, but the regression parameters, such as regression coefficients, are known. Conversely, parametric survival models operate under the assumption of a specific distribution for the survival time. There are several distributions commonly used in parametric survival analysis, including the exponential (which is a special case of the Weibull distribution), Weibull, and log-logistic distributions. By assuming a known distribution for the survival time, we can estimate the parameters that define the survival and hazard functions. Among these parametric models, the Weibull model is widely used in survival analysis. We delve into the Weibull model in this book for its versatility in representing a variety of survival patterns and its wide application in epidemiologic research. 

## 3.7.1 Weibull Distribution and Weibull Model

In parametric survival models, when the probability density function (PDF), f(t), is specified for the survival time t, the corresponding survival and hazard functions can be derived. Mathematically, the PDF can be expressed as the product of the hazard function and the survival function: $f ( t ) = h ( t ) S ( t )$ . In the case of the Weibull distribution, the PDF is defined by two parameters, λ and p, as shown in Equation 3.23 (Collett 2015, Kleinbaum and Klein 2012): 

$$
f (t) = h (t) S (t) = \lambda p t ^ {p - 1} \exp (- \lambda t ^ {p}) \tag {3.23}
$$

Here, p represents the shape parameter, and λ is the scale parameter. The Weibull model allows us to estimate the effect of the exposure variable in terms of both the hazard ratio and the survival time. 

The Weibull model can be classified into two categories: the Weibull proportional hazards (PH) model and the accelerated failure-time (AFT) model. The Weibull PH model estimates the hazard ratio, while the Weibull AFT model estimates the relative increase or decrease in survival time associated with the exposure variable. In the context of the AFT model, the exposure variable is described as having the ability to “accelerate” the survival time. 

## 3.7.2 Weibull PH Model

The model that is considered in this section assumes that the survival times have a Weibull distribution. In the Weibull PH model, the hazard function is defined as: 

$$
h (t \mid X, \mathbf {Z}) = h _ {0} (t) \exp \left(\beta_ {x} X _ {1} + \beta_ {1} Z _ {1} + \dots + \beta_ {q} Z _ {q}\right). \tag {3.24}
$$

If we consider an individual with X and Z values equal to zero, the hazard function for this individual becomes $h _ { 0 } ( t )$ . If the survival time of this individual follows a Weibull distribution with a scale parameter $\lambda$ and a shape parameter $p ,$ then the hazard function can be expressed as: 

$$
h _ {0} (t) = \lambda p t ^ {p - 1}. \tag {3.25}
$$

where λ and $p > 0$ . By using Equation 3.24, we can rewrite the hazard function as: 

$$
h (t \mid X, \mathbf {Z}) = h _ {0} (t) \exp \left(\beta_ {x} X _ {1} + \beta_ {1} Z _ {1} + \dots + \beta_ {q} Z _ {q}\right)
$$

$$
= \lambda p t ^ {p - 1} \exp \left(\beta_ {x} X _ {1} + \beta_ {1} Z _ {1} + \dots + \beta_ {q} Z _ {q}\right) \tag {3.26}
$$

where the scale parameter λ is reparametrized in terms of predictor variables and regression parameters, $\exp ( \beta _ { x } X _ { 1 } + \beta _ { 1 } Z _ { 1 } + \ldots + \beta _ { q } Z _ { q } ) .$ , while the shape parameter $p$ remains constant. If $p > 1 ,$ , the hazard increases with time, and if $p = 1 ,$ , the hazard remains constant. If $p < 1$ then the hazard decreases over time. The Weibull PH model is fitted by constructing the likelihood function and maximizing it with respect to the unknown parameters $\beta _ { x } , \beta _ { 1 } ,$ $\beta _ { 2 } , . . . , \beta _ { q } , \lambda ,$ and $p .$ In contrast, the Cox PH model parameterizes only $\beta _ { x } , \beta _ { 1 } , \beta _ { 2 } , . . . , \beta _ { q } .$ 

In a one-predictor Weibull PH model, λ is reparametrized with the regression coefficients $\exp ( \beta _ { 0 } + \beta _ { 1 } x )$ , where x is an exposure variable such as depression (1 for depressed and 0 for non-depressed). With a Weibull PH model: $h ( t ) = \lambda p t ^ { p - 1 } .$ , where $\lambda = \exp ( \beta _ { 0 } + \beta _ { 1 } x ) ;$ and the value of $p$ is same for comparison groups. The HR is estimated as: 

$$
\mathrm{HR} = \frac {h (t , d e p = 1)}{h (t , d e p = 0)} = \frac {\exp \left(\beta_ {0} + \beta_ {1} * d e p = 1\right) p t ^ {p - 1}}{\exp \left(\beta_ {0} + \beta_ {1} * d e p = 0\right) p t ^ {p - 1}} = \frac {\exp \left(\beta_ {0} + \beta_ {1}\right) p t ^ {p - 1}}{\exp \left(\beta_ {0}\right) p t ^ {p - 1}} = \exp \left(\beta_ {1}\right). \tag {3.27}
$$

Thus, the HR is simply equal to $\exp ( \beta _ { 1 } )$ in the Weibull PH model. 

## 3.7.3 Weibull AFT Model

In the Weibull accelerated failure-time (AFT) model, we can estimate the acceleration factor $\gamma ,$ which represents the ratio of survival times for the exposed group $( \mathrm { e . g . }$ , depressed group) to that of the unexposed group (non-depressed group). Under the Weibull survival distribution, the following equation can be obtained from $S ( t ) = \exp ( - \lambda t ^ { p } )$ to estimate survival time t. 

$$
t = [ - l n S (t) ] ^ {1 / p} \times \frac {1}{\lambda^ {1 / p}}
$$

$\mathrm { A f t e r \ r e p a r a m e t e r i z i n g } \ { \frac { 1 } { \lambda ^ { 1 / p } } } \ \mathrm { t o } \ \exp ( \beta _ { 0 } + \beta _ { x } X _ { 1 } + \beta _ { 1 } Z _ { 1 } + . . . + \beta _ { q } Z _ { q } ) ,$ 

$$
t = \left[ - l n S (t) \right] ^ {1 / p} \times \exp \left(\beta_ {0} + \beta_ {x} X _ {1} + \beta_ {1} Z _ {1} + \dots + \beta_ {q} Z _ {q}\right), \tag {3.28}
$$

where $X _ { 1 }$ represents the exposure factor, $Z _ { 1 } , . . . , Z _ { q }$ are covariates, and $\beta _ { x } , \beta _ { 1 } , . . . , \beta _ { q }$ are coefficients. The acceleration factor $\gamma$ is estimated as the ratio of the survival time for $X _ { 1 } { = } 1$ to that for $X _ { 1 } { = } 0$ . Simplifying the equation, $\gamma$ reduces to $\exp ( \beta _ { x } )$ . 

$$
\gamma = \frac {t \text {for} x _ {1} = 1}{t \text {for} x _ {1} = 0} = \frac {\left[ - \ln S (t) \right] ^ {1 / p} \times \exp \left(\beta_ {0} + \beta_ {x} \times 1\right)}{\left[ - \ln S (t) \right] ^ {1 / p} \times \exp \left(\beta_ {0} + \beta_ {x} \times 0\right)} = \frac {\exp \left(\beta_ {0} + \beta_ {x}\right)}{\exp (\beta_ {x})} = \exp (\beta x) \tag {3.29}
$$

The acceleration factor represents the ratio of survival times corresponding to a fixed value of $S ( t )$ (constant $\gamma )$ . For example, if the acceleration factor comparing non-depressed subjects to depressed subjects is $\gamma = 3 ,$ it means that the estimated survival time for non-depressed subjects is three times the survival time for depressed subjects. 

The acceleration factor, $\gamma ,$ estimated from the Weibull AFT model provides insights into how a unit change in an explanatory variable speeds up or slows down the time to an event. On the other hand, the Weibull PH model yields a regression coefficient, $\beta .$ This coefficient quantifies the change in hazards on the log scale resulting from a one-unit change in the exposure variable. There exists a direct linkage between these two parameters: $\beta = - \gamma p$ . This mathematical relationship offers the advantage of allowing us to compute a HR using an acceleration factor estimated from the AFT model. 

## Example 3.23

In this example, we investigate the association between hypertension and survival time, assuming that the data follows the Weibull distribution. To analyze the data using the Weibull AFT model, we utilize the following SAS syntax that specifies the distribution of survival time as the Weibull: 

PROC lifereg data=nhefs83; class hypert; model Survtime*death(0)=hypert sex race eduy marital area income /dist=weibull; 

RUN; 


SAS Output 3.23 Analysis of maximum likelihood parameter estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>5.8250</td><td>0.0994</td><td>5.6301</td><td>6.0199</td><td>3431.23</td><td>&lt;.0001</td></tr><tr><td>Hypert (0)</td><td>0.4150</td><td>0.0358</td><td>0.3449</td><td>0.4852</td><td>134.56</td><td>&lt;.0001</td></tr><tr><td>Hypert (1)</td><td>0.0000</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td></tr><tr><td>sex</td><td>-0.6518</td><td>0.0387</td><td>-0.7276</td><td>-0.5760</td><td>283.85</td><td>&lt;.0001</td></tr><tr><td>race</td><td>-0.1092</td><td>0.0482</td><td>-0.2036</td><td>-0.0148</td><td>5.14</td><td>0.0234</td></tr><tr><td>eduy</td><td>0.0518</td><td>0.0057</td><td>0.0407</td><td>0.0630</td><td>82.94</td><td>&lt;.0001</td></tr><tr><td>marital</td><td>-0.1506</td><td>0.0210</td><td>-0.1917</td><td>-0.1095</td><td>51.55</td><td>&lt;.0001</td></tr><tr><td>area</td><td>0.0093</td><td>0.0236</td><td>-0.0369</td><td>0.0555</td><td>0.16</td><td>0.6931</td></tr><tr><td>income</td><td>-0.2151</td><td>0.0149</td><td>-0.2442</td><td>-0.1860</td><td>209.64</td><td>&lt;.0001</td></tr><tr><td>Scale</td><td>0.6647</td><td>0.0157</td><td>0.6347</td><td>0.6961</td><td></td><td></td></tr><tr><td>Weibull Shape</td><td>1.5044</td><td>0.0355</td><td>1.4365</td><td>1.5756</td><td></td><td></td></tr></table>

The Weibull model provides two parameters: the shape parameter p and the scale parameter λ. From this analysis, the estimated value for the shape parameter p is 1.5044, and for the scale parameter λ is 0.6647. It is essential to understand their relationship: the shape parameter p is the reciprocal of the scale parameter λ, which means $\scriptstyle { p = 1 } / \lambda .$ . 

Next, let’s consider the acceleration factor (γ). For our dataset, comparing nonhypertension (hypert = 0) to hypertension (hypert = 1), γ is calculated to be 1.51, which corresponds to exp(0.415). The 95% confidence interval for the acceleration factor is between 1.41, exp(0.3449) and 1.62, exp(0.4852). Interpretatively, this result indicates that the estimated survival time for non-hypertensive individuals is amplified by a factor of 1.51 in comparison to their hypertensive counterparts. This observation underscores the potential protective role of not having hypertension on survival time. 

From the Weibull AFT model, we can derive the HR by employing the relationship between the Weibull shape parameter and the AFT parameter, represented by the formula β = −γp. 

$$
\beta = - \gamma p = - 0. 4 1 5 * 1. 5 0 4 4 = - 0. 6 2 4 3.
$$

$$
H R = \exp (\beta) = 0. 5 4.
$$

After adjusting for other covariates in the model, the results suggest that the hazard associated with non-depressed individuals is 54% of the hazard for those who are depressed. Importantly, this interpretation relies on the proportionality assumption being satisfied in the data. 

SAS PROC LIFEREG runs the Weibull AFT model rather than the Weibull PH model. STATA can output estimates from both the Weibull PH and AFT models. 

## 3.7.4 Check for Assumptions

The Weibull AFT model is built upon the underlying assumption that the effect of covariates is proportionate to the survival time. That is, exposures have a multiplicative effect on survival time that is consistent over time. In contrast, proportional hazards (PH) models operate under the assumption that the effect of covariates is proportionate to the hazard. A unique property of the Weibull model is that, given a fixed value of p, if the assumption of the accelerated failure model is valid, then the proportional hazards assumption also holds true. The proportional hazards assumption enables the estimation of hazard ratios for different comparison groups, while the accelerated failure model assumption facilitates the estimation of the direct effect of an exposure on survival time. 

Similar to the Cox PH model, the verification of this unique assumption can be done using a log-log plot. The survival function for a Weibull distribution is expressed as follows: 

$$
S (t) = \exp (- \lambda t ^ {p}) \tag {3.30}
$$

To examine this property, we take the logarithm of S(t), multiply it by −1, and then take a second logarithm, resulting in: 

$$
\log \left[ - \log S (t) \right] = \log \lambda + p \log t. \tag {3.31}
$$

If the Weibull assumption is held, the Kaplan–Meier estimate of S(t) will be close to S(t) in Equation 3.26. In this case, we substitute the Kaplan–Meier estimate of the survival function for S(t). By plotting the log(−log) of S(t) against the log of time, we can observe an approximately straight line. The AFT assumption is considered valid if the comparison lines of the log(−log) of S(t) over the log of time appear as straight lines. A summary of the potential log-log plots can be found in Table 3.8. 


TABLE 3.8



Assumptions Used in Weibull AFT Model and PH Model


<table><tr><td>Straight Lines</td><td>Parallel Lines</td><td>AFT Assumption</td><td>PH Assumption</td></tr><tr><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr><tr><td>Yes</td><td>No</td><td>No</td><td>No</td></tr><tr><td>No</td><td>Yes</td><td>No</td><td>Yes</td></tr><tr><td>No</td><td>No</td><td>No</td><td>No</td></tr></table>

When the accelerated failure time assumption is valid, it implies that the proportional hazard. assumption also holds. If the log-log lines in the plot are both parallel and straight, it indicates that the assumptions of both the proportional hazards model and the AFT model are applicable. The vertical separation between these lines provides an estimation of β, which represents the logarithm of the relative hazard. However, if the two lines are straight but not parallel, it suggests that the shape parameter, p, differs between the two groups, indicating a violation of proportional hazards. In such cases, the hazards are no longer proportional. On the other hand, if the two lines are not straight, the Weibull AFT model may not be appropriate for the data. In situations where the proportional hazards assumption is met but the Weibull AFT assumption is violated (as indicated by parallel but not straight lines), both the Cox PH model and the Weibull PH model can be utilized. 

## Example 3.24

The log-log lines corresponding to the two comparison groups exhibit a reasonably straight pattern (Figure 3.21), indicating that the assumption of Weibull distributions for the survival times is satisfied. Moreover, the similar gradients of the two lines suggest that the proportional hazard model is appropriate for the data analysis. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/b6785dac017efe05c2712337c26f6f556bd767e68715e73e58dcfc6b33f31f5e.jpg)



FIGURE 3.21 The log-log lines corresponding to the exposed group and unexposed group.


By examining the distance between the two lines, an estimate of β or the log hazard ratio can be obtained. In Figure 3.21, the distance between the two straight lines is approximately 0.7. Consequently, the estimated hazard ratio (HR) can be calculated as exp(0.7) = 2.01. This implies that individuals in the exposed group face a 2.01 times higher risk of death at any given time compared to those in the unexposed group. 

## 3.8 Summary



Cutler, S. J., and F. Ederer. 1958. “Maximum utilization of the life table method in analyzing survival.” J Chronic Dis 8 (6):699–712. doi: 10.1016/0021-9681(58)90126-7. 





Peto, R., and J. Peto. 1972. “Asymptotically efficient rank invariant test procedures.” J R Stat Soc Ser A Stat Soc 135 (2):185–207. doi: 10.2307/2344317. 



When analyzing survival data using a semiparametric model like the Cox PH model, there is no requirement to assume a specific probability distribution for the survival times. This flexibility allows the model to estimate hazards and hazard ratios, making it widely applicable in epidemiologic research. However, when there is prior knowledge or evidence suggesting a particular probability distribution for the data, such as the Weibull distribution, making inferences based on that distribution can lead to more precise results. In particular, estimates of the hazard ratio and acceleration factor tend to have smaller standard errors when a distributional assumption is incorporated compared to when it is not (Collett 2015). Nonetheless, one of the challenges in survival analysis is selecting the appropriate parametric distribution for the survival time. Choosing an incorrect distribution can yield invalid results and lead to erroneous conclusions. Thus, careful consideration and examination of the data and prior knowledge are crucial in order to make informed decisions regarding the choice of the parametric distribution in survival analysis. 



Efron, B. 1977. “The efficiency of Cox’s likelihood function for censored data.” J Am Stat Assoc 72 (359):557–565. doi: 10.2307/2286217. 





Rothman, K. J., and T. L. Lash. 2021. “Epidemiologic study design with validity and efficiency considerations.” In Modern epidemiology, edited by T. L. Lash, T.J. VanderWeele, S. Haneuse and K. J. Rothman, 105–142. Philadelphia: Wolters Kluwer. 



## Additional Readings



Gail, M. H., B. Graubard, D. F. Williamson, and K. M. Flegal. 2009. “Comments on ‘Choice of time scale and its effect on significance of predictors in longitudinal studies’ by Michael J. Pencina, Martin G. Larson and Ralph B. D’Agostino, Statistics in Medicine 2007; 26:1343-1359.” Stat Med 28 (8):1315–1317. doi: 10.1002/sim.3473. 





SAS Institute Inc. 2016. SAS/STAT user’s guide: version 14.2. Cary, NC: SAS Institute Inc. 



The following excellent publications provide additional information about survival analysis: 



Gardiner, J. C., and Z. Luo. 2008. Encyclopedia of epidemiology. Los Angeles: Sage Publications. 





Sasieni, P. D., and A. R. Brentnall. 2014. “Survival analysis.” In Handbook of epidemiology, edited by W. Ahrens and I. Pigeot, 1195–1225. New York, NY: Springer. 





Greenland, S., R. Daniel, and N. Pearce. 2016. “Outcome modelling strategies in epidemiology: traditional methods and basic alternatives.” Int J Epidemiol 45 (2):565–575. doi: 10.1093/ije/dyw040. 





Selvin, S. 2008. Survival analysis for epidemiologic and medical research: A practical guide, Practical guides to biostatistics and epidemiology. Cambridge: Cambridge University Press. 





Collett, D. 2015. Modelling survival data in medical research.3rd ed, Chapman & Hall/CRC texts in statistical science series. Boca Raton, Fla.: Chapman & Hall/CRC. 





Greenland, S., and K. J. Rothman. 2008. “Measures of occurrence.” In Modern epidemiology, edited by Kenneth J. Rothman, Sander Greenland and Timothy L. Lash, 32–50. Philadelphia: Wolters Kluwer Health/Lippincott Williams & Wilkins. 





Therneau, T. M., and P. M. Grambsch. 2000. Modeling survival data: Extending the Cox model, Statistics for biology and health. New York: Springer. 





Hosmer, David W., Stanley Lemeshow, and Susanne May. 2008. Applied survival analysis: regression modeling of time-to-event data. 2nd ed. Wiley series in probability and statistics. Hoboken, N.J.: Wiley-Interscience. 





Haneuse, S. 2021. “Time-to-event analysis.” In Modern epidemiology, edited by Timothy L. Lash, T.J. VanderWeele, S. Haneuse and Kenneth J. Rothman, 531–562. Philadelphia: Wolters Kluwer. 





VanderWeele, T.J. 2021. “Causal inference with time-varying exposures.” In Modern epidemiology, edited by Timothy L. Lash, T.J. VanderWeele, S. Haneuse and Kenneth J. Rothman, 605–618. Philadelphia: Wolters Kluwer. 





Kleinbaum, David G., and Mitchel Klein. 2012. Survival analysis: A self-learning text New York, NY: Springer. 





Hernán, M. A., and J. M. Robins. 2020. Causal inference: What if. Boca Raton: Chapman & Hall/CRC. 





Wolbers, M., M. T. Koller, J. C. Witteman, and E. W. Steyerberg. 2009. “Prognostic models with competing risks: Methods and application to coronary risk prediction.” Epidemiology 20 (4):555–561. doi: 10.1097/EDE.0b013e3181a39056. 



## References



Hertz-Picciotto, I., and B. Rockhill. 1997. “Validity and efficiency of approximation methods for tied survival times in Cox regression.” Biometrics 53 (3):1151–1156. 





Woodward, M. 2014. Epidemiology: Study design and data analysis. Boca Raton: CRC Press. 





Hosmer, D. W., S. Lemeshow, and S. May. 2008. Applied survival analysis: Regression modeling of timeto-event data. 2nd ed. Wiley series in probability and statistics. Hoboken, N.J.: Wiley-Interscience. 





Austin, P. C., D. S. Lee, and J. P. Fine. 2016. “Introduction to the analysis of survival data in the presence of competing risks.” Circulation 133 (6):601–609. doi: 10.1161/circulationaha.115.017719. 





Hosmer, D.W., S. Lemeshow, and R.X. Sturdivant. 2013. Applied logistic regression. 3rd ed. New Jersey: Wiley. 





Collett, D. 2015. Modelling survival data in medical research. 3rd ed. Chapman & Hall/CRC texts in statistical science series. Boca Raton, Fla.: Chapman & Hall/CRC. 





Kalbfleisch, J. D., and Ross L. Prentice. 2002. The statistical analysis of failure time data. 2nd ed. Wiley series in probability and statistics. Hoboken, NJ: John Wiley & Sons. 





Commenges, D., L. Letenneur, P. Joly, A. Alioum, and J. F. Dartigues. 1998. “Modelling age-specific risk: application to dementia.” Statist Med 17 (17):1973–1988. 





Kaplan, E. L., and Paul Meier. 1958. “Nonparametric Estimation from Incomplete Observations.” J Am Stat Assoc 53 (282):457–481. doi: 10.2307/2281868 





Klein, J. P., and M. L. Moeschberger. 2003. Survival analysis: Techniques for censored and truncated data, Statistics for biology and health. New York, NY: Springer. 





Klein, J. P., and M. L. Moeschberger. 2010. Survival analysis: Techniques for censored and truncated data. 2nd ed. Statistics for biology and health. New York, NY: Springer. 





Kleinbaum, D. G., and M. Klein. 2010. Logistic regression: A self-learning text. 3rd ed. New York: Springer. 





Kleinbaum, D. G., and M. Klein. 2012. Survival analysis: A self-learning text. New York, NY: Springer. 





Korn, E. L., B. I. Graubard, and D. Midthune. 1997. “Time-to-event analysis of longitudinal follow-up of a survey: choice of the time-scale.” Am J Epidemiol 145 (1):72–80. doi: 10.1093/oxfordjournals. aje.a009034. 





Lau, B., S. R. Cole, and S. J. Gange. 2009. “Competing risk regression models for epidemiologic data.” Am J Epidemiol 170 (2):244–256. doi: 10.1093/aje/kwp107. 





Lee, E. T., and J. W. Wang. 2013. Statistical methods for survival data analysis. 4th ed. Hoboken, NJ: John Wiley & Sons. 





Lin, D. Y., L. J. Wei, and Z. Ying. 1993. “Checking the Cox model with cumulative sums of martingalebased residuals.” Biometrika 80 (3):557–572. 





Massey, F. J. 1951. “The Kolmogorov-Smirnov test for goodness of fit.” J Am Statist Assoc 46 (253): 68–78. doi: 10.2307/2280095. 





Mehrotra, D. V., S. C. Su, and X. Li. 2012. “An efficient alternative to the stratified Cox model analysis.” Stat Med 31 (17):1849–1856. doi: https://doi.org/10.1002/sim.5327. 





Miller, A. B., D. C. Goff Jr, K. Bammann, and P. Wild. 2014. “Cohort studies.” In Handbook of epidemiology, edited by W. Ahrens and I. Pigeot, 262–277. New York: Springer Reference. 





Okely, J. A., A. Weiss, and C. R. Gale. 2017. “The interaction between stress and positive affect in predicting mortality.” J Psychosom Res 100:53–60. doi: 10.1016/j.jpsychores.2017.07.005. 





Pencina, M. J., M. G. Larson, and R. B. D’Agostino. 2007. “Choice of time scale and its effect on significance of predictors in longitudinal studies.” Stat Med 26 (6):1343–1359. doi: 10.1002/sim.2699. 



# Modeling for Cohort Studies: Propensity Score Method

Confounding presents a substantial challenge to the validity of exposure effect estimates in observational studies. It arises when there are imbalanced distributions of covariates that affect the outcome of interest between the exposed and unexposed groups. These covariates encompass both confounding variables and those that exclusively affect the outcome. In observational studies, selection bias can result in differences in the distribution of variables that serve as risk factors solely for the outcome, rather than for the exposure itself, between exposed and unexposed groups, thereby introducing confounding effects. To address confounding, traditional regression models require adjustment for these covariates. However, in situations where the study sample is small and the outcome is rare, including numerous covariates in the regression model may result in instability, indicated by reduced statistical power and large standard errors. Even in large study samples, instability can arise due to multicollinearity, which results from high correlations among certain covariates in a regression model. Is there an alternative approach to avoid instability? The answer is yes: propensity score (PS) analysis. PS analysis involves creating a composite variable that aggregates information from a large set of confounding variables and employing this single composite variable in the model, thereby alleviating the need to include all individual confounders in a regression model. By employing the propensity score, researchers can effectively control for confounding without compromising the stability and statistical power of the analysis. 

## 4.1 Propensity Score Analysis

Propensity score analysis is a widely utilized method for controlling multiple confounding variables by balancing their distributions between comparison groups in observational studies (Rosenbaum and Rubin 1983). The propensity score represents a one-dimensional summary of the multidimensional potential confounders. It is defined as the conditional probability or propensity of an individual being exposed to a specific risk factor, given their measured covariates (confounders). The estimation of propensity scores involves assigning weights to the covariates based on their relative importance in determining exposure status. The propensity score for subject $i ,$ denoted as $\mathrm { P } \bar { \mathsf { S } } _ { i } ,$ is calculated using the following Equation 4.1: 

$$
P S _ {i} = \operatorname * {P r} \left(X _ {i} = 1 \mid \mathbf {Z} _ {i}\right) \tag {4.1}
$$

where, i refers to the study subjects, $X _ { i }$ represents the exposure status of the ith subject, and $\mathbf { Z } _ { i }$ represents the set of confounding variables possessed by the ith subject. The estimated propensity score ranges from 0 to 1 and provides an estimate of the probability that a subject belongs to the exposed group. In randomized trials, where treatment or control assignment is determined by flipping a fair coin, subjects have a propensity score of 0.5 (Joffe and Rosenbaum 1999). 

It is important to note that propensity score analysis is primarily designed for controlling baseline confounding variables $\dot { Z _ { i } } .$ However, it does not directly account for timevarying confounding variables when studying the effect of a time-dependent exposure on a long-term outcome. In such cases, researchers may turn to marginal structural models (Robins, Hernán, and Brumback 2000). 

## 4.1.1 Propensity Score and Conditional Exchangeability

In causal analysis, marginal exchangeability, denoted as $Y ^ { x } \perp \perp X \ ( x = 0 , 1 ) .$ , is an essential concept as discussed by Greenland and Robins (2009) and Hernán and Robins (2020). Marginal exchangeability assumes that if the exposed group $( x = 1 )$ and the unexposed group $( x = 0 )$ have identical distributions of variables causing the occurrence of the outcome variable (Y), then the two exposure groups would yield the same outcome values $( Y ^ { x = 1 } = Y ^ { x = 0 } )$ if their exposure levels were the same. However, in observational studies where exposure is not randomly assigned, the exposed group often exhibits different distributions of background covariates compared to the unexposed group. As a result, achieving marginal exchangeability becomes unlikely. 

To address the issue of non-exchangeability, one approach is to utilize conditional exchangeability, which involves considering exchangeability conditional on specific variables. For instance, while the exposed and unexposed groups may not be exchangeable within the entire study sample due to confounding by gender, they might become exchangeable when compared among individuals of the same gender. In this scenario, the conditional exchangeability assumption holds: Y X x ⊥⊥ |gender $( x = 0 , 1 )$ . This notion of conditional exchangeability forms the cornerstone of causal inference in observational studies (Shiba and Kawahara 2021). 

The propensity score (PS) possesses the property of conditional exchangeability on the PS, represented as $Y ^ { x } \perp \perp X \mid P S$ , which holds when the conditional exchangeability $Y ^ { x } \perp \perp X | \hat { Z ( x = 0 , 1 ) }$ is satisfied. This property demonstrates that the propensity score acts as a balancing score: conditional on the PS, the distribution of measured confounding variables becomes similar between the exposed and unexposed groups (Austin 2011a). As illustrated in the diagram in Figure 4.1a, the propensity score can be seen as an intermediate variable situated between a set of confounders $( Z )$ and the exposure variable (X). A balanced propensity score, achieved through methods such as matching, weighting, or stratification, is expected to block all backdoor paths from the exposure to confounding factors and “break” the associations between confounders and exposure (Figure 4.1b). This ensures that confounding variables cannot distort the association between exposure and the outcome. If the selected variables Z, included in the estimation of the propensity score, are sufficient for controlling confounding, conditioning on the estimated propensity score accomplishes the same goal. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/6f91473dc52f811846da5169bf41cba986e501e52943921e4691f95a81902acd.jpg)



（a）


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/9d30bf55af032babcd89dccd312c3ffbc59cb35de76d074b1e4fe5781963bb19.jpg)



(b)



FIGURE 4.1



Propensity score method removes confounding effect.


The primary objective of propensity score analysis is to achieve balance in observed confounders between comparison groups, typically the exposed and unexposed groups. This balance ensures the elimination of associations between confounding variables and the exposure variable. Unlike traditional regression methods, which involve including all confounding variables in a model, propensity score analysis utilizes the predicted propensity score as a single “variable” to capture the collective confounding effects introduced by a set of measured covariates. 

The use of the PS variable, instead of including multiple confounding variables in traditional regression models as discussed in previous chapters, allows for more efficient control of confounding. This approach is particularly beneficial in rare-outcome studies with a large number of confounding variables, as it enhances statistical power and precision (Braitman and Rosenbaum 2002, Cepeda et al. 2003). In such cases, traditional multivariable regression, which attempts to simultaneously control many confounders, is often infeasible due to the rarity of the outcome. Hence, the propensity score method offers a valuable alternative for addressing confounding in these challenging circumstances. 

## 4.1.2 Sparsity, Overlap, and Positivity

During the data analysis stage, two primary methods are commonly used for statistical adjustment of confounding variables: stratification (e.g., Mantel-Haenszel method) and regression methods (e.g., Cox HP model or Poisson regression model). However, one significant challenge in employing statistical adjustment of confounding variables is the sparse-data problem. This issue arises when there is a limited common support region, where the distribution of confounding variables overlaps between the exposed and unexposed groups (depicted as a rectangle in Figure 4.2a). 

Stratification analysis encounters difficulties due to sparse data when numerous potential confounders are present. As a result, the number of subjects in each stratum significantly diminishes, leading to sparse data within the strata. This sparsity undermines the efficiency and introduces bias in estimating the exposure-outcome association within each stratum. For instance, consider a cohort study investigating the relationship between depression and all-cause death. If non-depressed subjects are substantially younger than depressed subjects, the age overlap between the two comparison groups becomes limited (Figure 4.2a). When age is adjusted in the analysis, the young age stratum may predominantly consist of non-depressed subjects (in the unexposed group) with few depressed subjects, while the old age stratum may mostly contain depressed subjects (in the exposed group) with few non-depressed individuals. Thus, to effectively control for confounding, it becomes necessary to expand the overlap area of confounding variables (Figure 4.2b). 

Like stratification, regression adjustment involves estimating the association between exposure and outcome while keeping confounding variables at constant values. Adjusted risk ratio, rate ratio, or odds ratio are commonly estimated using maximum likelihood regression methods such as log-binomial, Poisson, or logistic regression modeling. However, these estimates can be substantially biased if there is a scarcity of data for specific combinations of exposure and outcome at each level of confounding variables. This problem emerges when there are limited samples of subjects in particular strata formed by the three types of variables. It is important to note that this bias can manifest even in large datasets if certain strata have small samples (Greenland, Mansournia, and Altman 2016). In such cases, regression adjustment may fail to ensure balanced distributions of confounders across comparison groups. In other words, it does not guarantee comparability between exposure groups with respect to confounding variables. When there is limited overlap among exposure groups regarding confounding variables, relying solely on regression adjustments may lead to unreliable results. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/57a1c921ce18543124154feaae5041785ecaf8144d21b18c01c336a3306ac97b.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/926c2dec05e307d7b43407877b07bff2bfbe4d8fe5afa0db0d531d2904c3b20b.jpg)



FIGURE 4.2 Distribution of a confounding variable in exposed and unexposed groups.


The issue of limited overlap or common support region is closely linked to the concept of positivity in causal inference (Westreich and Cole 2010). Positivity refers to the condition where, for all possible combinations of covariates Z, the probability of being exposed falls between 0 and 1, indicating a positive probability. In other words, no individual has a propensity score equal to either 1 or 0. Specifically, in the case of binary exposure, positivity can be defined as: 

$$
0 <   \operatorname * {P r} \left(X _ {i} = 1 \mid \mathbf {Z} _ {i}\right) <   1
$$

where i denotes study subjects, Xi represents the exposure status of the ith subject, and Zi corresponds to a set of confounding variables for the ith subject. Positivity necessitates the presence of both exposed and unexposed participants at each combination of observed confounder values in the study population. In randomized trials, the probability of assignment is always positive, as it is 0.5 for treatment or control group assignment. 

However, as illustrated in Figure 4.2a, the majority of subjects in the two comparison groups do not share the same age value, resulting in a probability of 0 for being exposed or non-exposed. Conversely, in Figure 4.2 b, most subjects in the two exposure groups have the same age value, and only a few have an exposure probability of 0. It is evident that the treatment or exposure effect cannot be identified in regions where all subjects are either exposed or unexposed. It can only be estimated within the common support region. The propensity score method aims to balance the distribution of confounders between comparison groups and increase the common support region within the rectangle are in Figure 4.2b. 

## 4.1.3 Two Models Used in Propensity Score Analysis

Two models are involved in a propensity score analysis: the propensity score (PS) estimating model and the outcome model (Figure 4.3). 

The PS-estimating model is responsible for estimating a propensity score for each study subject. In this model, the dependent variable is the exposure variable (X), while the independent variables comprise a set of potential confounders (Z). On the other hand, the outcome model aims to estimate the effect of exposure on the outcome, accounting for propensity scores. This can be achieved through various methods such as matching, stratification, weights, or regression modeling. If a regression model is employed as the outcome model, the dependent variable is the outcome variable, and the independent variables consist of the exposure variable and the propensity score. The outcome model may also include other dependent variables that are not included in Z in the PS-estimating model. 

## 4.1.4 Assumptions in PS Analysis

Essentially, propensity score (PS) analysis can be viewed as a form of traditional regression analysis, as it involves two regression models: the PS-estimating model and the outcome model. Consequently, the assumptions of traditional regression models are applicable to propensity score analysis. With that in mind, there are three key assumptions directly related to propensity score analysis when estimating the propensity score and exposure effect. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/a94078ecc82e6c94e7579f2615970e7c26364f3735b247cfa4d547926daa32be.jpg)



FIGURE 4.3



Two general models in propensity score analysis.


The first assumption under consideration is unconfoundedness. In observational studies, where exposure assignment is based on the natural history of exposure, this assumption can potentially be violated, as we are only able to control for measured confounders, not unmeasured ones. As these unmeasured confounders cannot be incorporated in the PS-estimating model, the presence of such variables in a study population can still confound the estimation of the exposure effect on the outcome. While this issue is not unique to propensity score analysis and also arises in traditional regression models, we must operate under the assumption that all confounding variables are measured, accessible, and included in the analysis (no hidden bias). The process of identifying and measuring all potential confounding variables can help mitigate hidden bias, although this may not always be feasible in observational studies. An alternative approach involves conducting a sensitivity analysis to evaluate the degree to which unmeasured confounders impact the validity of the estimated exposure effect on the outcome (Li et al. 2011, Rudolph and Stuart 2017). 

The second assumption is sufficient overlap or a common support region. As mentioned in Section 4.1.2, for effective confounding control, there must be adequate overlap in the distributions of propensity scores estimated for the exposed and unexposed groups, and both groups should share a common support region of propensity scores. This assumption implies that individuals with the same propensity scores have an equal probability of being “assigned” to either the exposed or unexposed group based on the similarity of their covariates. This equal probability ensures comparability between the two comparison groups in terms of these covariates and allows for the isolation of the exposure effect from confounding effects. A large common support region facilitates the conditional exchangeability between the exposed and unexposed groups. A limited common support region occurs when the two comparison groups have fundamentally different values of confounders. If there is insufficient common support, the propensity score method should not be used. Specific methods for assessing and improving the common support region are discussed in subsequent sections. 

The third assumption is the positivity assumption, which states that the propensity score is strictly greater than 0and less than 1, $0 < \mathrm { P r } \big ( X _ { i } = 1 | Z _ { i } \big ) < 1$ . Under this assumption, each subject has a nonzero probability of receiving the treatment or exposure of interest, and both exposed and unexposed individuals are present in all subpopulations (e.g., strata) defined by the propensity score values (this is also related to the assumption of overlap) (Westreich and Cole 2010). When this assumption holds, exposed and unexposed subjects have potential (unobserved) outcomes in the other group under a counterfactual condition (unexposed or exposed, respectively). The assumption is violated when only exposed or only unexposed subjects are present within the PS-defined strata. A larger common support region implies less violation of the positivity assumption. 

To control for confounding using propensity score analysis, six steps are typically involved (Figure 4.4). The subsequent sections will elaborate on the specific approaches utilized in each of these six steps. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/58cc4994ec7aadc3f4d8239265c68ecf0c13be16b7854cd7f5663b6a7a4f6b71.jpg)



FIGURE 4.4



Key steps involved in propensity score analysis.


## 4.2 Step 1: Selection of Covariates

The validity of the propensity score estimate in the propensity score method relies on the covariates included in the model that predicts the propensity score. Thus, the selection of appropriate covariates and their forms (binary, categorical, or continuous) is a crucial step in the propensity score analysis. While there is no definitive consensus on the selection of confounding variables, it should be guided by subject-matter knowledge (Hernán et al. 2002) and driven by our understanding of the potential causal relationships among the outcome, exposure, mediators, modifiers, and confounders, as discussed in Section 1.6, Chapter 1. 

It is recommended to include only variables that affect the outcome in the PS-estimating model (Brookhart et al. 2006, Rubin and Thomas 1996). Following this recommendation, the PS-estimating model should include $Z _ { 1 }$ and $Z _ { 2 } ,$ as they have an impact on the outcome (Figure 4.5). While $Z _ { 1 }$ qualifies as a genuine confounding variable, $\dot { Z _ { 2 } }$ does not affect the exposure (as it is a prognostic factor). However, due to selection bias, the distribution of $Z _ { 2 }$ is likely to differ between the exposed and unexposed groups. Therefore, adjusting for $Z _ { 2 }$ helps reduce bias in the exposure-outcome effect estimation and decreases the variance of the effect estimate. 

Variables $Z _ { 3 }$ and $Z _ { 4 } ,$ , which do not affect the outcome, should not be included in the PS-estimating model. $Z _ { 3 } ,$ which only affects the exposure, should be omitted because its inclusion would inflate the variance of the exposure-outcome effect estimate, thereby reducing precision in estimates (Brookhart et al. 2006). Inclusion of $Z _ { 3 }$ in a PS-estimating model may even introduce bias (Adelson et al. 2017). However, if there exists an unmeasured variable that affects both $Z _ { 3 }$ and the outcome, $Z _ { 3 }$ should be included in the model as a proxy confounder. 

As for $Z _ { 4 } ,$ being a collider on the causal path from exposure to outcome, it is not a confounder and should not be incorporated in the PS-estimating model. Regarding $Z _ { 5 } ,$ being a mediating variable, its inclusion in the model would lead to a reduction in the total effect of exposure on the outcome, as it removes the indirect effect of exposure on the outcome through $Z _ { 5 }$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/aa98849f513c8d2af4f6859af00a66dfbec0ee99e9d7340e915bab937d124da9.jpg)



FIGURE 4.5 Causal diagram illustrating variable selection for a PS-estimating model.


Again, the decision of whether to include a variable in a PS-estimating model should be driven by subject-matter knowledge and a deep understanding of the underlying causal structures. It is important to include covariates that are believed to have a substantive impact on the outcome variables. The recommended approach for variable selection entails a comprehensive review of the literature and consultation with experts to gain insights into potential causal relationships. This method will enable researchers to gather data on pertinent variables, thereby enhancing the validity of exposure-outcome effect estimation by adequately adjusting for all measured confounding variables. 

In the propensity score method, the primary aim is to efficiently control for confounding rather than predict exposure allocation. Therefore, an optimal PS-estimating model should include variables that possess the potential to confound the exposure-outcome relationship, rather than emphasizing the model’s ability to predict exposure. The PS-estimating models do not require accurate prediction of exposure. They only need to include confounding variables Z in the model that affects the exposure-outcome associations. Consequently, model fit statistics are not appropriate for evaluating the model’s validity or for variable selection. The selection of covariates in the PS-estimating model cannot rely purely on statistical associations with the outcome or exposure. Generally, the usage of statistical methods such as stepwise regression, c-statistics, or area under the curve for variable selection is discouraged (Greenland 1989, Shiba and Kawahara 2021). 

For instance, when employing a stepwise approach for variable selection in a PS-estimating model, a variable may be retained if it exhibits a statistical significant association with the exposure variable X, even if it lacks any meaningful association with the outcome Y. This can result in over adjustment for a variable that does not confound the exposure-outcome relationship, or a variable that is affected by X, such as a mediator. Conversely, a true confounder might be excluded by the stepwise approach if its association with X is nonsignificant (e.g., p > 0.05), leading to the potential for uncontrolled confounding. Therefore, it is essential to base the selection of variables for the PS-estimating model on our substantive understanding of the relationships among the involved variables, rather than solely relying on the model’s ability to predict the exposure. 

## 4.3 Step 2: Estimation of Propensity Score

Once the appropriate covariates are selected, the next step in propensity score analysis is to estimate a propensity score for each subject using a PS-estimating model. The most commonly employed model for this purpose is multiple logistic regression, where the exposure variable serves as the dependent variable and the selected covariates form the set of independent variables (Austin 2011a, Pan 2015). While alternative methods such as classification and regression tree (Westreich, Lessler, and Funk 2010) and neural networks (Setoguchi et al. 2008) are also available, logistic regression is widely used and will be the focus of this chapter. More comprehensive information on logistic regression will be presented in Chapter 5. 

The logistic regression model is utilized to estimate coefficients for the selected covariates, which are then employed to calculate the propensity score for each study subject based on their specific covariate values. The regression equation for the PS-estimating model is represented as follows: 

$$
\operatorname{Log} \left(\text { odds } _ {E | Z}\right) = \operatorname{Log} \left[ P S / (1 - P S) \right] = \beta_ {0} + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} + \dots + \beta_ {p} Z _ {p} \tag {4.2}
$$

where E refers to the exposure status (exposed vs. unexposed), $Z _ { 1 } - Z _ { \mathfrak { p } }$ represent the confounding variables, and $\beta _ { 1 } - \beta _ { p }$ denote the regression coefficients. The propensity score (PS) is estimated using the following equation: 

$$
P S = \exp \left(\beta_ {0} + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} + \dots + \beta_ {p} Z _ {p}\right) / \left(1 + \exp \left(\beta_ {0} + \beta_ {1} Z _ {1} + \beta_ {2} Z _ {2} + \dots + \beta_ {p} Z _ {p}\right)\right) \tag {4.3}
$$

In logistic regression, the exposure variable is typically binary, with a value of 1 indicating exposure and 0 representing unexposed. The covariates can be continuous or categorical. If a categorical variable has more than two levels, dummy variables will be created to indicate each level. 

Equations 4.2 and 4.3 suggest that the set of confounders $Z _ { 1 } - Z _ { p }$ is replaced by a single value, the propensity score, which is a function of these confounders. As such, the estimated propensity score encapsulates each subject’s unique combination of covariates and is treated as though it were the sole confounder. Exposed and unexposed subjects with identical propensity scores tend to exhibit similar patterns of covariates. It is important to reiterate that statistical measures (e.g., model fit) are not employed to assess the predictability of covariates for exposure status. This is because the primary aim of the propensity score is to control for confounding, not to predict exposure allocation. Thus, the PS-estimating model serves as an association model rather than a prediction model (refer to Section 1.2 in Chapter 1 for additional information about these two types of models). Moreover, the stepwise approach to covariate selection is discouraged, as the selection process is based solely on a pre-set p-value, while confounding represents a systematic error, not a random one. 

## 4.4 Step 3: Assessment of Common Support Region

Before utilizing propensity scores for adjustment, it is important to assess the distribution of propensity scores in the exposed and unexposed groups and ensure that there is sufficient overlap or support region across the range of propensity scores for both groups. In observational studies, it is possible for the distributions of propensity scores to have a limited support region between the comparison groups, indicating differences in the joint distributions of confounding variables (Rubin 1977). In such cases, regression results obtained from the data are likely to be biased (Greenland, Daniel, and Pearce 2016), and the validity of propensity score analysis may be compromised (Oakes and Johnson 2017). 

The examination of the support region can be conducted subjectively by visually inspecting a graph of propensity scores across the exposed and unexposed groups. Figure 4.6 illustrates an example of an adequate support region, where the propensity scores of one group (i.e., depressed group) overlap with the scores of the other group (i.e., non-depressed group). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/5ac6384854d612629b87de1bc3fc82d88409355c53bdea38e0dbbd3746af9723.jpg)



FIGURE 4.6



Distribution of propensity scores over two exposure groups.


The overlap or support region of propensity scores between the exposed and unexposed groups can be evaluated by a quantitative measure known as the standardized mean difference (SMD). The equation for the SMD is given as: 

$$
S M D = \frac {m _ {e x p} - m _ {u n e x p}}{s _ {p}} \tag {4.4}
$$

where $m _ { \mathrm { e x p } }$ and $m _ { \mathrm { n o n - e x p } }$ represent the sample means of the propensity scores for the exposed and unexposed groups, respectively, and $s _ { p }$ denotes the pooled variance of the propensity scores (Flury and Riedwyl 1986). A small SMD value, typically less than 0.5, indicates good common support or overlap between the propensity scores of the two groups (Bai and Clark 2019, Rubin 2001). 

If inadequate overlap is observed, several approaches can be taken. Firstly, it may be necessary to revisit the selection of covariates and consider including additional variables or changing the form of variables. For example, adding quadratic form or spline form for age or including interactions between covariates can help capture more complex relationships and potentially improve overlap (refer to Chapter 10 for more on the spline regression model). Additionally, it may be considered to exclude subjects with very low propensity scores in the unexposed group or subjects with very high propensity scores in the exposed group. 

However, it is important to be cautious with exclusions as they can introduce selection bias. If a large number of subjects are excluded, the remaining study sample may not be representative of the base population from which the original sample was drawn, and the generalizability of the estimated exposure effect to the base population can be compromised. 

## 4.5 Step 4: Balancing Propensity Scores

After obtaining propensity scores with sufficient overlap, the subsequent step involves balancing these scores between the exposed and unexposed groups through three strategies: matching, stratification (or subclassification), and inverse probability of weighting (IPW). Each strategy has its own strengths and limitations (Stuart 2010, Guo and Fraser 2014), as discussed in the following sections. 

## 4.5.1 Matching

Similar to the matching principle in epidemiology, propensity score matching involves pairing unexposed subjects with exposed subjects who have the most similar propensity scores. The propensity score acts as the matching variable, aggregating measured confounders. This process generates a new dataset known as the matched dataset, characterized by comparable distributions of propensity scores between the exposed and unexposed groups. As a result, the propensity score method removes the association between measured confounders and the exposure. 

There are several methods available for matching, including exact matching, nearest neighbor matching with or without a caliper, optimal matching, and full matching. Matching can be conducted in different ways: one exposed subject matched with one unexposed subject (1:1 matching ratio) or one exposed subject matched with two or more unexposed subjects (1:k matching ratio). The 1:k matching increases the sample size and enhances the precision of the estimated exposure effect. However, it may lead to substantial differences in propensity scores between the exposed and unexposed subjects if unexposed subjects with the same propensity scores cannot be identified to match exposed subjects, compromising the quality of matching and resulting in residual bias. Therefore, selecting a matching ratio involves a trade-off between precision and residual bias. 

For example, let’s consider an exposed subject with a propensity score of 0.50. To find two unexposed subjects to match with the exposed subject, we first identify an unexposed subject with the closest propensity score to 0.50 from the pool of unexposed subjects, let’s say it is 0.51. The next unexposed subject has a propensity score of 0.47, which is the closest to 0.50 among the remaining candidates in the pool. Consequently, the difference in propensity scores between the first matched pair is 0.01, whereas it is 0.03 for the second pair. The subsequent match to that exposed subject is not better but worse than the previous one. 

In addition to the matching ratio, another consideration in matching is whether to use replacement or non-replacement. In the replacement approach, one unexposed subject can be matched with more than one exposed subject. This approach is typically utilized in studies where there are more exposed subjects than unexposed subjects. However, in epidemiological studies, the number of unexposed subjects is usually greater than the number of exposed subjects, making the replacement approach less commonly used. 

Among the various matching methods, nearest neighbor matching is often considered the most effective and feasible and is widely used in epidemiological research. Therefore, we will focus on describing this methodology. However, readers interested in exploring other matching methods can refer to comprehensive resources such as the books by Guo and Fraser (2014) and Bai and Clark (2018), which provide detailed information on different matching approaches. 

In nearest neighbor matching, two approaches can be utilized: greedy matching and caliper matching. Nearest neighbor matching involves matching each subject (i) in the exposed group (x = 1) with a subject in the unexposed group $( x = 0 )$ based on the closest absolute distance (d) between their propensity scores. The absolute distance (d) between subject i in the exposed group and a subject in the unexposed group is calculated as shown in Equation 4.5: 

$$
d _ {i} = \left| P S _ {i, x = 1} - P S _ {i, x = 0} \right| \tag {4.5}
$$

For example, let’s consider a hypothetical study with five exposed subjects and seven unexposed subjects (as shown in Table 4.1). To perform greedy matching, we first rank the subjects based on their propensity scores, from largest to smallest. Then, we match one unexposed subject to one exposed subject based on the closest propensity score. For instance, the first exposed subject has a propensity score of 0.86. We identify an unexposed subject with the closest propensity score to 0.86. Among the seven unexposed subjects, the first one is matched to the exposed subject since his or her propensity score of 0.82 is the closest to the exposed subject’s score. 

Similarly, the unexposed subject with a propensity score of 0.71 can be matched to either the exposed subject with a score of 0.73 or the exposed subject with a score of 0.69 since the distance (di ) is the same for both pairs $( d _ { i } = 0 . 0 \bar { 2 } )$ . However, in greedy matching, the exposed subject with the higher score (0.73) is given priority in the matching process (greedy). Since there are only five subjects in the exposed group, two of the seven subjects in the unexposed group (with propensity scores of 0.48 and 0.41) are not matched and therefore excluded from the new matched sample. In the matched sample, the average value of $d _ { i }$ is calculated to be 0.022 (0.11/5). 

Caliper matching is another approach in propensity score analysis that matches each subject in the exposed group to a subject in the unexposed group within a predetermined caliper bandwidth (b). The caliper serves as a threshold that restricts the matching pool and ensures that matched pairs are within a certain distance of propensity scores. 


TABLE 4.1 Comparison of Greedy Matching and Caliper Matching of Propensity Scores


<table><tr><td colspan="3">Greedy Matching</td><td colspan="4">Caliper Matching</td></tr><tr><td>Exposed</td><td>Unexposed</td><td><eq>d_i</eq></td><td colspan="2">Bandwidth in Exposed</td><td>Unexposed</td><td><eq>d_i</eq></td></tr><tr><td>0.86</td><td>0.82</td><td>0.04</td><td>0.83</td><td>0.89</td><td></td><td></td></tr><tr><td>0.81</td><td>0.81</td><td>0.00</td><td>0.78</td><td>0.84</td><td>0.81</td><td>0.00</td></tr><tr><td>0.73</td><td>0.71</td><td>0.02</td><td>0.70</td><td>0.76</td><td>0.71</td><td>0.02</td></tr><tr><td>0.69</td><td>0.65</td><td>0.04</td><td>0.66</td><td>0.72</td><td>0.65</td><td>0.04</td></tr><tr><td>0.56</td><td>0.57</td><td>0.01</td><td>0.53</td><td>0.59</td><td>0.57</td><td>0.01</td></tr><tr><td></td><td>0.48</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>0.41</td><td></td><td></td><td></td><td></td><td></td></tr></table>

The choice of caliper width is important, as larger calipers allow more matching candidates and increase the chance of fully matching exposed subjects. However, a larger caliper width may also result in greater differences between matched pairs, leading to residual bias. 

It is generally recommended that the caliper bandwidth should not exceed 0.25 times the standard deviation of the propensity scores in the exposed group (Rosenbaum and Rubin 1985). To apply caliper matching to our hypothetical example, we first estimate the standard deviation for the propensity scores of the exposed group, which is calculated as 0.116. Using this information, we can calculate the caliper width as $b = 0 . 2 5 \times 0 . 1 1 6 = 0 . 0 2 9$ . Next, we determine the caliper bandwidth for each exposed subject. For instance, the caliper for the exposed subject with a propensity score of 0.86 would be between 0.83 and ${ \hat { 0 } } . 8 9 \ ( 0 . 8 6 \pm 0 . { \overset { . } { 0 } } 2 9 )$ . However, in this case, there is no unexposed subject with a propensity score within this caliper width, indicating that the exposed subject cannot be matched (Table 4.1). 

As shown in Table 4.1, out of the five exposed subjects, only four are successfully matched using caliper matching. The average value of $d _ { i }$ in the new matched sample is calculated to be 0.0175 (0.07/4). Compared to greedy matching, caliper matching yields better matched pairs with a smaller average value of $d _ { i } .$ However, the number of matched pairs is reduced to four from the initial five. Therefore, caliper matching is more suitable for studies with a large sample size, as it provides better matching quality while maintaining an adequate number of matched pairs. Detailed information about the use of matching in propensity score analysis can be found in Section 4.8.3, offering further insights into this methodology. 

In summary, matching enables a direct comparison between exposed and unexposed groups by selecting individuals with similar propensity scores, reducing confounding. The matched sample closely resembles a randomized controlled trial, aiding interpretation of the exposure-outcome association. However, valid matching necessitates an adequate number of individuals in both groups, posing challenges with small samples or rare exposures. Sensitivity to matching algorithm and caliper width choices can introduce bias if not carefully addressed. 

## 4.5.2 Stratification

One limitation of the nearest neighbor matching approach is that it may result in the exclusion of some unexposed subjects, leading to reduced statistical power and limited generalizability. To overcome this limitation, the stratification approach utilizes all study subjects in the analysis. Stratification based on the propensity score involves dividing subjects into mutually exclusive subsets (strata) according to their estimated propensity scores. 

Unlike individual matching in nearest neighbor matching, stratification is a strata-based matching approach where exposed subjects are matched to unexposed subjects within predefined intervals of propensity scores. Each interval represents a stratum. Within each PS stratum, the average propensity score in the exposed group is similar to that in the unexposed group, and the joint distribution of measured confounding variables is expected to be approximately similar between the two comparison groups. 

To effectively reduce bias, narrowing the interval width and increasing the number of strata can bring the average propensity score in the exposed group closer to that in the unexposed group. It is recommended that stratification into five strata can substantially reduce confounding bias (Cochran 1968, Rosenbaum and Rubin 1984). However, having more strata and finer intervals can reduce the number of subjects within each stratum, leading to unstable estimates of the exposure effect. 

In summary, stratification in propensity analysis divides the sample into distinct strata based on propensity scores for comparisons within each stratum. However, it has limitations. Residual confounding may occur due to unbalanced propensity score distributions between exposed and unexposed groups within strata. Additionally, sparse samples within strata can lead to unstable and imprecise estimates of the exposure effect on outcome. Detailed information about the use of stratification can be found in Section 4.8.4. 

## 4.5.3 Weighting

Unlike matching and stratification, which aim to achieve balance in the distribution of propensity scores between the exposed and unexposed groups, the objective of propensity score weighting is to use inverse probability weighting (IPW) with the propensity score to reweight subjects in the original exposed and unexposed samples, creating a pseudopopulation in which exposure is no longer associated with confounders (Rosenbaum 1987). The exposure effect on outcome can then be estimated in the pseudo-population. In general, IPW uses the conditional probability of treatment/exposure given the covariate to build a pseudo-population, following the counterfactual theory. 

The IPW approach allows for the estimation of two types of exposure effects: the average treatment (or exposure) effect on the treated sample (ATT) and the average treatment effect for the entire sample (ATE) (Austin and Stuart 2015). The choice of exposure effect depends on the investigator’s goals. The ATT represents the estimated effect of the treatment/exposure for those in the treated/exposed group, while the ATE represents the effect on all subjects, combining the ATT with the estimated exposure effect for the unexposed group. To illustrate these two definitions of exposure effects, let’s consider the effect of depression on all-cause death. If we want to investigate the effect of depression (depressed vs. non-depressed) on all-cause death for the entire study population, irrespective of their actual depression status, then the ATE is the measure of interest. However, if we want to study the effect of depression on death only for those who are depressed, then the ATT is the appropriate measure. 

The ATE for the entire study population is given by the equation shown below (Equation 4.6): 

$$
A T E = E [ Y (1) ] - E [ Y (0) ] \tag {4.6}
$$

where E[Y(1)] and E[Y(0)] represent the potential outcome means (POM) for the exposed and unexposed groups, respectively. In causal analysis, one exposure condition is considered counterfactual to the other, implying what E[Y(0)] would be if an exposed subject did not receive the exposure, and what E[Y(1)] would be if an unexposed subject had received the exposure. For instance, let’s consider a research plan to examine whether the oral antiviral drug (Paxlovid) can reduce hospitalization among newly-diagnosed COVID-19 patients. In this case, the ATE would be the difference between the mean potential outcomes for all patients at risk for hospitalization if they took the drug (i.e., E[Y(1)]) and the mean potential outcomes for all patients at risk for hospitalization if they did not take this drug (i.e., E[Y(0)]). To estimate the ATE, we fit two models for a binary outcome (e.g., logistic regression models): one for the exposed group, estimating E[Y(1)], and the other for the unexposed group, estimating E[Y(0)]. We then use each model to predict the counterfactual responses for all subjects in the study sample. Each subject has two predicted probabilities of the outcome (e.g., hospitalization), one probability if exposed and the other if unexposed. 

In contrast to ${ \mathrm { A T E } } ,$ the ATT represents the mean difference between the observed outcome for subjects who received treatment and their expected potential outcome had they not received treatment (the counterfactual condition). The ATT is estimated as: 

$$
\mathrm{ATT} = E \big [ Y (1) | T = 1 \big ] - E \big [ Y (0) | T = 1 \big ]
$$

where $E [ Y ( 1 ) | T = ] ]$ represents the observed outcome mean for subjects who received treatment, and $E [ Y ( 0 ) | T { \bar { = } } ] ]$ is the expected potential outcome mean if they had not received treatment. Similarly, the outcome of the unexposed condition is counterfactual to the exposed condition, i.e., what $E [ Y ( 0 ) | T = ] ]$ would be if the exposed subjects had not been exposed. For example, the ATT of receiving the oral antiviral drug (Paxlovid) for COVID-19 patients would be the difference between the mean observed outcomes of patients who received the drug $( \mathrm { i . e . , } E [ Y ( 1 ) | T = 1 ] )$ and the mean of their potential outcomes if they had not received this drug $( \mathrm { i . e . , } E [ Y ( 0 ) | T = 1 ] )$ . 

Using the weighting strategy ensures that the comparison groups (exposed vs. unexposed) have the same joint distribution of confounders, making them comparable. Theoretically, differences in outcomes between the weighted groups can be attributed to exposure. The estimates of ATT and ATE employ different weighting schemes (Lunceford and Davidian 2004). ATE adjusts the observations for all study participants, while ATT only weights the observations of those in the unexposed group since the weight in the exposed group is unity (or 1). 

## 1. Estimate the average treatment effect for the entire sample (ATE)

For ATE, the inverse probability of treatment weights (IPTW) are calculated as follows: 

For the exposed: 

$$
I P T W _ {i (\exp)} = \frac {1}{P S _ {i}} \tag {4.7}
$$

And 

$$
y _ {i w (\mathrm{exp})} = y _ {i (\mathrm{exp})} \times I P T W _ {i (\mathrm{exp})} = \frac {y _ {i (e x p)}}{P S _ {i}},
$$

where $y _ { i w ( \mathrm { e x p } ) }$ is the weighted value of the dependent variable for each subject (i) in the exposed group (exp), $y _ { i ( \mathrm { e x p } ) }$ is the original value of the dependent variable for that subject, and $P S _ { i }$ is ith subject’s propensity score. 

For the unexposed: 

$$
I P T W _ {i (u n e x p)} = \frac {1}{1 - P S _ {i}} \tag {4.8}
$$

And 

$$
y _ {i w (u n e x p)} = y _ {i (u n e x p)} \times I P T W _ {i (u n e x p)} = \frac {y _ {i (u n e x p)}}{1 - P S _ {i}},
$$

where $y _ { i w ( u n e x p ) }$ is the weighted value of the dependent variable for each subject (i) in the unexposed group (unexp), $y _ { i ( u n e x p ) }$ is the original value of the dependent variable for that subject, and $P S _ { i }$ is i’s propensity score. The ATE is calculated by Equation 4.9: 

$$
A T E = \frac {\sum_ {i = 1} ^ {n _ {e x p}} y _ {i w (e x p)}}{n _ {e x p} + n _ {u n e x p}} - \frac {\sum_ {i = 1} ^ {n _ {u n e x p}} y _ {i w (u n e x p)}}{n _ {e x p} + n _ {u n e x p}}, \tag {4.9}
$$

where $n _ { e x p }$ is the sample size of the exposed group, and $n _ { \mathrm { u n e x p } }$ is the size of the unexposed group. 

The inverse probability of treatment weights estimated by Equations 4.7 and 4.8 are unstabilized weights. They can become large when exposed subjects have propensity scores close to 0 or unexposed subjects have scores close to 1. This issue arises when a small number of subjects with very large weights contribute a very large numbers to the pseudo-population and dominate the estimates, resulting in less precise estimates. To overcome the instability and lack of precision in estimating the average treatment effect caused by large weights for a few subjects, it is recommended to use stabilized weights instead of unstabilized weights. Stabilized weights can be obtained by multiplying the unstabilized weights by the proportion of exposed or unexposed subjects observed in the study population, respectively. The expected mean of the stabilized weights is 1, as the size of the pseudo-population equals that of the study population. Deviations from 1 may suggest model misspecification or possibly violations of positivity as discussed in Section 4.1.2. 

2. Estimate the average treatment effect for the treated (or exposed) sample (ATT) For ATT, the IPTW weight is estimated using the following formulas: 

For the exposed: 

$$
I P T W _ {i (e x p)} = 1, \tag {4.10}
$$

and 

$$
y _ {i w (e x p)} = y _ {i (e x p)},
$$

where $y _ { i w ( \mathrm { e x p } ) }$ is the weighted value of the dependent variable for each subject (i) in the treatment group (exp), and $y _ { i ( \mathrm { e x p } ) }$ is the original value of the dependent variable for that subject. 

For the unexposed: 

$$
I P T W _ {i (u n e x p)} = \frac {P S _ {i}}{1 - P S _ {1}} \tag {4.11}
$$

and 

$$
y _ {i w (u n e x p)} = \frac {y _ {i (u n e x p)} \times P S _ {i}}{1 - P S _ {i}},
$$

where $y _ { i w ( \mathrm { u n e x p } ) }$ is the weighted value of the dependent variable for each subject (i) in the unexposed group (unexp), $y _ { i ( \mathrm { u n e x p } ) }$ is the original value of the dependent variable for that subject, and $P S _ { i }$ is i’s propensity score. The average treatment effect on the treated, ATT, can be calculated using Equation 4.12: 

$$
A T T = \frac {\sum_ {i = 1} ^ {n _ {e x p}} y _ {i (e x p)}}{\mathbf {n} _ {e x p}} - \frac {\sum_ {i = 1} ^ {n _ {u n e x p}} y _ {i w (u n e x p)}}{n _ {u n e x p}}. \tag {4.12}
$$

In essence, IPTW duplicates observations from individuals with weights to create a pseudo-population in which the probabilities of exposure X do not depend on the confounding variables Z included in the propensity score estimation. 

Let’s use hypothetical data to illustrate how the IPTW can remove the association between confounders and exposure. In this example, gender is considered a confounder (female vs. male), and the exposure variable is depression (depressed vs. non-depressed). Females are more likely to be depressed compared to males, with 60% (6/10) of females in the depressed group and only 20% (3/15) of males in this group (Table 4.2). The unstabilized IPTW weight for females is calculated as 1.67 (1/0.60) for each depressed female and 2.50 [1/(1−0.6)] for each undepressed female, using equations 4.7 and 4.8. The unstabilized IPTW weight for male subjects is 5 (1/0.20) for each depressed male and 1.25 [1/(1−0.2)] for each unexposed male. 

Next, we apply the unstabilized IPTWs to reweight subjects in the exposed and unexposed samples, creating two pseudo-populations: one for the exposed and the other for the unexposed. These pseudo-populations are identical and mirror counterfactual conditions, illustrating what would happen if one pseudo-population were treated and the other were not. The number of females in the pseudo-population for the depressed group is calculated as $6 \times 1 . 6 7 { = } 1 0 ( y _ { i w ( \mathrm { e x p } ) }$ in Equation 4.7) and 15 for the male pseudo-population in the non-depressed group (12×1.25 as $y _ { i w ( u n e x p ) }$ in Equation 4.8). The size of the pseudopopulation is double that of the original sample, with 50 individuals compared to the original 25. This mirrors the fact that the average of the inverse probability of treatment weights is 2, i.e., $( 6 \times 1 . 6 7 + 4 \times 2 . 5 + 3 \times 1 . 5 + 1 2 \times 1 . { \overset { \triangledown } { 2 } } 5 ) / 2 5 .$ Consequently, these weights create a simulated pseudo-population consisting of two replicas of the original study population. One of these replicas represents individuals who were exposed or treated (10 vs. 20), while the other represents individuals who were unexposed or untreated (15 vs. 30). 

The results presented in Table 4.2 demonstrate that the proportion of subjects who are exposed (depressed) is equal between males and females in the pseudo-population (50%; 10/20 and 15/30). This effectively removes the association between the exposure and the confounder, reducing the confounding bias caused by the variable (i.e., gender in this example). Given that the propensity score encompasses all measured confounding variables, the inverse weighting approach is expected to effectively eliminate confounding associated with these variables. Detailed descriptions of the specific weighting approaches employed in the weighted analysis of propensity scores can be found in Section 4.8.5. 


TABLE 4.2 Results of Inverse Probability of Treatment Weighting (IPTW) in a Hypothetical Data


<table><tr><td rowspan="2"></td><td colspan="3">Females</td><td colspan="3">Males</td></tr><tr><td>n</td><td>IPTW</td><td>Pseudopopulation</td><td>n</td><td>IPTW</td><td>Pseudopopulation</td></tr><tr><td>Depressed</td><td>6</td><td>1.67</td><td>10</td><td>3</td><td>5.00</td><td>15</td></tr><tr><td>Non-depressed</td><td>4</td><td>2.50</td><td>10</td><td>12</td><td>1.25</td><td>15</td></tr></table>

If a depressed female has an unstabilized IPTW of 1.65, the stabilized IPTW can be estimated as 1.65 multiplied by $0 . 6 ,$ resulting in 0.99. This calculation accounts for the proportion of exposed subjects observed in the study population, which is 0.6 (6/10). Similarly, for a male non-depressed individual with an unstabilized IPTW of 1.12, the stabilized IPTW can be estimated as 1.12 multiplied by 0.8, yielding 0.90. This adjustment takes into consideration the proportion of unexposed subjects in the study population, which is 0.8 (12/15). 

In summary, inverse probability weighting is a valuable approach that addresses confounding by weighting observations using propensity scores, thereby achieving balance in confounder distribution between exposed and unexposed groups. This allows estimation of average treatment effects on the treated and the entire sample in a pseudo-population. However, this weighting method has limitations including potential instability with large weights for a few subjects, dependence on accurate propensity score estimation, and susceptibility to unmeasured confounding. 

## 4.6 Step 5: Balance Diagnosis

After achieving propensity score balance, it is crucial to evaluate the balance of individual covariates across the two exposure groups both prior to and following the propensity score adjustment. This evaluation will determine whether the propensity score has effectively balanced the covariates, or if the PS-estimating model requires re-specification or modification. In cases where covariates remain unbalanced after the propensity score adjustment, alternative methods can be employed to address the imbalance, such as the doubly robust method (Funk et al. 2011) or the inclusion of interactions and higher-order terms (e.g., quadratic). 

The standardized mean and proportion difference of covariates $( \mathrm { i . e . } ,$ confounders) is the most commonly used method to assess covariate balance. The standardized mean difference can be computed using the following equation: 

$$
\text { Standardized   mean   difference } = \frac {m _ {\text { exp }} - m _ {\text { unexp }}}{\sqrt {\frac {s _ {\text { exp }} ^ {2} + s _ {\text { unexp }} ^ {2}}{2}}} \tag {4.13}
$$

where $m _ { \mathrm { e x p } }$ and $m _ { \mathrm { u n e x p } }$ represent the means of a confounder for the exposed and unexposed groups, respectively, while $s _ { e x p } ^ { 2 }$ and $s _ { u n e x p } ^ { 2 }$ indicate the standard deviations of the confounder for the exposed and unexposed groups, respectively. Similarly, the standard proportion difference can be calculated as: 

$$
\text { Standardized   difference   of   proportions } = \frac {p _ {\text { exp }} - p _ {\text { unexp }}}{\sqrt {\frac {p _ {\text { exp }} \left(1 - p _ {\text { exp }}\right) + p _ {\text { unexp }} \left(1 - p _ {\text { unexp }}\right)}{2}}} \tag {4.14}
$$

In this equation, $p _ { \mathrm { e x p } }$ and $p _ { \mathrm { u n e x p } }$ denote the proportions of a confounder for the exposed and unexposed groups, respectively. Under IPTW, weighted means or proportions and weighted standard deviations replace Equations 4.13 and 4.14 (Austin and Stuart 2015). 

Standardized differences should be calculated before and after the propensity score adjustment to document and assess any improvements resulting from the adjustment. After matching, balance diagnosis is conducted by calculating the standardized difference (Equations 4.13 and 4.14) as before matching. For propensity score stratification, the assessment is performed within each stratum of the propensity score. After weighting, this diagnosis involves comparing exposed and unexposed subjects in the sample weighted by the inverse probability of exposure. 

There is no consensus on the standardized difference threshold for determining balance. However, for regression adjustment to be reliable, the absolute standardized differences of means should be less than 0.20 (Bai and Clark 2019) or 0.25 (Rubin 2001, Stuart 2010). It is important to note that using statistical significance testing to compare mean differences or proportion differences is inadequate for balance diagnosis. Balance is a characteristic of a specific sample, and making statistical inferences about a population is inappropriate. Furthermore, the significance levels are confounded by the sample size. Since propensity score matched samples are typically smaller than the original sample, significance testing to detect imbalance may yield misleading results (Austin 2011a). 

Balance can also be assessed using the variance ratio statistic, which involves dividing the variance of the propensity scores for the exposed group by the variance of the propensity scores for the unexposed group. Acceptable ranges for the ratio of variances are commonly recommended as 0.5 to 2.0 (Rubin 2001). 

Additionally, balance diagnosis can be conducted graphically, which can be particularly useful when dealing with numerous covariates. For continuous covariates, quantile-quantile (QQ) plots can be examined, comparing the quantiles of each covariate in the exposed and unexposed groups. If the two groups have similar distributions, all points would fall around the 45-degree line. For propensity score weighting, weighted boxplots can provide similar insights (Stuart 2010). Illustrative examples of graphical balance diagnosis are presented in Section 4.8. 

## 4.7 Step 6: Estimation of Exposure Effect on Outcome

Once the balance diagnosis confirms that the propensity score has effectively balanced the covariates between the exposed and unexposed groups, we proceed to the subsequent step: analyzing the effect of exposure on the outcome within the PS-balanced sample, using the outcome model. 

## 4.7.1 Estimate of Exposure Effects in Matched Data

In the preceding section, we discussed the two commonly employed matching approaches in nearest neighbor matching: greedy matching and caliper matching. The PS-matched data can be analyzed using traditional univariate or multivariate methods. Within the resulting sample of matched pairs, it is expected that the exposed and unexposed groups exhibit balanced or comparable distributions of the propensity score and balanced distributions of the measured confounders used in PS estimation. In the matched sample, the exposure effect can be estimated as: 

$$
E _ {\text { matched }} [ Y \mid X = 1 ] - E _ {\text { matched }} [ Y \mid X = 0 ]. \tag {4.15}
$$

Nearest neighbor matching estimates the average treatment effect on the treated (ATT) since it pairs control individuals with the treated group and excludes controls who are not chosen as matches (Stuart 2010). 

Due to the nature of matching, it is important to choose statistical methods that account for matching when estimating the standard error for the exposure effect. For univariate analysis with a continuous outcome variable, options include paired t-tests or regression adjustment. In the case of a dichotomous outcome, McNemar’s test and regression adjustment can be employed. Depending on the nature of the outcome variable, regression adjustment can be performed using linear, logistic, Poisson, or Cox proportional hazards regression models. Once again, to address the matching design, it is necessary to utilize bootstrapping or robust standard error methods in the analysis of the matched sample (Abadie and Imbens 2008, Austin 2009). In instances where propensity matching does not adequately balance the two comparison groups (exposed and unexposed), an outcome model with propensity score adjustment is utilized in the matched sample to further mitigate residual confounding. 

It is important to note that due to the exclusion of unmatched subjects during the matching process, the target population of interest may change. The matched sample may no longer represent the base population from which the original sample was drawn. Consequently, the generalizability of the exposure effect to the base population could be compromised. An example illustrating the estimation of the exposure effect in matched data is provided in Section 4.8.3. 

## 4.7.2 Estimate of Exposure Effects in Stratified Data

A stratified analysis involves estimating exposure effects within each stratum and combining the results across strata to obtain an overall estimate. In each stratum, the exposure effect can be estimated and compared using t-tests or Chi-square tests, depending on the nature of the outcome variable. For count or binary outcome data, the robust Poisson regression model can be employed. 

When using propensity score stratification with quintiles, it is necessary to perform separate t-tests (one for each stratum) if the outcome is continuous or Chi-square tests (one for each stratum) for a dichotomous outcome. In the presence of significant imbalance that remains within each stratum, it becomes important to conduct regression adjustment within each stratum, utilizing the treatment indicator and covariates as predictors (Stuart 2010). This approach helps reduce residual confounding arising from the remaining imbalance. An example illustrating this approach can be found in Section 4.8.4. The stratification approach allows us to estimate the average treatment effect for the entire sample (ATE). 

## 4.7.3 Estimate of Exposure Effects in Weighted Data

After weighting the sample and verifying balance, we proceed to estimate and compare the exposure effect on outcomes among exposed and unexposed subjects within the weighted sample or the pseudo-population. To account for weighting, we utilize weighted regression methods, such as weighted linear, logistic, Poisson, or Cox proportional hazards regression, depending on the type of outcome variable (Schulte and Mascha 2018). Consider the following weighted regression model in a general form: 

$$
E _ {p s e u d o - p o p} [ Y \mid X ] = \beta_ {0} + \beta_ {1} \times X \tag {4.16}
$$

where $E _ { p s e u d o - p o p } [ Y | X ]$ represents the weighted average of the outcome Y given $X ,$ and $\beta _ { 1 }$ corresponds to the marginal effect $E [ Y | \tilde { X = } 1 ] - E [ Y | X { = } 0 ]$ . 

According to the general regression model (Equation 4.16), the only predictor required is an indicator variable (X) representing exposed versus unexposed. However, additional variables may be included in the outcome model if we are assessing interaction or mediation effects or employing a doubly robust model (Schafer and Kang 2008). Moreover, it is important to account for the nature of the weighted sample, as disregarding it can introduce significant bias in the estimation of standard errors (Austin and Stuart 2015). A robust sandwich covariance approach or bootstrapping approach can be used to obtain conservative estimates of standard errors, and these methods are typically implemented in various software packages (Schulte and Mascha 2018). Regression models can be used to estimate both ATE and ATT. An example demonstrating the estimation of exposure effects in weighted data is provided in Section 4.8.5. 

## 4.7.4 Estimate Exposure Effect Using Propensity Score Adjustment

PS- adjustment involves using the PS as a covariate, rather than individual covariates, in multiple regression models. Once the propensity scores are estimated using a PS-estimating model, they are directly incorporated into a regression model without the need for matching, stratification, or weighting. The inclusion of the PS in the regression model assumes that the distributions of propensity scores have been adjusted to be similar between the exposed and unexposed groups. 

Depending on the nature of the outcome variables, an appropriate regression model is selected to regress the outcome on two variables: the PS and an exposure indicator (exposed vs. unexposed). The regression coefficient for the exposure indicator quantifies the exposure effect. For a continuous outcome, a linear regression model can be employed, where the regression coefficient for the exposure indicator represents the mean change in the continuous outcome due to exposure. For a binary outcome, either a Poisson regression model or a log-binomial regression model can be used to estimate risk ratios and rate ratios. For a survival time outcome, the Cox proportional hazards regression model can be utilized to estimate hazard ratios. 

Since the propensity score is treated as a continuous variable in the model, it is important to consider modeling assumptions such as linearity, collinearity, and homogeneity of group variances, similar to the assumptions of traditional regression models. Particular attention should be given to assessing collinearity between the exposure variable and the propensity score. When the variables used to estimate propensity scores accurately predict the exposure, the scores will exhibit a strong correlation with the exposure variable itself. The PS-adjustment approach allows us to estimate the average treatment effect for the entire sample (ATE). An example illustrating the use of propensity score adjustment is provided in Section 4.8.7. 

## 4.7.5 Estimate Exposure Effect Using Doubly Robust Method

If the PS-estimating model is incorrectly specified, the propensity score alone may not adequately reduce confounding bias. Moreover, the PS may fail to eliminate bias completely if certain covariates remain unbalanced after matching, stratification, or weighting. In such instances, the doubly robust method can be employed. 

The doubly robust method involves dual modeling of both the exposure/treatment assignment (using the PS-estimating model) and the occurrence of the outcome (using an outcome model). This approach is expected to provide unbiased estimates even if one of the models is misspecified (Schafer and Kang 2008). The goal of using the doubly robust method in PS analysis is similar to regression adjustment in randomized experiments, where the adjustment is still used to “rebalance” residual imbalance of confounders between treatment groups after randomization. Research suggests that the doubly robust method often reduces more bias compared to using a model with only the propensity score as a predictor (Fan et al. 2022, Schafer and Kang 2008). Hence, doubly robust estimation employs two types of models to yield accurate results. Nevertheless, it is important to bear in mind that having two models does not guarantee improved accuracy when neither model is correctly specified or accurate (Kang and Schafer 2007). 

Implementing the doubly robust analysis for estimating the average treatment effect for the entire sample (ATE) involves three steps (Li and Shen 2020). Firstly, the PS is calculated for each subject in the entire sample using the PS-estimating model. The PS-based weights are then used to create a pseudo-population with a sample size twice as large as the original sample (as discussed in Section 4.5.3). 

In the second step, two outcome models are created to estimate the predicted probabilities of the outcome (e.g., occurrence of lung cancer) for each subject under both exposure scenarios, exposed and unexposed, one is the actual status and the other is the counterfactual status. The two models provide estimates of the counterfactual outcomes under different exposure conditions, and the predicted values for the entire sample are estimated using each outcome model. The predicted values, denoted as $y _ { i 1 } ,$ are obtained from the model estimated based on the exposed group, and they represent the counterfactual outcomes that would have occurred if all subjects in the entire sample had been exposed. Similarly, the predicted values $y _ { i 0 } ,$ obtained from the model estimated based on the unexposed group, represent the counterfactual outcomes that would have occurred if none of the subjects in the entire sample had been exposed. Covariates, or some of the covariates used in the PS-estimating model, are reused when fitting the two outcome models (making the approach doubly robust). In the final step, the estimated exposure effect is obtained. 

While the doubly robust method represents a methodological advancement for estimating exposure effects in cohort studies, there are important considerations that have not been thoroughly evaluated, such as strategies for selecting covariates for inclusion in the component models and diagnostics. Therefore, this method should be considered as a complementary approach to other methods (Funk et al. 2011). An example demonstrating the application of the doubly robust method is provided in Section 4.8.6. 

## 4.8 Examples

Next, we use the NHEFS data to conduct a propensity score analysis, following the six steps outlined earlier. In SAS, there are two procedures available for propensity score analysis: PROC PSMATCH and PROC CAUSALTRT. PROC PSMATCH is designed to estimate propensity scores and assess their ability to balance confounding variables between the exposed and unexposed groups. On the other hand, PROC CAUSALTRT is specifically developed to estimate the exposure effect on a particular outcome of interest. 

To provide a comprehensive demonstration of the PS model and facilitate meaningful comparisons, we deliberately chose a large sample size for illustration. Specifically, we randomly selected 1,000 subjects from the NHEFS dataset. Within this sample, there are 160 individuals with depression and 840 individuals without depression. Our primary goal in this analysis is to estimate the impact of depression on the risk of all-cause death, while appropriately adjusting for potential confounding variables. The estimated crude risk ratio and incidence rate ratio can be found in Table 4.3. 


TABLE 4.3



Crude Risk Ratio and Incidence Rate Ratio among 1,000 Subjects


<table><tr><td></td><td>Death</td><td>Total</td><td>Risk</td><td>Risk Ratio</td><td>94%CI</td></tr><tr><td>Depressed</td><td>45</td><td>160</td><td>0.28</td><td>1.48</td><td>1.11–1.96</td></tr><tr><td>Non-depressed</td><td>160</td><td>840</td><td>0.19</td><td></td><td></td></tr><tr><td></td><td></td><td>Person-year</td><td>Incidence rate</td><td>Incidence ratio</td><td>94%CI</td></tr><tr><td>Depressed</td><td>45</td><td>1,314.7</td><td>0.03</td><td>1.58</td><td>1.14–2.20</td></tr><tr><td>Non-depressed</td><td>160</td><td>7,382.6</td><td>0.02</td><td></td><td></td></tr></table>

## 4.8.1 Selection of Covariates

In our analysis, we selected eight potential confounding variables to include in the PS-estimating model: sex, age, race, education (eduy), marital status (marital), residence areas (area), family income (income), and BMI (bmi3). These variables have been chosen based on their known associations with depression and their relevance as risk factors for all-cause death, as discussed in previous sections. It is important to note that in an actual propensity analysis, there may be additional potential confounders that need to be considered. The selection of potential confounding variables should be based on the principles described in Sections 1.6 and 4.2. 

Table 4.4 presents the proportions of depressed subjects among all subjects, categorized by the selected confounders. Prior to achieving balance through propensity score analysis, there are observable differences in the proportions and means of covariates between the depressed and non-depressed groups. For instance, the proportion of depression among females is higher (19.4%) compared to males (10.8%) before balancing. Additionally, depressed subjects tend to be older (57.8 years old) in comparison to non-depressed subjects (55.8 years old). These differences indicate the presence of confounding factors that need to be addressed in the analysis. 

## 4.8.2 PS Estimating Model and Common Region

To estimate the propensity scores, we utilize a logistic regression model in SAS (SAS Institute Inc 2016b). The dependent variable in this model is depression (dep), while the eight potential confounding variables are included as covariates. The SAS syntax for estimating the propensity scores is as follows: 

```txt
PROC psmatch data=PS_nhefs region=allobs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy
    marital income area bmi3;
assess ps var=(age sex race eduy)/weight=none;
output out(obs=all)=Outps1 PS=PS; 
```

RUN; 

In the SAS syntax for the PS analysis, the PSMODEL statement is used to specify a logistic regression model that estimates the propensity score for each subject. 


TABLE 4.4



Proportions and Means of Depressed Subjects According to Confounders


<table><tr><td></td><td>% (Before Balance)</td><td>% (After Matching)</td><td>% (After Weighting)</td></tr><tr><td colspan="4">Sex</td></tr><tr><td>Female</td><td>19.4</td><td>34.7</td><td>49.8</td></tr><tr><td>Male</td><td>10.8</td><td>33.6</td><td>50.0</td></tr><tr><td colspan="4">Race</td></tr><tr><td>White</td><td>14.4</td><td>33.5</td><td>50.0</td></tr><tr><td>Others</td><td>27.0</td><td>38.4</td><td>49.4</td></tr><tr><td colspan="4">Marriage</td></tr><tr><td>Married</td><td>12.8</td><td>33.5</td><td>50.5</td></tr><tr><td>Single</td><td>23.7</td><td>39.1</td><td>48.5</td></tr><tr><td>Widowed or separated</td><td>23.6</td><td>35.3</td><td>48.9</td></tr><tr><td colspan="4">Residential area</td></tr><tr><td>Rural</td><td>17.7</td><td>34.4</td><td>49.7</td></tr><tr><td>City</td><td>17.3</td><td>35.3</td><td>49.9</td></tr><tr><td>Suburbs</td><td>11.3</td><td>32.5</td><td>50.1</td></tr><tr><td colspan="4">Income (dollar)</td></tr><tr><td>&lt;=3,999</td><td>30.7</td><td>38.6</td><td>49.3</td></tr><tr><td>4,000–5,999</td><td>29.0</td><td>39.1</td><td>48.9</td></tr><tr><td>6,000–14,999</td><td>21.1</td><td>31.3</td><td>50.0</td></tr><tr><td>10,000–19,999</td><td>16.9</td><td>33.3</td><td>50.1</td></tr><tr><td>20,000–34,999</td><td>10.3</td><td>36.4</td><td>50.3</td></tr><tr><td>&gt;=35,000</td><td>9.7</td><td>31.8</td><td>49.9</td></tr><tr><td colspan="4">BMI</td></tr><tr><td>&lt;18</td><td>20.0</td><td>38.1</td><td>50.2</td></tr><tr><td>19–25</td><td>13.2</td><td>33.1</td><td>50.3</td></tr><tr><td>26–30</td><td>16.5</td><td>34.8</td><td>49.7</td></tr><tr><td>&gt;30</td><td>21.0</td><td>35.2</td><td>49.4</td></tr><tr><td></td><td>Dep/Non-DEP*</td><td>Dep/Non-DEP</td><td>Dep/Non-DEP</td></tr><tr><td>Age (mean year)</td><td>57.8/55.8</td><td>57.8/58.5</td><td>57.8/58.0</td></tr><tr><td>Education (mean year)</td><td>10.4/11.5</td><td>10.4/10.4</td><td>10.4/10.3</td></tr></table>


*Dep: Depressed; Non-Dep: non-depressed. 


The PS represents the probability of a subject being depressed. The CLASS statement is used to indicate categorical variables included in the model. The REGION option is employed to define an interval region for the propensity scores. Subjects with propensity scores falling within the specified region (support region) will be utilized in subsequent steps such as stratification, matching, and weighting. In this case, the REGION=ALLOBS option is utilized, which ensures that all subjects in the analysis, including the 160 depressed subjects and 840 non-depressed subjects, are included and considered for further analysis. The OUT(OBS=MATCH)= option in the OUTPUT statement creates an output dataset named Outps1 that contains the matched observations. By default, this data set includes the variable _PS_ (which provides the propensity score) and the variable _MATCHWGT_ (which provides matched observation weights) (SAS Institute Inc 2016b). 

The mean and standard deviation of the PS differ between the depressed and nondepressed groups (see Output 4.1). As anticipated, individuals in the depressed group exhibited a higher estimated probability of experiencing depression (0.2072) on average compared to those in the non-depressed group (0.151). If the distribution of the PS were identical between the exposed and unexposed groups, it would indicate no confounding attributable to confounding variables listed in the PS-estimating model. 


SAS Output 4.1 Propensity score information


<table><tr><td colspan="6">Propensity Score Information</td></tr><tr><td rowspan="2">Observations</td><td colspan="5">Treated (dep = 1)</td></tr><tr><td>N</td><td>Mean</td><td>Standard Deviation</td><td>Minimum</td><td>Maximum</td></tr><tr><td>All</td><td>160</td><td>0.2072</td><td>0.0945</td><td>0.0473</td><td>0.4297</td></tr><tr><td>Region</td><td>160</td><td>0.2072</td><td>0.0945</td><td>0.0473</td><td>0.4297</td></tr></table>

<table><tr><td colspan="7">Propensity Score Information</td></tr><tr><td rowspan="2">Observations</td><td colspan="5">Control (dep = 0)</td><td>Treated - Control</td></tr><tr><td>N</td><td>Mean</td><td>Standard Deviation</td><td>Minimum</td><td>Maximum</td><td>Mean Difference</td></tr><tr><td>All</td><td>840</td><td>0.1510</td><td>0.0842</td><td>0.0375</td><td>0.4727</td><td>0.0561</td></tr><tr><td>Region</td><td>840</td><td>0.1510</td><td>0.0842</td><td>0.0375</td><td>0.4727</td><td>0.0561</td></tr></table>

The ASSESS statement produces the “Standardized Mean Differences” (Output 4.2) that summarizes differences in specified variables between exposed and unexposed groups. As specified by the PS and VAR, these variables are the PS, age, sex, race, and education. This output table presents the standardized mean differences between the depressed and nondepressed groups for all subjects, as well as for the subjects within the support region. Since the REGION=ALLOBS option is specified, all subjects are included in the support region. 

For binary variables such as sex and race, the difference presented in the table corresponds to the proportion difference of the first ordered level. Specifically, it represents the difference in proportions between the depressed and non-depressed groups for the first ordered level of sex (female in this example) and race (other races). 


SAS Output 4.2 Standardized mean differences (Treated - Control)


<table><tr><td colspan="6">Standardized Mean Differences (Treated - Control)</td></tr><tr><td>Variable</td><td>Observations</td><td>Mean Difference</td><td>SD</td><td>Standardized Difference</td><td>Variance Ratio</td></tr><tr><td>Prop Score</td><td>All</td><td>0.05613</td><td>0.08950</td><td>0.62714</td><td>1.2594</td></tr><tr><td></td><td>Region</td><td>0.05613</td><td></td><td>0.62714</td><td>1.2594</td></tr><tr><td>age</td><td>All</td><td>1.93571</td><td>14.27462</td><td>0.13561</td><td>0.9021</td></tr><tr><td></td><td>Region</td><td>1.93571</td><td></td><td>0.13561</td><td>0.9021</td></tr><tr><td>eduy</td><td>All</td><td>-1.11161</td><td>3.27617</td><td>-0.33930</td><td>0.8425</td></tr><tr><td></td><td>Region</td><td>-1.11161</td><td></td><td>-0.33930</td><td>0.8425</td></tr><tr><td>sex</td><td>All</td><td>0.15268</td><td>0.46923</td><td>0.32538</td><td>0.8060</td></tr><tr><td></td><td>Region</td><td>0.15268</td><td></td><td>0.32538</td><td>0.8060</td></tr><tr><td>race</td><td>All</td><td>0.10298</td><td>0.36392</td><td>0.28297</td><td>1.7158</td></tr><tr><td></td><td>Region</td><td>0.10298</td><td></td><td>0.28297</td><td>1.7158</td></tr><tr><td colspan="6">Standard deviation of All observations used to compute standardized differences</td></tr></table>

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/a3713b722ae941827d7f2f2cddc4b6097870dcd882772efb28bf9568db6e4355.jpg)



FIGURE 4.7 Distribution of propensity scores in depressed (coded as 1) and non-depressed groups (coded as 0).


The standardized mean difference of the PS is 0.63, which is slightly higher than the recommended threshold of 0.5. The variance ratio, which indicates the ratio of the PS variances between the exposed and unexposed groups, is 1.26, falling within the recommended range of 0.5–2. These values suggest that the propensity scores are reasonably balanced between the two groups (Output 4.2). 

To further assess the adequacy of overlap in the range of propensity scores across exposure groups, we examine the distribution of the estimated propensity scores. Figure 4.7 illustrates this distribution and demonstrates a substantial overlap area of propensity scores between the exposed and unexposed groups. This indicates that there is adequate overlap in propensity scores, which is crucial for conducting valid PS analysis. 

We use this SAS syntax to draw the distribution of the propensity scores in Figure 4.7: 

```txt
PROC univariate data=Outps1;
label PS="Distribution of PS in two exposure groups";
class dep;
var PS;
histogram PS /nrows=2 height=3.5
midpoints=0.045 to 0.53 by 0.08;
RUN; 
```

Because there is adequate overlap in the propensity scores between the two comparison groups, we will proceed to the next step. The aim of the next step is to balance the propensity scores between the exposed and unexposed groups using three strategies: matching, stratification, and inverse probability weighting (IPW). These strategies allow us to achieve a comparable distribution of propensity scores across the groups, enabling us to obtain more valid estimates of the exposure effect. 

## 4.8.3 Matching

To implement the matching strategy and balance the propensity scores between the two comparison groups, we utilize the following SAS syntax to perform greedy nearest neighbor matching with a caliper of 0.15: 

```matlab
ods graphics on;
PROC psmatch data=PS_nhefs region=cs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy
    marital income area bmi3;
match method=greedy(k=2) exact=sex stat=ps
    caliper=0.15;
assess ps var=(age sex race eduy)/weight=none
    plots=(boxplot barchart);
output out(obs=match)=Outps PS=PS matchid=_MatchID;
RUN;
ods graphics on; 
```

The REGION=CS option is used to select only subjects who have propensity scores within the common support region for matching. By default, the region is extended by 0.25 times a pooled estimate of the common standard deviation of the propensity score. The MATCH statement is used to request matching and specifies the criteria for matching. The STAT=PS option is used to include the PS in the computation of differences between pairs of observations. The METHOD=GREEDY(K=2) option specifies greedy nearest neighbor matching, where two unexposed subjects are matched with one exposed subject. The EXACT=SEX option ensures that a pair of individuals must have the same sex. The CALIPER=0.15 option sets the caliper requirement for matching, allowing an unexposed subject to be matched to an exposed subject only if the difference in propensity scores between the two is less than or equal to 0.15 times the pooled estimate of the common standard deviation of the propensity scores. 

The ‘Data Information’ table provided below presents details about the input dataset (PS_NHEFS), output dataset (OUTPS), as well as the number of observations in the treated group (160 exposed subjects) and untreated group (840 unexposed subjects). The range of the PS within the extended common support region spans from 0.041 to 0.468. Among the 840 subjects in the unexposed group, 837 fall within the support region (Output 4.3). 


SAS Output 4.3 Data information


<table><tr><td colspan="2">Data Information</td></tr><tr><td>Data Set</td><td>WORK.PS_NHEFS</td></tr><tr><td>Output Data Set</td><td>WORK.OUTPS</td></tr><tr><td>Treatment Variable</td><td>dep</td></tr><tr><td>Treated Group</td><td>1</td></tr><tr><td>All Obs (Treated)</td><td>160</td></tr><tr><td>All Obs (Control)</td><td>840</td></tr><tr><td>Support Region</td><td>Extended Common Support</td></tr><tr><td>Lower PS Support</td><td>0.040757</td></tr><tr><td>Upper PS Support</td><td>0.468137</td></tr><tr><td>Support Region Obs (Treated)</td><td>160</td></tr><tr><td>Support Region Obs (Control)</td><td>837</td></tr></table>

The “Matching Information” table provides details about the matching method used (greedy), the matching ratio (1:2), and the caliper specified in units of the propensity score (0.013), which is 0.15 times the pooled estimate of the common standard deviation (0.0895) of the propensity scores (Output 4.5). A total of 159 matched sets are identified, comprising 159 exposed subjects and 303 unexposed subjects. One exposed subject could not find a suitable unexposed subject for matching, and 5 exposed subjects were matched with only one unexposed subject based on the matching criteria. The total absolute difference in the propensity score amounts to 0.4989 (Output 4.4). 


SAS Output 4.4 Matching information


<table><tr><td colspan="2">Matching Information</td></tr><tr><td>Distance Metric</td><td>Propensity Score</td></tr><tr><td>Method</td><td>Greedy Matching</td></tr><tr><td>Control/Treated Ratio</td><td>2</td></tr><tr><td>Order</td><td>Descending</td></tr><tr><td>Caliper (PS)</td><td>0.013426</td></tr><tr><td>Matched Sets</td><td>159</td></tr><tr><td>Matched Obs (Treated)</td><td>159</td></tr><tr><td>Matched Obs (Control)</td><td>303</td></tr><tr><td>Total Absolute Difference</td><td>0.498925</td></tr></table>

The ASSESS statement generates tables and plots when the Output Delivery System (ODS) GRAPHICS is enabled. This provides a summary of the differences in specified variables (VAR=age, sex, race, eduy) between the exposed and unexposed groups. The VAR option allows for the inclusion of both binary and continuous variables. The “Standardized Mean Differences” table shows the standardized mean differences between the treatment (exposed) and control (unexposed) groups. These differences are calculated for all subjects, subjects within the common support region of the propensity score, and matched observations. 


SAS Output 4.5 Standardized mean differences (Treated - Control)


<table><tr><td colspan="7">Standardized Mean Differences (Treated - Control)</td></tr><tr><td>Variable</td><td>Observations</td><td>Mean Difference</td><td>Standard Deviation</td><td>Standardized Difference</td><td>Percent Reduction</td><td>Variance Ratio</td></tr><tr><td>Prop Score</td><td>All</td><td>0.05613</td><td>0.08950</td><td>0.62714</td><td></td><td>1.2594</td></tr><tr><td></td><td>Region</td><td>0.05676</td><td></td><td>0.63416</td><td>0.00</td><td>1.3024</td></tr><tr><td></td><td>Matched</td><td>0.00820</td><td></td><td>0.09167</td><td>85.38</td><td>1.1171</td></tr><tr><td>age</td><td>All</td><td>1.93571</td><td>14.27462</td><td>0.13561</td><td></td><td>0.9021</td></tr><tr><td></td><td>Region</td><td>1.93390</td><td></td><td>0.13548</td><td>0.09</td><td>0.9021</td></tr><tr><td></td><td>Matched</td><td>-0.68547</td><td></td><td>-0.04802</td><td>64.59</td><td>0.8475</td></tr><tr><td>eduy</td><td>All</td><td>-1.11161</td><td>3.27617</td><td>-0.33930</td><td></td><td>0.8425</td></tr><tr><td></td><td>Region</td><td>-1.11328</td><td></td><td>-0.33981</td><td>0.00</td><td>0.8458</td></tr><tr><td></td><td>Matched</td><td>-0.02827</td><td></td><td>-0.00863</td><td>97.46</td><td>0.8908</td></tr><tr><td>sex</td><td>All</td><td>0.15268</td><td>0.46923</td><td>0.32538</td><td></td><td>0.8060</td></tr><tr><td></td><td>Region</td><td>0.15299</td><td></td><td>0.32606</td><td>0.00</td><td>0.8058</td></tr><tr><td></td><td>Matched</td><td>0.01009</td><td></td><td>0.02150</td><td>93.39</td><td>0.9776</td></tr><tr><td>race</td><td>All</td><td>0.10298</td><td>0.36392</td><td>0.28297</td><td></td><td>1.7158</td></tr><tr><td></td><td>Region</td><td>0.10497</td><td></td><td>0.28845</td><td>0.00</td><td>1.7438</td></tr><tr><td></td><td>Matched</td><td>0.03263</td><td></td><td>0.08966</td><td>68.31</td><td>1.1396</td></tr><tr><td colspan="7">Standard deviation of All observations used to compute standardized differences</td></tr></table>

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/77b5e63fb3021f2239931f46c805648893b7815cfe551bf3dca5068fbf4e84f0.jpg)



FIGURE 4.8 Mean of propensity scores among matched and unmatched samples.


In the matched sample, the mean difference for each variable exhibits a significant reduction compared to their values in the unmatched sample. This reduction, ranging from 64.6% to 97.5%, indicates the PS matching’s efficacy in balancing the two groups based on the selected covariates. Importantly, all standardized mean differences in the matched observations fall below the suggested upper limit of 0.25. This demonstrates a considerable improvement in the balance between the exposed and unexposed groups, implying that the two groups are indeed comparable concerning the measured variables. Finally, the fact that all variance ratios are less than 2 further supports the achievement of an adequate balance. 

When ODS Graphics is enabled, the BOXPLOT and BARCHART statements is used to generate visual plots and charts for assessing balance. As documented in Figure 4.8, the mean difference of the propensity score is largely reduced, compared to the mean difference in the unmatched samples. This suggests that the matching process has effectively balanced the propensity scores between the two comparison groups. 

The “Standardized Mean Differences” chart displays the standardized mean differences for variables like race, sex, education, age, and PS, both in the support region and in the matched observations (Figure 4.9). Notably, all differences are contained within the accepted range, suggesting minimal differences between the exposed and unexposed groups for these variables in the matched sample. This pattern underscores that a state of balance has been accomplished through the matching process. 

The BOXPLOT and BARCHART statements included in the above SAS syntax also produce boxplots and bar charts for individual variables incorporated in the PS-estimating model. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/51392804bdead41e50e6df740e3851f87a449f7510e3828b3021ebb780d47db8.jpg)



FIGURE 4.9 Standardized mean differences for race, sex, education age, and propensity score.


All figures indicate that the distribution of each variable is well balanced in both the treated (exposed) and control (unexposed) groups, with no differences in education observed between the two groups. This adds further evidence that the matching process has successfully balanced these variables between the exposed and unexposed groups. 

The “OUT(OBS=MATCH)=Outps” option creates an output dataset, “Outps,” which contains the matched observations, propensity scores (PS=ps), weights (_MATCHWGT_), and the identifier of matched pairs (_MatchID). The following SAS syntax lists the first 11 observations. 

```txt
PROC sort data=outps; by _MatchID; RUN;
PROC print data=outps (obs=11);
var seqn dep death PS _MatchWgt_ _matchID;
RUN; 
```

The variable “MATCHWGT” represents the weights assigned to each matched observation. Given that k equals 2, each treated subject is assigned a weight of 1, and each matched unexposed subject within a pair of three subjects is assigned a weight of 0.5. However, in the matched pair with a MatchID of 3, only one unexposed subject was successfully paired with the exposed subject. This results in a weight of 1 assigned to each observation in the pair, as seen in Output 4.6. 


SAS Output 4.6 List of matching ID, PS value, and match weight in 4 matching strata


<table><tr><td>Obs</td><td>SEQN</td><td>dep</td><td>death</td><td>PS</td><td>_MATCHWGT_</td><td>MatchID</td></tr><tr><td>1</td><td>9868</td><td>1</td><td>0</td><td>0.42970</td><td>1.0</td><td>1</td></tr><tr><td>2</td><td>21530</td><td>0</td><td>0</td><td>0.43148</td><td>0.5</td><td>1</td></tr><tr><td>3</td><td>22411</td><td>0</td><td>1</td><td>0.43073</td><td>0.5</td><td>1</td></tr><tr><td>4</td><td>1542</td><td>0</td><td>0</td><td>0.43594</td><td>0.5</td><td>2</td></tr><tr><td>5</td><td>3654</td><td>1</td><td>0</td><td>0.42652</td><td>1.0</td><td>2</td></tr><tr><td>6</td><td>8572</td><td>0</td><td>0</td><td>0.42263</td><td>0.5</td><td>2</td></tr><tr><td>7</td><td>6464</td><td>0</td><td>0</td><td>0.41948</td><td>1.0</td><td>3</td></tr><tr><td>8</td><td>12694</td><td>1</td><td>0</td><td>0.41974</td><td>1.0</td><td>3</td></tr><tr><td>9</td><td>7104</td><td>0</td><td>1</td><td>0.41400</td><td>0.5</td><td>4</td></tr><tr><td>10</td><td>7489</td><td>0</td><td>0</td><td>0.39872</td><td>0.5</td><td>4</td></tr><tr><td>11</td><td>8752</td><td>1</td><td>0</td><td>0.41055</td><td>1.0</td><td>4</td></tr></table>

As shown in Table 4.4, following the matching process, the proportions of depression at various levels of potential confounders become similar between the exposed and unexposed groups. Additionally, the mean values of these potential confounding variables are nearly identical for both groups. This suggests that the associations between these variables and depression have been substantially reduced through the matching process. For example, before balancing, the proportion of depression among females (19.4%) was substantially higher than that among males (10.8%). However, post-matching, the proportions become notably similar (34.7% for females vs. 33.6% for males). 

Given that the balance diagnostics confirm satisfactory balancing of propensity scores and confounding variables through matching, we are now able to proceed with the analysis of the exposure effect on the outcome using the PS-matched data. In this example, we employ three association models to estimate the effect of depression on mortality using the PS-matched data: a Cox proportional hazard regression model for hazard ratio, a robust Poisson regression model for incidence rate ratio, and a log-binomial regression model for risk ratio. Note that these regression models estimate the average treatment effect on the treated (ATT). This refers to the effect on those in the exposed group, as nearest neighbor matching is used in this example. 

To estimate the hazard ratio (HR) of all-cause mortality for subjects with depression compared to those without depression, we use the Cox proportional hazards regression model, where the exposure variable, “dep,” is the only predictor. To account for clustering within matched pairs when calculating standard errors, we use a robust variance estimator by including the COVS(AGGREGATE) option in SAS (Austin 2014, Lin and Wei 1989). The following SAS syntax is used to estimate the hazard ratio: 

```txt
PROC phreg data=outps covs(aggregate) nosummary;
id _matchID;
model Survtime*death(0) =dep /ties=efron rl;
RUN; 
```

The estimated HR is 1.24 (95%CI: 0.87–1.76). 


SAS Output 4.7 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>StdErr Ratio</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>0.21308</td><td>0.18035</td><td>0.949</td><td>1.3960</td><td>0.2374</td></tr></table>

<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Hazard Ratio Confidence Limits</td></tr><tr><td>dep</td><td>1.237</td><td>0.869</td><td>1.762</td></tr></table>

Next, we use the robust Poisson regression mode to estimate the incidence rate ratio (IR). The REPEATED statement requires robust estimation for standard error. 

```txt
PROC genmod data=outps;
class dep (ref='0') _matchID;
model death=dep /dist=Poisson link=log offset=ln_py;
repeated subject = _matchID/;
lsmeans dep /diff exp cl;
RUN; 
```

The estimated IR is 1.23 (95%CI: 0.87–1.73). 


SAS Output 4.8 Estimated incidence rate ratio and 95% confidence interval


<table><tr><td colspan="9">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Estimate</td><td>Standard Error</td><td>z Value</td><td>Pr &gt; |z|</td><td>Alpha</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>0</td><td>0.2049</td><td>0.1764</td><td>1.16</td><td>0.2453</td><td>0.05</td><td>-0.1408</td><td>0.5506</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.2274</td><td>0.8687</td><td>1.7343</td></tr></table>

Thirdly, we use log-binomial regression model to estimate risk ratio (RR) in the matched data. 

```txt
PROC genmod data=outps;
class dep (ref='0') _matchID;
model death (event='1') = dep /dist = bin link = log;
repeated subject = _matchID/;
lsmeans dep /diff exp cl;
RUN; 
```

The estimated RR is 1.19 (95%CI: 0.88–1.62). 


SAS Output 4.9 Estimated risk ratio and 95% confidence interval


<table><tr><td colspan="9">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Estimate</td><td>Standard Error</td><td>z Value</td><td>Pr &gt; |z|</td><td>Alpha</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>0</td><td>0.1748</td><td>0.1557</td><td>1.12</td><td>0.2615</td><td>0.05</td><td>-0.1303</td><td>0.4800</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.1910</td><td>0.8778</td><td>1.6160</td></tr></table>

For the purpose of comparison, we also use the logistic regression model to estimate the odds ratio (OR) of death for depressed subjects compared with non-depressed subjects. The REPEATED option is utilized to obtain robust standard errors, ensuring accurate estimation of the 95% confidence interval. The following SAS syntax demonstrates the estimation of the odds ratio: 

```txt
PROC genmod data=outps;
class dep _MatchID;
model death (event='1')=dep /dist=binomial link=logit;
repeated subject=_MatchID;
estimate "dep" dep -1 1/ exp; 
```

RUN; 

The estimated OR is 1.27 (95%CI: 0.84–1.92). 


SAS Output 4.10 Estimated odds ratio and 95% confidence interval


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-0.9295</td><td>0.1761</td><td>-1.2746</td><td>-0.5845</td><td>-5.28</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>0</td><td>-0.2362</td><td>0.2119</td><td>-0.6515</td><td>0.1791</td><td>-1.11</td><td>0.2649</td></tr><tr><td>dep</td><td>1</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

<table><tr><td colspan="6">Contrast Estimate Results</td></tr><tr><td rowspan="2">Label</td><td rowspan="2">L&#x27;Beta Estimate</td><td rowspan="2">Standard Error</td><td rowspan="2">Alpha</td><td colspan="2">L&#x27;Beta</td></tr><tr><td colspan="2">Confidence Limits</td></tr><tr><td>dep</td><td>0.2362</td><td>0.2119</td><td>0.05</td><td>-0.1791</td><td>0.6515</td></tr><tr><td>Exp (dep)</td><td>1.2664</td><td>0.2683</td><td>0.05</td><td>0.8361</td><td>1.9184</td></tr></table>

In this example, different regression models are employed on the same dataset to estimate the hazard ratio (HR), incidence rate ratio (IR), risk ratio (RR), and odds ratio (OR). The numerical results obtained are 1.24 for HR, 1.23 for IR, 1.19 for RR, and 1.27 for OR. These findings align with the relationship discussed in Section 2.3.2, where the point estimate of the outcome-exposure association shows that the estimated OR is typically larger than RR, HR, and IR. Additionally, RR tends to be smaller than the other three estimates, assuming there are few censored observations in the cohort study. If censoring does occur, either HR or IR is reported to present the effect of depression on all-cause death in this particular cohort study. 

## 4.8.4 Stratification

The process for estimating the association between exposure and outcome in a PS-stratified dataset can be performed in five steps: 

First, organize the sample by the estimated propensity scores in ascending order. Second, partition the sample into five strata using the quintiles of the sorted propensity scores. 

Third, within each stratum, estimate the exposure effect by comparing the outcome, either mean or proportion, between the exposed and unexposed subjects. 

Fourth, combine the stratum-specific estimates of the exposure effect from all strata to derive an overall estimate of the exposure effect. 

Finally, calculate the variance and standard error of the overall exposure effect for the 95% confidence interval. This calculation should consider both the variances within each stratum and between different strata. 

In this example, we create five strata of observations based on propensity scores for study subjects in the subset of NHEFS data. The PROC PSMATCH program includes the PSMODEL statement, which specifies the logistic regression model that generates the propensity score for each subject. The propensity score represents the probability that a subject was depressed (dep). The variable “dep” serves as the binary treatment (exposure) indicator, where TREATED= “1” identifies the exposed group as individuals with depression. The same variables employed in Section 4.8.3 are utilized to estimate the propensity scores. 

The PSMATCH procedure stratifies the observations based on their propensity scores, utilizing the support region specified in the REGION= option. By specifying REGION=ALLOBS, all observations are included in the stratification process. The STRATA statement is employed to create strata of observations according to their propensity scores. The default NSTRATA=5 option stratifies the observations into five strata, while the default KEY=TREATED option ensures that each stratum contains a similar number of treated or exposed observations. Additionally, the STRATUMWGT=TOTAL option estimates the stratum weights, which are subsequently used to compute the weighted means. 

```txt
ods graphics on;
PROC psmatch data=PS_nhefs region=allobs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy marital income area bmi3;
strata nstrata=5 key=treated stratumwgt=total;
assess ps var=(age sex race eduy)
/varinfo plots=(boxplot barchart);
output out(obs=all)=Outstrat; 
```

RUN; 

The “Data Information” output table (Output 4.11) provides details about the support region, the number of treated (exposed) and control (unexposed) subjects, as well as the number of strata. In this case, as REGION=ALLOBS is specified, the support region encompasses all observations. Consequently, all 840 subjects in the control (unexposed) group are included within the support region. 


SAS Output 4.11 Data information


<table><tr><td colspan="2">Data Information</td></tr><tr><td>Data Set</td><td>WORK.PS_NHEFS</td></tr><tr><td>Output Data Set</td><td>WORK.OUTSTRAT</td></tr><tr><td>Treatment Variable</td><td>dep</td></tr><tr><td>Treated Group</td><td>1</td></tr><tr><td>All Obs (Treated)</td><td>160</td></tr><tr><td>All Obs (Control)</td><td>840</td></tr><tr><td>Support Region</td><td>All Obs</td></tr><tr><td>Lower PS Support</td><td>0.037548</td></tr><tr><td>Upper PS Support</td><td>0.472686</td></tr><tr><td>Support Region Obs (Treated)</td><td>160</td></tr><tr><td>Support Region Obs (Control)</td><td>840</td></tr><tr><td>Number of Strata</td><td>5</td></tr></table>

The “Strata Information” table presents information on the range of propensity scores, the total number of treated observations, and controls in each stratum, as well as the corresponding stratum weight (Output 4.12). As per the specified KEY=TREATED option, there is an equal number of observations for treated units in each stratum. Furthermore, each stratum contains an adequate number of control units to ensure a dependable estimation of the treatment effect, despite the differing propensity score distributions between the treated and control groups. 


SAS Output 4.12 Strata information


<table><tr><td colspan="7">Strata Information</td></tr><tr><td rowspan="2">Stratum Index</td><td colspan="2"></td><td colspan="3">Frequencies</td><td rowspan="2">Stratum Weight</td></tr><tr><td colspan="2">Propensity Score Range</td><td>Treated</td><td>Control</td><td>Total</td></tr><tr><td>1</td><td>0.0375</td><td>0.1186</td><td>32</td><td>375</td><td>407</td><td>0.407</td></tr><tr><td>2</td><td>0.1187</td><td>0.1659</td><td>32</td><td>191</td><td>223</td><td>0.223</td></tr><tr><td>3</td><td>0.1660</td><td>0.2267</td><td>32</td><td>131</td><td>163</td><td>0.163</td></tr><tr><td>4</td><td>0.2274</td><td>0.2950</td><td>32</td><td>83</td><td>115</td><td>0.115</td></tr><tr><td>5</td><td>0.2956</td><td>0.4727</td><td>32</td><td>60</td><td>92</td><td>0.092</td></tr></table>

As per the specified “STRATUMWGT=TOTAL” option, the stratum weight is calculated by dividing the number of subjects in each stratum by the total number of subjects in the stratified sample. For instance, in stratum 1, the weight is calculated as $4 0 7 / 1 , 0 0 0 =$ 0.407. This weight is also referred to as the ATE weight. Alternatively, by utilizing the “STRATUMWGT=TREATED” option, we can request the ATT weight. The ATT stratum weight is computed by dividing the number of treated (exposed) subjects in each stratum by the total number of exposed subjects in the stratified sample. Since the number of treated subjects remains the same across all strata in this example, the ATT weight is consistent in each stratum, for example, $3 2 / 1 6 0 = 0 . 2 $ . The stratum weight will be utilized in the outcome modeling analysis. 

The ASSESS statement generates output tables and plots that summarize differences in the specified variables between the two comparison groups. When using the VARINFO option, a table is produced, presenting the “Standardized Mean Differences” between the treated (exposed) and control (unexposed) groups. This table includes comparisons for all observations, observations within the support region, as well as the stratified observations (Output 4.13). 


SAS Output 4.13 Standardized mean differences (Treated-Control) in three samples


<table><tr><td colspan="7">Standardized Mean Differences (Treated - Control)</td></tr><tr><td>Variable</td><td>Observations</td><td>Mean Difference</td><td>Standard Deviation</td><td>Standardized Difference</td><td>Percent Reduction</td><td>Variance Ratio</td></tr><tr><td>Prop Score</td><td>All</td><td>0.05613</td><td>0.08950</td><td>0.62714</td><td></td><td>1.2594</td></tr><tr><td></td><td>Region</td><td>0.05613</td><td></td><td>0.62714</td><td>0.00</td><td>1.2594</td></tr><tr><td></td><td>Strata</td><td>0.00153</td><td></td><td>0.01709</td><td>97.27</td><td>0.7633</td></tr><tr><td>age</td><td>All</td><td>1.93571</td><td>14.27462</td><td>0.13561</td><td></td><td>0.9021</td></tr><tr><td></td><td>Region</td><td>1.93571</td><td></td><td>0.13561</td><td>0.00</td><td>0.9021</td></tr><tr><td></td><td>Strata</td><td>0.84261</td><td></td><td>0.05903</td><td>56.47</td><td>0.8765</td></tr><tr><td>eduy</td><td>All</td><td>-1.11161</td><td>3.27617</td><td>-0.33930</td><td></td><td>0.8425</td></tr><tr><td></td><td>Region</td><td>-1.11161</td><td></td><td>-0.33930</td><td>0.00</td><td>0.8425</td></tr><tr><td></td><td>Strata</td><td>-0.23695</td><td></td><td>-0.07232</td><td>78.68</td><td>0.7921</td></tr><tr><td>sex</td><td>All</td><td>0.15268</td><td>0.46923</td><td>0.32538</td><td></td><td>0.8060</td></tr><tr><td></td><td>Region</td><td>0.15268</td><td></td><td>0.32538</td><td>0.00</td><td>0.8060</td></tr><tr><td></td><td>Strata</td><td>0.01498</td><td></td><td>0.03192</td><td>90.19</td><td>1.0098</td></tr><tr><td>race</td><td>All</td><td>0.10298</td><td>0.36392</td><td>0.28297</td><td></td><td>1.7158</td></tr><tr><td></td><td>Region</td><td>0.10298</td><td></td><td>0.28297</td><td>0.00</td><td>1.7158</td></tr><tr><td></td><td>Strata</td><td>-0.00585</td><td></td><td>-0.01608</td><td>94.32</td><td>0.5761</td></tr><tr><td colspan="7">Standard deviation of All observations used to compute standardized differences</td></tr></table>

In Output 4.14, the section titled “Standardized Mean Differences within Strata” presents the variable mean differences, standardized mean differences, percentage reductions, ratios of variances for the observations, and stratum weights in each stratum. The standardized mean difference is calculated by dividing the variable mean difference by the standard deviation. The percentage reduction compares the standardized mean difference within each stratum to the standardized mean difference of all observations. 


SAS Output 4.14 Standardized Mean Differences (Treated - Control) in each stratum


<table><tr><td colspan="7">Standardized Mean Differences (Treated - Control) within Strata</td></tr><tr><td>Variable</td><td>Stratum Index</td><td>Mean Difference</td><td>Standardized Difference</td><td>Percent Reduction</td><td>Variance Ratio</td><td>Stratum Weight</td></tr><tr><td>Prop Score</td><td>1</td><td>0.00304</td><td>0.03392</td><td>94.59</td><td>0.7588</td><td>0.407</td></tr><tr><td></td><td>2</td><td>0.00296</td><td>0.03311</td><td>94.72</td><td>1.2086</td><td>0.223</td></tr><tr><td></td><td>3</td><td>0.00282</td><td>0.03149</td><td>94.98</td><td>1.0359</td><td>0.163</td></tr><tr><td></td><td>4</td><td>0.00318</td><td>0.03552</td><td>94.34</td><td>0.9641</td><td>0.115</td></tr><tr><td></td><td>5</td><td>-0.01295</td><td>-0.14469</td><td>76.93</td><td>0.5076</td><td>0.092</td></tr><tr><td>age</td><td>1</td><td>3.36383</td><td>0.23565</td><td>0.00</td><td>0.7528</td><td>0.407</td></tr><tr><td></td><td>2</td><td>1.95206</td><td>0.13675</td><td>0.00</td><td>1.1567</td><td>0.223</td></tr><tr><td></td><td>3</td><td>-2.89194</td><td>-0.20259</td><td>0.00</td><td>0.9908</td><td>0.163</td></tr><tr><td></td><td>4</td><td>-2.21762</td><td>-0.15535</td><td>0.00</td><td>0.8068</td><td>0.115</td></tr><tr><td></td><td>5</td><td>-2.55833</td><td>-0.17922</td><td>0.00</td><td>0.7904</td><td>0.092</td></tr><tr><td>eduy</td><td>1</td><td>-0.48283</td><td>-0.14738</td><td>56.56</td><td>0.6470</td><td>0.407</td></tr><tr><td></td><td>2</td><td>-0.83917</td><td>-0.25614</td><td>24.51</td><td>1.4044</td><td>0.223</td></tr><tr><td></td><td>3</td><td>0.02409</td><td>0.00735</td><td>97.83</td><td>0.2993</td><td>0.163</td></tr><tr><td></td><td>4</td><td>0.67319</td><td>0.20548</td><td>39.44</td><td>1.0569</td><td>0.115</td></tr><tr><td></td><td>5</td><td>0.71042</td><td>0.21684</td><td>36.09</td><td>0.7826</td><td>0.092</td></tr><tr><td>sex</td><td>1</td><td>0.03292</td><td>0.07015</td><td>78.44</td><td>1.0310</td><td>0.407</td></tr><tr><td></td><td>2</td><td>-0.03959</td><td>-0.08438</td><td>74.07</td><td>1.0272</td><td>0.223</td></tr><tr><td></td><td>3</td><td>0.04914</td><td>0.10473</td><td>67.81</td><td>0.8433</td><td>0.163</td></tr><tr><td></td><td>4</td><td>0.00753</td><td>0.01605</td><td>95.07</td><td>0.9514</td><td>0.115</td></tr><tr><td></td><td>5</td><td>0.01667</td><td>0.03552</td><td>89.08</td><td>0.0000</td><td>0.092</td></tr><tr><td>race</td><td>1</td><td>-0.02400</td><td>-0.06595</td><td>76.69</td><td>0.0000</td><td>0.407</td></tr><tr><td></td><td>2</td><td>-0.08901</td><td>-0.24458</td><td>13.57</td><td>0.0000</td><td>0.223</td></tr><tr><td></td><td>3</td><td>0.06536</td><td>0.17961</td><td>36.53</td><td>1.4209</td><td>0.163</td></tr><tr><td></td><td>4</td><td>0.05233</td><td>0.14381</td><td>49.18</td><td>1.1452</td><td>0.115</td></tr><tr><td></td><td>5</td><td>0.07708</td><td>0.21182</td><td>25.14</td><td>0.9659</td><td>0.092</td></tr></table>

Based on the findings from the “Strata Standardized Variable Differences Plot” (Figure 4.10), it is evident that the variables “race,” “education year (eduy),” and “age” exhibit a standardized mean difference that is either close to or greater than the absolute value of 0.25. This indicates the presence of differences between the treated and control groups for these variables. To account for these differences and ensure a more accurate outcome analysis, it is recommended to include adjustments for these three variables in an outcome model. 

When using the “OUT(OBS=ALL)=Outstrat” option, an output dataset called “Outstrat” is generated, which includes all observations. By default, this output dataset contains variables such as _PS_ (representing the PS variable) and _STRATA_ (indicating the corresponding stratum variable). For the outcome analysis, the analysis will be conducted using the dataset “Outstrat” and will take into consideration the strata information provided by the _STRATA_ variable. This enables the analysis to account for the stratification in the estimation of treatment effects. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/53d53cbb3258893db47584af55f65b65fe79a907db324116a35b9089a323645c.jpg)



FIGURE 4.10 Standardized mean differences in each stratum.


Following the assessment of propensity score balance, we proceed to analyze the associations between the exposure and outcome variables in the PS-stratified dataset $( ^ { \prime \prime } \mathrm { O u t s t r a t ^ { \prime \prime } } )$ . This analysis consists of two stages. In the first stage, we estimate the stratum-specific treatment (exposure) effect for each stratum. Considering the assessment conducted earlier, where age, education year, and race were found to be not well balanced, adjustments will be made for these variables in the outcome models. In the second stage, we combine the stratum-specific treatment effects to obtain an overall treatment effect. Depending on the specific purpose of the analysis, either ATE weights or ATT weights can be incorporated in the second stage analysis. 

In the first stage, a regression model is used to estimate the regression coefficient $( \beta _ { k } )$ and its corresponding standard errors $( S E _ { k } )$ for the exposure variable (depression in this example) within each stratum k. In the next stage, the overall exposure effect is computed by aggregating the estimated coefficients from all five strata $\scriptstyle ( k = 5 )$ , and the associated standard error is computed by aggregating the estimated standard errors (Guo and Fraser 2014). To estimate the average treatment effect for the entire stratified sample (ATE), the overall regression coefficient $( \beta _ { o v e r a l l } )$ is calculated using the following formula: 

$$
\beta_ {\text { overall }} = \sum_ {k = 1} ^ {k} A T E w e i g h t _ {k} \times \beta_ {k} \tag {4.17}
$$

where “ATEweightk” represents the stratum weight listed in the SAS output (Output 4.12). Additionally, the average treatment effect on the treated sample (ATT) can be estimated by using the ATT stratum weight in a similar manner. 

The variance of the overall coefficient, $V a r ( \beta _ { o v e r a l l } ) .$ , can be calculated using the formula: 

$$
\operatorname{Var} \left(\beta_ {\text { overall }}\right) = \sum_ {k = 1} ^ {k} \left(A T E w e i g h t _ {k}\right) ^ {2} \times S E \left(\beta_ {k}\right) ^ {2} \tag {4.18}
$$

The standard error of the overall coefficient, $\mathrm { S E } ( \beta _ { o v e r a l l } ) .$ , can be calculated as the square root of the variance: 

$$
S E \left(\beta_ {\text { overall }}\right) = \sqrt {\operatorname{Var} \left(\beta_ {\text { overall }}\right)} \tag {4.19}
$$

The values of $\beta _ { o v e r a l l }$ and $\mathrm { S E } ( \beta _ { o v e r a l l } )$ can then be used to calculate the point estimate of the effect (such as hazard ratio, incidence rate ratio, or risk ratio) and its corresponding 95% confidence interval. For instance, in a Cox proportional hazards regression model, the hazard ratio (HR) can be obtained by taking the exponential of $\beta _ { o v e r a l l } , \mathrm { i . e . , H R = e x p } ( \beta _ { o v e r a l l } )$ . By utilizing the point estimate and its standard error, we can compute confidence intervals to assess the precision of the estimated effect. 

To estimate the regression coefficient of the exposure variable (dep) and its standard error for each of the five strata in the Cox proportional hazards regression model, the following SAS syntax can be utilized. Because the “WHERE” option specifies the stratum as 1, this syntax estimates the coefficient and its standard error for stratum 1: 


TABLE 4.5 Coefficients $( \beta ) ,$ Standard Errors (SE), and Weight in Each Stratum


<table><tr><td>Stratum</td><td><eq>\beta</eq></td><td>SE(<eq>\beta</eq>)</td><td>ATE weight</td></tr><tr><td>1</td><td>0.80707</td><td>0.38641</td><td>0.407</td></tr><tr><td>2</td><td>0.67944</td><td>0.36718</td><td>0.223</td></tr><tr><td>3</td><td>0.41875</td><td>0.36167</td><td>0.163</td></tr><tr><td>4</td><td>0.23795</td><td>0.39223</td><td>0.115</td></tr><tr><td>5</td><td>-0.1882</td><td>0.46539</td><td>0.092</td></tr></table>

```txt
PROC phreg data=Outstrat;
where _STRATA_=1;
class dep (ref='0') race;
model Survtime*death(0)=dep age race eduy
/ties=efron rl; 
```

RUN; 

Executing the provided SAS syntax for each stratum gives us the five stratum-specific coefficients and standard errors. These values are compiled in Table 4.5 for the analysis of the overall Hazard Ratio (HR) along with its corresponding 95% confidence interval. 

Using equation 4.17, the overall coefficient, $\beta _ { o v e r a l l } ,$ and its corresponding hazard ratio, $H R _ { \mathrm { o v e r a l l } } ,$ can be calculated as follows: 

$$
\begin{array}{l} \beta_ {\text { overall }} = \sum_ {k = 1} ^ {k} A T E w e i g h t _ {k} \times \beta_ {k} = 0. 4 0 7 \times 0. 8 0 7 + 0. 2 2 3 \times 0. 6 7 9 + 0. 1 6 3 \times 0. 4 1 9 \\ + 0. 1 1 5 \times 0. 2 3 8 + 0. 0 9 2 \times (- 0. 1 8 8) = 0. 5 5 8 \\ \end{array}
$$

$$
H R _ {\text { overall }} = \exp (0. 5 5 8) = 1. 7 5
$$

Utilizing equations 4.18 and 4.19, the variance of the overall coefficient, $\mathrm { V a r } ( \beta _ { \mathrm { o v e r a l l } } ) ,$ , and the standard error, ${ \mathrm { S E } } ( \beta _ { \mathrm { o v e r a l l } } ) .$ , can be calculated as follows: 

$$
\operatorname{Var} \left(\beta_ {\text {overall}}\right) = \sum_ {k = 1} ^ {k} \left(A T E w e i g h t _ {k}\right) ^ {2} \times S E \left(\beta_ {k}\right) ^ {2} = 0. 4 0 7 ^ {2} \times 0. 3 8 6 4 ^ {2} + 0. 2 2 3 ^ {2} \times 0. 3 6 7 2 ^ {2}
$$

$$
+ 0. 1 6 3 ^ {2} \times 0. 3 6 1 7 ^ {2} + 0. 1 1 5 ^ {2} \times 0. 3 9 2 2 ^ {2} + 0. 0 9 2 ^ {2} \times 0. 4 6 5 4 ^ {2} = 0. 0 3 8 8
$$

$$
S E \left(\beta_ {\text { overall }}\right) = \sqrt {\operatorname{Var} \left(\beta_ {\text { overall }}\right)} = \sqrt {0 . 0 3 8 8} = 0. 1 9 6 9
$$

Based on the overall hazard ratio, $H R _ { \mathrm { o v e r a l l } } ,$ and its standard error, $\mathrm { S E } ( \beta _ { o v e r a l l } ) ,$ , the 95% confidence interval can be calculated as follows: 

$$
H R _ {o v e r a l l} \pm 1. 9 6 \times S E (\beta_ {o v e r a l l}) = 1. 7 5 \pm 1. 9 6 \times 0. 1 9 6 9 = 1. 3 6 - 2. 1 3
$$

Therefore, the analysis indicates that, after controlling for the selected confounding variables, the hazard of death for individuals with depression is 75% higher compared to individuals without depression (HR = 1.75; 95% CI: 1.36–2.13). 

Similar to the Cox PH regression analysis described above, we estimate the stratumspecific incidence rate ratio and risk ratio, as well as the overall incidence rate ratio and risk ratio, along with their confidence intervals, using the following two SAS syntaxes. First, we use the SAS syntaxes to estimate the regression coefficient and its standard error for each stratum in the robust Poisson regression model. Then, we utilize equations 4.17, 4.18, and 4.19 to calculate the overall incidence rate ratio and risk ratio, along with their corresponding 95% confidence intervals. 

The following SAS syntax examples are provided for estimating the exposure coefficient and its standard error for person-year data (the first syntax) and person-count data (the second one) within stratum 1. 

```txt
proc genmod data=Outstrat;
where _STRATA_=1;
class dep (ref='0') race seqn;
model death=dep age race eduy /dist=Poi
    link=log offset=ln_py;
repeated subject=seqn;
lsmeans dep /diff exp cl;
run;
PROC genmod data=Outstrat;
where _STRATA_=1;
class dep (ref='0') race seqn;
model death= dep age race eduy /dist=Poisson link=log;
repeated subject=seqn;
lsmeans dep /diff exp cl;
RUN; 
```

Table 4.6 provides the overall and stratum-specific effect measures of depression on death. The observed variations in the stratum-specific effect measures indicate a degree of heterogeneity across the five PS strata. To better understand the association between depression and mortality, additional analyses should be undertaken to delve into the factors contributing to the heterogeneity. This may include unmeasured confounding bias, inaccurate classification of modifiers as confounders, or residual confounding bias due to stratification. For instance, one approach could be to utilize deciles of the estimated PS and create 10 strata in order to narrow the PS range within each stratum. However, it is important to note that increasing the number of strata will result in smaller sample sizes within each stratum, potentially reducing the statistical power of the analysis. 


TABLE 4.6 Overall and Stratum-specific Effect Measures in Stratified Data


<table><tr><td>Stratum</td><td>HR</td><td>95%CI</td><td>IR</td><td>95%CI</td><td>RR</td><td>95%CI</td></tr><tr><td>1</td><td>2.24</td><td>1.05–4.78</td><td>2.01</td><td>1.05–3.85</td><td>1.75</td><td>0.99–3.10</td></tr><tr><td>2</td><td>1.97</td><td>0.96–4.05</td><td>1.83</td><td>0.91–3.60</td><td>1.39</td><td>0.86–2.24</td></tr><tr><td>3</td><td>1.52</td><td>0.75–3.09</td><td>1.44</td><td>0.79–2.62</td><td>1.35</td><td>0.85–2.14</td></tr><tr><td>4</td><td>1.27</td><td>0.59–2.74</td><td>1.33</td><td>0.67–2.64</td><td>1.46</td><td>0.87–2.46</td></tr><tr><td>5</td><td>0.83</td><td>0.33–2.06</td><td>0.82</td><td>0.33–2.01</td><td>0.85</td><td>0.39–1.85</td></tr><tr><td>Overall</td><td>1.75</td><td>1.36–2.13</td><td>1.63</td><td>1.29–1.97</td><td>1.46</td><td>1.18–1.74</td></tr></table>

## 4.8.5 Weighting

As discussed in Section 4.5.3, the weighting technique aims to utilize inverse probability of treatment weighting (IPTW) in conjunction with the propensity score. This enables the reweighting of subjects within the original exposed and unexposed samples, creating what is referred to as a pseudo-population. In this pseudo-population, the associations between the exposure and confounding variables are no longer exist (Rosenbaum 1987). 

The IPTW approach allows us to estimate two types of exposure effects: the average treatment (or exposure) effect on the treated (ATT) and the average treatment (or exposure) effect for the entire sample (ATE). To illustrate the application of weights in estimating these two types of treatment (exposure) effects, we employ the SAS PROC PSMATCH procedure. By employing this procedure, we demonstrate the utilization of weights to estimate both ATT and ATE, thereby shedding light on the impact of treatment (or exposure) on the treated individuals as well as the overall sample. 

To begin, we generate weights for estimating the average treatment effect on the treated (ATT), using the following SAS syntax: 

```txt
ods graphics on;
PROC psmatch data=PS_nhefs region=allobs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy
    marital income area bmi3;
assess lps var=(age sex race eduy)
    /varinfo plots=(boxplot barchart)
    weight=attwgt;
output out(obs=all)=OutATT attwgt=attwgt;
RUN; 
```

When specifying WEIGHT=ATTWGT, the IPTW is calculated as follows: exposed subjects receive a weight of 1, while unexposed subjects receive a weight of PS/(1-PS). The “Data Information” table provides details about the input dataset (PS_NHEFS) and the output dataset (OUTATT). Notably, by setting REGION=ALLOBS, all 840 subjects in the unexposed group are within the support region (Output 4.15). 


SAS Output 4.15 Data information


<table><tr><td colspan="2">Data Information</td></tr><tr><td>Data Set</td><td>WORK.PS_NHEFS</td></tr><tr><td>Output Data Set</td><td>WORK.OUTATT</td></tr><tr><td>Treatment Variable</td><td>dep</td></tr><tr><td>Treated Group</td><td>1</td></tr><tr><td>All Obs (Treated)</td><td>160</td></tr><tr><td>All Obs (Control)</td><td>840</td></tr><tr><td>Support Region</td><td>All Obs</td></tr><tr><td>Lower PS Support</td><td>0.037548</td></tr><tr><td>Upper PS Support</td><td>0.472686</td></tr><tr><td>Support Region Obs (Treated)</td><td>160</td></tr><tr><td>Support Region Obs (Control)</td><td>840</td></tr></table>

The “Propensity Score Information” table presents summary statistics of propensity scores for both the treatment (exposed) and control (unexposed) groups (Output 4.16). Again, as a result of specifying REGION=ALLOBS, all subjects (160 depressed and 840 non-depressed) are included in the support region. However, if we were to specify the common support region, REGION=CS, a total of 837 unexposed subjects would be allocated within the common support region. 


SAS Output 4.16 Propensity score information


<table><tr><td colspan="7">Propensity Score Information</td></tr><tr><td rowspan="2">Observations</td><td colspan="6">Treated (dep = 1)</td></tr><tr><td>N</td><td>Weight</td><td>Mean</td><td>Standard Deviation</td><td>Minimum</td><td>Maximum</td></tr><tr><td>All</td><td>160</td><td></td><td>0.2072</td><td>0.0945</td><td>0.0473</td><td>0.4297</td></tr><tr><td>Region</td><td>160</td><td></td><td>0.2072</td><td>0.0945</td><td>0.0473</td><td>0.4297</td></tr><tr><td>Weighted</td><td>160</td><td>160.00</td><td>0.2072</td><td>0.0945</td><td>0.0473</td><td>0.4297</td></tr></table>

<table><tr><td colspan="8">Propensity Score Information</td></tr><tr><td rowspan="2">Observations</td><td colspan="6">Control (dep = 0)</td><td>Treated - Control</td></tr><tr><td>N</td><td>Weight</td><td>Mean</td><td>Standard Deviation</td><td>Minimum</td><td>Maximum</td><td>Mean Difference</td></tr><tr><td>All</td><td>840</td><td></td><td>0.1510</td><td>0.0842</td><td>0.0375</td><td>0.4727</td><td>0.056</td></tr><tr><td>Region</td><td>840</td><td></td><td>0.1510</td><td>0.0842</td><td>0.0375</td><td>0.4727</td><td>0.056</td></tr><tr><td>Weighted</td><td>840</td><td>161.08</td><td>0.2125</td><td>0.1074</td><td>0.0375</td><td>0.4727</td><td>-0.005</td></tr></table>

The “Variable Information” table displays variable differences between the treated and control groups (Output 4.17). 


SAS Output 4.17 Variable information


<table><tr><td colspan="6">Variable Information</td></tr><tr><td rowspan="2">Variable</td><td rowspan="2">Observations</td><td colspan="4">Treated (dep = 1)</td></tr><tr><td>N</td><td>Weight</td><td>Mean</td><td>Standard Deviation</td></tr><tr><td>Logit Prop Score</td><td>All</td><td>160</td><td></td><td>-1.45028</td><td>0.62099</td></tr><tr><td></td><td>Region</td><td>160</td><td></td><td>-1.45028</td><td>0.62099</td></tr><tr><td></td><td>Weighted</td><td>160</td><td>160.00</td><td>-1.45028</td><td>0.62099</td></tr><tr><td>age</td><td>All</td><td>160</td><td></td><td>57.77500</td><td>13.90260</td></tr><tr><td></td><td>Region</td><td>160</td><td></td><td>57.77500</td><td>13.90260</td></tr><tr><td></td><td>Weighted</td><td>160</td><td>160.00</td><td>57.77500</td><td>13.90260</td></tr><tr><td>eduy</td><td>All</td><td>160</td><td></td><td>10.35625</td><td>3.13300</td></tr><tr><td></td><td>Region</td><td>160</td><td></td><td>10.35625</td><td>3.13300</td></tr><tr><td></td><td>Weighted</td><td>160</td><td>160.00</td><td>10.35625</td><td>3.13300</td></tr><tr><td>sex</td><td>All</td><td>160</td><td></td><td>0.73125</td><td>0.44331</td></tr><tr><td></td><td>Region</td><td>160</td><td></td><td>0.73125</td><td>0.44331</td></tr><tr><td></td><td>Weighted</td><td>160</td><td>160.00</td><td>0.73125</td><td>0.44331</td></tr><tr><td>race</td><td>All</td><td>160</td><td></td><td>0.21250</td><td>0.40908</td></tr><tr><td></td><td>Region</td><td>160</td><td></td><td>0.21250</td><td>0.40908</td></tr><tr><td></td><td>Weighted</td><td>160</td><td>160.00</td><td>0.21250</td><td>0.40908</td></tr></table>

<table><tr><td colspan="7">Variable Information</td></tr><tr><td rowspan="2">Variable</td><td rowspan="2">Observations</td><td colspan="4">Control (dep = 0)</td><td>Treated - Control</td></tr><tr><td>N</td><td>Weight</td><td>Mean</td><td>Standard Deviation</td><td>Mean Difference</td></tr><tr><td>Logit Prop Score</td><td>All</td><td>840</td><td></td><td>-1.85916</td><td>0.62259</td><td>0.40887</td></tr><tr><td></td><td>Region</td><td>840</td><td></td><td>-1.85916</td><td>0.62259</td><td>0.40887</td></tr><tr><td></td><td>Weighted</td><td>840</td><td>161.08</td><td>-1.43331</td><td>0.67165</td><td>-0.01697</td></tr><tr><td>age</td><td>All</td><td>840</td><td></td><td>55.83929</td><td>14.63718</td><td>1.93571</td></tr><tr><td></td><td>Region</td><td>840</td><td></td><td>55.83929</td><td>14.63718</td><td>1.93571</td></tr><tr><td></td><td>Weighted</td><td>840</td><td>161.08</td><td>58.01157</td><td>14.97247</td><td>-0.23657</td></tr><tr><td>eduy</td><td>All</td><td>840</td><td></td><td>11.46786</td><td>3.41335</td><td>-1.11161</td></tr><tr><td></td><td>Region</td><td>840</td><td></td><td>11.46786</td><td>3.41335</td><td>-1.11161</td></tr><tr><td></td><td>Weighted</td><td>840</td><td>161.08</td><td>10.25401</td><td>3.67456</td><td>0.10224</td></tr><tr><td>sex</td><td>All</td><td>840</td><td></td><td>0.57857</td><td>0.49379</td><td>0.15268</td></tr><tr><td></td><td>Region</td><td>840</td><td></td><td>0.57857</td><td>0.49379</td><td>0.15268</td></tr><tr><td></td><td>Weighted</td><td>840</td><td>161.08</td><td>0.73332</td><td>0.44222</td><td>-0.00207</td></tr><tr><td>race</td><td>All</td><td>840</td><td></td><td>0.10952</td><td>0.31230</td><td>0.10298</td></tr><tr><td></td><td>Region</td><td>840</td><td></td><td>0.10952</td><td>0.31230</td><td>0.10298</td></tr><tr><td></td><td>Weighted</td><td>840</td><td>161.08</td><td>0.21622</td><td>0.41167</td><td>-0.00372</td></tr></table>

Within the treated (exposed) group, the statistics remain consistent across the three observation units (all, region, and weighted). This consistency arises from specifying the REGION option as “ALLOBS,” and each exposed subject receiving a weight of 1 under WEIGHT=ATTWGT. In the control (unexposed) group, the statistics are the same between all observations and the support region observations but differ from the weighted observations. This difference stems from the fact that subjects in the control group are assigned weights estimated by PS/(1-PS). As indicated in the column labeled “Weight,” the total weight of the treated units is 160 and the total weight of the control units is 161.08, which are close to 160, the total number of treated units. 

The “Standardized Mean Differences” table displays the differences between the treated and control groups across three sets of observations: all observations, support region observations, and weighted support region observations (Output 4.18). 


SAS Output 4.18 Standardized mean differences (treated - control)


<table><tr><td colspan="7">Standardized Mean Differences (Treated - Control)</td></tr><tr><td>Variable</td><td>Observations</td><td>Mean Difference</td><td>Standard Deviation</td><td>Standardized Difference</td><td>Percent Reduction</td><td>Variance Ratio</td></tr><tr><td>Logit Prop Score</td><td>All</td><td>0.40887</td><td>0.62179</td><td>0.65757</td><td></td><td>0.9948</td></tr><tr><td></td><td>Region</td><td>0.40887</td><td></td><td>0.65757</td><td>0.00</td><td>0.9948</td></tr><tr><td></td><td>Weighted</td><td>-0.01697</td><td></td><td>-0.02730</td><td>95.85</td><td>0.8548</td></tr><tr><td>age</td><td>All</td><td>1.93571</td><td>14.27462</td><td>0.13561</td><td></td><td>0.9021</td></tr><tr><td></td><td>Region</td><td>1.93571</td><td></td><td>0.13561</td><td>0.00</td><td>0.9021</td></tr><tr><td></td><td>Weighted</td><td>-0.23657</td><td></td><td>-0.01657</td><td>87.78</td><td>0.8622</td></tr><tr><td>eduy</td><td>AllRegion</td><td>-1.11161-1.11161</td><td>3.27617</td><td>-0.33930-0.33930</td><td>0.00</td><td>0.84250.8425</td></tr><tr><td></td><td>Weighted</td><td>0.10224</td><td></td><td>0.03121</td><td>90.80</td><td>0.7270</td></tr><tr><td>sex</td><td>All</td><td>0.15268</td><td>0.46923</td><td>0.32538</td><td></td><td>0.8060</td></tr><tr><td></td><td>Region</td><td>0.15268</td><td></td><td>0.32538</td><td>0.00</td><td>0.8060</td></tr><tr><td></td><td>Weighted</td><td>-0.00207</td><td></td><td>-0.00441</td><td>98.64</td><td>1.0049</td></tr><tr><td>race</td><td>All</td><td>0.10298</td><td>0.36392</td><td>0.28297</td><td></td><td>1.7158</td></tr><tr><td></td><td>Region</td><td>0.10298</td><td></td><td>0.28297</td><td>0.00</td><td>1.7158</td></tr><tr><td></td><td>Weighted</td><td>-0.00372</td><td></td><td>-0.01022</td><td>96.39</td><td>0.9875</td></tr><tr><td colspan="7">Standard deviation of All observations used to compute standardized differences</td></tr></table>

The standardized mean differences exhibit a notable reduction in the weighted region, and they are now below the recommended upper limit of 0.25. This reduction indicates a successful balance achieved between the treated and control groups. Additionally, the variance ratios fall within the recorded range of 0.5 to 2. This range suggests that the variances in the treated and control groups are reasonably comparable, further indicating a satisfactory balance between the two groups. 

As documented in Figure 4.11, the mean difference of the propensity score logit in the weighted sample is substantially reduced, compared to the mean difference in the unweighted samples. This suggests that the matching process has effectively balanced the propensity scores between the two comparison groups. 

According to the “Standardized Variable Differences Plot,” all differences observed in the weighted observations fall within the recommended limits of −0.25 and 0.25. This outcome suggests a successful weighting process, as the variables are well-balanced between the treated and control groups (Figure 4.12). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/19206015a36b314a629238fa3f802025d3eb65b371358ddbe6eed1eaab6db246.jpg)



FIGURE 4.11



Distribution of logit of propensity score.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/4a62a1ca283df2a92aa6b408ca2eb65805cfdae48ced5ac3e2ee584c8f42ca08.jpg)



FIGURE 4.12 Standardized mean difference in weighted and unweighted samples.


Using the BOXPLOT and BARCHART statements, the above SAS syntax provides the boxplots and bar chats for each individual variable included in the PS-estimating model. All of the figures indicate that the distribution of each variable is well-balanced in the treated (exposed) and control (unexposed) groups and that there are no substantial differences in education between the exposed and unexposed groups. This indicates that the weighted support region observations exhibit comparable distributions for these variables between the treated and control groups. 

As documented in Table 4.4, following the application of weighting, the proportions of depression exhibit similarity across various levels of covariates. Additionally, the mean values of the potential confounding variables demonstrate close proximity between the exposed and unexposed groups. These observations indicate a reduction in the associations between these variables and the depression variable, compared to their distributions prior to weighting. 

Considering the assessment’s documentation of adequate balance in the weighted distributions of the selected variables, we proceed with utilizing the output dataset (OUTATT) for subsequent weighted outcome analysis to the average treatment (or exposure) effect on the treated sample (ATT). By default, the output dataset includes the propensity variable _PS_ and the weight variable _ATTWGT_. 

To estimate the effect of depression on all-cause death in the weighted datasets, we employ the Cox proportional hazards regression model to estimate hazard ratio (HR) while taking the weights into consideration. Since the utilization of weights introduces within-subject correlation, we use a robust variance estimator that allows for correlated observations. In SAS PROC PHREG, we specify the option “COVS(AGGREGATE)” to account for the correlated nature of the data. This option ensures that the robust variance estimator is applied appropriately within the Cox proportional hazards regression model. Additionally, we need to specify the subject’s identifier (SEQN) to ensure the model accounts for the individual-level variation. 

```sql
PROC phreg data=OutATT covs(aggregate) nosummary;
id seqn;
model Survtime*death(0)=dep /rl;
weight attwgt;
RUN; 
```

The estimated HR is 1.26 (95%CI: 0.90–1.78). 


SAS Output 4.19 Estimated Hazard ratio and its 95% confidence interval


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>StdErr Ratio</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>0.23190</td><td>0.17506</td><td>0.794</td><td>1.7549</td><td>0.1853</td></tr></table>

<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Hazard Ratio Confidence Limits</td></tr><tr><td>dep</td><td>1.261</td><td>0.895</td><td>1.777</td></tr></table>

Next, we use the robust Poisson regression model to estimate the incidence rate ratio (IR). The REPEATED statement requires robust estimation for standard error, using the following SAS syntax. 

```txt
PROC genmod data=OutATT;
class dep (ref='0') seqn;
model death=dep /dist=poisson link=log offset=ln_py;
repeated subject=seqn;
weight attwgt;
lsmeans dep /diff exp cl;
RUN; 
```

The estimated IR is 1.25 (95%CI: 0.89–1.75). 


SAS Output 4.20 Estimated incidence rate ratio and its 95% confidence interval


<table><tr><td colspan="9">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>dep</td><td>Estimate</td><td>Standard Error</td><td>z Value</td><td>Pr &gt; |z|</td><td>Alpha</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>0</td><td>0.2231</td><td>0.1705</td><td>1.31</td><td>0.1907</td><td>0.05</td><td>-0.1111</td><td>0.5573</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.2499</td><td>0.8948</td><td>1.7459</td></tr></table>

To estimate risk ratio (RR), we use the following SAS syntax to invoke log-binomial regression model in the weighted data. 

```txt
PROC genmod data=OutATT;
class dep (ref='0') seqn;
model death (event='1')=dep /dist=binomial link=log;
repeated subject=seqn;
weight attwgt;
lsmeans dep /diff exp cl;
RUN; 
```

The estimated RR is 1.20 (95%CI: 0.89–1.61). 


SAS Output 4.21 Estimated risk ratio and its 95% confidence interval


<table><tr><td colspan="9">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Estimate</td><td>Standard Error</td><td>z Value</td><td>Pr &gt; |z|</td><td>Alpha</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>0</td><td>0.1784</td><td>0.1506</td><td>1.18</td><td>0.2363</td><td>0.05</td><td>-0.1168</td><td>0.4737</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.1953</td><td>0.8897</td><td>1.6059</td></tr></table>

We finally use the logistic regression model to estimate odds ratio (OR) and its 95% confidence interval in the weighted data. 

```sql
PROC genmod data=OutATT descending;
class dep (ref='0') seqn;
model death=dep /dist=binomial link=logit;
repeated subject=seqn;
weight attwgt;
lsmeans dep /diff exp cl;
RUN; 
```

The estimated OR is 1.27 (95%CI:0.85–1.90). 


SAS Output 4.22 Estimated odds ratio and its 95% confidence interval


<table><tr><td colspan="9">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Estimate</td><td>Standard Error</td><td>z Value</td><td>Pr &gt; |z|</td><td>Alpha</td><td>Lower</td><td>Upper</td></tr><tr><td>1</td><td>0</td><td>0.2404</td><td>0.2059</td><td>1.17</td><td>0.2431</td><td>0.05</td><td>-0.1632</td><td>0.6440</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.2717</td><td>0.8494</td><td>1.9041</td></tr></table>

Next, we employ both unstabilized and stabilized weights to estimate the average treatment effect (ATE). To estimate the ATE using unstabilized inverse probability of treatment weighting (IPTW), we modify the WEIGHT option in the following PROC PSMATCH to ‘ATEWGT’. This adjustment enables us to utilize the unstabilized IPTW weights for ATE estimation. 

```sql
ods graphics on;
PROC psmatch data=PS_nhefs region=allobs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy marital income area bmi3;
assess lps var=(age sex race eduy)
/varinfo plots=(boxplot barchart)
weight=atewgt;
output out(obs=all)=OutATE_USTA atewgt=atewgt;
RUN; 
```

The following SAS syntaxes are used to estimate the mean of the IPTW: 

```txt
PROC sort data=OutATE_USTA; by dep; RUN;
PROC univariate data=OutATE_USTA; var atewgt; RUN;
PROC means data=OutATE_USTA; var atewgt; by dep; RUN; 
```

The mean of the IPTW is estimated as 1.99 (6.18 for the depressed group and 1.19 for the non-depressed group). 

We next analyze the average treatment effect for the entire sample (ATE) in the outcome model. To estimate hazard ratio (HR), incidence rate ratio (IR), and risk ratio (RR) using the unstabilized IPTW weight (ATEWGT), we can specify “ATEWGT” in the WEIGHT option within the outcome models. The following SAS syntaxes are used to perform regression analyses. The dataset (“OutATE_USTA”) that are created by the above PROC PSMATCH is used in the following exposure-outcome analyses. 

Using PROC PHREG to estimate hazard ratio: 

```sql
PROC phreg data=OutATE_USTA covs(aggregate) nosummary;
id seqn;
model Survtime*death(0) =dep /rl;
weight atewgt;
RUN; 
```

Using PROC GENMOD to estimate incidence rate ratio: 

```txt
PROC genmod data=OutATE_USTA;
class dep (ref='0') seqn;
model death=dep /dist=Poisson link=log offset=ln_py;
repeated subject=seqn;
weight atewgt;
lsmeans dep /diff exp cl;
RUN; 
```

Using PROC GENMOD to estimate risk ratio: 

```txt
PROC genmod data=OutATE_USTA;
class dep (ref='0') seqn;
model death (event='1')=dep /dist=binomial link=log; 
```

```txt
repeated subject=seqn;
weight atewgt;
lsmeans dep /diff exp cl;
RUN; 
```

The estimated HR, IR, and RR by the unstabilized weights are listed in Table 4.7. 

To estimate the average treatment effect (ATE) using stabilized IPTW, we request stabilized IPTW by specifying the “WEIGHT=ATEWGT(STABILIZE=YES)” option in the ASSESS statement of the SAS PROC PSMATCH procedure. Additionally, we use the ATEWGT(STABILIZE=YES)= option in the OUTPUT statement to create a variable that contains these weights (SAS Institute Inc 2016b). 

```txt
ods graphics on;
PROC psmatch data=PS_nhefs region=allobs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy
    marital income area bmi3;
assess lps var=(age sex race eduy)
    /varinfo plots=(boxplot barchart)
    weight=atewgt(stabilize=yes);
output out(obs=all)=OutATE_STA
    atewgt(stabilize=yes)=atewgt;
RUN; 
```

The following SAS syntax is used to verify whether the mean of the stabilized weights equals 1. The estimated value is found to be 0.999 (1.00 for the non-depressed group and 0.99 for the depressed group). 

```txt
PROC sort data=OutATE_STA; by dep; RUN;
PROC univariate data=OutATE_STA; var atewgt; RUN;
PROC means data=OutATE_STA; var atewgt; RUN; 
```

To estimate the hazard ratio (HR), incidence rate ratio (IR), and risk ratio (RR) using the stabilized IPTW weight (ATEWGT), we specify “ATEWGT” in the WEIGHT option within the outcome models. The dataset “OutATE_STA,” created by the above PROC PSMATCH, is utilized in the exposure-outcome analyses. The SAS syntaxes used in the stabilized IPTW analysis are identical to those used in the unstabilized IPTW analysis, with the exception of changing the dataset to “OutATE_STA.” For example, the following SAS syntax uses the stabilized IPTW to estimate hazard ratio: 


TABLE 4.7



Weighted Analysis of Effect of Depression on Death


<table><tr><td rowspan="2"></td><td colspan="2">ATT</td><td colspan="2">ATE: Unstabilized Weight</td><td colspan="2">ATE: Stabilized Weight</td></tr><tr><td>Ratio</td><td>95%CI</td><td>Ratio</td><td>95%CI</td><td>Ratio</td><td>95%CI</td></tr><tr><td>Hazard ratio</td><td>1.26</td><td>0.90–1.78</td><td>1.58</td><td>1.10–2.28</td><td>1.58</td><td>1.09–2.28</td></tr><tr><td>Incidence ratio</td><td>1.24</td><td>0.89–1.75</td><td>1.56</td><td>1.09–2.23</td><td>1.56</td><td>1.09–2.23</td></tr><tr><td>Risk ratio</td><td>1.20</td><td>0.89–1.61</td><td>1.46</td><td>1.07–2.00</td><td>1.46</td><td>1.07–2.00</td></tr></table>


ATT: average exposure effect on the treated; ATE: average exposure effect for the entire sample 


```sql
PROC phreg data=OutATE_STA covs(aggregate) nosummary;
id seqn;
model Survtime*death(0) =dep /rl;
weight atewgt;
RUN; 
```

The results of the outcome modeling analysis utilizing the unstabilized and stabilized IPTW weight are presented in Table 4.7. It is important to note that the average treatment effect on the treated (ATT) and the average treatment effect for the entire sample (ATE) are not equivalent when the average individual effects (ATT) vary between those who actually received the treatment and those who do not. In a well-conducted randomized trial, ATT would be equal to ATE. 

Both ATT and ATE can also be estimated using the SAS PROC CAUSALTRT statement, which combines the PS-estimating model and the outcome model into a single package. The PSMODEL statement is used to estimate a propensity score for each subject based on the specific covariates, while the MODEL statement estimates the exposure effect. The following SAS syntax is utilized to estimate ATE in a Poisson regression model using the inverse probability weighting method with ratio adjustment (IPWR) (SAS Institute Inc 2016a). 

```txt
PROC causaltrt data=PS_nhefs METHOD=IPWR;
class dep sex race marital area income bmi3;
psmodel dep(ref='0')=age sex race eduy marital income area bmi3;
model death=/DIST=Poisson link=log;
ods output CausalEffects=CausalEffects_ATT_IPWR;
RUN; 
```

The IPWR estimation method utilizes inverse probability weights to estimate the potential outcome means and average treatment effect for the entire sample (ATE). These weights are derived by taking the inverse of the predicted probability of receiving treatment (in this case, having depression), which is estimated using a logistic regression model specified in the PSMODEL statement. 

The “Analysis of Causal Effect” table presents the estimates for the potential outcome means (POM) and the average treatment effect (ATE). In the exposed group, the average risk is 0.29, while in the unexposed group, it is 0.20. The estimated risk ratio (RR) is calculated as 1.46 (0.2885/0.1977). The ATE estimate of 0.09 suggests that depressed subjects had a higher average outcome means (POM) in terms of death compared to non-depressed individuals. This ATE estimate is substantially different from the null value of 0, as indicated by the 95% confidence interval (CI) of 0.02 to 0.16 and the p-value of 0.01. The meaning of the estimated ATE is similar to that of risk difference (attributable risk) in epidemiology. 


SAS Output 4.23 Analysis of causal effect (ATE)


<table><tr><td colspan="8">Analysis of Causal Effect</td></tr><tr><td>Parameter</td><td>Treatment Level</td><td>Estimate</td><td>Robust Std Err</td><td colspan="2">Wald 95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>POM</td><td>1</td><td>0.2885</td><td>0.0356</td><td>0.2188</td><td>0.3582</td><td>8.12</td><td>&lt;.0001</td></tr><tr><td>POM</td><td>0</td><td>0.1977</td><td>0.0135</td><td>0.1712</td><td>0.2242</td><td>14.62</td><td>&lt;.0001</td></tr><tr><td>ATE</td><td></td><td>0.09085</td><td>0.0365</td><td>0.01935</td><td>0.1623</td><td>2.49</td><td>0.0128</td></tr></table>

ATT can also be estimated using PROC CAUSALTRT by adding the option ATT to METHOD=IPWR. To estimate ATT in a Poisson regression model, the following SAS syntax is used: 

```matlab
PROC causaltrt data=PS_nhefs METHOD=IPWR ATT;
class dep sex race marital area income bmi3;
psmodel dep(ref='0')=age sex race eduy marital income area bmi3;
model death (event='1') = /DIST=Poisson link=log; 
```

RUN; 

In the exposed group, the average risk is 0.28, while in the unexposed group, it is 0.24. The estimated risk ratio (RR) is calculated as 1.20 (0.2813/0.2353). The estimate for the average treatment effect on the treated (ATT) is 0.05, with its 95% confidence interval (CI) of −0.02 to 0.11 and the p-value of 0.185. 


SAS Output 4.24 Analysis of causal effect (ATT)


<table><tr><td colspan="8">Analysis of Causal Effect</td></tr><tr><td>Parameter</td><td>Treatment Level</td><td>Estimate</td><td>Robust Std Err</td><td colspan="2">Wald 95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>POM</td><td>1</td><td>0.2813</td><td>0.0355</td><td>0.2116</td><td>0.3509</td><td>7.91</td><td>&lt;.0001</td></tr><tr><td>POM</td><td>0</td><td>0.2353</td><td>0.0242</td><td>0.1879</td><td>0.2827</td><td>9.74</td><td>&lt;.0001</td></tr><tr><td>ATT</td><td></td><td>0.04596</td><td>0.0347</td><td>-0.02203</td><td>0.1139</td><td>1.32</td><td>0.1852</td></tr></table>

## 4.8.6 Estimate Exposure Effect Using Doubly Robust Method

Next, we use the doubly robust model to estimate the average treatment effect for the entire sample (ATE). The following SAS syntax estimates ATE in a Poisson regression model using augmented inverse probability weights (AIPW) (Lunceford and Davidian 2004). The AIPW method is a doubly robust estimation method and provides unbiased estimates for the ATE even when one of the models is misspecified. The AIPW estimation method estimates the potential outcomes by using the maximum likelihood fitting of the generalized linear models (SAS Institute Inc 2016a). 

In this example, the same set of covariates is specified in both the MODEL and PSMODEL statements. However, covariates in the MODEL option (the outcome model) may differ from the PS-estimating model specified in the PSMODEL option. The selection of covariates for the outcome model depends on the assessment of propensity scores. For instance, if the assessment indicates that some important predictors of the exposure are not balanced well, they may be included in the outcome model. The LINK=log option sets the link function for the regression model, and DIST=Poisson specifies the Poisson distribution. 

Although the AIPW estimates for the ATE and potential outcome means are doubly robust, the empirical estimates for their standard errors (the default estimates of standard errors) are not. To obtain robust estimates of standard errors, the BOOTSTRAP statement is used to request bootstrap-based estimation of standard errors and confidence intervals. The BOOTCI (ALL) option is specified to obtain all three types of bootstrap-based confidence intervals: bias-corrected percentile method (default), percentile method, and normal approximation method. 

```txt
ods graphics on;
PROC causaltrt data=PS_nhefs method=aipw;
class dep sex race marital area income bmi3;
psmodel dep(ref='0')=age sex race eduy marital income area bmi3;
model death=age sex race eduy marital income area bmi3
/DIST=Poisson link=log;
bootstrap bootci (all) plot=hist seed=2000;
RUN; 
```

As shown in the “Analysis of Causal Effect” (Output 4.25), the two potential outcome means (POMs) represent the averages of the counterfactual outcomes, $E ( \bar { Y } _ { i 1 } )$ and $E ( Y _ { i 0 } )$ . The AIPW estimate for the average treatment effect (ATE) is 0.087, calculated as $\mathrm { A T E } = E ( Y _ { i 1 } ) -$ $E ( Y _ { i 0 } )$ . The bootstrap percentile 95% confidence limits are 0.02 and 0.23, and the bootstrap bias-corrected 95% confidence limits are -0.01 and 0.17, indicating that the true ATE is likely to fall within this range with a high degree of compatibility. The estimated risk ratio (RR) is 1.45, calculated as the ratio of the estimated potential outcome means between the exposed and unexposed groups (0.2796 vs. 0.193). This suggests that the risk of the outcome in the exposed group is 1.45 times higher than in the unexposed group. 


SAS Output 4.25 Analysis of causal effect (ATE)


<table><tr><td colspan="7">Analysis of Causal Effect</td></tr><tr><td>Parameter</td><td>Treatment Level</td><td>Estimate</td><td>Robust Std Err</td><td>Bootstrap Std Err</td><td colspan="2">Wald 95% Confidence Limits</td></tr><tr><td>POM</td><td>1</td><td>0.2796</td><td>0.0342</td><td>0.0657</td><td>0.2125</td><td>0.3467</td></tr><tr><td>POM</td><td>0</td><td>0.1930</td><td>0.0134</td><td>0.0133</td><td>0.1667</td><td>0.2194</td></tr><tr><td>ATE</td><td></td><td>0.08658</td><td>0.0352</td><td>0.0667</td><td>0.01757</td><td>0.1556</td></tr></table>

<table><tr><td colspan="9">Analysis of Causal Effect</td></tr><tr><td>Parameter</td><td colspan="2">Bootstrap Wald 95% Confidence Limits</td><td colspan="2">Bootstrap Percentile 95% Confidence Limits</td><td colspan="2">Bootstrap Bias Corrected 95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>POM</td><td>0.1509</td><td>0.4083</td><td>0.2135</td><td>0.4168</td><td>0.1904</td><td>0.3657</td><td>8.17</td><td>&lt;.0001</td></tr><tr><td>POM</td><td>0.1669</td><td>0.2192</td><td>0.1683</td><td>0.2199</td><td>0.1683</td><td>0.2198</td><td>14.37</td><td>&lt;.0001</td></tr><tr><td>ATE</td><td>-0.04415</td><td>0.2173</td><td>0.01899</td><td>0.2305</td><td>-0.00969</td><td>0.1680</td><td>2.46</td><td>0.0139</td></tr></table>

To examine the distribution of the bootstrap estimates, the option DIST=HIST is used to generate histograms of the estimates. As displayed in Figure 4.13, the histograms of the bootstrap distributions of estimates illustrate that the distributions of the potential outcome mean (POM) and ATE estimates are approximately normal. The SEED= option is used to specify the seed that initializes the random number stream for generating the bootstrap sample datasets (replicates). 

## 4.8.7 Estimate Exposure Effect Using Propensity Score Adjustment

To adjust for propensity scores estimated in the PS-estimating model, we include the variable PS as a covariate in the outcome model. The outcome model consists of two covariates: the propensity score and an exposure variable indicating the exposure status. The choice of the outcome model depends on the nature of the outcome variable and the study design. We can use various regression models such as Cox proportional hazards regression, Poisson regression, and log-binomial regression to estimate the effect of the exposure. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/e643f21bb4b8b31271864d648b41ff06e414b1f2c9fb827cac1b8c0bb5c38aae.jpg)



Control Potential Outcome Mean


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/4413d2804a56a9b0a82cc0e9e38ac6c362f5ec5f4659fc8048c304bcd8928c18.jpg)



Treatment Potential Outcome Mean


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/d39c4a6d4643ec2df2fc93898da3ce46de0e140e23ed577754e7f2f03666ba91.jpg)



AverageTreatmentEffect



FIGURE 4.13



Bootstrap distributions of estimates.


To estimate the exposure effect by adjusting the propensity score, a two-step approach is commonly used. In the first step, a logistic regression model is employed to estimate the propensity score for each subject, based on the values of selected predictors. In the second step, the estimated propensity scores are incorporated into the outcome model to estimate the exposure effect. Additional assumption is needed when this adjustment in the outcome is used, for example, linearity of relationship between the PS and the outcome variable. 

SAS provides two procedures, PROC LOGISTIC and PROC PSMATCH, that can be used to estimate propensity scores. Both procedures generate the same propensity scores. Regardless of the procedure used, the resulting propensity scores can be used in the subsequent outcome models to adjust for confounding and estimate the exposure effect accurately. 

```sql
PROC logistic data=PS_nhefs descending;
class dep sex race marital area income bmi3;
model dep=age sex race eduy marital income area bmi3;
output out=OUT_PS predicted = propens; 
```

RUN; 

```txt
PROC psmatch data=PS_nhefs region=allobs;
class dep sex race marital area income bmi3;
psmodel dep(Treated='1')=age sex race eduy
    marital income area bmi3;
output out(obs=all)=Outps1 PS=PS; 
```

RUN; 

Because the dataset used here was collected from a cohort study, we are estimating the hazard ratio (HR), incidence rate ratio (IR), and risk ratio (RR). We first use the following SAS syntax to estimate the effect of depression on all-cause death using a Cox proportional hazards regression model. 

```txt
PROC phreg data=OUT_PS;
class dep (ref='0');
model Survtime*death(0)=dep propens /rl;
RUN; 
```

The estimated HR is 1.35 (95%CI: 0.96–1.19). 


SAS Output 4.26 Estimated hazard ratio and 95% confidence interval


<table><tr><td colspan="9">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep</td><td>1</td><td>0.30105</td><td>0.17491</td><td>2.9622</td><td>0.0852</td><td>1.351</td><td>0.959</td><td>1.904</td></tr><tr><td>propens</td><td>1</td><td>2.66020</td><td>0.71543</td><td>13.8260</td><td>0.0002</td><td>14.299</td><td>3.518</td><td>58.115</td></tr></table>

The incidence rate (IR) can be estimated using a robust Poisson model. We can use the following SAS syntax to estimate the IR. 

```txt
PROC genmod data=OUT_PS;
class dep (ref='0') SEQN;
model death=dep propens /dist=Poisson link=log offset=ln_py;
repeated subject=SEQN;
lsmeans dep/diff exp cl;
RUN; 
```

By running this PROC GENMOD syntax, we obtain the estimated IR (1.34) and its 95% confidence interval (95% CI:0.95–1.89). 


SAS Output 4.27 Estimated incidence rate ratio and 95% confidence interval


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-4.2491</td><td>0.1332</td><td>-4.5101</td><td>-3.9880</td><td>-31.90</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.2927</td><td>0.1764</td><td>-0.0529</td><td>0.6384</td><td>1.66</td><td>0.0970</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>propens</td><td></td><td>2.6361</td><td>0.6656</td><td>1.3315</td><td>3.9407</td><td>3.96</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.3401</td><td>0.9484</td><td>1.8934</td></tr></table>

Finally, we estimate the RR by adjusting the propensity score in a log-binomial regression model. The estimated RR is 1.25 (95%:0.92–1.70). 

```txt
PROC genmod data=OUT_PS;
class dep (ref='0') SEQN;
model death (event='1')=dep propens
/dist=binomial link=log;
repeated subject=SEQN;
lsmeans dep/diff exp cl;
RUN; 
```


SAS Output 4.28 Estimated risk ratio and 95% confidence interval


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-2.0118</td><td>0.1240</td><td>-2.2547</td><td>-1.7688</td><td>-16.23</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.2239</td><td>0.1564</td><td>-0.0826</td><td>0.5304</td><td>1.43</td><td>0.1522</td></tr><tr><td>dep</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>propens</td><td></td><td>2.2465</td><td>0.6113</td><td>1.0484</td><td>3.4447</td><td>3.67</td><td>0.0002</td></tr></table>

<table><tr><td colspan="5">Differences of dep Least Squares Means</td></tr><tr><td>dep</td><td>_dep</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>1.2509</td><td>0.9207</td><td>1.6995</td></tr></table>

One issue that arises when using the propensity score as a covariate in outcome analysis is the potential problem of collinearity due to the strong association between the propensity score and the exposure variable in a regression model. This occurs because the propensity score represents the conditional probability of an individual being exposed to a particular risk factor based on their measured covariates (confounding variables). Consequently, on average, individuals who are exposed to the risk factor tend to have higher propensity scores than those who are unexposed. In this example, the average propensity score in the depressed group is 0.21, whereas it is 0.15 in the non-exposed group. The presence of collinearity can lead to reduced precision in association measures, resulting in wider confidence intervals and larger p-values. 

The estimated exposure effects are summarized in Table 4.8. In this example cohort study, the strength of the association between death and depression, while controlling for selected confounding variables, varies depending on the propensity score methods used in the outcome analyses, especially when estimating average treatment effects (ATEs). For example, the ATE hazard ratios range from 1.35 (adjustment of the propensity score) to 1.75 (stratification on the propensity score with five strata). These variations suggest that the choice of propensity score method can influence the reduction of confounding bias and impact the magnitude of the estimated association between the exposure (depression) and the outcome (death). 


TABLE 4.8



Summary of Estimated Exposure Effects by 4 Propensity Score Approaches


<table><tr><td rowspan="2"></td><td colspan="2">ATT</td><td rowspan="2">Weighting</td><td colspan="2">ATE</td></tr><tr><td>Matching</td><td>Weighting</td><td>Stratification</td><td>PS Adjustment</td></tr><tr><td>HR</td><td>1.24 (0.87–1.76)*</td><td>1.26 (0.90–1.78)</td><td>1.58 (1.09–2.29)</td><td>1.75 (1.36–2.13)</td><td>1.35 (0.96–1.90)</td></tr><tr><td>IR</td><td>1.23 (0.87–1.73)</td><td>1.24 (0.89–1.75)</td><td>1.56 (1.09–2.23)</td><td>1.63 (1.29–1.97)</td><td>1.34 (0.95–1.89)</td></tr><tr><td>RR</td><td>1.19 (0.88–1.62)</td><td>1.20 (0.89–1.61)</td><td>1.46 (1.07–2.00)</td><td>1.46 (1.18–1.74)</td><td>1.25 (0.92–1.70)</td></tr></table>


*95% confidence interval 


## 4.9 Suggestions and Summary

## 4.9.1 Selection of Individual-Based Balance

Analysts are often confronted with the challenge of selecting one of three balancing strategies in propensity score analysis: matching, stratification, and weighting. Each of these strategies, when employed correctly, can significantly reduce confounding bias. However, adhering to epidemiologic principles suggests that individual-based balance – achieved through matching and weighting – is more effective in achieving balance and minimizing confounding bias than non-individual balance, such as stratification and propensity score adjustment. 

Stratification involves balancing propensity scores by creating strata or groups based on score ranges. Although this method may be used to achieve balance, it can lead to residual confounding if the range of propensity scores within each stratum is wide, and if the average propensity score of the exposed group differs substantially from that of the unexposed group. Consequently, this residual confounding undermines the interval validity of the exposure effect estimates. 

As an individual-based balance method, matching has emerged as the most widely employed strategy in epidemiologic research. Through matching, a valid comparison between exposed and unexposed groups can be achieved, yielding exposure estimates with robust interval validity. However, matching does have a drawback, namely the reduction in sample size, particularly when adopting a 1:1 matching ratio and dealing with rare outcomes. Increasing the matching ratio, such as to 1:3, amplifies the average distance between the propensity scores of the three unexposed subjects and the exposed index within a matched pair. Consequently, this situation can introduce residual confounding bias and diminish the overall validity of the analysis. 

To overcome the sample size limitation associated with matching, researchers have turned to propensity-score weighting as an alternative. Propensity-score weighting addresses the drawback of reduced sample size by incorporating all original subjects into the analysis. This approach has gained popularity in epidemiologic research, especially in the realm of causal inference. In fact, it serves as the foundation for the innovative marginal structural model (MSM), which expands the application of propensity-score weighting to the analysis of time-varying exposure and time-varying confounding (Hernán and Robins 2020). 

Therefore, to enhance the balance and validity of exposure effect estimates, it is recommended to prioritize individual-based balance methods, such as matching and weighting, over stratification and PS adjustment. These approaches offer greater control over confounding bias by explicitly matching or weighting individual subjects based on their propensity scores. By doing so, the distribution of propensity scores between the exposed and unexposed groups can be more effectively balanced, thereby improving the overall validity of the analysis and the accuracy of the exposure effect estimates. 

## 4.9.2 Issues and Suggested Solutions

There are several critical issues to consider regarding the validity of using propensity scores to mitigate confounding bias. The following are specific areas that require special attention: 

## 1. Unmeasured confounding variables

The calculation of propensity scores is entirely reliant on the measured confounding variables in the PS-estimating model. Unfortunately, it is not always feasible to account for every relevant confounding variable, and there may also be unanticipated confounders. Consequently, a certain degree of confounding bias may persist. To tackle this issue, a comprehensive review of the literature and adherence to epidemiologic principles, such as the use of directed acyclic graphs (DAGs), can aid in the identification of potential confounding variables. It is important to bear in mind that the issue of unmeasured confounding variables presents a challenge not just in propensity score analysis, but also in other analytical methods, including traditional modeling techniques and innovative approaches such as the marginal structural model. This limitation should be considered when interpreting exposure effect estimates derived from propensity score analysis. Additionally, sensitivity analysis can be undertaken to assess the extent to which unmeasured confounders might influence the validity of the estimated exposure effect on the outcome (Liu, Kuramoto, and Stuart 2013). 

## 2. Limited common support region and reduced sample size

Achieving effective propensity score adjustment requires adequate overlap or a sufficient common support region between the exposed and unexposed groups, as discussed in Section 4.4. This region represents the range of confounding variable distributions that are balanced between the two groups when collapsed into a propensity score. The larger the common support region, the more comparable the groups are after achieving PS balance. A limited support region substantially reduces comparability and can lead to residual confounding. Limited support region implies that unmatched subjects are excluded from the matched sample, potentially resulting in a matched sample that does not represent the original population adequately. 

Therefore, it is crucial to select an appropriate balance strategy that increases the size of the matched sample, controls confounding bias, and reassesses covariate balance after matching or weighting based on the propensity score. If any covariates remain unbalanced, further control should be exerted in the outcome model, possibly using methods like the doubly robust method. 

## 3. Residual confounding

For effectively minimizing confounding bias, the ideal scenario would be to identify pairs with identical propensity scores. However, it often proves challenging to find unexposed individuals whose propensity score exactly matches that of their exposed counterparts. More often than not, the nearest unexposed individual, in terms of propensity score, is chosen as a match for the exposed subject, often using a caliper. A wider caliper distance can result in pairs with considerably differing propensity scores, leading to imbalances in confounding variables. This issue is particularly pronounced when employing the stratification strategy, which groups subjects based on propensity score ranges. One way to tackle this problem is by using the inverse probability weighting (IPW) strategy or restricting the caliper width to a maximum of 0.25 times the standard deviation of the propensity scores (Rosenbaum and Rubin 1985). IPW, when used with correctly specified models, can help mitigate residual confounding. Again, it is always useful during the analysis process to verify the balance of covariates included in the propensity score estimation and add any that show substantial differences between the exposed and unexposed groups to the outcome model. 

## 4. Methods in estimating exposure effect

The primary objective of propensity score analysis is to accurately estimate exposure effects, making the choice of an appropriate outcome model a crucial factor. While the propensity score adjustment model is often the simplest to implement, it is sensitive to certain conditions relating to propensity scores and covariates (Hade and Lu 2014). In addition to the assumptions made in the PS-estimating model, there are also assumptions that need to be validated within the outcome model. Both empirical and simulated studies have shown that propensity score matching and weighting are more effective in reducing confounding bias compared to stratification based on propensity score or covariate adjustment using the propensity score (Austin 2011b, Hade and Lu 2014). Each method comes with its own strengths and weaknesses, and the following outcome models are recommended: (a) an outcome model for matched data analysis that accounts for clustering within matched pairs; (b) an outcome model for weighted data analysis that uses inverse probability of treatment weighting (IPTW) based on propensity scores to estimate the average treatment effect on the treated (ATT) and average treatment effect (ATE); and (c) a doubly robust model that adjusts for confounding variables in both the propensity score estimation model and the outcome model. With the achievement of propensity score balance through matching or weighting, the outcome model should consider the matching or weighting scheme when estimating exposure effects. 

Past research has demonstrated that PS-based estimates do not significantly differ from regression-based estimates (Glazerman, Levy, and Myers 2003, Shah et al. 2005). In certain circumstances, propensity score analysis yields more appropriate estimates compared to traditional regression methods. For instance, the propensity score method yields less biased, more robust, and more precise estimates compared to logistic regression when there are seven or fewer events per confounder (Cepeda et al. 2003). The propensity score method is particularly useful in situations with scarce outcomes for controlling confounding (Glynn, Schneeweiss, and Stürmer 2006). Although it offers an effective means of managing confounding bias, allowing researchers to estimate more accurately the causal effect of exposure on the outcome, careful attention must be paid to the assumptions, data quality, and methodological choices to ensure robust and reliable results. 

## 4.9.3 Reporting of Propensity-Score Analysis

When preparing a manuscript that presents results from a propensity score analysis for journal submission, it’s important for authors to provide comprehensive and clear information about their use of propensity score analysis in their study. Doing so ensures that readers can more thoroughly understand their findings and make informed assessments about the scientific rigor of the propensity score-based study. The authors should aim to answer the following questions in their report: 

1. What motivated the selection of the propensity score method over other traditional regression analysis techniques? 

The authors should delineate the specific strengths and advantages of the propensity score method that led to its choice in their study. These might include elements like addressing confounding, bias reduction, handling complex exposure-outcome relationships, or considerations of sample size. 

2. What was the rationale behind the selection of potential confounders for estimating the propensity score, and how was this process carried out? 

The authors should give an account for their choice of potential confounders included in the propensity score model. They should discuss why these variables were deemed relevant and how they were chosen (e.g., based on subject-matter knowledge, causal structures in causal diagrams, or statistical criteria). 

3. How were the assumptions underlying propensity score analysis verified, and what alternative methods were employed if any violations were found? 

The authors should describe how they inspected the assumptions behind the propensity score analysis. This might involve checking the balance between treatment groups, assessing functional form assumptions, or scrutinizing the overlap of propensity scores. If violations of any assumptions were found, the authors should describe the alternative methods used to address these (e.g., sensitivity analyses or propensity score trimming). 

4. How was balance in the propensity score distribution achieved between the exposed and unexposed groups? 

The authors should detail the strategies used to reach balance in the propensity score distribution between exposed and unexposed groups. This could involve techniques such as matching, stratification, weighting, or covariate adjustment. They should explicitly explain the methods used. 

5. How was the propensity score incorporated into the regression model to estimate the exposure effect? 

The authors should clearly describe how they integrated the propensity score into their regression model to estimate the exposure effect. This might involve methods like inverse probability weighting, propensity score stratification, or including the propensity score as a covariate in the regression model. The specific details of the modeling approach should be laid out. 

6. What were the limitations of the propensity score analysis, and how were they addressed? 

The authors should identify and explore the limitations of the propensity score analysis, particularly those specific to their study. These limitations might include challenges such as unmeasured confounding, model misspecification, or the need to rely on strong assumptions. Furthermore, they should describe the measures taken to mitigate these limitations and the strategies employed to address these potential issues. 

In addition to these considerations, authors are encouraged to consult established guidelines for reporting results of propensity score-based association models, like those proposed by Yao et al. (2017) and Glynn (2017). Adherence to these guidelines ensures that the reported findings are in line with best practices and enhances the transparency and interpretability of the propensity score-based analysis. 

## 4.10 Summary



Austin, P. C. 2011b. “A tutorial and case study in propensity score analysis: an application to estimating the effect of in-hospital smoking cessation counseling on mortality.” Multivariate Behav Res 46 (1):119–151. 





Kang, J. D. Y., and J. L. Schafer. 2007. “Demystifying double robustness: A comparison of alternative strategies for estimating a population mean from incomplete data.” Stat Sci 22 (4):523–539. 





Stuart, E. A. 2010. “Matching methods for causal inference: A review and a look forward.” Stat Sci 25 (1):1–21. doi: 10.1214/09-sts313. 



Propensity score analysis is a widely utilized method for controlling multiple confounding variables by balancing their distributions between comparison groups in observational studies. It is especially useful in datasets where there are rare outcomes and a large number of confounders requiring adjustment. To effectively use this model, one must carefully follow the six stages described in this chapter. Specific model assumptions must also be checked, and alternative methods should be employed when one or more assumptions are violated. Due to the complexities involved in propensity score analysis, it is crucial for authors to provide comprehensive and clear information about their use of the method in their study. This enables readers to more thoroughly understand the findings and make informed assessments about the scientific rigor of the propensity score-based study. 



Austin, P. C. 2014. “The use of propensity score methods with survival or time-to-event outcomes: reporting measures of effect similar to those used in randomized experiments.” Stat Med 33 (7):1242–1258. doi: 10.1002/sim.5984. 





Li, L., C. Shen, A. C. Wu, and X. Li. 2011. “Propensity score-based sensitivity analysis method for uncontrolled confounding.” Am J Epidemiol 174 (3):345–353. doi: 10.1093/aje/kwr096. 





Westreich, D., and S. R. Cole. 2010. “Invited commentary: positivity in practice.” Am J Epidemiol 171 (6):674–677; discussion 678–681. doi: 10.1093/aje/kwp436. 



## Additional Readings



Austin, P. C., and E. A. Stuart. 2015. “Moving towards best practice when using inverse probability of treatment weighting (IPTW) using the propensity score to estimate causal treatment effects in observational studies.” Stat Med 34 (28):3661–3679. doi: 10.1002/sim.6607. 





Li, X., and C. Shen. 2020. “Doubly robust estimation of causal effect: Upping the odds of getting the right answers.” Circ Cardiovasc Qual Outcomes 13 (1):e006065. doi: 10.1161/circoutcomes.119.006065. 





Westreich, D., J. Lessler, and M. J. Funk. 2010. “Propensity score estimation: Neural networks, support vector machines, decision trees (CART), and meta-classifiers as alternatives to logistic regression.” J Clin Epidemiol 63 (8):826–833. doi: 10.1016/j.jclinepi.2009.11.020. 



The following excellent publications provide additional information about propensity score methods: 



Bai, H., and M. H. Clark. 2019. Propensity score methods and applications. Thousand Oaks, CA: Sage Publications. 





Lin, D. Y., and L. J. Wei. 1989. “The robust inference for the Cox Proportional Hazards Model.” J Am Stat Assoc 84 (408):1074–1078. doi: 10.2307/2290085. 





Yao, X. I., X. Wang, P. J. Speicher, E. S. Hwang, P. Cheng, D. H. Harpole, M. F. Berry, D. Schrag, and H. H. Pang. 2017. “Reporting and guidelines in propensity score analysis: A systematic review of cancer and cancer surgical studies.” J Natl Cancer Inst 109 (8). doi: 10.1093/jnci/djw323. 





Austin, P. C. 2011. “An introduction to propensity score methods for reducing the effects of confounding in observational studies.” Multivariate Behav Res 46 (3):399–424. doi: 10.1080/00273171.2011.568786. 





Braitman, L. E., and P. R. Rosenbaum. 2002. “Rare outcomes, common treatments: Analytic strategies using propensity scores.” Ann Intern Med 137 (8):693–695. doi: 10.7326/0003- 4819-137-8-200210150-00015. 





Liu, W., S. J. Kuramoto, and E. A. Stuart. 2013. “An introduction to sensitivity analysis for unobserved confounding in nonexperimental prevention research.” Prev Sci 14 (6):570–580. doi: 10.1007/s11121-012-0339-5. 





Bai, Haiyan., and Margaret Hilary Clark. 2018. Propensity score methods and applications. Sage Publications. 





Brookhart, M. A., S. Schneeweiss, K. J. Rothman, R. J. Glynn, J. Avorn, and T. Stürmer. 2006. “Variable selection for propensity score models.” Am J Epidemiol 163 (12):1149–1156. doi: 10.1093/aje/ kwj149. 





Lunceford, J. K., and M. Davidian. 2004. “Stratification and weighting via the propensity score in estimation of causal treatment effects: a comparative study.” Stat Med 23 (19):2937–2960. doi: 10.1002/sim.1903. 





Stuart, E. A. 2010. “Matching methods for causal inference: A review and a look forward.” Stat Sci 25 (1):1–21. doi: 10.1214/09-sts313. 





Cepeda, M. S., R. Boston, J. T. Farrar, and B. L. Strom. 2003. “Comparison of logistic regression versus propensity score when the number of events is low and there are multiple confounders.” Am J Epidemiol 158 (3):280–287. doi: 10.1093/aje/kwg115. 





Oakes, J. M., and P. J. Johnson. 2017. “Propensity score matching for social epidemiology.” In Methods in social epidemiology, edited by J Michael Oakes and Jay S. Kaufman, 370–393. San Francisco, CA: Jossey-Bass. 





Cochran, W. G. 1968. “The effectiveness of adjustment by subclassification in removing bias in observational studies.” Biometrics 24 (2):295–313. 





Pan, W. 2015. Propensity score analysis: Fundamentals and developments. New York: The Guilford Press. 



## References



Fan, J., K. Imai, I. Lee, H. Liu, Y. Ning, and X. Yang. 2022. “Optimal covariate balancing conditions in propensity score estimation.” J Bus Econ Stat 41 (1):97–110. doi: 10.1080/07350015.2021.2002159. 





Robins, J. M., M. Á. Hernán, and B. Brumback. 2000. “Marginal structural models and causal inference in epidemiology.” Epidemiology 11 (5):550–560. 





Abadie, A., and G. W. Imbens. 2008. “On the failure of the bootstrap for matching estimators.” Econometrica 76 (6):1537–1557. 





Flury, B. K., and H. Riedwyl. 1986. “Standard distance in univariate and multivariate analysis.” Am Stat 40 (3):249–251. doi: 10.2307/2684560. 





Rosenbaum, P. R. 1987. “Model-based direct adjustment.” J Am stat Asso 82 (398):387–394. 





Adelson, J. L., D. B. McCoach, H. J. Rogers, J. A. Adelson, and T. M. Sauer. 2017. “Developing and applying the propensity score to make causal inferences: variable selection and stratification.” Front Psychol 8:1413. doi: 10.3389/fpsyg.2017.01413. 





Funk, M. J., D. Westreich, C. Wiesen, T. Stürmer, M. A. Brookhart, and M. Davidian. 2011. “Doubly robust estimation of causal effects.” Am J Epidemiol 173 (7):761–767. doi: 10.1093/aje/kwq439. 





Rosenbaum, P. R., and D. B. Rubin. 1983. “The central role of the propensity score in observational studies for causal effects.” Biometrika 70 (1):41–55. doi: 10.2307/2335942. 





Austin, P. C. 2009. “Type I error rates, coverage of confidence intervals, and variance estimation in propensity-score matched analyses.” Int J Biostat 5 (1). 





Glazerman, S., D. M. Levy, and D. Myers. 2003. “Nonexperimental versus experimental estimates of earnings impacts.” Ann Am Acad Pol Soc Sci 589:63–93. 





Rosenbaum, P. R., and D. B. Rubin. 1984. “Reducing bias in observational studies using subclassification on the propensity score.” J Am stat Asso 79 (387):516–524. 





Austin, P. C. 2011a. “An introduction to propensity score methods for reducing the effects of confounding in observational studies.” Multivariate Behav Res 46 (3):399–424. doi: 10.1080/ 00273171.2011.568786. 





Glynn, R. J. 2017. “Use of propensity scores to design observational comparative effectiveness studies.” J Natl Cancer Inst 109 (8). doi: 10.1093/jnci/djw345. 





Rosenbaum, P. R., and D. B. Rubin. 1985. “Constructing a control group using multivariate matched sampling methods that incorporate the propensity score.” Am Stat 39 (1):33–38. 





Glynn, R. J., S. Schneeweiss, and T. Stürmer. 2006. “Indications for propensity scores and review of their use in pharmacoepidemiology.” Basic Clin Pharmacol Toxicol 98 (3):253–259. doi: 10.1111/ j.1742-7843.2006.pto_293.x. 





Rubin, D. B. 1977. “Assignment to treatment group on the basis of a covariate.” J Educ Behav Stat 2 (1):1–26. 





Greenland, S. 1989. “Modeling and variable selection in epidemiologic analysis.” Am J Public Health 79 (3):340–349. doi: 10.2105/ajph.79.3.340. 





Rubin, D. B. 2001. “Using propensity scores to help design observational studies: Application to the tobacco litigation.” Health Serv Outcomes Res Methodol 2 (3):169–188. doi: 10.1023/ A:1020363010465. 





Greenland, S., R. Daniel, and N. Pearce. 2016. “Outcome modelling strategies in epidemiology: traditional methods and basic alternatives.” Int J Epidemiol 45 (2):565–575. doi: 10.1093/ije/dyw040. 





Rubin, D. B., and N. Thomas. 1996. “Matching using estimated propensity scores: Relating theory to practice.” Biometrics 52 (1):249–264. doi: 10.2307/2533160. 





Greenland, S., MA Mansournia, and DG Altman. 2016. “Sparse data bias: a problem hiding in plain sight.” BMJ 352:i1981. doi: 10.1136/bmj.i1981. 





Rudolph, K. E., and E. A. Stuart. 2017. “Using sensitivity analyses for unobserved confounding to address covariate measurement error in propensity score methods.” Am J Epidemiol 187 (3): 604–613. doi: 10.1093/aje/kwx248. 





Greenland, S., and J. M. Robins. 2009. “Identifiability, exchangeability and confounding revisited.” Epidemiol Perspect Innov 6:4. doi: 10.1186/1742-5573-6-4. 





SAS Institute Inc. 2016a. SAS/STAT user’s guide: The CAUSALTRT procedure. Cary, NC: SAS Institute Inc. 





Guo, S., and M. W. Fraser. 2014. Propensity score analysis: Statistical methods and applications. Vol. 11. Thousand Oaks: SAGE publications. 





SAS Institute Inc. 2016b. SAS/STAT user’s guide: The PSMATCH procedure. Cary, NC: SAS Institute Inc. 





Hade, E. M., and B. Lu. 2014. “Bias associated with using the estimated propensity score as a regression covariate.” Stat Med 33 (1):74–87. doi: 10.1002/sim.5884. 





Schafer, J. L., and J. Kang. 2008. “Average causal effects from nonrandomized studies: A practical guide and simulated example.” Psychol Methods 13 (4):279. 





Hernán, M. A., S. Hernández-Díaz, M. M. Werler, and A. A. Mitchell. 2002. “Causal knowledge as a prerequisite for confounding evaluation: an application to birth defects epidemiology.” Am J Epidemiol 155 (2):176–184. doi: 10.1093/aje/155.2.176. 





Schulte, P. J., and E. J. Mascha. 2018. “Propensity score methods: theory and practice for anesthesia research.” Anesth Analg 127 (4):1074–1084. 





Hernán, M. A., and J. M. Robins. 2020. Causal inference: What if. Boca Raton: Chapman & Hall/CRC. 





Setoguchi, S., S. Schneeweiss, M. A. Brookhart, R. J. Glynn, and E. F. Cook. 2008. “Evaluating uses of data mining techniques in propensity score estimation: A simulation study.” Pharmacoepidemiol Drug Saf 17 (6):546–555. doi: 10.1002/pds.1555. 





Joffe, M. M., and P. R. Rosenbaum. 1999. “Invited commentary: Propensity scores.” Am J Epidemiol 150 (4):327–333. doi: 10.1093/oxfordjournals.aje.a010011. 





Shah, B. R., A. Laupacis, J. E. Hux, and P. C. Austin. 2005. “Propensity score methods gave similar results to traditional regression modeling in observational studies: A systematic review.” J Clin Epidemiol 58 (6):550–559. doi: 10.1016/j.jclinepi.2004.10.016. 





Shiba, K., and T. Kawahara. 2021. “Using propensity scores for causal inference: Pitfalls and tips.” J Epidemiol 31 (8):457–463. doi: 10.2188/jea.JE20210145. 



# Modeling for Traditional Case-Control Studies

This chapter provides a comprehensive overview of the case-control study design, distinguishing between non-population and population-based studies. It describes the strategies and procedures for utilizing logistic regression models, which are instrumental in quantifying exposure-outcome relationships, controlling for confounding bias, and assessing effect modification. While the primary emphasis is on analytical methods tailored for traditional case-control studies, Chapter 6 will delve into models for matched case-control studies, while Chapter 7 will focus on analytics for population-based studies. Additionally, this chapter examines the underlying assumptions of logistic regression models and offers techniques for addressing any violations of these assumptions. Detailed steps for modeling exposure-outcome associations are outlined and accompanied by annotated SAS syntax for further clarification. The regression techniques covered in association models include binary logistic regression, ordinal logistic regression, and multinomial logistic regression models. 

## 5.1 Review of Case-Control Study Design

Case-control studies are instrumental in comparing exposure levels between cases and controls relative to suspected risk factors (Kleinbaum, Kupper, and Morgenstern 1982). This study design is particularly useful for studying rare diseases due to the ability of investigators to establish a fixed ratio between cases and controls. It is also invaluable for studying diseases with a long latent period, as researchers can retrospectively measure exposure history. A case-control study can be viewed as a specialized cohort study variant. In this perspective, both cases and controls are sampled from the study population, i.e., the base population, in a cohort study. For a case-control comparison to be a valid alternative to a cohort study, cases and controls are expected to originate from the same base population. 

Case-control studies are classified into non-population-based case-control studies and population-based case-control studies (Figure 5.1), depending on whether we know the base population that generates the case group. Due to the differences in data collected from these two types of case-control studies, it is essential that the analysis strategies are adeptly matched to each type’s distinctive data characteristics (Borgan et al. 2018). 

We begin our exploration by reviewing the sampling methods for controls across the various types of the case-control designs highlighted in Figure 5.1. 

## 5.1.1 Principles for Control Selection

The validity of a case-control study hinges significantly on the appropriate selection of the control group, which provides an estimate of the exposure distribution in the base population that yields the cases for the study. Consequently, when selecting a control group, the aim is to ascertain the exposure level that mirrors, or closely approximates, the exposure level in the base population. To accomplish this, two principles should guide control selection: the principle of base population and the principle of independence. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/bcc34eee1ecff22091d1d9da7647d48a8b4b743defa1ca66be87d9eb98873c88.jpg)



FIGURE 5.1 Classification of case-control studies.


According to the principle of base population, controls must be selected from the same base population as the cases and be representative of that population. In non-populationbased case-control studies, where the base population is typically undefined, controls often have to be selected from different populations. In these instances, it is assumed that the population from which we draw controls exhibits an exposure distribution comparable to the exposure in the base population producing the cases. Nonetheless, this is a strong assumption and might be unverifiable. Any violation of this assumption is an inherent problem in non-population-based case-control studies, which reduces the validity of these case-control studies. 

On the other hand, the principle of independence requires that control selection must remain uninfluenced by their exposure status. This is because controls serve to approximate the exposure distribution in the base population. Thus, the sampling fraction (f) for control selection should not vary between different exposure levels, such as exposed versus unexposed. Although not a universal solution, adhering to this principle and opting for random control selection elevates the likelihood of selecting controls that accurately represent the exposure distribution of the base population producing the cases. Furthermore, this principle ought to be applied when selecting cases in case-control studies to amplify the study’s validity when estimating the exposure-outcome relationship. 

There are three sampling methods for selecting controls in case-control studies: cumulative sampling, density sampling, and baseline-subcohort sampling. Cumulative sampling is commonly used in non-population-based case-control studies, while density sampling and baseline-subcohort sampling are typically used in population-based case-control studies. 

## 5.1.2 Cumulative Sampling of Controls in Non-Population Case-Control Design

Cumulative sampling entails selecting controls at the conclusion of the observation period, a timeframe during which all cases have been identified. For inclusion as controls, individuals must remain free of the disease until the end of the follow-up period (as illustrated in Figure 5.2). However, one pitfall of this method is the potential introduction of selection bias when controls are picked from non-cases instead of the base population. As a result, the exposure distribution among controls might not accurately represent that of the base population. This discrepancy is especially noticeable when the disease of interest is not rare. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/9b8219ea5a22b3674b953f894a15400c1244ac28fd39be19bfe675b75a6aed70.jpg)



FIGURE 5.2 Illustration of a case-control study that is a special form of a cohort study.


Selecting cases and controls at different time points may also introduce bias in exposure measurement. If exposure frequency shifts over the course of the study, this temporal difference can bias results. That is because cases and controls, having been interviewed at different times, might exhibit disparate exposure distributions. This temporal variation can fabricate a false exposure-outcome relationship, even if the exposure is not a risk factor for the disease. 

Moreover, since controls are selected at the end of the follow-up period, if a large number of exposed individuals leave the base population during the observation period, they will not be available for selection as controls at the end, potentially leading to an overestimation of the exposure effect due to differential loss. 

The exposure-outcome association in non-population-based case-control studies is measured by the exposure odds ratio (EOR), which is equivalent to the disease odds ratio (DOR). However, when estimating the risk ratio using the odds ratio, the rare disease assumption must be met. This assumption requires that the proportion of individuals with the disease in all exposure and confounder categories being analyzed is less than 10%. It is incorrect to solely rely on low crude or overall incidence as a substitute for the rare disease assumption (Greenland 1987). 

Consider a hypothetical base population of 1,000 individuals in a 3-year cohort study, where 30% are exposed to a certain risk factor over 3 years (Figure 5.2). Among these, 30% $( p _ { 1 } )$ of the exposed group and 15% $( p _ { 0 } )$ of the non-exposed group develop the disease, leading to a risk ratio of 2 (0.3/0.15). If we then conduct a case-control study post-cohort study, adhering to the independence principle, we would randomly select 156 cases (72 exposed, 84 unexposed) and 403 controls (105 exposed, 298 unexposed). Both exposed and unexposed cases have an equal sampling fraction of 80% of the total cases. For controls, the sampling fraction for both groups is 50% of the non-cases (illustrated in the right panel of Figure 5.2). The calculated odds ratio is 2.43 (72 × 298)/(84 × 105). This value deviates from the risk ratio due to the violation of the rare disease assumption, as the disease occurrence in the cohort is over 10%. 

In this illustration, controls are not directly sampled from the base population, but from non-cases, causing the proportion of exposure in controls to be 0.26 (105/403), which violates the base population principle since it differs from 0.3 in the base population. In addition, if the majority of cases occur in the first year of observation and there is a secular trend in exposure during the 3-year period, the exposure level in cases and controls may differ, as controls’ exposure is obtained at the beginning of year 4. This situation may result in an association measured by the odds ratio, even if exposure is not a risk factor. 

As shown in Figure 5.1, non-population-based case-control studies include traditional case-control studies and matched case-control studies. In matched case-control studies, cases are matched to controls based on specific criteria. The analysis of the exposureoutcome association, measured by the odds ratio, in traditional case-control studies typically involves the use of the Mantel–Haenszel method and non-conditional logistic regression models. On the other hand, the McNemar method and conditional logistic regression model are commonly employed to analyze the association in matched case-control studies (see Chapter 6 for more details). 

## 5.1.3 Density Sampling of Controls in Nested Case-Control Design

The lack of identification of the base population is a fundamental issue that can compromise the internal validity of non-population case-control studies. To overcome this challenge, researchers have developed the population-based case-control design, which shares some characteristics with the cohort design (Ernster 1994, Wacholder 1991). Populationbased case-control studies can be classified into nested case-control studies and casesubcohort studies based on the way controls are selected from a base population. 

The nested case-control design utilizes density sampling to select controls (Liddell et al. 1977, Prentice and Breslow 1978). In this sampling approach, controls are selected longitudinally throughout the follow-up period and are typically matched to cases at the time of each case’s diagnosis or identification (i.e., the case’s failure time). One or more non-cases are selected randomly from a risk set which includes all individuals who are at risk for the disease of interest at the time when the index case occurs. A time-match set includes one index case and one or more controls randomly selected from the risk set of the index case (Figure 5.3). By comparing the exposure of cases to controls in the time-matched sets, the nested case-control design provides a valid basis for assessing the exposure-outcome association. Evidence of a positive association is indicated by a higher exposure level in cases compared to controls in the time-matched sets. 

This assessment naturally follows the exposure-disease temporality because the timematched risk set is defined by time at disease occurrence, and the study compares the levels of exposure of cases and controls based on the exposure history up to the time when a time-matched set is determined (Langholz and Richardson 2009). This sampling corresponds to a cohort study that uses the person-time at risk as the denominator to estimate the incidence rate. During the study period, controls may subsequently become cases, and these subjects would then be treated as both cases and controls in the analysis. The main reason for using a nested case-control study is to reduce the research burden by collecting complete data only for those who are chosen from the risk sets, thus reducing labor and cost of data collection. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/fa042d0beeaef7a339bc8a2c067ea914d3020aa99c0ca91cb2e49c5d317e6325.jpg)



FIGURE 5.3 Illustration of a nested case-control study with two controls matched to one case.


As shown in Figure 5.3, two controls (control 1.1 and control 1.2) are randomly selected from the risk set of individuals who have not experienced the disease of interest at the time when case 1 gets the disease. If control 1.2 later becomes a case (case 4), two controls will be randomly selected from a risk set (control 4.1 and 4.2). Censored subjects are excluded from the risk set. Controls are usually matched to cases based on the same value of confounding variables to control for confounding. For example, if we match controls to cases by race, the risk set for control selection includes the same race as the index case. As illustrated in Figure 5.3, five time-matched risk sets are created for the 5 index cases, with each set including one case and two controls selected from their corresponding risk sets. 

Density sampling is a preferable method when the observation period is long or when the frequency of exposure changes over time. This method provides an estimate of the proportion of total person-time for exposed and unexposed cohorts in the base population. The odds ratio calculated from a nested case-control study is equivalent to the incidence rate ratio, without the assumption that the disease is rare in the base population. To estimate exposure effects, a conditional Cox proportional hazard regression model can be employed for the analysis of nested case-control data, as described in Chapter 7. 

## 5.1.4 Baseline-Cohort Sampling in the Case-Subcohort Design

In case-subcohort studies (also known as case-cohort studies or case-based studies), a sample of controls is randomly selected from the individuals at risk for the disease of interest at the beginning of the follow-up period, i.e., at baseline (Miettinen 1976, Prentice 1986). This sampling approach is similar to a cohort study that uses persons at risk as the denominator to estimate the cumulative risk. Controls may subsequently develop the disease during the study period and would then be considered as both cases and controls in the analysis. 

Figure 5.4 depicts the design of a case-subcohort study. In this approach, a set of controls is randomly selected from the base population at the baseline of the study. This group of controls is referred to as the “subcohort.” As the study progresses and the follow-up period unfolds, cases (numbered 1 to n) are identified and constitute the case group. It is noteworthy that some individuals initially selected as controls might subsequently develop the disease and be reclassified as cases, like cases 4 and 5. These individuals will be represented in both the control and case groups. Consequently, the case group encompasses cases emerging from the subcohort (such as cases 4 and 5), as well as cases arising outside the subcohort but within the base population (cases 1–3). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/c21050c07edc2933d7ff41c4314a34aae5f00fcbde223dbea840daf75503cfe5.jpg)



FIGURE 5.4 Illustration of a case-subcohort study.


The control group in a case-subcohort study can be used for different disease outcomes that occur within the same cohort, making the study design efficient for investigating exposure-outcome associations. By selecting a representative sample of the base population, the distribution of exposure factors and cumulative risk can be estimated, which is needed for risk ratio estimation. 

For example, in a study investigating the effect of hypertension on acute myocardial infarction (MI) in a base population of 15,000 subjects, 2,000 subjects can be randomly selected as the control group at baseline to measure blood pressure, rather than measuring blood pressure for all 15,000 subjects. This saves considerable research resources, and the same control group can be used to investigate risk factors for other cardiovascular diseases. The robust logistic regression model can be used to estimate risk ratios, and the weighted Cox proportional hazards regression model can be used to estimate hazard ratios while considering the overlap between the case group and the control group (Chapter 7). 

## 5.2 Measures of Exposure Effect

The case-control study design is a versatile approach to estimate associations between exposure and outcome. The association measure depends on the sampling strategy of controls and can be expressed as odds ratio (OR), risk ratio (RR), incidence rate ratio (IR), or hazard ratio (HR). Studies employing non-population-based case-control designs should report odds ratios, whereas case-subcohort and nested case-control studies should report risk ratios, hazard ratios, and/or incidence rate ratios. To illustrate how these association measures can be obtained from a non-population-based case-control study and a population-based case-control study, we present a hypothetical cohort study. 

## Example 5.1

Consider a hypothetical cohort study with a follow-up period of 3 years among 11,000 individuals at risk of acute myocardial infarction (MI), of which 5,000 have hypertension and 6,000 have normal blood pressure (Table 5.1). This implies that 45.5% (5,000/11,000) of the base population is exposed to hypertension. During the 3-year follow-up, 600 individuals in the exposed group experienced at least one episode of MI, compared to 200 individuals in the unexposed group. The estimated RR for MI is 3.60, indicating that individuals with hypertension have a 3.6 times higher risk of MI than individuals without hypertension. The estimated disease odds ratio (DOR) is 3.95, indicating that the odds of developing MI are 3.95 times higher for individuals with hypertension compared to those without hypertension. 


TABLE 5.1



Estimated Cumulative Risk and Risk Ratio in a Hypothetical Cohort Study


<table><tr><td></td><td>MI</td><td>Non-MI</td><td>Total</td><td>Risk</td><td>RR</td><td>DOR</td></tr><tr><td>Hypertension</td><td>600</td><td>4,400</td><td>5,000</td><td>0.12</td><td>3.60</td><td>3.95</td></tr><tr><td>Normal</td><td>200</td><td>5,800</td><td>6,000</td><td>0.03</td><td></td><td></td></tr></table>


TABLE 5.2 Estimated Incident Rate and Incident Rate Ratio in a Hypothetical Cohort Study


<table><tr><td></td><td>MI</td><td>Person-Years</td><td>Rate</td><td>IR</td></tr><tr><td>Hypertension</td><td>600</td><td>14,100</td><td>0.04</td><td>3.77</td></tr><tr><td>Normal</td><td>200</td><td>17,700</td><td>0.01</td><td></td></tr></table>

From this cohort, we also collect data on the person-years in the exposed and unexposed groups, which allows us to calculate the incidence rates for the two comparison groups, as well as the incidence rate ratio (IR) (Table 5.2). 

## 5.2.1 Traditional Case-Control Studies

Traditional case-case studies use the cumulative sampling method to select controls. In this approach, all controls are chosen at the end of the observation period during which the cases are identified. The OR estimated in traditional case-control studies is the exposure odds ratio (EOR), which is mathematically equivalent to the DOR (Cornfield 1951b). However, the EOR can only estimate the RR under the rare-disease condition (Greenland and Thomas 1982). Assuming a sampling fraction f of both exposed and unexposed noncases is chosen for controls, the layout of the 2-by-2 table is presented in Table 5.3. 

The exposure odds ratio (EOR) is calculated by dividing the odds of exposure among cases by the odds of exposure among controls. The odds of exposure among cases and controls and EOR can be estimated as: 

$$
O d d s _ {\mathrm{exp} | c a s e s} = A _ {1} / A _ {0}
$$

$$
O d d s _ {\mathrm{exp} | c o n t r o l s} = C _ {1} / C _ {0}
$$

and 

$$
E O R = \frac {\text { odds } _ {\text { exp } | \text { cases }}}{\text { odds } _ {\text { exp } | \text { controls }}} = \frac {A _ {1} / A _ {0}}{C _ {1} / C _ {0}} = \frac {A _ {1} \times C _ {0}}{A _ {0} \times C _ {1}} \tag {5.1}
$$

The DOR is the ratio of the odds of developing the disease in exposed subjects divided by the odds in unexposed subjected. The odds of disease among exposed and unexposed subjects, and the DOR can be estimated as: 

$$
O d d s _ {\text { cases } | e x p o s e d} = A _ {1} / C _ {1}
$$

$$
O d d s _ {\text { cases } | \text { unexposed }} = A _ {0} / C _ {0}
$$

$$
D O R = \frac {\text { odds } _ {\text { case } | \text { exposed }}}{\text { odds } _ {\text { case } | \text { unexposed }}} = \frac {A _ {1} / C _ {1}}{A _ {0} / C _ {0}} = \frac {A _ {1} \times C _ {0}}{A _ {0} \times C _ {1}} \tag {5.2}
$$


TABLE 5.3 Layout of 2-by-2 Table for a Case-Control Study


<table><tr><td></td><td>Cases</td><td>Controls</td></tr><tr><td>Exposed</td><td><eq>A_{1}</eq></td><td><eq>C_{1}</eq></td></tr><tr><td>Unexposed</td><td><eq>A_{0}</eq></td><td><eq>C_{0}</eq></td></tr></table>

Mathematically, the EOR is equal to the DOR. 

$$
E O R = \frac {\text { odds } _ {\text { exp } | \text { cases }}}{\text { odds } _ {\text { exp } | \text { controls }}} = \frac {A _ {1} / A _ {0}}{C _ {1} / C _ {0}} = \frac {A _ {1} / C _ {1}}{A _ {0} / C _ {0}} = D O R \tag {5.3}
$$

If the sampling fraction (f) of the exposed controls and unexposed controls is the same and the disease is rare, the OR is a good approximation to the RR. 

$$
E O R = \frac {A _ {1} \times C _ {0}}{A _ {0} \times C _ {1}} = \frac {A _ {1} / C _ {1}}{A _ {0} / C _ {0}} = \frac {A _ {1} / f (N _ {1} - A _ {1})}{A _ {0} / f (N _ {0} - A _ {0})} = \frac {A _ {1} / (N _ {1} - A _ {1})}{A _ {0} / (N _ {0} - A _ {0})} \tag {5.4}
$$

where $N _ { 1 }$ is the number of exposed subjects, and $N _ { 0 }$ is the number of unexposed subjects in the base population. If the disease is rare, $N _ { 1 } - A _ { 1 }$ would be close to $N _ { 1 } ,$ and $N _ { 0 } - A _ { 0 }$ would be close to $N _ { 0 } .$ . That is, if the risk proportion in each exposure group during the risk period is low, say less than 10%, the odds ratio is approximate to the risk ratio. 

## Example 5.2

For example, let’s consider a scenario where we conduct a case-control study at the end of a 3-year follow-up cohort study, as presented in Table 5.1. In this case-control study, we randomly select 50% of the cases and 25% of the non-cases, as shown in Table 5.4. For the purposes of illustration, we assume that there are no losses to follow-up in the cohort study, and there are no competing risks for the outcome event of interest. 

The EOR and DOR are equal in a case-control study where the selection of cases and controls is independent of exposure, as the sampling fractions apply equally to both exposed and unexposed groups. Compared to cohort studies, case-control studies are substantially more efficient due to their reduced sample size. However, the reduced sample size in casecontrol studies leads to larger estimated variances for the OR, resulting in wider confidence intervals. In the example provided, the 95% CI for EOR (3.11–5.02) estimated in the case-control study is wider than that in the cohort study (3.35–4.66) due to the smaller sample size. In this example, EOR cannot be used to estimate RR as the disease risk in the exposed group is 12%, although it is only 3% in the unexposed group (Table 5.1). 

Under the cumulating sampling method, the proportion of exposed controls in a casecontrol study usually differs from that in the base population that generates cases because non-cases do not represent the base population. As shown in Table 5.4, the exposure distribution among the non-case controls (43.1%, 1,100/2,550) differs from that in the base population (45.5%, 5,000/11,000). Therefore, even if controls are randomly sampled from the non-cases in the cohort, the exposure distribution in the control group may not be the same as in the base population. This difference can compromise the validity of using controls in a case-control study and result in an odds ratio that does not accurately reflect the true risk ratio, particularly when the exposure factor is a known risk factor and the disease under study is prevalent. In such scenario, the proportion of exposed individuals among non-case controls could be lower than in the base population, thereby skewing the odds ratio away from the actual risk ratio. 


TABLE 5.4



A Hypothetical Case-Control Study Conducted at the End of a Cohort Study


<table><tr><td></td><td>MI</td><td>Non-MI</td><td>EOR</td></tr><tr><td>Hypertension</td><td>300 (0.5*600)</td><td>1,100 (0.25*4,400)</td><td>3.95</td></tr><tr><td>Normal</td><td>100 (0.5*200)</td><td>1,450 (0.25*5,800)</td><td></td></tr></table>


TABLE 5.5



Numerical Difference between Risk and Odds


<table><tr><td>Risk</td><td>Odds</td></tr><tr><td>0.00</td><td>0.00</td></tr><tr><td>0.02</td><td>0.02</td></tr><tr><td>0.05</td><td>0.05</td></tr><tr><td>0.06</td><td>0.06</td></tr><tr><td>0.10</td><td>0.11</td></tr><tr><td>0.12</td><td>0.14</td></tr><tr><td>0.15</td><td>0.18</td></tr><tr><td>0.20</td><td>0.25</td></tr><tr><td>0.25</td><td>0.33</td></tr><tr><td>0.50</td><td>1.00</td></tr></table>

Odds are defined as the ratio of the probability of the event of interest to the probability of the nonevent. In other words, odds can be expressed as a function of probability, which can be incidence probability or risk. The equation for converting incidence risk to odds is given by Equation 5.5: 

$$
\text { Incidence   risk   odds } = \frac {\text { risk }}{1 - \text { risk }} \tag {5.5}
$$

As demonstrated in Table 5.5, when the risk is less than or equal to 0.1, the odds are almost the same as the risk. However, when the risk exceeds 0.1, the difference between risks and odds becomes significant. 

## 5.2.2 Matched Case-Control Studies

In matched case-control studies, the odds ratio is estimated based on the number of exposure discordant pairs. For example, in a study where each case is matched to one control, and there is one matching variable, the exposure is binary (exposed vs. unexposed), and there are four possible types of pairs (Table 5.6). These pairs include (1) those where both the case and control are exposed (Cell A), (2) both are unexposed (Cell D), (3) the case is exposed, but not the control (Cell B), and (4) the control is exposed, but not the case (Cell C). To estimate the OR, the number of dis-concordant pairs in which the case, but not the matched control, is exposed (Cell B) is divided by the number of dis-concordant pairs in which the control, but not the case, is exposed (Cell C) (Chapter 6 provides more details on this topic). 

$$
\mathrm{OR} = \mathrm{B} _ {+ -} / \mathrm{C} _ {+ -} \tag {5.6}
$$


TABLE 5.6



Four Types of Pairs in a Matched Case-Control Study


<table><tr><td colspan="2">Case-Control Pairs</td></tr><tr><td>A: + +</td><td>B: + -</td></tr><tr><td>C: + -</td><td>D: - -</td></tr><tr><td>Exposed: +</td><td></td></tr><tr><td>Unexposed: -</td><td></td></tr></table>

## 5.2.3 Case-Subcohort Studies

As described in Section 5.1.4, the EOR estimated from a case-subcohort study allows for the direct estimation of the RR without the need for the rare-disease assumption. To illustrate, consider a hypothetical case-subcohort study conducted from the same base population as the cohort study presented in Table 5.1. The case group consists of all incident MI cases, and 4,400 controls are randomly selected from the 11,000 base population at the baseline (Table 5.7). 

To ensure that the controls selected in the case-subcohort study are representative of the base population, the principle of the base population is followed, and the proportion of exposed controls in the case-subcohort study is kept the same as that in the base population (45.5%). This proportion is also 45.5% (2,000/4,400) in the case-subcohort study. Thus, the exposure distribution being estimated in the case-subcohort study is among the number of subjects in the base population or entire cohort, rather than among their person-time experience. 

To adhere to the principle of independence, the selection of controls should not be influenced by their exposure status. This means that the sampling fraction (f) used to select controls should be the same regardless of their level of exposure. The two sampling fractions, $, f ,$ should be identical: the fraction of unexposed controls $\left( \mathbf { C } _ { 0 } \right)$ to the number of unexposed subjects $\left( \operatorname { E } _ { 0 } \right)$ in the base population and the fraction of exposed controls $( \mathsf { C } _ { 1 } )$ to the total number of exposed subjects (E1) in the base population (as shown in Table 5.8). 

$$
f = C _ {0} / E _ {0} = C _ {1} / E _ {1} \tag {5.7}
$$

In the above example, the sampling fraction f of the unexposed controls to the unexposed subjects in the base population is 0.4 (2,400/6,000), which is the same as the fraction of the exposed controls to the total exposed subjects in the base population (2,000/5,000). The two principles of control selection make the OR estimated from a case-subcohort study a good approximation to the RR estimated from the original cohort study that uses the same base population. 


TABLE 5.7



Cases and Controls in a Hypothetical Case-Subcohort Study


<table><tr><td></td><td>Cases</td><td>Controls</td></tr><tr><td>Hypertension</td><td>600</td><td>2,000</td></tr><tr><td>Normal</td><td>200</td><td>2,400</td></tr><tr><td>Total</td><td>800</td><td>4,400</td></tr></table>


TABLE 5.8 Scheme of a Case-Control Study


<table><tr><td></td><td>Baseline</td><td>Controls</td><td>Cases</td></tr><tr><td>Exposed</td><td><eq>E_{1}</eq></td><td><eq>C_{1}</eq></td><td><eq>A_{1}</eq></td></tr><tr><td>Unexposed</td><td><eq>E_{0}</eq></td><td><eq>C_{0}</eq></td><td><eq>A_{0}</eq></td></tr></table>

$$
O R = \frac {A _ {1} \times C _ {0}}{A _ {0} \times C _ {1}} = \frac {A _ {1} / C _ {1}}{A _ {0} / C _ {0}} = \frac {A _ {1} / \left[ \left(C _ {1} / E _ {1}\right) \times E _ {1} \right]}{A _ {0} / \left[ \left(C _ {0} / E _ {0}\right) \times E _ {0} \right]} = \frac {A _ {1} / \left(f E _ {1}\right)}{A _ {0} / \left(f E _ {0}\right)} = \frac {A _ {1} / E _ {1}}{A _ {0} / E _ {0}} = R R \tag {5.8}
$$

where $A _ { 1 }$ is the exposed cases and $A _ { 0 }$ is the unexposed cases. The estimated OR from this case-control study is 3.6 $( 6 0 0 \times 2 , 4 0 0 / 2 0 0 \times 2 , 0 0 0 )$ , which is the same as the value of the RR estimated in the cohort study. 

To save time and costs, we can randomly select cases from all cases generated from a base population. The key requirement for case selection is that sampling of cases should be independent of the exposure under study. In other words, the sampling fraction of cases $\hat { ( f ) }$ should be the same for different exposure statuses (e.g., exposed and unexposed): 

$$
f _ {c} = A _ {0} / E _ {0} = A _ {1} / E _ {1} \tag {5.9}
$$

The OR can then be calculated using the following equation: 

$$
O R = \frac {A _ {1} \times C _ {0}}{A _ {0} \times C _ {1}} = \frac {A _ {1} / C _ {1}}{A _ {0} / C _ {0}} = \frac {f _ {c} A _ {1} / (f E _ {1})}{f _ {c} A _ {0} / (f E _ {0})} = \frac {A _ {1} / E _ {1}}{A _ {0} / E _ {0}} = R R \tag {5.10}
$$

where $\mathbf { A } _ { 1 }$ and $\mathbf { A } _ { 0 }$ represent exposed and unexposed cases, respectively, in the base population. Thus, assuming no loss to follow-up in the cohort and no competing risk for the outcome event of interest, risk ratios can be directly estimated from the nested case-subcohort data. However, assuming no loss to follow-up and no competing risk is usually unrealistic, especially in the situation where the duration of follow-up is long. To address the violation of these assumptions, we can use analysis that considers time to event if the event of failure times is available. Cox proportional hazard regression with the weighted version of the partial-likelihood (pseudo-likelihood) can be applied to case-subcohort data to estimate hazard ratios (see Section 7.2.1). 

## 5.2.4 Nested Case-Control Studies

To estimate the IR from the OR in nested case-control studies, the sampling fractions must be the same for the exposed and unexposed controls. That is, the fraction of exposed controls $\left( \mathsf { C } _ { 1 } \right)$ to the amount of exposed person-time $\left( \mathrm { P T } _ { 1 } \right)$ must be equal to the fraction of unexposed controls $\left( \mathsf { C } _ { 0 } \right)$ to the amount of unexposed person-time $( \bar { \mathrm { P T } } _ { 0 } ) .$ , assuming no sampling error (Table 5.9). 

$$
f = C _ {0} / P T _ {0} = C _ {1} / P T _ {1} \tag {5.11}
$$


TABLE 5.9



Scheme of a Nested Case-Control Study


<table><tr><td></td><td>Person-Time</td><td>Controls</td><td>Cases</td></tr><tr><td>Exposed</td><td><eq>PT_{1}</eq></td><td><eq>C_{1}</eq></td><td><eq>A_{1}</eq></td></tr><tr><td>Unexposed</td><td><eq>PT_{0}</eq></td><td><eq>C_{0}</eq></td><td><eq>A_{0}</eq></td></tr></table>

Under this sampling condition, the estimated OR equals IR: 

$$
O R = \frac {A _ {1} \times C _ {0}}{A _ {0} \times C _ {1}} = \frac {A _ {1} / C _ {1}}{A _ {0} / C _ {0}} = \frac {A _ {1} / \left[ \left(C _ {1} / P T _ {1}\right) \times P T _ {1} \right]}{A _ {0} / \left[ \left(C _ {0} / P T _ {0}\right) \times P T _ {0} \right]} = \frac {A _ {1} / (f P T _ {1})}{A _ {0} / (f P T _ {0})} = \frac {A _ {1} / P T _ {1}}{A _ {0} / P T _ {0}} = I R \tag {5.12}
$$

where $A _ { 1 }$ is the exposed cases and $A _ { 0 }$ is the unexposed cases. Again, to keep the two ratios equal, the selection of controls (sampling of controls) must be independent of exposure. 

## Example 5.3

Suppose a nested case-control study is conducted using the same base population as presented in Table 5.2, matching 3 controls from a risk set to a case. To estimate the IR without bias, it is essential to keep the two sampling fractions f identical (Table 5.10). The fraction of unexposed controls to unexposed person-years is 0.08 (1,064/14,100), and the fraction of exposed controls to exposed person-years is also 0.08 (1,336/17,700). The resulting OR is 3.77 (600×1,336/200×1,064), which is equivalent to the estimated IR in the cohort study. 


TABLE 5.10



A Nested Case-Control Study with Two Controls Matched to One Case


<table><tr><td></td><td>Cases</td><td>Control</td></tr><tr><td>Hypertension</td><td>600</td><td>1,064</td></tr><tr><td>Normal</td><td>200</td><td>1,336</td></tr><tr><td>Total</td><td>800</td><td>2,400</td></tr></table>

Again, the OR estimated in a nested case-control study is a good approximation to the IR, without the rare-disease assumption. 

In summary, the case-control design is an efficient alternative to the cohort study design for investigating exposure-disease associations. When conducted properly, the EOR obtained from a population-based case-control study is equivalent to the IR or RR estimated in a cohort study, without the rare disease assumption. However, in nonpopulation-based case-control studies, the rare disease assumption is required at each level of exposure when using the OR to estimate the RR. Despite this limitation, the OR has its own important role in epidemiologic studies and can be directly estimated by a logistic regression model, which is one of the most widely used methods for multivariate analysis of epidemiologic data. 

## 5.3 Basics of Logistic Regression Analysis for Traditional Case-Control Study

In the following sections, we will use the term “case-control study” to refer to the traditional case-control study, and the term “logistic regression model” to refer specifically to the logistic regression model that utilizes the unconditional maximum likelihood estimation (MLE). 

## 5.3.1 Simple Binary Logistic Regression Model

Neither the linear nor exponential risk regression models discussed in Chapter 2 are suitable for analyzing data collected from traditional case-control studies. This is because, in the absence of external information, case-control data do not permit the estimation of risks. However, the logistic regression model can be applied to estimate odds and odds ratio without the need for such external information. When the outcome variable has two categories or levels, such as having hypertension versus having no hypertension, the corresponding model is referred to as the “binary logistic regression model.” On the other hand, when the outcome variable has more than two categories, the model is either referred to as the “multinomial logistic regression model” or the “ordinal logistic regression model,” both of which will be discussed in Sections 5.5 and 5.6. 

The logistic regression model estimates the odds ratio, which quantifies the association between the outcome and exposure variables. As explained in Section 5.2.1, the EOR and DOR are mathematically equivalent, which is why logistic regression models are used to regress disease against exposures in case-control studies, even though the odds of exposure are actually obtained from cases and controls in a case-control study. This is a significant advantage of the logit link function, making the logistic regression model popular in epidemiologic studies (Agresti 2012, Cornfield 1951a). When there is only one explanatory variable, x, the simple logistic regression model can be expressed as: 

$$
\log \left(o d d s _ {y | x}\right) = \beta_ {0} + \beta_ {1} x, \tag {5.13}
$$

or equivalently, 

$$
\log \left(o d d s _ {y | x}\right) = \log \left(\frac {p}{1 - p}\right) = \beta_ {0} + \beta_ {1} x, \tag {5.14}
$$

where $\beta _ { 0 }$ and $\beta _ { 1 }$ are unknown parameters that will be estimated from the data. The logistic regression model is transformed into the logistic function: 

$$
p (y = 1 | x) = \frac {e ^ {\left(\beta_ {0} + \beta_ {1} x\right)}}{1 + e ^ {\left(\beta_ {0} + \beta_ {1} x\right)}}, \tag {5.15}
$$

which models the probability of developing a disease of interest as a function of the exposure variable x, where x takes on the value 1 for exposed individuals and 0 for unexposed ones. The logistic function is derived from the transformation of the probability p of the outcome into the log odds, known as the logit function, which is why it is called logistic regression. Figure 5.5 presents the two graphs of the simple logistic regression model and the logistic function. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/28ed4726e15be1007834252b919148bf063f13c6acab84860c306e0f331a62fc.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/014f0ed2bac8cbdd06df7e93bbc1edcc5fd3419f67205974e40bc374446ba2e2.jpg)



FIGURE 5.5 Logistic regression model (left-handed) and logistic function (right-handed).


Mathematically, the logistic function $p { \big ( } y = 1 | x { \big ) }$ always ranges between 0 and 1, regardless of the value of x (as illustrated in Figure 5.5, right-hand panel). This property makes the logistic model particularly popular in epidemiologic research because the probability or risk of an individual having a disease, such as hypertension, for example, can only range between 0 and 1. This is not necessarily true for other models, such as the linear regression model. However, while the logistic regression model can estimate the risk of an individual getting a disease with specific values of independent variables for cohort studies, it can only estimate odds ratios for case-control studies due to the nature of the case-control study design. As previously mentioned, a traditional case-control study can only estimate the proportions of being exposed among cases and controls, not the proportions of individuals who got the disease among exposed and unexposed individuals. 

The logistic regression model assumes that the relationship between the log odds or logit of $p$ and x is linear. The coefficient $\beta _ { 1 }$ represents the change in the logit (or log scale) that results from a unit change in x (Figure 5.5, left panel). However, $\beta _ { 0 }$ is a nuisance parameter in case-control studies, as it is not possible to estimate the baseline risk when $x = 0$ in these studies. This is because the estimate of the baseline risk in case-control studies depends not only on the baseline risk of disease in the population but also on the often unknown ratio of sampling probabilities (or sampling fractions) of cases and controls in the base population (Clayton and Hills 1993). The logistic regression for the base population is expressed as 

$$
\log \left(o d d s _ {y | x} \mid b a s e\right) = \beta_ {0} + \beta_ {1} x.
$$

For a case-control study from that base population, the model is: 

$$
\log \left(\text { odds } _ {y | x} \mid \text { case   -   control   study }\right) = \log \left(\text { odds } _ {y | x} \mid \text { base }\right) + \log (\text { ratio   of   sampling }) \tag {5.16}
$$

$$
= \Big [ \log \big (r a t i o o f s a m p l i n g \big) + \beta_ {0} \Big ] + \beta_ {1} x.
$$

Here, the ratio of sampling is the selection probability of cases from all cases in the base population divided by the selection probability of controls from the same base population. The estimate of $\beta _ { 0 }$ is required by the model, but $\beta _ { 0 }$ itself has no particular interest in casecontrol studies. 

The OR can be estimated directly from the logistic regression model. For instance, in a study where the exposure variable is depression status with two levels (1: depressed and 0: non-depressed) and the outcome variable is hypertension, the logistic regression equation would be expressed as follows: 

$$
\text { Log   odds   of   hypertension } (y \mid x = 1) = \beta_ {0} + \beta_ {1} \times x \tag {5.17}
$$

When x = 0 (non-depressed), 

$$
\text { Log   odds   of   hypertension } = \beta_ {0} + \beta_ {1} \times 0 = \beta_ {0}
$$

When x = 1 (depressed), 

$$
\text { Log   odds   of   hypertension } = \beta_ {0} + \beta_ {1} \times 1 = \beta_ {0} + \beta_ {1}
$$

$$
O R = \frac {\text { odds } _ {(y | x = 1)}}{\text { odds } _ {(y | x = 0)}}
$$

$$
\begin{array}{l} \log (\mathrm{OR}) = \log \left[ \left(\operatorname{odds} (y | x = 1)\right) / \left(\operatorname{odds} (y | x = 0)\right) \right] \\ = \log (\operatorname{odds} (y \mid x = 1)) - \log (\operatorname{odds} (y \mid x = 0)) \\ = \left(\beta_ {0} + \beta_ {1}\right) - \left(\beta_ {0}\right) = \beta_ {1} \\ \end{array}
$$

$$
\mathrm{OR} = \text { exponentiation } (\exp) \text { of } \beta_ {1} \tag {5.18}
$$

If x is a continuous variable (say, age) and we have two exposure levels separated by one unit of the scale of x, say, x = x and x = x + 1, 

$$
\begin{array}{l} \operatorname{Log} (\mathrm{OR}) = \log \left[ \left(\operatorname{odds} (y \mid x = x + 1)\right) / \left(\operatorname{odds} (y \mid x = x)\right) \right] \\ = \left[ \beta_ {0} + \beta_ {1} ^ {*} (x + 1) \right] - \left[ \beta_ {0} + \beta_ {1} x \right] = \beta_ {1} \\ \end{array}
$$

$$
\mathrm{OR} = \exp \left(\beta_ {1}\right)
$$

The OR estimated from the data in this 2-by-2 table is $( 2 1 4 \times 2 , 5 7 9 ) / \left( 7 8 6 \times 4 2 1 \right) = 1 . 6 7 ,$ and 95%CI is 1.39–2.00 (Table 5.11). 


TABLE 5.11



Number of Cases and Controls in the Case-Control Study


<table><tr><td></td><td>Cases</td><td>Controls</td></tr><tr><td>Depressed</td><td>214</td><td>421</td></tr><tr><td>Non-depressed</td><td>786</td><td>2,579</td></tr></table>

The same OR and 95%CI can be estimated from a logistic regression model invoked in this SAS syntax: 

```txt
PROC logistic data=case_control;
class dep (ref='0')/param=ref;
model HPD (event='1')=dep;
RUN; 
```

The exposure is depression (dep) and the outcome is hypertension (HPD). The output of the SAS syntax is presented in Output 5.1. 


SAS Output 5.1 Analysis of maximum likelihood estimates and odds ratio estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>-1.1882</td><td>0.0407</td><td>850.4867</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.5118</td><td>0.0933</td><td>30.0840</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>1.668</td><td>1.389</td><td>2.003</td></tr></table>

$\mathrm { L o g ~ o d d s ~ o f ~ h y p e r t e n s i o n } = \beta _ { 0 } + \beta ^ { * } x = - 1 . 1 8 8 2 + 0 . 5 1 1 8 ^ { * } \mathrm { d e p }$ 

$$
\mathrm{OR} = \exp (\beta) = \exp (0. 5 1 1 8) = 1. 6 6 8
$$

The regression coefficient of β can be interpreted as the estimated increase in log odds of hypertension for a unit increase from 0 to 1 in depression status is 0.5118. The OR of 1.67 can be interpreted as the predicted odds of hypertension for depressed subjects is 1.67 times the odds for non-depressed subjects. 

## 5.3.2 Maximum Likelihood Estimation

Chapter 1 provides an overview of MLE in generalized regression models (Section 1.9.2). The logistic regression model employs MLE to estimate parameters, or regression coefficients, in the mathematical model. Two MLE methods estimate parameters in a logistic model: unconditional MLE and conditional MLE (Breslow and Day 1980, Kleinbaum and Klein 2010). The appropriate algorithm must be selected based on the data type. The unconditional MLE is preferred when the number of parameters (intercept and regression coefficients) in a logistic regression model is small relative to the sample size, while the conditional one is preferred when the number of parameters is large relative to the sample size. When using the logistic regression model to analyze data collected from case-control studies, conditional MLE is preferred when matching has been done. This is because the model includes a large number of dummy variables required to indicate the matching pairs or strata in addition to the number of regression coefficients (see Chapter 6). Unconditional MLE is preferred when matching has not been done and the total number of coefficients in the model is small relative to the number of subjects. Therefore, the unconditional maximum likelihood estimator (MLE) is often used in traditional case-control studies, whereas the conditional MLE is applied in matched case-control studies. Using the unconditional 

MLE in a situation where the conditional MLE should be used can lead to overestimation of odds ratios of interest (Breslow and Day 1980). 

## 5.3.3 Likelihood Ratio Test and Wald Test

The likelihood ratio test and Wald test are commonly used to compare two or more models in terms of model fit and predictability. These tests help determine if one model improves the fit or predictive ability compared to another (Kleinbaum and Klein 2010). However, as discussed in Chapter 1, it is important to note that these tests are not suitable for assessing confounding. We present an example case-control study to demonstrate the application of the likelihood ratio test and Wald test in logistic regression analysis. The study aims to explore the relationship between depression (dep) and hypertension (HPD), while also considering the variable of sex. 

We constructed three logistic regression models for this purpose: 

Model 1: log(odds of HPD|dep) = α + β1x(dep) 

Model 2: log(odds of HPD|dep, sex) = α + β1x(dep) + β2z(sex) 

Model 3: log(odds of HPD|dep, sex, dep*sex) = α + β1x(dep) + β2z(sex) + β3z(dep*sex) 

Let $L _ { 1 } , L _ { 2 } ,$ and $L _ { 3 }$ represent the maximum likelihood values obtained by fitting models 1, 2, and 3, respectively. As the measure of probability, the likelihood values range from 0 to 1, a higher value indicates a better model fit, similar to $R ^ { 2 }$ used in the linear regression model. Because the more parameters a model has, the better it fits the data, it follows that: 

$$
L _ {1} \leq L _ {2} \leq L _ {3} \tag {5.19}
$$

Taking the natural logarithm of the likelihoods, we get ln $L _ { 1 } \leq \mathrm { l n } L _ { 2 } \leq \mathrm { l n } L _ { 3 } .$ As the logarithm of any number less than 1 is negative, we multiply each of the lnLs by −2, resulting in: 

$$
- 2 \ln L _ {1} \geq - 2 \ln L _ {2} \geq - 2 \ln L _ {3}. \tag {5.20}
$$

The statistic $- 2 \mathrm { l n } L _ { 1 }$ (negative two times the Log-Likelihood) is called the log-likelihood statistic for model 1 and is used in the likelihood ratio test to test hypotheses about the parameters. 

The likelihood ratio test compares the log-likelihood statistics (−2lnL) of two nested models to determine whether the addition of a variable improves the model fit. The likelihood ratio is calculated as the difference between the log-likelihood statistics of the two models, and it follows a Chi-square distribution with degrees of freedom (df) equal to the difference in the number of parameters between the two models. 

$$
\text { Likelihood   ratio } = - 2 \ln L _ {1} - (- 2 \ln L _ {2}) = - 2 \ln (L _ {1} / L _ {2}). \tag {5.21}
$$

The null hypothesis is that the coefficient $( \beta )$ of the variable being tested is equal to $0 ,$ and the alternative hypothesis is that it is not equal to 0. The likelihood ratio statistic can take values between 0 and positive infinity, where a value of 0 indicates the null hypothesis is true $( \beta = 0 )$ , and a positive infinity indicates the coefficient is away from the null $( \beta \neq 0 )$ . This test allows us to determine whether the model that includes a particular variable has better predictability for the outcome variable than the model without that variable. However, it only tests the statistical association between a covariate and the outcome and does not indicate the association between the covariate and the exposure variable. Therefore, it cannot be used to assess confounding bias, which is a systematic error, not a random error. The reason we added the variable of sex to model 2 is that we wanted to estimate the adjusted odds ratio, which measures the depression-hypertension association by controlling for confounding bias caused by sex. 

Let’s return to the three nested models. If the variable of sex makes a large contribution to the prediction of the outcome variable (hypertension, HPD), the maximized likelihood value $( L _ { 2 } )$ should be much greater than $L _ { \mathrm { 1 } } ,$ so: 

$$
L _ {1} / L _ {2} \approx 0 \text { and } L n (L _ {1} / L _ {2}) \approx L n (0) \approx - \infty
$$

$$
\text { Likelihood   ratio } = - 2 \ln L _ {1} - (- 2 \ln L _ {2}) = - 2 \ln (L _ {1} / L _ {2}) \approx \infty
$$

Therefore, the coefficient of $z _ { ( \mathrm { s e x ) } }$ is highly statistically significant. However, if $z _ { ( \mathrm { s e x } ) }$ makes no contribution, then $L _ { 2 } \approx L _ { 1 }$ and $L _ { 1 } / L _ { 2 } \approx 1$ , thus: 

$$
\text { Likelihood   ratio } = - 2 \ln L _ {1} - (- 2 \ln L _ {2}) = - 2 \ln (L _ {1} / L _ {2}) = - 2 \times 0 = 0
$$

In this case, the coefficient of $\mathbf { \boldsymbol { Z } } _ { ( \mathrm { s e x } ) }$ is not statistically significant. 

## Example 5.4

We use the likelihood ratio test to test the null hypothesis of the three nested models: 

Model 1: log(odds of $\mathrm { H P D } | \mathrm { d e p } ) = \alpha + \beta _ { 1 } x _ { \mathrm { ( d e p ) } }$ 

Model 2: log(odds of HPD|dep, $\mathrm { 3 e x } ) = \alpha + \bar { \beta } _ { 1 } x _ { \mathrm { ( d e p ) } } + \beta _ { 2 } z _ { \mathrm { ( s e x ) } }$ 

Model 3: log(odds of HPD|dep, sex, dep*sex) $= \alpha + \beta _ { 1 } x _ { \mathrm { ( d e p ) } } + \beta _ { 2 } z _ { \mathrm { ( s e x ) } } + \beta _ { 3 } z _ { \mathrm { ( d e p ^ { * } s e x ) } }$ 

We first compare model 1 and model 2: 

$$
\mathrm{H} _ {0}: \beta_ {2} = 0 (\text { if } \mathrm{H} _ {0} \text { is   true, then } L _ {1} = L _ {2}), \quad \mathrm{H} _ {1}: \beta_ {2} \neq 0
$$

$$
\chi^ {2} = - 2 \ln L _ {1} - (- 2 \ln L _ {2}) = 4 4 6 9. 7 7 6 - 4 4 6 4. 3 4 4 = 5. 4 3 d f = 2 - 1 = 1, p = 0. 0 2
$$

We then compare model 2 and model 3: 

$$
\mathrm{H} _ {0} \colon \beta_ {3} = 0, \quad \mathrm{H} _ {1} \colon \beta_ {3} \neq 0
$$

$$
\chi^ {2} = - 2 \ln L _ {2} - (- 2 \ln L _ {3}) = 4 4 6 4. 3 4 4 - 4 4 6 3. 5 5 1 = 0. 7 9 3 \quad \mathrm{df} = 3 - 2 = 1, p = 0. 3 7
$$

The results of the two comparisons indicate that model 2 fits the data better than model 1, and model 3 does not add additional goodness of fit over model 2. That is, the addition of the product term does not improve model fitting. Note here that the better model fit of model 2 compared to model 1 does not necessarily mean that sex confounds the association between depression and hypertension, but rather indicates that the addition of sex makes model 2 fit the data better. In other words, SEX is a predicting variable for HPD. 

The following SAS syntax is used to estimate log-likelihood statistics (−2lnL) and invoke the likelihood ratio test: 

```txt
/***MODEL 1***/
PROC logistic data=case_control;
    model HPD (event='1')=dep;
RUN;

/***MODEL 2***/
PROC logistic data=case_control;
    model HPD (event='1')= dep sex;
RUN;

/***MODEL 3***/
PROC logistic data=case_control;
    model HPD (event='1')= dep|sex;
RUN;

/***LIKELIHOOD RATIO TEST: COMPARE MODEL 2 AND MODEL 3***/
DATA test;
    small_model = 4464.344;
    large_model = 4463.551;
    df = 1;
    p_value = 1 - probchi(small_model-large_model, df);
RUN;

/*** LIST OF P-VAUE OF LIKELIHOOD RATIO TEST*/
PROC freq; tables p_value; RUN; 
```

The second method used to conduct a hypothesis test is the Wald test. The Wald test statistic is calculated as the ratio of the maximum likelihood estimate of the regression coefficient of interest β to an estimate of its standard error Sβ. 

$$
Z = \frac {\beta}{s _ {\beta}} \tag {5.22}
$$

This test statistic has an approximate normal distribution with mean 0 and standard deviation 1 in large samples, and the square of this Z statistic is approximately a Chisquare statistic with one degree of freedom. 

## Example 5.5

SAS Output 5.2 lists the results of the analysis of maximum likelihood estimates, which are estimated by the SAS syntax of model 2. 


SAS Output 5.2 Maximum likelihood estimates


<table><tr><td colspan="6">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-1.1180</td><td>0.0502</td><td>495.0461</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4878</td><td>0.0939</td><td>26.9913</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>-0.1787</td><td>0.0770</td><td>5.3848</td><td>0.0203</td></tr></table>

The Z statistics for the variable of depression is 0.4878/0.0939 = 5.19, and the square of this Z value is 26.99 (Output 5.2). 

The likelihood ratio statistic and its corresponding squared Wald statistic yield approximately the same value in large samples. In small to moderate samples, the two statistics may give different results. In this case, the likelihood ratio statistic is more accurate than the Wald statistic (Cohen et al. 2003). For this reason, it is recommended that the result of the likelihood ratio test should be reported when the two tests generate different results. 

SAS PROC GENMOD syntax generates both the Wald statistics and likelihood ratio statistics for individual coefficients. 

```sql
PROC genmod data=case_control;
model HPD (event='1')=dep sex /dist=binomial type3;
RUN; 
```

There are slight differences between the two tests. The Wald Chi-Square statistics is 26.96 for the variable of depression, and the likelihood ratio statistics is 26.0 (Output 5.3). 


SAS Output 5.3 Wald Chi-square test and likelihood ratio test


<table><tr><td colspan="8">Analysis Of Maximum Likelihood Parameter Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td colspan="2">Wald 95% Confidence Limits</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-1.1180</td><td>0.0502</td><td>-1.2165</td><td>-1.0195</td><td>495.04</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4876</td><td>0.0939</td><td>0.3035</td><td>0.6716</td><td>26.96</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>-0.1787</td><td>0.0770</td><td>-0.3296</td><td>-0.0278</td><td>5.39</td><td>0.0203</td></tr><tr><td>Scale</td><td>0</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>1.0000</td><td></td><td></td></tr></table>

<table><tr><td colspan="4">LR Statistics for Type 3 Analysis</td></tr><tr><td>Source</td><td>DF</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>26.00</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>5.43</td><td>0.0198</td></tr></table>

The p-values estimated in the likelihood ratio and Wald tests are based on the two-sided hypothesis test. However, in many epidemiologic studies, researchers are interested in the one-sided hypothesis of testing the significance of an exposure variable. Specifically, they want to determine if the odds ratio measuring the effect of DEP while controlling for other variables is significantly higher than the null value of 1 $( \beta = 0 )$ , indicating a positive association between DEP and HPD. In this case, a one-sided p-value can be calculated by dividing the two-sided p-value by 2. 

## 5.3.4 Confidence Interval for Odds Ratio

The statistical basis for constructing confidence intervals (CI) or compatibility intervals for odds ratios is similar to the methods used for conducting the likelihood ratio test and Wald test for coefficient significance. Two types of CIs are commonly used: the profile likelihood confidence interval, which is based on the likelihood ratio test, and the Wald confidence interval, which is based on the normal distribution assumption for the maximum likelihood estimators. In situations where the outcome is rare and/or the sample size is small, the normality assumption may be questionable, and likelihood-based confidence intervals may provide better coverage (Hosmer, Lemeshow, and Sturdivant 2013). 

The Wald-based CI is calculated as the point estimate of a regression coefficient plus and minus a percentage point of the normal distribution (Z distribution) times its standard error $( s _ { \beta } )$ . For a 95% CI, the percentage point is 1.96. To obtain the CI for an OR, the confidence limits for the corresponding regression coefficient are exponentiated. For instance, in model 2, where log(odds of HPD $\mathrm { s e x } ) = \alpha + \beta _ { 1 } x _ { ( \mathrm { d e p } ) } + \beta _ { 2 } z _ { ( \mathrm { s e x } ) } ,$ the OR for hypertension between the depressed and non-depressed groups is $\dot { \mathrm { O R } } = e ^ { \beta _ { 1 } }$ , and the CI for OR is obtained by exponentiating the CI for $\beta _ { 1 }$ . 

Suppose the point estimate for $\beta _ { 1 }$ is 0.4878, and its standard error is 0.0939. The 95% Wald-based CI for $\beta _ { 1 }$ is calculated as $0 . 4 8 7 8 \pm ( 1 . 9 6 \times 0 . 0 9 3 9 )$ , which yields a CI range of 0.3038 to 0.6718. The corresponding 95% CI for the OR is obtained by exponentiating the endpoints of the CI range: ${ \mathrm { \hat { O } R } } = \exp ( 0 . 3 0 3 8 ) - \exp ( 0 . 6 7 1 8 ) = 1 . 3 5 - 1 . 9 6$ . 

The computation of confidence intervals based on the likelihood ratio test (profile loglikelihood function) can be complex and computationally intensive. However, many statistical software packages, including SAS PROC LOGISTIC, offer the option to obtain both likelihood-based and Wald-based confidence intervals for regression coefficients and resulting odds ratios. 

## Example 5.6

To correctly estimate 95% confidence intervals, the two options, CLPARM=BOTH and CLOODS=BOTH, need to be specified in the model statement in PROC LOGISTIC: 

```txt
PROC logistic data=case_control;
class dep (ref='0') sex (ref='0')/param=ref;
model HPD(event='1')=dep sex/clparm=both clodds=both;
RUN; 
```

Because of the large sample size, the two methods generate almost the same confidence intervals (Output 5.4). The data under analysis appear most compatible with the association between depression and hypertension, with an OR of 1.63 and a 95% compatibility interval of 1.36 to 1.96. 


SAS Output 5.4 Likelihood-based and Wald-based confidence intervals


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>-1.1180</td><td>0.0502</td><td>495.0461</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.4878</td><td>0.0939</td><td>26.9913</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>1</td><td>-0.1787</td><td>0.0770</td><td>5.3848</td><td>0.0203</td></tr></table>

<table><tr><td colspan="5">Parameter Estimates and Profile-Likelihood Confidence Intervals</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>Intercept</td><td></td><td>-1.1180</td><td>-1.2172</td><td>-1.0202</td></tr><tr><td>dep</td><td>1</td><td>0.4878</td><td>0.3023</td><td>0.6706</td></tr><tr><td>sex</td><td>1</td><td>-0.1787</td><td>-0.3302</td><td>-0.0283</td></tr></table>

<table><tr><td colspan="5">Parameter Estimates and Wald Confidence Intervals</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>Intercept</td><td></td><td>-1.1180</td><td>-1.2165</td><td>-1.0195</td></tr><tr><td>dep</td><td>1</td><td>0.4878</td><td>0.3038</td><td>0.6719</td></tr><tr><td>sex</td><td>1</td><td>-0.1787</td><td>-0.3296</td><td>-0.0278</td></tr></table>

<table><tr><td colspan="5">Odds Ratio Estimates and Profile-Likelihood Confidence Intervals</td></tr><tr><td>Effect</td><td>Unit</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>1.0000</td><td>1.629</td><td>1.353</td><td>1.955</td></tr><tr><td>sex 1 vs 0</td><td>1.0000</td><td>0.836</td><td>0.719</td><td>0.972</td></tr></table>

<table><tr><td colspan="5">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Effect</td><td>Unit</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>1.0000</td><td>1.629</td><td>1.355</td><td>1.958</td></tr><tr><td>sex 1 vs 0</td><td>1.0000</td><td>0.836</td><td>0.719</td><td>0.973</td></tr></table>

The estimate of the confidence interval mentioned above assumes that there are no interaction effects in the model. When a model includes one or more product terms, the estimation of confidence intervals becomes more complex. This is because both the point estimates (ORs) and their confidence intervals need to be estimated at each level of one or more interacting variables or modifiers, and the estimates of standard errors involve both the variances and the covariances of the estimated coefficients. The SAS PROC LOGISTIC procedure provides an option to estimate confidence intervals in a model with product terms (see Section 5.4.2 for more information). 

## 5.3.5 Mantel–Haenszel Method and Logistic Regression Analysis

The Mantel–Haenszel (MH) estimator of the OR is a commonly used method in epidemiology to estimate confounder-adjusted ORs in the stratified analysis of 2-by-2 table data (Table 5.12). The first step in this method is to estimate the OR for each stratum of a confounding variable. If the ORs are constant (homogeneous) across the strata, a pooled OR (adjusted one) is computed using the MH method. The MH estimator of the OR is a weighted average of the stratum-specific ORs, where the weight is the inverse of the sample size in each stratum (i): 

$$
O R _ {M H} = \frac {\sum \frac {a _ {i} \times d _ {i}}{n _ {i}}}{\sum \frac {b _ {i} \times c _ {i}}{n _ {i}}} \tag {5.23}
$$

Here, $a _ { i } , b _ { i } , c _ { i } ,$ and $d _ { i }$ are the counts in the 2-by-2 table for the ith stratum of the confounding variable, and $n _ { \mathrm { i } }$ is the corresponding sample size $( n _ { \mathrm { i } } = a _ { \mathrm { i } } + b _ { \mathrm { i } } + c _ { \mathrm { i } } + d _ { \mathrm { i } } )$ . The numerator of the equation represents the expected number of individuals with both the exposure and outcome, while the denominator represents the expected number of individuals with the exposure but without the outcome. The MH method can be extended to adjust for multiple confounding variables, and the resulting estimate is called the adjusted MH estimator. 

## Example 5.7

Let’s use the NHEFS data as an example. Suppose we assess the association between hypertension and depression, taking sex into consideration. The two stratum-specific odds ratios are computed, 1.86 for the male stratum and 1.55 for the female stratum (Table 5.12). 


TABLE 5.12



Two-by-Two Table of Depression and Hypertension, Stratified by Sex


<table><tr><td rowspan="2" colspan="3"></td><td colspan="2">Hypertension</td><td rowspan="2">Total</td><td rowspan="2">OR</td></tr><tr><td>0</td><td>1</td></tr><tr><td rowspan="2">Male</td><td rowspan="2">Depression</td><td>0</td><td>1,073 (a)</td><td>288 (b)</td><td>1,361</td><td></td></tr><tr><td>1</td><td>112 (c)</td><td>56 (d)</td><td>168</td><td>1.86</td></tr><tr><td rowspan="2">Female</td><td rowspan="2">Depression</td><td>0</td><td>1,506 (a)</td><td>498 (b)</td><td>2,004</td><td></td></tr><tr><td>1</td><td>309 (c)</td><td>158 (d)</td><td>467</td><td>1.55</td></tr></table>


The estimated Mantel–Haenszel OR is:


$$
O R _ {M H} = \frac {\sum \frac {a _ {i} \times d _ {i}}{n _ {i}}}{\sum \frac {b _ {i} \times c _ {i}}{n _ {i}}} = \frac {\frac {1 0 7 3 \times 5 6}{1 3 6 1 + 1 6 8} + \frac {1 5 0 6 \times 1 5 8}{2 0 0 4 + 4 6 7}}{\frac {1 1 2 \times 2 8 8}{1 3 6 1 + 1 6 8} + \frac {3 0 9 \times 4 9 8}{2 0 0 4 + 4 6 7}} = 1. 6 3
$$

The MH OR and its 95% confidence interval can be computed by using the following SAS PROC FREQ syntax with the option of CMH (Cochran–Mantel–Haenszel estimator): 

PROC freq data=case_control; 

tables sex*dep*HPD /cmh bdt; 

RUN; 

The MH estimator of OR is only appropriate when the odds ratio is constant across all strata. Therefore, before adjusting for confounding, we must first check the assumption of homogeneity. This means that we need to ensure that the confounding variable (in this case, sex) is not an effect modifier. The Breslow-Day test with the Tarone adjustment (BDT) is commonly used to test the null hypothesis that the odds ratios for each stratum are equal (Breslow and Day 1980, Tarone 1985). When the CMH and BDT options are specified in the TABLES statement, the PROC FREQ program computes the Breslow– Day–Tarone test for stratified tables. In the current example, the Breslow-Day-Tarone test does not indicate large departure from homogeneity $( \chi 2 = 0 . 8 0 , p = 0 . 3 7 ) .$ , suggesting that sex is not an important effect modifier of the depression-hypertension association. 


SAS Output 5.5 Breslow–Day–Tarone test for homogeneity of odds ratios


<table><tr><td colspan="2">Breslow-Day-Tarone Test for Homogeneity of Odds Ratios</td></tr><tr><td>Chi-Square</td><td>0.7996</td></tr><tr><td>DF</td><td>1</td></tr><tr><td>Pr &gt; ChiSq</td><td>0.3712</td></tr></table>

However, it is important to note that even when this test is valid, it might not have enough power to test the hypothesis when a study sample is small, making inference imprecise. Therefore, we should make judgments about the homogeneity of effects in conjunction with statistical tests and prior knowledge about the modification effects of one or more covariates. 

There are two limitations to using stratified analysis. First, when multiple confounding variables are under consideration, many strata are generated through stratification, and some may have sparse data. Therefore, this analytical method may not effectively handle multiple confounders. For example, if we need to adjust for five potential confounding variables in an analysis, each with two levels, the stratified analysis would produce 32 (25) 2-by-2 tables with a total of 128 (4 × 32) cells. If the sample size of a study is 500, there would be an average of four subjects per cell in a 2-by-2 table. If some variables have more than two levels, the number of subjects per cell would be further reduced. According to the Mantel–Haenszel equation, if any of cells a, b, c, or d in a strata table is 0, information in that stratum will not be used, and its role in the inference will be removed. The small cell size will greatly reduce statistical power and make estimates unstable, resulting in large standard errors and, thus, wide confidence intervals. Second, the Mantel–Haenszel method cannot directly handle continuous variables. We must categorize continuous variables into two or more categorical levels, which will also reduce statistical power. In practice, the sample size of a case-control study may limit the number of strata in the stratified analysis. Therefore, alternative methods, such as the logistic regression model, are needed to control confounding and assess effect modification. 

The same analysis can be performed by fitting three logistic regression models. The two stratum-specific odds ratios and the sex-adjusted odds ratio measuring the depressionhypertension association can be estimated using logistic regression with indicator variables for each stratum of the confounding variable. These estimates are equivalent to those obtained using the Mantel–Haenszel method. 

```sql
PROC logistic data=case_control;
where sex=1;
model HPD (event='1') = dep; RUN;

PROC logistic data=case_control;
where sex=0;
model HPD (event='1') = dep; RUN;

PROC logistic data=case_control;
class dep sex /param=ref ref=first;
model HPD (event='1') = dep sex; RUN; 
```

Similar to the Breslow–Day–Tarone test, the likelihood ratio test can compare the model with the product term to the model without the product term to assess the homogeneity of the odds ratios across the strata. If the model with the product term is better than the model without the product term, it suggests that the odds ratios are not homogeneous across the strata, indicating an interaction effect. In this example, the likelihood ratio test indicates that the model with the product term does not provide a better fit to the data compared to the model without the product term $\left( \chi 2 = 0 . 1 \bar { 2 } , p = 0 . 7 3 \right)$ , suggesting that the assumption of homogeneity across strata is valid, and there is no strong evidence of interaction between sex and depression. In this example, the logistic regression model assumes that there is homogeneity in the exposure effect of depression on hypertension, and thus the estimated odds ratio of 1.63 is expected to be the same for both males and females. 

## Example 5.8

In this example, the likelihood test shows that the value of −2 log L is 4,464.344 for the model without the product term (model 2 in Section 5.3.3) and 4,463.551 for the model with the product term (model 3 in Section 5.3.3). Given the degree of freedom is 1, the p-value of the likelihood test is 0.37. Additionally, the Wald test for the coefficient of the product term (dep*sex) also yields a p-value of 0.37 (Output 5.6). 


SAS Output 5.6 Analysis of maximum likelihood estimates


<table><tr><td colspan="6">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>-1.1066</td><td>0.0517</td><td>458.2976</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>0.4362</td><td>0.1106</td><td>15.5462</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>-0.2086</td><td>0.0841</td><td>6.1494</td><td>0.0131</td></tr><tr><td>dep*sex</td><td>1</td><td>0.1862</td><td>0.2084</td><td>0.7980</td><td>0.3717</td></tr></table>

Thus, compared with the Mantel–Haenszel stratification method, the logistic regression model provides a versatile and effective way to control for confounding and assess the assumption of homogeneity effect. Moreover, multiple logistic regression model analysis can handle both continuous and categorical variables, multiple confounding variables, and multiple effect modifiers. 

## 5.4 Multiple Logistic Regression Model for Traditional Case-Control Study

In this section, we demonstrate the use of the binary logistic regression model to estimate the association between exposure and outcome. The multiple logistic regression analysis involves computing coefficients of the variables of interest and their confidence intervals, controlling for confounding, and assessing modification effects. Suppose we are interested in examining the association between an exposure variable X and an outcome variable Y, while adjusting for a set of covariates Z. Here, Z represents a collection or vector of covariates, $\bar { \pmb { Z } } = ( Z _ { 1 } , . . . , \bar { Z } _ { p } )$ . The conditional probability that the outcome is present is denoted as $\mathrm { P } ( Y { = } 1 | X , Z )$ . To address this assessment, we utilize the following multiple logistic regression model: 

$$
\log \left(o d d s _ {Y = 1 | X, Z}\right) = \log \left(\frac {P (Y = 1 \mid X , \mathbf {Z})}{1 - P (Y = 1 \mid X , \mathbf {Z})}\right) = \beta_ {0} + \beta_ {x} X + \beta_ {1} Z _ {1} +... + \beta_ {p} Z _ {p}. \tag {5.24}
$$

In this model, some of the Z variables serve as confounding variables, while others function as effect modifiers. 

## Example 5.9

To illustrate the use of multiple logistic regression analysis, we constructed a case-control study example using the NHEFS dataset. The objective of this study is to investigate the relationship between depression and hypertension. In this study, hypertension (HPD) is defined as systolic blood pressure equal to or greater than 160 mmHg and/or diastolic blood pressure equal to or greater than 95 mmHg and/or current use of antihypertensive medication. The Centers for Epidemiologic Studies Depression (CES-D) Scale was used to measure depressive symptom scores. Study subjects were considered to have depression if their CES-D score was equal to or greater than 16, and those with scores lower than 16 were classified as not having depression. 

To construct the case-control study, we randomly selected 1,000 depressed subjects from the subjects recruited and interviewed in the 1982–1984 wave as the case group and 3,000 non-depressed subjects as the control group. The study was deliberately designed with a large size of study population to ensure meaningful model building. 

We selected eight covariates, either as confounders or modifiers: sex (coded as 1:male, and 0: female), age (in years), race (1: white, 0: other races), education years (eduy), marital status (marital, 0: married, 1: never married, 2: widowed, divorced, or separated), residence area (area, 0: rural area, 1: city, 2: city suburbs), family income (income, 0: less than or equal to $3,999, 1: $4,000–$5,999, 2: $6,000–$9,999, 3: $10,000–$19,999, 4: $20,000– $34,999, 5: equal to or greater than $35,000), and physical activity (active). Physical exercise was measured on three levels: inactive (0), moderately active (1), and very active (2). The distributions of the aforementioned variables among the 1,000 cases and 3,000 controls are presented in Table 5.13. 


TABLE 5.13 Distribution of Variables among 1,000 Cases and 3,000 Controls


<table><tr><td rowspan="2"></td><td colspan="2">Cases (n = 1,000)</td><td colspan="2">Controls (n = 3,000)</td><td rowspan="2">Crude OR</td><td rowspan="2">95% CI</td></tr><tr><td>No.</td><td>%</td><td>No.</td><td>%</td></tr><tr><td colspan="7">Depression</td></tr><tr><td>Non-depressed</td><td>786</td><td>78.6</td><td>2,579</td><td>86.0</td><td></td><td></td></tr><tr><td>Depressed</td><td>214</td><td>21.4</td><td>421</td><td>14.0</td><td>1.67</td><td>1.39–2.00</td></tr><tr><td colspan="7">Sex</td></tr><tr><td>Female</td><td>656</td><td>65.6</td><td>1,815</td><td>60.5</td><td></td><td></td></tr><tr><td>Male</td><td>344</td><td>34.4</td><td>1,185</td><td>39.5</td><td>0.80</td><td>0.69–0.93</td></tr><tr><td colspan="7">Race</td></tr><tr><td>Black and others</td><td>172</td><td>17.2</td><td>291</td><td>9.7</td><td></td><td></td></tr><tr><td>White</td><td>828</td><td>82.8</td><td>2,709</td><td>90.3</td><td>0.52</td><td>0.42–0.63</td></tr><tr><td colspan="7">Marriage</td></tr><tr><td>Married</td><td>622</td><td>62.2</td><td>2,180</td><td>72.7</td><td></td><td></td></tr><tr><td>Never married</td><td>47</td><td>4.7</td><td>151</td><td>5.0</td><td>1.09</td><td>0.78–1.53</td></tr><tr><td>widowed, divorced or separated</td><td>331</td><td>33.1</td><td>669</td><td>22.3</td><td>1.73</td><td>1.48–2.03</td></tr><tr><td colspan="7">Residence area</td></tr><tr><td>Rural area</td><td>380</td><td>38.0</td><td>1,133</td><td>37.8</td><td></td><td></td></tr><tr><td>City</td><td>408</td><td>40.8</td><td>1,064</td><td>35.4</td><td>1.14</td><td>0.97–1.35</td></tr><tr><td>City suburbs</td><td>212</td><td>21.2</td><td>803</td><td>26.8</td><td>0.79</td><td>0.65–0.85</td></tr><tr><td colspan="7">Family income</td></tr><tr><td>≤ $3,999</td><td>121</td><td>12.1</td><td>166</td><td>5.5</td><td></td><td></td></tr><tr><td>$4,000–5,999</td><td>108</td><td>10.8</td><td>156</td><td>5.2</td><td>0.95</td><td>0.68–1.33</td></tr><tr><td>$6,000–9,999</td><td>172</td><td>17.2</td><td>342</td><td>11.4</td><td>0.69</td><td>0.51–0.93</td></tr><tr><td>$10,000–19,999</td><td>234</td><td>23.4</td><td>703</td><td>23.4</td><td>0.46</td><td>0.35–0.60</td></tr><tr><td>$20,000–34,999</td><td>222</td><td>22.2</td><td>899</td><td>30.0</td><td>0.34</td><td>0.26–0.45</td></tr><tr><td>≥ $35,000</td><td>143</td><td>14.3</td><td>734</td><td>24.5</td><td>0.27</td><td>0.20–0.36</td></tr><tr><td colspan="7">Physical activity</td></tr><tr><td>Inactive</td><td>167</td><td>16.7</td><td>285</td><td>9.5</td><td></td><td></td></tr><tr><td>Moderately active</td><td>687</td><td>68.7</td><td>2,152</td><td>71.7</td><td>0.54</td><td>0.44–0.67</td></tr><tr><td>Very active.</td><td>146</td><td>14.6</td><td>563</td><td>18.8</td><td>0.44</td><td>0.34–0.58</td></tr><tr><td></td><td colspan="6">Continuous Variables</td></tr><tr><td></td><td>Mean</td><td>SD</td><td>Mean</td><td>SD</td><td>t-statistics</td><td>p-value</td></tr><tr><td>Age (years)</td><td>60.4</td><td>14.2</td><td>53.3</td><td>13.9</td><td>-13.85</td><td>&lt;0.01</td></tr><tr><td>Education (years)</td><td>10.8</td><td>3.3</td><td>11.8</td><td>3.0</td><td>8.68</td><td>&lt;0.01</td></tr></table>

## 5.4.1 Use Logistic Regression to Control for Confounding

As previously discussed, one important application of regression modeling is to estimate exposure-outcome associations by controlling or adjusting for confounding variables. Regression modeling techniques mathematically make the joint distribution of confounders equal between the exposure groups (i.e., exposed vs. unexposed), thereby eliminating their potential to confound the exposure-outcome associations. The logistic regression model stands out here due to its non-reliance on assumptions about the distribution of covariates. It allows for the estimation of exposure effects via odds ratios and facilitates testing for group differences that incorporate both continuous and categorical variables. This makes the logistic regression model invaluable for confounding adjustment and assessing interaction effects in case-control studies. 

Chapter 1 explained how the adjustment approach can be used to control for confounding within risk regression models, such as the Poisson and log-binomial models. The same reasoning applies to the logistic regression model. Consider a case-control study examining the association between obesity and the first episode of heart attack with daily salt consumption as the sole confounder. The log-odds of heart attack are represented as: log-odds of heart attack $= \beta _ { 0 } + \beta _ { x } o b e s i t y + \beta _ { 1 } s a l t$ . Confounding variables, by definition, have different distributions between exposed and unexposed groups. We symbolize the mean daily salt consumption (gram/day) of the obesity group as $\mathrm { M S } _ { 1 }$ and that of the non-obesity group as ${ \mathrm { M S } } _ { 0 } ,$ where $\mathrm { M S } _ { 1 } \neq \mathrm { M S } _ { 0 } .$ . The log-odds of heart attack for each exposure group can be detailed as: 

$$
\text { Log - odds   of   heart   attack   among   subjects   with   obesity } (\text { obesity } = 1) = \beta_ {0} + \beta_ {x} + \beta_ {1} M S _ {1}, \tag {5.25}
$$

and 

$$
\text { Log - odds   of   heart   attack   among   subjects   without   obesity } (\text { obesity } = 0) = \beta_ {0} + \beta_ {1} M S _ {0}. \tag {5.26}
$$

The difference in log-odds between the two groups is calculated as: 

$$
\left(\beta_ {0} + \beta_ {x} + \beta_ {1} M S _ {1}\right) - \left(\beta_ {0} + \beta_ {1} M S _ {0}\right) = \beta_ {x} + \beta_ {1} \left(M S _ {1} - M S _ {0}\right). \tag {5.27}
$$

The Equation 5.26 indicates that the difference in log-odds comprises two parts: $\beta _ { x } ,$ the actual difference in log-odds of heart attack between obese and non-obese individuals, and $\beta _ { 1 } ( M S _ { 1 } - M S _ { 0 } ) ,$ , which accounts for the difference in daily salt consumption between the groups, $M S _ { 1 } - M S _ { 0 } ,$ and the association between daily salt consumption and heart attack $\beta _ { 1 } .$ 

To control for the confounding bias by daily salt consumption via modeling, one should equate daily salt consumption in both exposure groups, usually by employing the overall mean of daily salt consumption in the total study population, denoted as MS. Substituting both $\mathrm { M S } _ { 1 }$ and ${ \mathrm { M S } } _ { 0 }$ with MS, the log-odds difference between obesity and non-obesity groups becomes $\beta _ { x }$ (Equation 5.27): 

$$
\left(\beta_ {0} + \beta_ {x} + \beta_ {1} M S\right) - \left(\beta_ {0} + \beta_ {1} M S\right) = \beta_ {x} + \beta_ {1} (M S - M S) = \beta_ {x}. \tag {5.28}
$$

Essentially, for effective confounding control, the distribution of daily salt consumption must be equal between exposure groups. In this equal-distribution scenario, the log-odds difference (βx) accurately captures the true difference in the log-odds of heart attack between exposure groups, unbiased by daily salt consumption’s potential confounding. The “magic” of regression modeling lies in its inherent capacity to equalize the distribution of the daily salt consumption between exposed and unexposed groups, i.e., $\mathrm { M S } _ { 1 } = \mathrm { M S } _ { 0 } ,$ even though the specific value of the mean is not specified. 

In the following sections, we will use the SAS PROC LOGISTIC procedure to perform multiple logistic regression analysis on data from a case-control study constructed from the NHEFS. 

## Example 5.10

For illustration, we assume that the following eight variables are confounding variables: sex, race, age, education year (eduy), marital status (marital), family income (income), residence areas (area), and physical activity (active). To do this, we run the following SAS syntax: 

```txt
PROC logistic data=case_control;
class dep sex race marital area income active
    /param=ref ref=first;
model HPD (event='1')=dep sex age race eduy marital
    income area active; 
```

RUN; 

One option specified in the MODEL statement is “EVENT=1.” By default, PROC LOGISTIC estimates a model predicting the lowest value of the dependent variable. Hence, if we do not specify “EVENT=1,” the logistic model will predict the probability that the dependent variable HPD is equal to 0 (non-hypertension). The specification “EVENT=1” reverses this, causing the model to predict the probability that the dependent variable is equal to 1 (depression). 

When we have categorical variables in a logistic regression model, we need to specify a reference level for effect comparisons. We can do this using the CLASS statement in PROC LOGISTIC, with the options PARAM=REF and REF=FIRST (or LAST). The PARAM=REF option creates a set of dummy variables and estimates the differences in the log-odds of the outcome for each non-reference level compared to the log-odds for the reference level that is specified in the REF option. 

For example, if we have a categorical variable for marital status with three categories (0: married, 1: never married, 2: widowed, divorced, or separated), and we specify “REF=FIRST,” the reference level of 0 (married) is set. Two dummy variables for marital status are created, and comparisons are made between 1 and 0, and between 2 and 0. If we specify “REF=LAST,” the reference level is 2 (widowed, divorced, or separated), and the comparisons will be made between 0 and 2, and between 1 and 2. By default, if we do not specify the option, the LAST option is used as the reference level in PROC LOGISTIC. 

To specify a reference level for a specific variable, we place the reference level in either single or double quotation marks, as the following SAS syntax: 

```txt
PROC logistic data=case_control;
class dep (ref='0') sex (ref='1') marital (ref='1')
/param=ref;
model HPD(event='1')=dep sex marital age;
RUN; 
```

Here, the reference level of DEP is 0 (non-depressed), 1 for sex (male), and 1 for marriage (never married). 

The “Model Information” table provides important information about the logistic regression model, including the method used to maximize the likelihood function, the number of observations read, and the number of observations used in the analysis (Output 5.7). The number of observations read represents the total number of observations in the data set, whereas the number of observations used represents the number of observations that were included in the logistic regression analysis. The number of observations used may be smaller than the number of observations read if there are missing values for one or more variables in the model. By default, PROC LOGISTIC uses listwise deletion to handle missing data, which means that any subject with missing data on one or more variables in the model will be eliminated from the analysis. 


SAS Output 5.7 Model information


<table><tr><td colspan="2">Model Information</td></tr><tr><td>Data Set</td><td>WORK.CASE_CONTROL</td></tr><tr><td>Response Variable</td><td>HPD</td></tr><tr><td>Number of Response Levels</td><td>2</td></tr><tr><td>Model</td><td>binary logit</td></tr><tr><td>Optimization Technique</td><td>Fisher&#x27;s scoring</td></tr><tr><td>Number of Observations Read</td><td>4,000</td></tr><tr><td>Number of Observations Used</td><td>4,000</td></tr></table>

<table><tr><td colspan="3">Response Profile</td></tr><tr><td>Ordered Value</td><td>HPD</td><td>Total Frequency</td></tr><tr><td>1</td><td>0</td><td>3,000</td></tr><tr><td>2</td><td>1</td><td>1,000</td></tr><tr><td colspan="3">Probability modeled is HPD=1.</td></tr></table>

The “Probability modeled is $\mathrm { H P D = } 1 ^ { \prime \prime }$ statement informs us that the model is estimating the probability of depression given the predictors included in the model. If we had not specified the $\mathrm { \dot { ^ { \prime \prime } E V E N T } = 1 ^ { \prime \prime } }$ option, the statement would read “Probability modeled is $\mathrm { H P D = } 0 , ^ { \prime \prime }$ indicating that the model would predict the probability of non-depression. It is important to verify this statement to ensure that we correctly interpret the signs of the coefficients estimated by the logistic regression model (as shown in Output 5.7). 

The “Model Fit Statistics “output table lists three model fit criteria: $\mathrm { A I C } , \mathrm { S C } ,$ and $- 2 \mathrm { l o g } L$ (Output 5.8). 


SAS Output 5.8 Model fit statistics


<table><tr><td colspan="3">Model Fit Statistics</td></tr><tr><td>Criterion</td><td>Intercept Only</td><td>Intercept and Covariates</td></tr><tr><td>AIC</td><td>4,500.681</td><td>4,244.432</td></tr><tr><td>SC</td><td>4,506.975</td><td>4,351.431</td></tr><tr><td>-2 Log L</td><td>4,498.681</td><td>4,210.432</td></tr></table>

Akaike Information Criterion (AIC) and Schwarz Criterion (SC) are both derived from negative two times the log-likelihood $( - 2 \log L )$ . They penalize the log-likelihood by the number of predictors in the model. AIC is calculated as $\mathrm { A I C } = - 2 \mathrm { l o g } L + 2 k _ { \cdot }$ , where k is the number of parameters (including the intercept) in the model. In this particular example, there are 17 parameters (16 regression coefficients for explanatory variables and 1 intercept). While there are 9 explanatory variables in this model, some variables have more than two categories and the number of regression coefficients for these variables is equal to the number of categories minus one. For example, the variable of marriage has three levels, and two coefficients are estimated by taking one level as the reference level. In this model, the AIC is calculated as follows: 

$$
A I C = - 2 \log L + 2 k = 4, 2 1 0. 4 3 2 + 2 \times 1 7 = 4, 2 4 4. 4 3 2
$$

AIC is used for comparing non-nested models on the same sample, and the model with the smallest AIC is considered the “best” fit. 

SC is defined as $S C = - 2 l o g L + k \times \log ( n )$ , where n is the sample size. In this sample, $n = 4 { , } 0 0 0$ and $\log ( 4 , 0 0 0 ) = 8 . 2 9 4$ . 

$$
S C = - 2 \log L + k \times \log (n) = 4, 2 1 0. 4 3 2 + 1 7 \times \log (4, 0 0 0) = 4, 3 5 1. 4 3 1.
$$

The smallest SC is most desirable. 

The likelihood ratio test is based on the negative two times the log-likelihood (−2LogL) statistics and is used in hypothesis tests for nested models. The smaller the value of −2LogL is, the better the model is. The value of the three criteria itself is not meaningful but useful in the comparison of two or more models. Both AIC and SC can be used to compare models with different sets of covariates, and they do not have to be nested from one to the other. 

The null hypothesis of the likelihood ratio test, score test, and Wald test in the global test is that all the explanatory variables have coefficients of 0. The alternative hypothesis is that at least one of the coefficients does not equal 0. The degree of freedom for each test corresponds to the difference in the number of parameters between the full and reduced models being compared, not the total number of coefficients. In this case, since we are comparing the full model with all the predictors to the null model with only the intercept, the degrees of freedom for the likelihood ratio, score, and Wald tests are all equal to the number of predictors, which is 16 (17−1). Because the associated p-values are extremely small, we reject the null hypothesis and conclude that at least one of the coefficients is statistically different from 0 (Output 5.9). 


SAS Output 5.9 Testing global null hypothesis


<table><tr><td colspan="4">Testing Global Null Hypothesis: BETA=0</td></tr><tr><td>Test</td><td>Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>Likelihood Ratio</td><td>288.2490</td><td>16</td><td>&lt;.0001</td></tr><tr><td>Score</td><td>294.8689</td><td>16</td><td>&lt;.0001</td></tr><tr><td>Wald</td><td>270.0299</td><td>16</td><td>&lt;.0001</td></tr></table>

In large samples, the three tests (likelihood ratio, Wald, and score) tend to give similar results, but in small to moderate samples, the likelihood ratio test is more accurate. The reason is that the likelihood ratio test is based on the difference between the log-likelihood of the full model and the log-likelihood of the reduced model, while the Wald and score tests are based on the estimates of the standard errors of the coefficients, which may be less reliable in small samples. Therefore, it is recommended that the likelihood ratio test result should be reported when the three tests generate different p-values, to ensure the accuracy of the hypothesis test. 

While statistical analytic packages automatically provide model fit statistics like AIC, SC, and −2logL, along with tests for the global null hypothesis such as likelihood ratio, score, and Wald tests, it is essential to recognize that these tools are designed primarily for prediction models and are not necessarily applicable for association models. As highlighted in Chapter 1, these fitting criteria and global tests do not inherently affirm the importance or lack thereof of all the covariates within a model, nor do they ensure an optimal model fit. It is crucial to approach model fitting with a nuanced perspective, recognizing the distinction between statistical significance and real-world relevance or causality. Without any prior knowledge about potential causal relationships, model fitting remains neutral about causality. Thus, drawing causal inferences solely based on these statistical measures without foundational assumptions can be misleading. 

If the CLASS statement is added, the SAS procedure provides the “Type 3 Analysis of Effects” output table. Otherwise, it is not provided. We use the $\mathbf { \mu } ^ { \prime \prime } \mathrm { D F } ^ { \prime \prime }$ to check how many dummy variables have been created for categorical variables with more than two levels, by the option of “PARAM=REF.” There are two dummy variables for marriage, residence area, and physical activity, respectively, and five for home income. The total number of coefficients the model estimates is 16, plus 1 intercept. The “Type 3 Analysis of Effects” table lists the results of testing the overall significance of categorical variables. The null hypothesis of the overall Wald test is that all of the coefficients pertaining to a variable are zero. For example, the overall p-value of the Wald test for the variable of physical activity is 0.0178, which indicates that at least one coefficient of the two coefficients, one for each categorical level, differs from zero (Output 5.10). 


SAS Output 5.10 Type 3 analysis of effects


<table><tr><td colspan="4">Type 3 Analysis of Effects</td></tr><tr><td>Effect</td><td>DF</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>8.5749</td><td>0.0034</td></tr><tr><td>sex</td><td>1</td><td>6.2368</td><td>0.0125</td></tr><tr><td>age</td><td>1</td><td>83.3349</td><td>&lt;.0001</td></tr><tr><td>race</td><td>1</td><td>16.5545</td><td>&lt;.0001</td></tr><tr><td>eduy</td><td>1</td><td>1.8588</td><td>0.1728</td></tr><tr><td>marital</td><td>2</td><td>0.7951</td><td>0.6720</td></tr><tr><td>income</td><td>5</td><td>12.5283</td><td>0.0282</td></tr><tr><td>area</td><td>2</td><td>3.0209</td><td>0.2208</td></tr><tr><td>active</td><td>2</td><td>8.0595</td><td>0.0178</td></tr></table>

The next set of results generated by the SAS PROC LOGISTIC is the “Analysis of Maximum Likelihood Estimates.” As described in Section 5.3.3, the null hypothesis of the Wald test is that an individual explanatory variable’s coefficient is zero, given the other predictor variables are in the model. The Wald Chi-square statistics are calculated by dividing each coefficient by its standard error and squaring the result. There are 9 variables in the model. However, 16 coefficients are estimated due to dummy variables created for categorical variables that have more than two levels (Output 5.11). 


SAS Output 5.11 Analysis of Maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>-1.5442</td><td>0.2978</td><td>26.8871</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.2969</td><td>0.1014</td><td>8.5749</td><td>0.0034</td></tr><tr><td>sex</td><td>1</td><td>1</td><td>-0.2096</td><td>0.0839</td><td>6.2368</td><td>0.0125</td></tr><tr><td>age</td><td></td><td>1</td><td>0.0274</td><td>0.00300</td><td>83.3349</td><td>&lt;.0001</td></tr><tr><td>raceeduy</td><td>1</td><td>11</td><td>-0.4679-0.0198</td><td>0.11500.0145</td><td>16.55451.8588</td><td>&lt;.00010.1728</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.1481</td><td>0.1866</td><td>0.6299</td><td>0.4274</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>0.0212</td><td>0.0981</td><td>0.0467</td><td>0.8288</td></tr><tr><td>income</td><td>1</td><td>1</td><td>0.0360</td><td>0.1804</td><td>0.0397</td><td>0.8420</td></tr><tr><td>income</td><td>2</td><td>1</td><td>-0.1963</td><td>0.1632</td><td>1.4465</td><td>0.2291</td></tr><tr><td>income</td><td>3</td><td>1</td><td>-0.3235</td><td>0.1613</td><td>4.0245</td><td>0.0448</td></tr><tr><td>income</td><td>4</td><td>1</td><td>-0.3891</td><td>0.1750</td><td>4.9433</td><td>0.0262</td></tr><tr><td>income</td><td>5</td><td>1</td><td>-0.5603</td><td>0.1933</td><td>8.3987</td><td>0.0038</td></tr><tr><td>area</td><td>1</td><td>1</td><td>0.1555</td><td>0.0896</td><td>3.0146</td><td>0.0825</td></tr><tr><td>area</td><td>2</td><td>1</td><td>0.0925</td><td>0.1063</td><td>0.7570</td><td>0.3843</td></tr><tr><td>active</td><td>1</td><td>1</td><td>-0.2142</td><td>0.1164</td><td>3.3872</td><td>0.0657</td></tr><tr><td>active</td><td>2</td><td>1</td><td>-0.4082</td><td>0.1440</td><td>8.0396</td><td>0.0046</td></tr></table>

The logistic regression model estimates coefficients that indicate the increase or decrease in log-odds for the outcome associated with each explanatory variable. For categorical variables, the coefficient represents the estimated difference in log-odds for the outcome between subjects with higher levels of the variable and those with lower levels, with the other variables held constant or adjusted in the model. For instance, the coefficient of DEP (coded as 1 for depression and 0 for non-depression) is 0.297, indicating that the log-odds for hypertension are expected to be 0.297 units higher for depressed subjects than for non-depressed subjects, adjusting for the other variables in the model. For continuous variables, the coefficient represents the estimated change in log-odds associated with a one-unit increase in the variable, with the other variables held constant. In this example, the coefficient for age is 0.027, indicating that a 1-year increase in age is associated with a 0.027-unit increase in the log-odds for hypertension, adjusting for the other variables in the model. 

The odds ratios shown in the “Odds Ratio Estimates” table of the SAS output are obtained by exponentiating the coefficients from the “Analysis of Maximum Likelihood Estimates” table. Specifically, to calculate the odds ratio for a variable, we take the exponential of its coefficient. For instance, the OR for the DEP variable is exp(0.2969) = 1.346 (Output 5.12). 


SAS Output 5.12 Odds ratio estimates


<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>1.346</td><td>1.103</td><td>1.642</td></tr><tr><td>sex 1 vs 0</td><td>0.811</td><td>0.688</td><td>0.956</td></tr><tr><td>age</td><td>1.028</td><td>1.022</td><td>1.034</td></tr><tr><td>race 1 vs 0</td><td>0.626</td><td>0.500</td><td>0.785</td></tr><tr><td>eduy</td><td>0.980</td><td>0.953</td><td>1.009</td></tr><tr><td>marital 1 vs 0</td><td>0.862</td><td>0.598</td><td>1.243</td></tr><tr><td>marital 2 vs 0</td><td>1.021</td><td>0.843</td><td>1.238</td></tr><tr><td>income 1 vs 0</td><td>1.037</td><td>0.728</td><td>1.476</td></tr><tr><td>income 2 vs 0</td><td>0.822</td><td>0.597</td><td>1.132</td></tr><tr><td>income 3 vs 0</td><td>0.724</td><td>0.528</td><td>0.993</td></tr><tr><td>income 4 vs 0</td><td>0.678</td><td>0.481</td><td>0.955</td></tr><tr><td>income 5 vs 0</td><td>0.571</td><td>0.391</td><td>0.834</td></tr><tr><td>area 1 vs 0</td><td>1.168</td><td>0.980</td><td>1.393</td></tr><tr><td>area 2 vs 0</td><td>1.097</td><td>0.891</td><td>1.351</td></tr><tr><td>active 1 vs 0</td><td>0.807</td><td>0.643</td><td>1.014</td></tr><tr><td>active 2 vs 0</td><td>0.665</td><td>0.501</td><td>0.882</td></tr></table>

Overall, the OR provides a useful measure of the strength and direction of the association between the explanatory variables and the outcome variable, while controlling for other variables in the model. In this case, the OR of 1.35 suggests that the predicted odds of hypertension for individuals with depression are 1.35 times higher than those for individuals without depression, adjusting for other variables in the model. This adjusted OR is lower than the unadjusted OR of 1.67, which implies that there is an overall positive confounding effect present (see Section 1.4.3 for positive and negative confounding effects). 

To further aid in interpreting an OR, it is helpful to calculate the percent change in odds associated with a 1-unit change in the explanatory variable. When an OR is greater than 1, the percent change is calculated as 100 times the OR minus 1. When an OR is less than 1, the percent change is calculated as 100 times 1 minus the OR. In this case, the odds of hypertension for depressed individuals are 35% higher than the odds for non-depressed individuals (100*(1.35-1)), while the odds of hypertension for male individuals are 19% lower than the odds for female individuals (100*(1-0.81)). 

It is important to note that the significance of coefficients and odds ratios for other variables in the model cannot be used to determine whether a particular covariate is a confounding variable. While a significant coefficient and OR for a variable may indicate an association between that covariate and the outcome, it does not necessarily imply an association between the covariate and the exposure (as discussed above). For instance, the coefficient of race is significantly associated with hypertension, but this coefficient and OR only suggest an association between race and hypertension and do not provide information about whether race is also associated with the exposure variable (depression). 

The PROC LOGISTIC procedure provides a convenient option for testing the statistical difference in log-odds between two specified categories. For example, if we want to test the difference in log-odds of hypertension between those with a family income of $6,000–9,000 (coded as 2) and those with incomes of $20,000–34,999 (coded as 4) and greater than $35,000 (coded as 5), we can use the “test” statement in the PROC LOGISTIC: 

```txt
PROC logistic data=case_control;
class dep sex race marital area income active
    /param=ref ref=first;
model HPD(event='1')=dep sex age race eduy marital
    income area active;
income2_vs_income4: test income2=income4;
income2_vs_income5: test income2=income5;
RUN; 
```

The “Test” statement allows for the performance of two Wald tests. The results indicate that there is a statistical difference at the 0.05 level in the log-odds of hypertension between individuals with a family income of $6,000–9,000 and those with a family income greater than $35,000. However, there is no statistical difference between those with a family income of $6,000–9,000 and those with a family income of $20,000–34,999 (Output 5.13). 


SAS Output 5.13


<table><tr><td colspan="4">Linear Hypotheses Testing Results</td></tr><tr><td>Label</td><td>Wald Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>income2_vs_income4</td><td>2.0007</td><td>1</td><td>0.1572</td></tr><tr><td>income2_vs_income5</td><td>5.5506</td><td>1</td><td>0.0185</td></tr></table>

The OR is the ratio of odds for a one-unit change in an explanatory variable. However, a one-unit change may not always be a meaningful or important difference for a continuous variable, and we may be interested in an OR for a larger-unit change. For example, a change of one year in age may be too small to be considered important, while a change of 5 years may be more meaningful. For c units change in x, the OR can be calculated as 

$$
O R = \exp (c \beta_ {x}) = O R ^ {c} \tag {5.29}
$$

For a 5-year change in age, the OR can be calculated as OR = exp( ) 5 0.0274 1.15 × = . It can also be calculated as 1.08 1.15 =5 . The 95% confidence interval for this OR can be estimated using the equation: 

$$
\exp \left(\mathrm{c} \beta_ {x} \pm 1. 9 6 \times | c | s _ {\beta}\right) \tag {5.30}
$$

where |c| is the absolute value of c and $s _ { \beta }$ is the standard error of $\beta _ { x }$ 

$$
\begin{array}{l} \exp \left(\mathrm{c} \beta_ {x} \pm 1. 9 6 \times | \mathrm{c} | s _ {\beta}\right) = \exp (5 \times 0. 0 2 7 4 \pm 1. 9 6 \times | 5 | \times 0. 0 0 3) \\ = \exp (0. 1 3 7 \pm 0. 0 2 9 4) = 1. 1 1 - 1. 1 8 \\ \end{array}
$$

According to the estimated OR, for every increase of 5 years in age, the odds of hypertension increase by 15%. However, it is important to note that this assumes a linear relationship between age and hypertension on a logit scale, which may not hold true in reality. The increase in the odds of hypertension for individuals who are 30 years old compared to those who are 35 years old may be quite different from the odds for individuals who are 50 years old compared to those who are 55 years old. Therefore, caution should be taken when interpreting the OR for a specific change in a continuous variable, and it may be more appropriate to use other modeling approaches, such as spline regression, to account for nonlinearity (see Section 5.4.3 for the assumption of linearity and Chapter 10 for spline regression model). 

The following SAS program generates the same odds ratio and its 95% confidence interval for a 5-year change in age as the one manually computed: 

```txt
PROC logistic data=case_control;
class dep sex race marital area income active
    /param=ref ref=first;
model HPD (event='1')=dep sex age race eduy marital
    income area active /clodds=pl;
units age=5; 
```

RUN; 

The option of “CLODDS=PL” requests 95% profile likelihood confidence intervals for odds ratios. As described before, profile likelihood intervals are often preferred over Wald intervals because they do not rely on asymptotic normality assumptions and can provide more accurate coverage in small sample sizes or for rare outcomes. 

The statistical adjustment for confounding assumes a homogeneous effect of the exposure on the outcome across confounding variables. However, this assumption is violated when, for example, the coefficients of hypertension between depressed and non-depressed groups differ between younger and older subjects, or the odds ratios of hypertension for different exposure groups differ across the three levels of physical activity. In such cases, adjusting for age and physical activity may not be useful and could even be harmful because age and physical activity may act as effect modifiers, modifying the association between depression and hypertension. This indicates that the exposure effect of depression on hypertension may vary across different levels of age and physical activity. Therefore, it is important to assess their modification effects using logistic regression models. 

## 5.4.2 Use Logistic Regression Model to Assess Interaction Effect

As discussed in Section 2.8.3, statistical interaction can be defined in two different but compatible ways (Szklo and Nieto 2019). The first is based on the heterogeneity of the exposure effect, and the second is based on the comparison between the expected and observed joint effects. Under the heterogeneity-effect definition, interaction occurs when the effect of an exposure factor x on the outcome y is different in strata formed by a third variable m. For example, if m has two levels (1 vs. 0), we would estimate two odds ratios that measure the exposure-outcome associations at each of the two strata of m. The difference between these two odds ratios indicates heterogeneity of exposure effect between the two strata and the occurrence of an interaction effect, assuming there are no other biases. If the two odds ratios are identical or close to each other, there is no interaction effect. 

Under the joint-effect definition, interaction occurs when the observed joint effect of x and m on y (outcome) differs from the expected joint effect. The expected joint effect is defined as the sum of the two independent effects of x and m on y, assuming that there is no interaction between x and m. Positive interaction occurs if the observed joint effect is greater than expected, and negative interaction occurs if the observed joint effect is smaller than expected. The logistic regression model uses the joint-effect definition to assess interaction effects. 

## Example 5.11

To illustrate how the logistic regression model can be used to assess interaction effects, let’s consider an example. We assume that retirement (coded as “1” for retirement and “0” for not retirement) is a potential effect modifier that modifies the association between depression (dep) and hypertension (HPD). We will also assume that sex is a potential confounding variable. To assess the effect modification, we create a product term: dep_retire=dep    × retire, and then include it in the logistic regression model. The following SAS syntax is used to perform this analysis: 

```txt
PROC logistic data=case_control;
class dep retire sex /param=ref ref=first;
model HPD (event='1')= dep retire dep_retire sex /rl;
RUN; 
```

To assess interaction, we test the null hypothesis that the coefficient of the product term “dep_retire” is equal to zero using either a Wald test or a likelihood ratio test. In this example, the logistic regression model yields a coefficient of −0.5731 for the product term “dep_retire,” with a p-value of 0.004, indicating that the coefficient is different from zero (Output 5.14). 


SAS Output 5.14 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>-1.3702</td><td>0.0577</td><td>564.1653</td><td>&lt;.0001</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.6411</td><td>0.1151</td><td>31.0114</td><td>&lt;.0001</td></tr><tr><td>retire</td><td>1</td><td>1</td><td>0.9608</td><td>0.0882</td><td>118.8071</td><td>&lt;.0001</td></tr><tr><td>dep_retire</td><td>1</td><td>1</td><td>-0.5731</td><td>0.2002</td><td>8.1924</td><td>0.0042</td></tr><tr><td>sex</td><td>1</td><td>1</td><td>-0.2709</td><td>0.0789</td><td>11.7879</td><td>0.0006</td></tr></table>

Based on the coefficients listed in the above output, the logistic regression model is expressed as: 

$$
\begin{array}{l} \text { Log   odds   of   HPD } = \beta_ {0} + \beta_ {1} \times d e p + \beta_ {2} \times r e t i r e + \beta_ {3} \times d e p \_ r e t i r e + \beta_ {4} \times s e x \\ = - 1. 3 7 0 2 + 0. 6 4 1 1 \times \text { dep } + 0. 9 6 0 8 \times \text { retire } - 0. 5 7 3 1 \\ \times \text { dep\_retire } - 0. 2 7 0 9 \times \text { sex } \\ \end{array}
$$

The value of −0.5731, measured in log odds of hypertension, represents the excess negative effect of hypertension resulting from the joint effect of depression and retirement, which cannot be explained by the isolated independent effect of depression and retirement. If the joint effect of depression and retirement were simply the sum of their independent effects (additive), the expected joint effect, assuming no interaction, would be $0 . { \dot { 6 } } 4 1 1 + 0 . 9 6 0 8 = 1 . 6 0$ . However, the coefficient of −0.5731 indicates the presence of an additional (interaction) effect when both factors are present. Therefore, the observed joint effect in log odds, adjusted for sex, is $0 . 6 4 1 1 + 0 . 9 \bar { 6 } 0 8 + ( - 0 . 5 7 3 1 ) = 1 . 0 3 .$ . 

In terms of the OR, the value of 0.564, exp(−0.5731), represents the excess effect in odds of hypertension resulting from the interaction effect of depression and retirement. If there were no interaction or modification effect of retirement, the coefficient of “dep_retire” would be zero, and the resultant OR would be 1. The OR for “dep” of 1.899 represents the independent effect of depression on hypertension among those who were not retired, while the odds ratio for “retire” of 2.614 represents the independent effect of retirement on hypertension among those who were not depressed, adjusting for sex (Output 5.15). 


SAS Output 5.15 Odds ratios and 95% confidence intervals


<table><tr><td colspan="5">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Effect</td><td>Unit</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>1.0000</td><td>1.899</td><td>1.515</td><td>2.379</td></tr><tr><td>retire 1 vs 0</td><td>1.0000</td><td>2.614</td><td>2.199</td><td>3.107</td></tr><tr><td>dep_retire 1 vs 0</td><td>1.0000</td><td>0.564</td><td>0.381</td><td>0.835</td></tr><tr><td>sex 1 vs 0</td><td>1.0000</td><td>0.763</td><td>0.653</td><td>0.890</td></tr></table>

The expected joint effect of depression and retirement on hypertension, assuming no interaction, is $1 . 8 9 9 \times 2 . 6 \bar { 1 4 } = 4 . 9 6$ (multiplicative), while the observed joint effect, accounting for the interaction effect, is $1 . { \bar { 8 } } 9 9 \times 2 . 6 1 4 \times 0 . 5 6 4 = 2 . 8 0$ . This difference indicates a negative interaction effect between depression and retirement on hypertension. 

We can use a 2-by-2 table (Table 5.14) to illustrate the interaction effect. Based on the exposure status to depression and retirement, we can estimate four odds of exposure from this table. For instance, $\mathrm { \ o d d { s } _ { 1 1 } }$ refers to the odds of exposure for individuals who were both depressed and retired. 

## TABLE 5.14


Odds of Exposure According to Exposure Status to the Two Variables


<table><tr><td rowspan="2">Depression</td><td colspan="2">Retirement</td></tr><tr><td>1</td><td>0</td></tr><tr><td>1</td><td><eq>odds_{11}</eq></td><td><eq>odds_{10}</eq></td></tr><tr><td>0</td><td><eq>odds_{01}</eq></td><td><eq>odds_{00}</eq></td></tr></table>

Three odds ratios can be estimated from the above table, taking the $\mathrm { \ o d d { s } _ { 0 0 } }$ as the reference group. The three odds ratios are then defined as $\mathrm { O R } _ { 1 1 } , \mathrm { O R } _ { 1 0 } ,$ and $\mathrm { O R } _ { 0 1 }$ (Table 5.15). 

If there is no interaction effect, the effect of the exposure variable (depression) remains homogeneous across different categories of the other exposure (retirement). This can be expressed as $\mathrm { O R } _ { 1 1 } / \mathrm { O R } _ { 0 1 } = \mathrm { O R } _ { 1 0 } / \mathrm { O R } _ { 0 0 } .$ Since $\mathrm { O R } _ { 0 0 }$ equals 1, we can simplify to: 

$$
\mathrm{OR} _ {1 1} = \mathrm{OR} _ {1 0} \times \mathrm{OR} _ {0 1} = 1. 8 9 9 \times 2. 6 1 4 = 4. 9 6
$$

This can be interpreted as the effect of both variables working together as being the same as the combined effect of each variable working separately in a multiplicative scale. 

If there is an interaction effect, 

$$
\mathrm{OR} _ {1 1} = \left(\mathrm{OR} _ {1 0} \times \mathrm{OR} _ {0 1}\right) \times \exp \left(\beta_ {3}\right) = 1. 8 9 9 \times 2. 6 1 4 \times 0. 5 6 4 = 2. 8 0,
$$

where $\exp ( \beta _ { 3 } )$ is the OR for the product term and it equals to $\mathrm { O R _ { 1 1 } } / ( \mathrm { O R _ { 1 0 } } \times \mathrm { O R _ { 0 1 } } )$ . To enhance the understanding of various odds ratios estimated by the above logistic regression model, their meanings are summarized in Table 5.16. 

We can test the null hypothesis of no interaction on a multiplicative scale, i.e., a test of homogeneous of the exposure effect across the two levels of retirement: 

$$
\mathrm{H} _ {0}: \mathrm{OR} _ {1 1} = \mathrm{OR} _ {1 0} \times \mathrm{OR} _ {0 1},
$$

Under the null hypothesis, OR for the product term (the product term) equals 1, or the coefficient of the product term is 0 $( \beta _ { 3 } = 0 )$ ). In this example, $\beta _ { 3 } \ \mathrm { i s } - 0 . 5 7 3 1 _ { . }$ , the Wald Chisquare value is 8.19, and the p-value is 0.0042, we thus conclude that the observed joint effect of depression and retirement is less than the multiplicative combination of the separate effects of the two variables. 

Next, we will explain how retirement interacts with depression on hypertension, i.e., how retirement modifies the association between depression and hypertension. To do so, we need to estimate odds ratios in the presence of interaction. As the first step, we write down the expressions for the logit at the two or more levels of the exposure factor (“dep” in this example) being compared: 


TABLE 5.15



Odds Ratios According to Exposure Status to the Two Variables


<table><tr><td rowspan="2">Depression</td><td colspan="2">Retirement</td></tr><tr><td>1</td><td>0</td></tr><tr><td>1</td><td><eq>OR_{11} = (odds_{11}/odds_{00})</eq></td><td><eq>OR_{10} = (odds_{10}/odds_{00})</eq></td></tr><tr><td>0</td><td><eq>OR_{01} = (odds_{01}/odds_{00})</eq></td><td><eq>OR_{00} = 1</eq> (Reference)</td></tr></table>


TABLE 5.16



Meanings of Various Odds Ratios Estimated from Logistic Regression Model


<table><tr><td><eq>\text{OR}_{10} = 1.899</eq></td><td><eq>\text{OR}_{01} = 2.614</eq></td><td><eq>\text{OR}_{11} = 4.964 (1.899*2.614)</eq></td><td><eq>\text{OR}_{11} = 2.80 (4.964*0.564)</eq></td></tr><tr><td><eq>\text{OR}_{10} = \text{odds}_{10}/\text{odds}_{00}</eq></td><td><eq>\text{OR}_{01} = \text{odds}_{01}/\text{odds}_{00}</eq></td><td><eq>\text{OR}_{11} = \text{odds}_{11}/\text{odds}_{00}</eq></td><td><eq>\text{OR}_{11} = \text{odds}_{11}/\text{odds}_{00}</eq></td></tr><tr><td>Effects of ‘dep’ alone</td><td>Effects of ‘retire’ alone</td><td>Expected joint effect</td><td>Observed joint effect</td></tr></table>

$$
\begin{array}{l} \text { Log   odds } (H P D \mid d e p = 1) = \beta_ {0} + \beta_ {1} \times d e p + \beta_ {2} \times r e t i r e + \beta_ {3} \times d e p \_ r e t i r e + \beta_ {4} \times s e x \\ = \beta_ {0} + \beta_ {1} + \beta_ {2} \times \text { retire } + \beta_ {3} \times (1 \times \text { retire }) + \beta_ {4} \times \text { sex } \\ \end{array}
$$

$$
\text { Log   odds } (H P D \mid d e p = 0) = \beta_ {0} + \beta_ {1} \times d e p + \beta_ {2} \times r e t i r e + \beta_ {3} \times d e p \_ r e t i r e + \beta_ {4} \times s e x
$$

$$
= \beta_ {0} + \beta_ {2} \times r e t i r e + \beta_ {3} \times (0 \times r e t i r e) + \beta_ {4} \times s e x
$$

We next simplify the difference between the two logits and compute its values. 

$$
\begin{array}{l} \log (O R) = \log \left(\frac {\text {   odds   } (H P D \mid d e p = 1)}{\text {   odds   } (H P D \mid d e p = 0)}\right) \\ = \log \text {odds} (\mathrm{HPD} | \mathrm{dep} = 1) - \log \text {odds} (\mathrm{HPD} | \mathrm{dep} = 0) \\ = [ (\beta_ {0} + \beta_ {1} + \beta_ {2} \times r e t i r e + \beta_ {3} \times (1 \times r e t i r e) + \beta_ {4} \times s e x) ] \\ - \left[ \left(\beta_ {0} + \beta_ {2} \times \text { retire } + \beta_ {3} \times (0 \times \text { retire }) + \beta_ {4} \times \text { sex }\right) \right] \\ = \beta_ {1} + \beta_ {3} \times (1 \times \text { retire }) - \beta_ {3} \times (0 \times \text { retire }) = \beta_ {1} + \beta_ {3} \times \text { retire } \\ \end{array}
$$

Thus, adjusted $\mathrm { O R } = \exp \left( \beta _ { 1 } + \beta _ { 3 } \times r e t i r e \right) = \exp \left( 0 . 6 4 1 1 - 0 . 5 7 3 1 \times r e t i r e \right)$ .  If there are two modifiers, for example, A and $B ,$ and the coefficients of the product terms $( E \times A$ and $E \times B )$ are $\beta _ { E A }$ and $\bar { \beta _ { E B } }$ , the equation for estimating OR is: 

$$
\mathrm{OR} = \exp \left(\beta_ {1} + \beta_ {E A} \times A + \beta_ {E B} \times B\right), \tag {5.31}
$$

where $\beta _ { 1 }$ is the coefficient of the exposure variable. The 95% confidence interval is estimated by: 

$$
\exp \left(\beta_ {1} + \beta_ {E A} \times A + \beta_ {E B} \times B\right) \pm 1. 9 6 \times \sqrt {\operatorname{var} \left(\beta_ {1} + \beta_ {E A} \times A + \beta_ {E B} \times B\right)}, \tag {5.32}
$$

where var $\left( \beta _ { 1 } + \beta _ { E A } \times A + \beta _ { E B } \times B \right) = \mathrm { v a r } ( \beta _ { 1 } ) + ( A ) ^ { 2 } \mathrm { v a r } ( \beta _ { E A } ) + ( B ) ^ { 2 } \mathrm { v a r } ( \beta _ { E B } ) + 2 \mathrm { A c o v } ( \beta _ { \nu } , \beta _ { E A } )$ + B 2 cov $\left( \beta _ { 1 } , \beta _ { E B } \right) + 2 A B \mathrm { c o v } \left( \beta _ { E A } , \beta _ { E B } \right)$ . 

The construction of the 95% confidence intervals (CIs) with product terms can be complicated as it involves the estimates of both variances and covariances. However, widely used statistical software, such as SAS, can estimate them automatically. 

The estimated OR, $\mathrm { O R } = \exp \left( \beta _ { 1 } + \beta _ { E A } \times A + \beta _ { E B } \times B \right)$ , tells us that, when a model includes one or more product terms, the OR will involve the coefficients of these product terms, and the value of the OR will depend on the values of the interacting variables or modifiers in the product terms. In this example, we can calculate the odds ratios of hypertension for the depressed and non-depressed groups separately among retired and non-retired subjects. Among retired subjects, the OR of hypertension for the depressed group compared to the non-depressed group is: 

$$
\mathrm{OR} = \exp \left(\beta_ {1} + \beta_ {3} \times \text { retire }\right) = \exp (0. 6 4 1 1 - 0. 5 7 3 1 \times 1) = 1. 0 7
$$

Among non-retired subjects, the OR of hypertension for the depressed group with the non-depressed group is calculated as: 

$$
O R = \exp (0. 6 4 1 1 - 0. 5 7 3 1 \times 0) = 1. 9 0
$$

The SAS PROC LOGISTIC program provides a handy option (“oddsratio”) to estimate the OR and its 95% confidence interval for each level of modifiers. Note the “|” is used to create both interaction and the two main independent effects of the two involving variables. 

PROC logistic data=case_control descending; class dep retire sex /param=ref ref=first; model HPD (event='1')=dep|retire sex /clodds=pl; oddsratio dep/at (retire ='1' '0'); 

RUN; 

The values of the two resultant ORs are the same as those we manually estimated above (Output 5.16). 


SAS Output 5.16 Odds ratios and 95% confidence intervals


<table><tr><td colspan="4">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Odds Ratio</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0 at retire=1</td><td>1.070</td><td>0.775</td><td>1.478</td></tr><tr><td>dep 1 vs 0 at retire=0</td><td>1.899</td><td>1.515</td><td>2.379</td></tr></table>

These results indicate that the effect of depression on hypertension is heterogeneous between the retired and non-retired groups, as evidenced by the differing odds ratios. 

## Example 5.12

To account for additional potential confounding variables, we employ the following SAS syntax to assess the interaction effect of depression and retirement on hypertension: 

```txt
PROC logistic data=case_control;
class dep retire sex race marital area income active /param=ref ref=first;
model HPD (event='1')=dep|retire sex age race eduy marital income area;
odds ratio dep/at (retire ='1' '0');
RUN; 
```

After adjusting for sex, age, race, education, marital status, income, and residential areas, the logistic regression model generates a coefficient of −0.6143 for the interaction term, dep*retire, with a corresponding p-value of 0.0028. SAS output 5.17 provides the estimated odds ratios for each level of retirement, which are as follows: 


SAS Output 5.17 Adjusted odds ratios and 95% confidence intervals


<table><tr><td colspan="4">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Odds Ratio</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0 at retire=1</td><td>0.936</td><td>0.672</td><td>1.304</td></tr><tr><td>dep 1 vs 0 at retire=0</td><td>1.730</td><td>1.368</td><td>2.188</td></tr></table>

The two odds ratios and their 95% confidence intervals demonstrate how the effect of depression on hypertension varies depending on retirement status. 

When the baseline odds of hypertension among non-depressed individuals in the retired group differ from those among non-depressed individuals in the non-retired group, a direct comparison of the two odds ratios (0.94 vs. 1.73) may not be appropriate, as discussed in Section 1.8.2. To enable a fair comparison, we employed the following SAS syntax to estimate the two odds ratios: 

```matlab
PROC genmod data=case_control;
class dep retire sex race marital area income active
    /param=glm ref=first;
model HPD (event='1')=dep|retire sex age race eduy marital
    income area /dist=bin link=logit;
lsmeans dep*retire/ilink diff exp cl; 
```

RUN; 

Using the odds value among subjects who were neither depressed nor retired as the reference odds, we obtained the following estimated odds ratios (SAS Output 5.18): 

For depression among the retired group: 0.75 (95% CI: 0.50 – 1.12). 

For depression among the non-retired group: 1.73 (95% CI: 1.37 – 2.19). 


SAS Output 5.18 Odds ratios and 95% confidence intervals, taking odds in one group as the reference


<table><tr><td colspan="7">Differences of dep*retire Least Squares Means</td></tr><tr><td>dep</td><td>retire</td><td>_dep</td><td>_retire</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>1</td><td>0</td><td>0</td><td>0.7452</td><td>0.4950</td><td>1.1218</td></tr><tr><td>1</td><td>0</td><td>0</td><td>0</td><td>1.7297</td><td>1.3676</td><td>2.1876</td></tr></table>

According to the results presented in SAS Output 5.18, among retired individuals, there exists a somewhat weak negative correlation between depression and hypertension, after adjusting for confounding variables. However, it’s worth noting that the precise strength of this negative correlation is not firmly established. In contrast, a substantial association between depression and hypertension emerges among those who are not retired. Reporting both of these odds ratios is essential as they quantitatively illustrate how the effect of one variable is determined by the other variable. 

It is important to note that in traditional case-control studies, only multiplicative interactions can be estimated when the disease or outcome is not rare. This is because both effect measures and interaction measures are assessed on an odds ratio scale within a multiplicative model, such as the logistic regression model mentioned earlier. Additive interactions can only be evaluated when the disease (outcome) being studied is rare. When the risk difference for an exposure (E) is homogeneous across categories of another exposure (M, i.e., no interaction effect), the risk difference or attributable risk (AR) estimated in each category is equal: 

$$
\mathrm{AR} _ {1 1} = \mathrm{AR} _ {1 0} = \mathrm{R} _ {1 1} - \mathrm{R} _ {0 1} = \mathrm{R} _ {1 0} - \mathrm{R} _ {0 0}, \tag {5.33}
$$

which can be simplified as: 

$$
\mathrm{R} _ {1 1} = \mathrm{R} _ {1 0} + \mathrm{R} _ {0 1} - \mathrm{R} _ {0 0}
$$

When the disease is rare, odds are approximately equal to risk: 

$$
\mathrm{odds} _ {1 1} = \mathrm{odds} _ {1 0} + \mathrm{odds} _ {0 1} - \mathrm{odds} _ {0 0}.
$$

Dividing both sides by odds00: 

$$
\left(\mathrm{odds} _ {1 1} / \mathrm{odds} _ {0 0}\right) = \left(\mathrm{odds} _ {1 0} / \mathrm{odds} _ {0 0}\right) + \left(\mathrm{odds} _ {0 1} / \mathrm{odds} _ {0 0}\right) - \left(\mathrm{odds} _ {0 0} / \mathrm{odds} _ {0 0}\right)
$$

Therefore, the expected joint OR in the additive scale can be estimated as: 

$$
\mathrm{OR} _ {1 1} = \mathrm{OR} _ {1 0} + \mathrm{OR} _ {0 1} - 1 \tag {5.34}
$$

If this equation does not hold, meaning the expected joint OR does not equal the observed OR, then additive interaction is indicated. This equation quantifies the degree to which the effect of both exposures together surpasses the additive effects of two exposures when considered separately. Typically, measures of interaction on the OR and RR scales will closely align with each other when the outcome is rare in each stratum formed by the combination of X and M. 

## 5.4.3 Key Assumptions in Logistic Regression Model

The logistic regression model is a commonly used statistical method in epidemiological research, primarily because of its flexibility and ability to estimate exposure effects. However, several key assumptions must be met when using logistic regression to analyze exposure-outcome associations, including the assumption of no outliers, multicollinearity, and linearity. 

The first key assumption is no outliers. An outlier in logistic regression refers to an observation that has a response $( { { p } _ { i } }$ value) that differs significantly from what the model would predict (Yi). Identifying outliers is important not only in logistic regression but also in other regression models, as outliers can have a significant impact on the estimated coefficients and can lead to biased and unreliable results. Therefore, researchers should identify and address outliers before fitting the logistic regression model to ensure accurate and reliable results. To identify outliers, residual diagnostic approaches such as Pearson and deviance residuals can be used (Cohen et al. 2003). 

A Pearson residual $r _ { i }$ is computed for each study subject i and measures the difference between the observed response $( p _ { i } )$ and expected response (Yi) predicted by a regression model, divided by the estimated standard deviation of the response. Specifically, the equation for Pearson residual is: 

$$
r _ {i} = \left(Y _ {i} - p _ {i}\right) / \sqrt {p _ {i} \left(1 - p _ {i}\right)} \tag {5.35}
$$

This residual is positive when the outcome occurs (outcome =1), but the predicted probability of this outcome is lower. Likewise, the residual is negative if the outcome did not occur (outcome = 0), but the predicted probability was higher than it would occur. 

Deviance residuals are another useful tool for identifying outliers in logistic regression models. A deviance residual measures the numerical contribution of the subject to the overall model deviance. It is calculated using the following equation: 

$$
d _ {i} = \operatorname{sign} \left(Y _ {i} - p _ {i}\right) \sqrt {- 2 \left[ - Y _ {i} \ln \left(p _ {i}\right) - \left(1 - Y _ {i}\right) \ln \left(1 - p _ {i}\right) \right]} \tag {5.36}
$$

where sign $\left( Y _ { i } - p _ { i } \right)$ is the sign of the discrepancy between the observed value of the outcome variable and the predicted probability. Deviance residual statistics are preferred over Pearson residual statistics for assessing outliers because they follow a normal distribution more closely and are more stable when $p _ { i }$ is close to zero or one (Cohen et al. 2003). An absolute value of the two residual statistics that exceeds about 2 or 3 indicates outliers or a lack of model fit (Agresti 2012, McCullagh and Nelder 2019). However, judgment of outliers should be based on a close examination of each predictor to determine if a suspicious value of a variable is plausible or out of logic. The SAS PROC LOGISTIC procedure provides the option of “INFLUENCE” for computing the two residual statistics and diagnostic graphs for diagnosis. 

```txt
PROC logistic data=case_control;
class dep sex race marital area income active
    /param=ref ref=first;
model HPD (event='1')=dep sex age race eduy marital
    income area active /influence; 
```

RUN; 

Outliers can have a significant impact on the efficiency and overall fit of a logistic regression model. They can cause estimated regression coefficients to change, increase the standard error of a parameter, and decrease the likelihood ratio. For instance, suppose a subject is much older than the rest of the subjects, and the deviance residual statistic for this subject is much greater than $^ { 3 , }$ indicating an outlier. In this scenario, the researcher needs to investigate whether the age range allowed for this age or if this age was entered into the dataset in error. If the age is not allowed, the researcher may choose to exclude the outlier from the study sample. Following the exclusion of the outlier, the researcher must re-run the logistic regression model and compare the estimates of regression coefficients and standard errors obtained with and without the outlier. 

In logistic regression, influential observations and outliers are distinct concepts. Influential observations are typically characterized by having extremely low or high values on one or more independent variables, which “pull” the logistic regression parameters toward their values for those subjects. Consequently, influential observations often have small residuals. On the other hand, outliers are observations with deviant values of the response variable that can reduce the efficiency and fit of a model. Outliers often have large residuals and may be removed from the data if they were measured in error. 

Although residuals can help identify outliers, they do not necessarily indicate influential observations. Therefore, researchers should carefully consider whether to keep or remove observations and only do so if they are confident that the observations were measured in error. 

The second assumption of logistic regression is the absence of collinearity. Collinearity refers to strong dependencies among covariates, which can lead to issues in obtaining accurate estimates of the distinct effects of covariates on the outcome variable. Chapter 1 of the book discusses the occurrence of collinearity, its impact on exposure effect estimates, and presents alternative approaches to address this issue (Section 1.7.4). 

The third assumption of logistic regression is linearity, which assumes that the relationship between the logit (log odds) of the outcome and each continuous independent variable is linear, as illustrated in the left-hand panel in Figure 5.5. Chapter 2 of the book covers the assessment of linearity and provides methods to address violations of this assumption (Section 2.6.8), which can also be applied to logistic regression analysis. 

## 5.5 Ordinal Logistic Regression: The Proportional Odds Model

Case-control studies are not limited to examining associations where the outcome has only two categories. Though less common, these studies can encompass multiple case subtypes in addition to a control group. For instance, a study might aim to discern risk factors across various disease subtypes, such as different forms of skin cancer (basal cell carcinoma, squamous cell carcinoma, and melanoma) or distinct occupational diseases (asthma, chronic obstructive pulmonary disease, dermatitis, and musculoskeletal disorders). For outcomes with multiple categories, two extended models come into play beyond the binary logistic regression model: the ordinal logistic model and the multinomial logistic model. These models can estimate exposure-outcome associations across outcome categories. Similar to the binary logistic regression model, the explanatory variables in the ordinal or nominal logistic regression model can be categorical and/or continuous, and the analysis typically aims to estimate crude or adjusted odds ratios. In this section, we will first introduce ordinal logistic regression, followed by multinomial logistic regression. 

## 5.5.1 Ordinal Outcome

An ordinal outcome variable has a natural ordering or ranking among the levels. For example, the outcome variable of hypertension has four levels based on the blood pressure category: “normal,” “elevated,” “stage 1 hypertension,” and “stage 2 hypertension.” The logistic regression model that handles ordinal outcomes is called “ordinal logistic regression.” This model considers the effect of an exposure on an ordered outcome and produces one odds ratio summarizing the effect across outcome levels. The analytic strategies described in the standard logistic regression model, such as selecting relevant covariates and assessing interaction effects, are also applicable to the ordinal logistic regression model. 

The proportional odds model is the most frequently used ordinal logistic regression model. It has a unique feature where the OR for an exposure variable is taken to be constant across all possible collapsed categories of the outcome variable. If the testable assumption of proportional odds is met, odds ratios are interpreted as the odds of being 

<table><tr><td rowspan="2">Comparisons</td><td colspan="4">Ordinal outcome with 4 levels</td></tr><tr><td>Normal</td><td>Elevated</td><td>Stage 1</td><td>Stage 2</td></tr><tr><td>0 vs. 1-3</td><td>0</td><td>1</td><td>2</td><td>3</td></tr><tr><td>0,1 vs. 2,3</td><td>0</td><td>1</td><td>2</td><td>3</td></tr><tr><td>0-2 vs. 3</td><td>0</td><td>1</td><td>2</td><td>3</td></tr></table>

## FIGURE 5.6

Coding of comparisons in ordinal logistic regression model. 

“lower” or “higher” on the outcome variable across the categories of the outcome. The model retains the ordinal characteristics of the outcome, such as a monotonic trend, and estimates one coefficient for each explanatory variable, making it parsimonious and statistically efficient. 

## 5.5.2 Proportional Odds Assumption

The outcome variable of hypertension has four levels (k = 4). There are three possible ways to dichotomize the four levels into two collapsed comparison categories (Figure 5.6). 

Dichotomization must keep the natural ordering of an outcome variable (Allison 2018). We cannot make a comparison between 0, 2 and 1, 3 because the natural ordering is not maintained. If an ordinal outcome variable (Y) has k categories, there are k−1 ways to dichotomize the outcome according to its ordering. The odds that Y ≥ k is equal to the probability (P) of Y ≥ k divided by the probability of P(Y < k): 

$$
\text { odds } (Y \geq k) = P (Y \geq k) / P (Y <   k). \tag {5.37}
$$

For example, odds $( Y \ge 2 ) = \operatorname { P } ( Y \ge 2 ) / \operatorname { P } ( Y < 2 )$ . The OR is estimated by: 

$$
\operatorname{OR} (Y \geq k) = \text { odds } (Y \geq k | E = 1) / \text { odds } (Y \geq k | E = 0) \tag {5.38}
$$

The proportional odds model is characterized by the assumption that the OR quantifying the effect of an exposure variable for any of the k−1 cut points in the outcome variable is constant. This is known as the “proportional odds assumption.” Specifically, the odds ratios estimated from a proportional odds model are assumed to be equal across all possible comparisons for an outcome with k categories. For example, if the outcome variable has four categories (Figure 5.6), the following odds ratios estimated from a proportional odds model are assumed to be the same across the three comparisons: the odds of being in categories 1–3 versus category 0, the odds of being in categories 2 and 3 versus category 0 and 1, and the odds of being in category 3 versus categories 0-2. 

$$
\operatorname{OR} (D \geq 1) = \operatorname{OR} (D \geq 2) = \operatorname{OR} (D \geq 3).
$$

Therefore, the OR for an exposure variable is taken to be constant across all possible collapsed categories of the outcome variable. If there are k outcome categories, the model estimates only one regression coefficient for each of the explanatory variables, but k−1 intercept terms for each of the comparisons. 

## Example 5.13

For example, suppose we analyze the association between race and hypertension in a case-control study, where hypertension is measured by four levels as we described before, and race has two levels: back and white (Table 5.17). 


TABLE 5.17



Frequency of Hypertension among Blacks and Whites


<table><tr><td>Hypertension</td><td>Black</td><td>White</td></tr><tr><td>Normal (0)</td><td>117</td><td>380</td></tr><tr><td>Elevated (1)</td><td>52</td><td>156</td></tr><tr><td>Stage 1 (2)</td><td>121</td><td>270</td></tr><tr><td>Stage 2 (3)</td><td>173</td><td>300</td></tr></table>

To examine the proportional odds assumption, we follow the comparison coding presented in Figure 5.6 and collapse Table 5.17 into three tables (Table 5.18). Odds ratios are calculated in each of the three comparison tables. 


TABLE 5.18



Calculation of Odds Ratios in Three Ordinal Comparison Table


<table><tr><td>Comparing coding</td><td>Black</td><td>White</td><td></td></tr><tr><td>0</td><td>117</td><td>380</td><td></td></tr><tr><td>1-3</td><td>346</td><td>726</td><td>OR = 1.55</td></tr><tr><td>0,1</td><td>169</td><td>536</td><td></td></tr><tr><td>2,3</td><td>294</td><td>570</td><td>OR = 1.63</td></tr><tr><td>0-2</td><td>290</td><td>806</td><td></td></tr><tr><td>3</td><td>173</td><td>300</td><td>OR = 1.60</td></tr></table>

As the three odds ratios calculated in the three ordinal tables are close to each other, we may say that the proportional odds assumption holds in this ordinal logistic regression analysis. 

The score test can be used to statistically test the proportional odds assumption (Scott, Goldberg, and Mayo 1997). The score test assesses whether the effects, estimated by $\beta ,$ are the same for each cumulative logit against the alternative of separate effects $\beta _ { k }$ . That is, it tests if there is a common parameter vector $\beta$ instead of distinct $\beta _ { k }$ . 

$$
\mathrm{H} _ {0}: \beta_ {k} = \beta \text {   for   all   } k \text {   comparisons   }
$$

$$
\mathrm{e.g.,} \mathrm{OR} = \mathrm{OR} (\mathrm{D} \geq 1) = \mathrm{OR} (\mathrm{D} \geq 2) = \mathrm{OR} (\mathrm{D} \geq 3)
$$

The score test is a type of Chi-square test based on the score statistic. It has $t \times \left( k - 2 \right)$ degrees of freedom, where t is the number of explanatory variables and k is the number of levels of the ordinal outcome variable. The test assesses the difference between the log-likelihood score derived from an unconstrained continuation-ratio model and the log-likelihood score derived from the proportional odds model. 

If an outcome variable has three levels, two unconstrained continuation-ratio models are created. The first model compares level 0 to levels 1 and 2, and the second model compares levels 0 and 1 to level 2. A log-likelihood score is calculated for each of the two models. The score test then evaluates the difference between the log-likelihood score estimated from the proportional odds model and the sum of the two log-likelihood scores estimated from the two unconstrained models. 

It is important to note that the significance in a test of proportional odds may be influenced by a large sample size or the inclusion of many explanatory variables, particularly continuous variables, in a model. Therefore, caution must be exercised when using the p-value of the score test. When the p-value is less than 0.05, it is crucial to carefully examine whether the violation of the proportional odds assumption has any clinical or practical significance. One straightforward approach is to compare the odds ratios estimated from separate binary logistic regression models with the odds ratio estimated from the proportional odds model. If the direction (positive or negative association) and magnitude of the odds ratios in each case are similar, the proportional odds model may still be used. 

## 5.5.3 Use of the Ordinal Logistic Regression

Suppose that D is the outcome variable with K-ordered levels. The proportional odds logistic regression model is expressed as: 

$$
\text { Log   odds   of } \left[ D \geq k \mid x \right] = \alpha_ {k} + \beta x, \tag {5.39}
$$

where $k = 1 , 2 , . . . , K { - } 1$ . This model allows a separate value of intercept α for each $k ,$ but only one regression coefficient $\beta$ that quantifies the association between x and D. The proportional odds assumption holds when $\beta$ is constant across all possible cut points k. The odds of being in category k or higher, given the value of $x ,$ is equal to the exponentiation of the quantity $\alpha _ { \mathrm { k } }$ plus $\beta _ { 1 } x .$ . 

Similar to logistic regression analysis, ordinal logistic regression analysis allows us to estimate the effect of an exposure variable on the odds of an ordinal outcome, while adjusting for potential confounding effects. The exposure variable can be either continuous or categorical. 

## Example 5.14

We use the NHEFS data to demonstrate the use of the ordinal logistic regression model in estimating the association between race and hypertension, while adjusting for sex and marital status. According to the American Heart Association, hypertension can be classified into four levels based on the levels of systolic and diastolic pressure (mm Hg): “normal” (systolic < 120 and diastolic < 80), “elevated” (systolic: 120–129 and diastolic < 80), “stage 1 hypertension” (systolic: 130–139 or diastolic: 80–89), and “stage 2 hypertension” (systolic: 140 or higher or diastolic: 90 or higher). The exposure variable of race (RACE2) is coded as 1 for black or other races, and 0 for white. The following SAS syntax is used to test the proportional odds assumption and estimate adjusted odds ratios: 

PROC logistic data=case_control desc; class sex race2 marital /ref=first; model HPD4 = race2 sex marital; 

RUN; 

Based on the SAS output, the score Chi-square for testing the proportional odds assumption is 11.13 with a p-value of 0.19. Therefore, we accept the null hypothesis that the proportional odds assumption holds (Output 5.19). 


SAS Output 5.19 Score test for the proportional odds assumption


<table><tr><td colspan="3">Score Test for the Proportional Odds Assumption</td></tr><tr><td>Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>11.1301</td><td>8</td><td>0.1944</td></tr></table>

As listed in Output 5.20, there are three intercepts, one for each comparison, but only one estimated regression coefficient for the effect of race. The OR for race is the exponentiation of its coefficient (0.2022). Thus, the adjusted OR for the association between race and hypertension is 1.50 (96%CI: 1.25–1.79). The interpretation of the OR is not as straightforward as the one estimated from the traditional binary logistic regression, as we described in Section 5.4. We state that the OR of 1.50 means that blacks compared to whites have 1.50 times higher odds of having a more severe stage of hypertension, adjusting for sex and marital status. The odds ratio of 1.5 is constant across the three ordered outcome comparisons: (1) elevated stage, stage 1, or stage 2 vs. normal stage; (2) stages 1 or stage 2 vs. elevated stage or normal; and (3) stage 2 vs. other stages. 


SAS Output 5.20 Maximum Likelihood Estimates and odds ratio estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>3</td><td>1</td><td>-0.6579</td><td>0.0611</td><td>115.9497</td><td>&lt;.0001</td></tr><tr><td>Intercept</td><td>2</td><td>1</td><td>0.4899</td><td>0.0606</td><td>65.2950</td><td>&lt;.0001</td></tr><tr><td>Intercept</td><td>1</td><td>1</td><td>1.0561</td><td>0.0624</td><td>286.8028</td><td>&lt;.0001</td></tr><tr><td>race2</td><td>1</td><td>1</td><td>0.2022</td><td>0.0455</td><td>19.7165</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>1</td><td>1</td><td>0.3376</td><td>0.0306</td><td>122.0773</td><td>&lt;.0001</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.0484</td><td>0.0888</td><td>0.2969</td><td>0.5858</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>0.2717</td><td>0.0595</td><td>20.8538</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>race2 1 vs 0</td><td>1.498</td><td>1.253</td><td>1.791</td></tr><tr><td>sex 1 vs 0</td><td>1.964</td><td>1.743</td><td>2.214</td></tr><tr><td>marital 1 vs 0</td><td>1.191</td><td>0.916</td><td>1.548</td></tr><tr><td>marital 2 vs 0</td><td>1.640</td><td>1.432</td><td>1.880</td></tr></table>

What if the proportional odds assumption does not hold? One approach is to create separate logistic models for each level of the outcome variable, especially if the sample size is fairly large. In the following example, we estimate the association between race and hypertension by adjusting an additional confounder, age. As indicated by the score test, the proportional odds assumption is rejected (Output 5.21). 


SAS Output 5.21 Score test for the proportional odds assumption


<table><tr><td colspan="3">Score Test for the Proportional Odds Assumption</td></tr><tr><td>Chi-Square</td><td>DF</td><td>Pr &gt; ChiSq</td></tr><tr><td>74.5756</td><td>10</td><td>&lt;.0001</td></tr></table>

We next create three traditional logistic regression models to separately estimate the exposure effects, following the same coding presented in Figure 5.6. 

Model 1: Comparing the levels of outcome between 0 and 1–3: 


SAS Output 5.22 Odds ratios: comparing the levels of outcome between 0 and 1–3


<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>race2 1 vs 0</td><td>1.524</td><td>1.205</td><td>1.928</td></tr><tr><td>sex 1 vs 0</td><td>1.905</td><td>1.637</td><td>2.216</td></tr><tr><td>marital 1 vs 0</td><td>1.204</td><td>0.869</td><td>1.669</td></tr><tr><td>marital 2 vs 0</td><td>1.280</td><td>1.075</td><td>1.525</td></tr><tr><td>age</td><td>1.049</td><td>1.043</td><td>1.055</td></tr></table>

Model 2: Comparing the levels of 0 and 1 with 2 and 3: 


SAS Output 5.23 Odds ratios: comparing the levels of outcome between 0 and 1 with 2 and 3


<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>race2 1 vs 0</td><td>1.565</td><td>1.267</td><td>1.934</td></tr><tr><td>sex 1 vs 0</td><td>1.801</td><td>1.567</td><td>2.069</td></tr><tr><td>marital 1 vs 0</td><td>1.093</td><td>0.807</td><td>1.480</td></tr><tr><td>marital 2 vs 0</td><td>1.251</td><td>1.065</td><td>1.469</td></tr><tr><td>age</td><td>1.038</td><td>1.033</td><td>1.043</td></tr></table>

Model 3: Comparing the levels of 0-2 and 3: 


SAS Output 5.24 Odds ratios: comparing the levels of outcome between 0–2 and 3


<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>race2 1 vs 0</td><td>1.698</td><td>1.362</td><td>2.116</td></tr><tr><td>sex 1 vs 0</td><td>1.492</td><td>1.276</td><td>1.745</td></tr><tr><td>marital 1 vs 0</td><td>1.468</td><td>1.049</td><td>2.054</td></tr><tr><td>marital 2 vs 0</td><td>1.137</td><td>0.950</td><td>1.360</td></tr><tr><td>age</td><td>1.054</td><td>1.049</td><td>1.060</td></tr></table>

Because the odds ratio estimated in model 3 is quite different from that estimated in models 1 and 2, it is not appropriate to use a common odds ratio to present the effect of race on hypertension risk. The SAS syntaxes used to estimate the above odds ratios are listed below: 

```sql
/***MODEL 1***/
PROC logistic data=case_control;
    class sex race2 marital /ref=first;
    model HPD_0vs123 (event='1') = race2 sex marital age;
RUN;
/***MODEL 2***/
PROC logistic data=case_control;
    class sex race2 marital /ref=first;
    model HPD_01vs23 (event='1') = race2 sex marital age;
RUN; 
```

```sql
/***MODEL 3***/
PROC logistic data=case_control;
class sex race2 marital /ref=first;
model HPD_012vs3 (event='1') = race2 sex marital age;
RUN; 
```

In addition to using separate logistic regression models to handle the violation of the proportional odds assumption, another alternative is the use of the multinomial logistic regression model, which will be introduced in the next section. 

## 5.6 Multinomial Logistic Regression

The multinomial logistic regression model is an extension of binary logistic regression that can handle nominal outcome variables. The model is referred to as the multinomial logit model because it assumes a probability distribution for the outcome variable that follows a multinomial distribution, rather than a binomial distribution. To estimate exposureoutcome associations, the model utilizes separate binary logistic regression models for each paired comparison of outcome categories. 

## 5.6.1 Nominal Outcome

Nominal outcome variables are characterized by having more than two categories that lack an intrinsic order and represent different classifications of an outcome variable. For instance, the classification of COVID-19 cases is a nominal outcome variable that includes the following categories: asymptomatic cases, non-hospitalized symptomatic cases, hospitalized symptomatic cases, and death. Another example is the type of death, which includes categories such as alive, death from COVID-19, death from heart stroke, and death from causes other than COVID-19 and heart stroke. 

## Example 5.15

For documentation purposes, let’s assume that hypertension classification is a nominal outcome variable with four categories (0: normal; 1: elevated; 2: stage 1; and 3: stage 2) and race is the exposure variable. The analysis aims to estimate the association between hypertension and race at each category of the outcome. We can create three binary logistic regression models to estimate odds ratios and confidence intervals for each category of the outcome. In this case-control study, category 0 serves as the reference group, while categories 1 to 3 are the case groups. The results of the analysis are presented in Table 5.19. 


TABLE 5.19



Odds Ratios Estimated by Three Models


<table><tr><td rowspan="2">Hypertension</td><td colspan="2">Model 1</td><td colspan="3">Model 2</td><td colspan="3">Model 3</td></tr><tr><td>Black</td><td>White</td><td>Hypertension</td><td>Black</td><td>White</td><td>Hypertension</td><td>Black</td><td>White</td></tr><tr><td>Normal</td><td>1,203</td><td>117</td><td>Normal</td><td>1,203</td><td>117</td><td>Normal</td><td>1,203</td><td>117</td></tr><tr><td>Elevated</td><td>467</td><td>52</td><td>Stage 1</td><td>925</td><td>121</td><td>Stage 2</td><td>942</td><td>173</td></tr><tr><td colspan="3">OR = 1.15; 95% CI: 0.81–1.61</td><td colspan="3">OR = 1.35; 95% CI: 1.03–1.76</td><td colspan="3">OR = 1.89; 95% CI: 1.47–2.42</td></tr></table>

The increase in the odds ratios indicates an increase in the odds of progressive hypertension among black subjects, compared to white subjects. 

## 5.6.2 Use of Multinomial Logistic Regression Model

In multinomial logistic regression analysis, one of the categories of the outcome variable is designated as the reference category, and the remaining levels are compared to this reference. The choice of reference category is arbitrary and determined by the researcher. In this example with four outcome categories and one explanatory variable (race), three regression expressions are required. One expression gives the log of the probability that the outcome is in category 1 divided by the probability that the outcome is in category 0, which equals $\alpha _ { 1 } { + } \beta _ { 1 } x$ . The model also simultaneously models the log of the probability that the outcome is in categories 2 and 3 divided by the probability that the outcome is in category 0. Specifically, 

$$
\operatorname{Log} \left(\text { odds   of } D = 1 \mid x\right) = \alpha_ {1} + \beta_ {1} x,
$$

$$
\text { Log } (\text { odds   of } D = 2 \mid x) = \alpha_ {2} + \beta_ {2} x, \text { and }
$$

$$
\operatorname{Log} \left(\text { odds   of } D = 3 \mid x\right) = \alpha_ {3} + \beta_ {3} x.
$$

Similar to binary logistic regression, the OR is calculated as the exponentiation of the regression coefficient. That is, $\mathrm { \bar { O R } } _ { 1 } = e ^ { \beta _ { 1 } } , \mathrm { O R } _ { 2 } = e ^ { \beta _ { 2 } }$ , and $\mathrm { O R } _ { 3 } = e ^ { \beta _ { 3 } }$ . Since a multinomial logistic regression model estimates three different odds ratios, the magnitude of the exposureoutcome association depends on which outcome levels are being compared. 

## Example 5.16

We now use the SAS PROG LOGISTIC program to perform the multinomial logistic regression analysis. 

```txt
PROC logistic data=case_control;
class race2 /ref=first;
model HPD4 (ref='0')=race2 /link=glogit;
RUN; 
```

By default, PROC LOGISTIC assumes that the highest level of the outcome variable is the reference group. Since the level of “normal,” coded as ${ } ^ { \prime \prime } 0 , { } ^ { \prime \prime }$ is selected as the reference, we specify it in the MODEL statement $( \mathrm { R E F } = " 0 ^ { \prime \prime } )$ . The key difference in SAS syntax for specifying a multinomial logistic regression versus a binary logistic regression is the LINK=GLOGIT option. This option requests a generalized logit link function for the model. If a three or more level outcome is specified in the model statement without using the LINK= option, the default analysis is an ordinal logistic regression, which uses a cumulative logit link function as presented in Section 5.5. Output 5.25 displays the regression coefficients, odds ratios, and their 95% confidence intervals that the multinomial logistic regression model estimates. 


SAS Output 5.25 Maximum likelihood estimates and odds ratio estimates


<table><tr><td colspan="8">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>HPD4</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt;ChiSq</td></tr><tr><td>Intercept</td><td></td><td>1</td><td>1</td><td>-0.8785</td><td>0.0877</td><td>100.3872</td><td>&lt;.0001</td></tr><tr><td>Intercept</td><td></td><td>2</td><td>1</td><td>-0.1144</td><td>0.0684</td><td>2.7959</td><td>0.0945</td></tr><tr><td>Intercept</td><td></td><td>3</td><td>1</td><td>0.0734</td><td>0.0637</td><td>1.3273</td><td>0.2493</td></tr><tr><td>race2</td><td>1</td><td>1</td><td>1</td><td>0.0677</td><td>0.0877</td><td>0.5966</td><td>0.4399</td></tr><tr><td>race2</td><td>1</td><td>2</td><td>1</td><td>0.1484</td><td>0.0684</td><td>4.7034</td><td>0.0301</td></tr><tr><td>race2</td><td>1</td><td>3</td><td>1</td><td>0.3179</td><td>0.0637</td><td>24.9256</td><td>&lt;.0001</td></tr></table>

<table><tr><td colspan="5">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>HPD4</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>race2 1 vs 0</td><td>1</td><td>1.145</td><td>0.812</td><td>1.615</td></tr><tr><td>race2 1 vs 0</td><td>2</td><td>1.345</td><td>1.029</td><td>1.759</td></tr><tr><td>race2 1 vs 0</td><td>3</td><td>1.889</td><td>1.471</td><td>2.424</td></tr></table>

The odds ratios estimated from the multinomial model (i.e., 1.15, 1.35, and 1.89) match those obtained from the three separate binary logistic regression models (Table 5.19). When there is one dichotomous exposure variable, both binary and multinomial models produce the same odds ratios and 95% confidence intervals, making the results consistent between the two approaches. 

The interpretation of each estimated odds ratio in the multinomial logistic regression model is similar to that of a binary logistic regression model. Specifically, we interpret the odds ratios as follows: black subjects, relative to white subjects, had higher odds of having hypertension categorized as “elevated” (OR = 1.15, 95% CI: 0.81–1.62), higher odds of having it classified as “stage 1 hypertension” (OR = 1.35, 95% CI: 1.03–1.76), and higher odds of having it classified as “stage 2 hypertension” (OR = 1.89, 95% CI: 1.47–2.42), compared to having “normal” blood pressure. These results suggest that being black is a risk factor for hypertension. Although the first OR for elevated hypertension is small and close to one, it is important to keep all three coefficients for an independent variable in the nominal regression model and report all three odds ratios. 

To estimate the association between hypertension and race, we use this model to adjust for confounding variables. Let’s take sex, marital status, and age as potential confounding variables. The following SAS PROC LOGISTIC syntax is used to estimate the adjusted odds ratios: 

```txt
PROC logistic data=case_control;
class sex race2 marital /ref=first;
model HPD4 (ref='0')=race2 sex marital age
/link=glogit;
RUN; 
```

The three adjusted odds ratios of hypertension at the four levels for blacks versus whites are 1.17, 1.37, and 2.00 (Output 5.26). 


SAS Output 5.26 Odds ratio estimates


<table><tr><td colspan="6">Odds Ratio Estimates</td></tr><tr><td colspan="2">Effect</td><td>HPD4</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>race2</td><td>1 vs 0</td><td>1</td><td>1.167</td><td>0.820</td><td>1.659</td></tr><tr><td>race2</td><td>1 vs 0</td><td>2</td><td>1.369</td><td>1.038</td><td>1.806</td></tr><tr><td>race2</td><td>1 vs 0</td><td>3</td><td>1.998</td><td>1.519</td><td>2.629</td></tr><tr><td>sex</td><td>1 vs 0</td><td>1</td><td>1.472</td><td>1.178</td><td>1.840</td></tr><tr><td>sex</td><td>1 vs 0</td><td>2</td><td>1.958</td><td>1.640</td><td>2.337</td></tr><tr><td>sex</td><td>1 vs 0</td><td>3</td><td>2.117</td><td>1.756</td><td>2.553</td></tr><tr><td>marital</td><td>1 vs 0</td><td>1</td><td>1.301</td><td>0.813</td><td>2.079</td></tr><tr><td>marital</td><td>1 vs 0</td><td>2</td><td>0.923</td><td>0.613</td><td>1.389</td></tr><tr><td>marital</td><td>1 vs 0</td><td>3</td><td>1.514</td><td>1.018</td><td>2.251</td></tr><tr><td>marital</td><td>2 vs 0</td><td>1</td><td>1.162</td><td>0.899</td><td>1.502</td></tr><tr><td>marital</td><td>2 vs 0</td><td>2</td><td>1.307</td><td>1.064</td><td>1.605</td></tr><tr><td>marital</td><td>2 vs 0</td><td>3</td><td>1.300</td><td>1.049</td><td>1.611</td></tr><tr><td>age</td><td></td><td>1</td><td>1.040</td><td>1.032</td><td>1.048</td></tr><tr><td>age</td><td></td><td>2</td><td>1.028</td><td>1.022</td><td>1.035</td></tr><tr><td>age</td><td></td><td>3</td><td>1.075</td><td>1.068</td><td>1.082</td></tr></table>

We can also use this model to assess interaction effects. Suppose we assess the interaction effect of race and poverty on the categories of hypertension. Poverty is defined as having an annual income less than $10,000 (coded as “1”). The following SAS syntax is used to assess the interaction effects. 

```javascript
PROC logistic data=case_control;
class sex race2 marital /ref=first;
model HPD4 (ref='0')=race2|poperty sex marital age /link=glogit; 
```

RUN; 

Because the coefficients of the three product terms are close to the null (0) and their p-values are between 0.77 and 0.89, it appears that there is no notable interaction effect between the two variables (Output 5.27). 


SAS Output 5.27 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>HPD4</td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td>1</td><td>1</td><td>-2.7211</td><td>0.2547</td><td>114.0938</td><td>&lt;.0001</td></tr><tr><td>Intercept</td><td>2</td><td>1</td><td>-1.4688</td><td>0.2032</td><td>52.2239</td><td>&lt;.0001</td></tr><tr><td>Intercept</td><td>3</td><td>1</td><td>-3.6617</td><td>0.2162</td><td>286.7573</td><td>&lt;.0001</td></tr><tr><td>race2</td><td>1</td><td>1</td><td>0.0835</td><td>0.1230</td><td>0.4615</td><td>0.4969</td></tr><tr><td>race2</td><td>2</td><td>1</td><td>0.1463</td><td>0.0932</td><td>2.4665</td><td>0.1163</td></tr><tr><td>race2</td><td>3</td><td>1</td><td>0.3435</td><td>0.0958</td><td>12.8525</td><td>0.0003</td></tr><tr><td>poperty</td><td>1</td><td>1</td><td>0.1371</td><td>0.1915</td><td>0.5122</td><td>0.4742</td></tr><tr><td>poperty</td><td>2</td><td>1</td><td>-0.0422</td><td>0.1526</td><td>0.0765</td><td>0.7821</td></tr><tr><td>poperty</td><td>3</td><td>1</td><td>0.1052</td><td>0.1506</td><td>0.4877</td><td>0.4850</td></tr><tr><td>poperty*race2</td><td>1</td><td>1</td><td>-0.0521</td><td>0.1817</td><td>0.0822</td><td>0.7744</td></tr><tr><td>poperty*race2</td><td>2</td><td>1</td><td>0.0418</td><td>0.1446</td><td>0.0835</td><td>0.7727</td></tr><tr><td>poperty*race2</td><td>3</td><td>1</td><td>-0.0202</td><td>0.1419</td><td>0.0202</td><td>0.8869</td></tr><tr><td>sex</td><td>1</td><td>1</td><td>0.1987</td><td>0.0571</td><td>12.1288</td><td>0.0005</td></tr><tr><td>sex</td><td>2</td><td>1</td><td>0.3338</td><td>0.0453</td><td>54.2443</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>3</td><td>1</td><td>0.3789</td><td>0.0479</td><td>62.6158</td><td>&lt;.0001</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>0.1125</td><td>0.1602</td><td>0.4938</td><td>0.4822</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>-0.1374</td><td>0.1394</td><td>0.9710</td><td>0.3244</td></tr><tr><td>marital</td><td>3</td><td>1</td><td>0.1802</td><td>0.1350</td><td>1.7817</td><td>0.1819</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.00848</td><td>0.1115</td><td>0.0058</td><td>0.9394</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>0.2125</td><td>0.0934</td><td>5.1749</td><td>0.0229</td></tr><tr><td>marital</td><td>3</td><td>1</td><td>0.0230</td><td>0.0932</td><td>0.0610</td><td>0.8050</td></tr><tr><td>age</td><td>1</td><td>1</td><td>0.0374</td><td>0.00430</td><td>75.7251</td><td>&lt;.0001</td></tr><tr><td>age</td><td>2</td><td>1</td><td>0.0287</td><td>0.00357</td><td>64.6720</td><td>&lt;.0001</td></tr><tr><td>age</td><td>3</td><td>1</td><td>0.0712</td><td>0.00366</td><td>377.9424</td><td>&lt;.0001</td></tr></table>

We can also use the likelihood ratio test to compare the model with the three product terms and the model without them. The p-value of the test is 0.95. 

Because separate binary logistic regression models and multinomial logistic regression models use different likelihood functions for parameter estimation and variance estimation, the results obtained from fitting separate binary logistic models for each outcome category may differ from those obtained from the multinomial logistic regression model that considers all categories of the outcome simultaneously. However, in the special case where there is only one dichotomous predictor in the multinomial model, the parameter estimates and variance estimates obtained from fitting separate binary logistic models are the same as those obtained from the multinomial model. 

## 5.7 Summary

This chapter has delved into the application of logistic regression analysis within the framework of traditional case-control studies. Despite its inherent limitations, the logistic regression model has found widespread utility in the analysis of case-control data, encompassing binary, ordinal, or nominal outcomes. To accurately estimate exposure-outcome associations in these models, it is imperative to diligently select and control for confounding variables while also appropriately assessing effect modification. Additionally, careful scrutiny of assumptions specific to logistic regression is crucial, with provision for alternatives when data do not support one or more assumptions. The correct interpretation of odds ratios, especially when estimated from ordinal or multinomial logistic regression models, remains essential, although these extended models are not typically employed in case-control studies with two or more outcome categories. 

As previously mentioned, the intricacies of data analysis for case-control studies span three chapters. This chapter has focused on analysis techniques pertinent to traditional case-control studies. Chapter 6 will dissect the matched case-control study design, and Chapter 7 will elucidate the data analysis procedures for population-based studies. 

## Additional Readings

The following excellent books provide additional information about the logistic regression model: 

Borgan, Ørnulf, Norman E. Breslow, Nilanjan Chatterjee, Mitchell H. Gail, Alastair Scott, and Christopher Wild. 2018. Handbook of statistical methods for case-control studies. Boca Raton, FL: Chapman & Hall/CRC Press. 



Hosmer, D.W., S. Lemeshow, and R.X. Sturdivant. 2013. Applied logistic regression. 3rd ed. New Jersey: Wiley. 





Scott, S. C., M. S. Goldberg, and N. E. Mayo. 1997. Statistical assessment of ordinal outcomes in comparative studies. J Clin Epidemiol 50 (1):45–55. doi: 10.1016/s0895-4356(96)00312-5. 





Kleinbaum, D.G., and M. Klein. 2010. Logistic regression: A self-learning text. 3rd ed: Springer New York. 





Szklo, M., and F. Javier Nieto. 2019. Epidemiology: Beyond the basics. Burlington, Massachusetts: Jones & Bartlett Learning. 



## References



Tarone, R. E. 1985. On heterogeneity tests based on efficient scores. Biometrika 72 (1):91–95. doi: 10.2307/2336337. 





Wacholder, S. 1991. Practical considerations in choosing between the case-cohort and nested casecontrol designs. Epidemiology 2 (2):155–158. doi: 10.1097/00001648-199103000-00013. 





Agresti, A. 2012. Categorical data analysis. 2nd ed. Wiley series in probability and statistics. New York: Wiley. 





Allison, P. D. 2018. Logistic regression using SAS: Theory and application. 2nd ed. Cary, NC: SAS Institute Inc. 





Borgan, Ø., N. E. Breslow, N. Chatterjee, M. H. Gail, A. Scott, and C. Wild. 2018. Handbook of statistical methods for case-control studies. Boca Raton, FL: Chapman & Hall/CRC Press. 





Breslow, N. E., and N. E. Day. 1980. Statistical methods in cancer research. Volume I - The analysis of casecontrol studies. 1980/01/01 ed. Vol. 1, IARC Sci Publ. Lyon: International Agency for research on cancer. 





Clayton, D., and M. Hills. 1993. Statistical models in epidemiology. Oxford: Oxford. 





Cohen, J., P. Cohen, S. G. West, and L. S. Aiken. 2003. Applied multiple regression/correlation analysis for the behavioral sciences. 3rd ed. Mahwah, NJ, US: Lawrence Erlbaum Associates Publishers. 





Cornfield, J. 1951a. A method of estimating comparative rates from clinical data. Applications to cancer of the lung, breast, and cervix. J Natl Cancer Inst 11 (6):1269–1275. doi: 10.1093/ jnci/11.6.1269. 





Cornfield, J. 1951b. A method of estimating comparative rates from clinical data; applications to cancer of the lung, breast, and cervix. J Natl Cancer Inst 11 (6):1269–1275. 





Ernster, V. L. 1994. Nested case-control studies. Prev Med 23 (5):587–590. doi: 10.1006/pmed.1994.1093. 





Greenland, S. 1987. Interpretation and choice of effect measures in epidemiologic analyses. Am J Epidemiol 125 (5):761–768. doi: 10.1093/oxfordjournals.aje.a114593. 





Greenland, S., and D. C. Thomas. 1982. On the need for the rare disease assumption in case-control studies. Am J Epidemiol 116 (3):547–553. doi: 10.1093/oxfordjournals.aje.a113439. 





Hosmer, D.W., S. Lemeshow, and R.X. Sturdivant. 2013. Applied logistic regression. 3rd ed. New Jersey: Wiley. 





Kleinbaum, D. G., and M. Klein. 2010. Logistic regression: A self-learning text. 3rd ed. New York: Springer. 





Kleinbaum, D. G., L. L. Kupper, and H. Morgenstern. 1982. Epidemiologic research: Principles and quantitative methods. Belmont, CA: Lifetime Learning Publications. 





Langholz, B., and D. Richardson. 2009. Are nested case-control studies biased? Epidemiology 20 (3):321–329. doi: 10.1097/EDE.0b013e31819e370b. 





Liddell, F. D. K., J. C. McDonald, D. C. Thomas, and S. V. Cunliffe. 1977. Methods of cohort analysis: Appraisal by application to asbestos mining. J R Stat Soc Ser A Stat Soc 140 (4):469–491. doi: 10.2307/2345280. 





McCullagh, P., and J. A. Nelder. 2019. Generalized linear models. 2nd ed. New York: Routledge. 





Miettinen, O. 1976. Estimability and estimation in case-referent studies. Am J Epidemiol 103 (2):226–235. doi: 10.1093/oxfordjournals.aje.a112220. 





Prentice, R. L. 1986. A case-cohort design for epidemiologic cohort studies and disease prevention trials. Biometrika 73 (1):1–11. doi: 10.1093/biomet/73.1.1. 





Prentice, R. L., and N. E. Breslow. 1978. Retrospective studies and failure time models. Biometrika 65 (1):153–158. doi: 10.2307/2335290. 



# Modeling for Matched Case-Control Studies

Epidemiologists often choose to match controls to cases based on the values of confounders when designing case-control studies. This chapter elucidates the rationale behind such matching, outlines the methodologies involved, and discusses the statistical techniques for analyzing matched case-control data during regression analysis. It also addresses the issue of selection bias introduced by matching, in addition to the original confounding and its impact on statistical efficiency. The chapter offers detailed explanations of both conditional and unconditional logistic regression analyses, accompanied by examples tailored to the matching methods employed. 

## 6.1 Review of the Matched Case-Control Study Design

Matching is a common technique in observational studies aimed at controlling for confounding variables. This is achieved by restricting the eligibility of comparison subjects so that they are similar or comparable to index subjects with respect to one or more matching variables (confounders). Matching is done differently in case-control and cohort studies. In case-control studies, controls are matched to cases, whereas in cohort studies, unexposed subjects are matched to exposed subjects. Balanced matching maintains the distribution of the matching variables that is either identical or closely similar across the exposed and unexposed groups in cohort studies, as well as between cases and controls in case-control studies. In the following two sections, Mansournia and colleagues’ diagram approach will be used to illustrate matching in cohort studies and case-control studies (Mansournia, Hernán, and Greenland 2013, Mansournia, Jewell, and Greenland 2018). 

## 6.1.1 Matching in Cohort Studies

The goal of matching varies between study designs. In cohort studies, matching is used to prevent confounding by the matching factors. If there is no source of bias other than confounding by the matching factors, statistical adjustment, either through stratified analysis or regression modeling, might not be necessary to eliminate bias (Lash and Rothman 2021). 

In cohort studies, when unexposed subjects are matched to exposed subjects based on a confounding variable C, the distribution of C in the matched cohort reflects the distribution of the matching factors among the exposed subjects in the base population. Consequently, the distribution of C will be identical between the exposed and unexposed groups within the matched cohort. The matching procedure is depicted in Figure 6.1. C is a confounding variable that confounds the association between the exposure E and outcome D. M denotes the matching process, and data analysis will only be performed within the matched dataset. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/eed8c95dfe20976f5fc2821f8a105fbebcac88773c1ecddf27e047cc8a2bb178.jpg)



FIGURE 6.1



Matching a confounder C in a cohort study.


The arrow from E to M indicates that matching is based on the value or status of C in exposed index subjects, while the arrow from C to M indicates that an unexposed subject’s value of C will be matched to the same value of an exposed subject. Matching introduces a new association between C and E through the path of C ̶ M ̶ E. An association observed on the new path $\mathbf { C } - \mathbf { M } - \mathbf { E }$ bears the same magnitude as that on the path $\mathrm { C } - \mathrm { E } ,$ but in the inverse direction. This guarantees that C and E remain independent in the matched cohort. Essentially, it is the matching process that severs the association between C and E in the matched cohort study, indicating that C no longer acts as a confounder for the E ̶ D association (Mansournia, Hernán, and Greenland 2013). Hence, adjusting for the matching factor C in a regression model is redundant when estimating the exposure effect of E on D. 

## 6.1.2 Matching in Case-Control Studies

In contrast, in case-control studies, matching on one or more confounding variables increases statistical efficiency by decreasing the variance of the effect estimate. However, it also superimposes a selection bias over the original confounding. As a result, statistical adjustment for the matching variables is necessary to eliminate selection bias and residual confounding bias introduced by those variables (Greenland and Morgenstern 2001). A failure to adjust for matching variables can lead to biased effect estimates in matched casecontrol studies. 

As depicted in Figure 6.2, M represents both the matching process and the dataset on which data analysis is performed. 

The arrow from D to M indicates that matching is based on the index of cases, while the arrow from C to M indicates that the status or value of C in a control is matched to the same status or the same value of an index case. Matching creates a new association between C and D through the path of C ̶ M ̶ D. D acts as a collider on the path $\mathrm { C } - \mathrm { D } - \mathrm { E } ,$ while M descends from the collider D. Therefore, conditioning on M $( \mathrm { i . e . , }$ limiting analysis to the matched sets) typically opens the path from C to E because of D as a collider and M as the D’s descendent (Mansournia, Jewell, and Greenland 2018). 

Due to matching on C, three paths exist that connect C and D: ${ \mathrm { C } } - { \mathrm { D } } , { \mathrm { C } } - { \mathrm { E } } - { \mathrm { D } } ,$ and the new path of $\begin{array} { r l } { { \bf C } - { \bf M } - { \bf D } . } & { { } } \end{array}$ The association of C ̶ D along the new path, formed by matching, has an equal magnitude but opposite direction to the net association via the first two paths $( \mathrm { i . e . , C - D }$ and C ̶ E ̶ D), resulting in a net-zero association. This means that C and D are independent unconditionally on E in the matched sample. For example, if C represents sex, matching on sex would equalize the gender distribution among controls and cases, unconditional on E. However, this independence between C and D does not suggest that there is no C ̶ D association conditional on the exposure (E). In other word, the same distribution of sex between cases and controls in the matched sample does not necessarily mean that there is no association between C (sex) and D among subjects who are not exposed to E. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/aa34efea4d4f88bfb64e9a3432240e4fe8e4a5d5232e36e1dd7cadc30bfacdbb.jpg)



FIGURE 6.2



Matching a confounder C in a case-control study.


Referring back to the DAG (Figure 6.2), the cancellation over the paths C ̶ M ̶ D versus C ̶ E ̶ D and C ̶ D implies that the net association over the two paths C ̶ M ̶ D and C ̶ D is non-zero, indicating an association between C and D conditional on E. This means that matching cannot eliminate the biased path E ̶ C ̶ D (Mansournia, Hernán, and Greenland 2013). The existence of C and D association can only be assessed conditionally or based on E and not between cases and controls. Even if the sex distribution is identical between cases and their matched controls, the association between sex and the disease outcome (D) still exists among subjects unexposed to the exposure factor (E) in a matched case-control study. As discussed in Chapters 1 and 5, the C – D association can be verified among subjects not exposed to E and cannot be determined among cases and controls in a casecontrol study (see Example 6.1 for details). 

In addition to residual confounding, matching on a confounding variable in a casecontrol study introduces selection bias. This selection bias usually biases the unadjusted odds ratio toward the null. This occurs because the matching variable is associated with the exposure, leading the exposure distribution in the matched control group to resemble that of the cases more closely than if the control group were randomly selected, without matching, from the base population. Consequently, the proportion of matched controls exposed to the variable E tends to be higher than in unmatched controls, leading to an underestimation of the true E-D association (Lash and Rothman 2021). An in-depth discussion of selection bias is available in Section 6.1.5. 

Moreover, using the matching method to select controls contradicts the goal of control selection in case-control studies. The reason we select a control that is a representative sample of the base population is to estimate the distribution of the exposure in that population. However, when controls are selected through matching, they are no longer representative of the base population but rather biased. Therefore, adjustment for C in a regression model is necessary to control both the selection bias introduced by matching and the confounding bias caused by the confounding variable C (Pearce 2018, Suzuki, Shinozaki, and Yamamoto 2020). 

Matching can facilitate the identification of controls from the base population for a casecontrol study (Wacholder et al. 1992). When identifying the base population and randomly selecting controls becomes impractical, matching offers a solution. In such scenarios, controls can be selected from the case’s friends, neighbors, or kin, typically a part of the base population. Matching can also be utilized to control for confounding by unobservable or difficult-to-measure confounders. For instance, selecting sibling controls and incorporating sibling-ship as a variable in the analysis allows adjustment for unobserved lifestyle, socioeconomic factors, and genetic factors that occur within families. Similarly, in situations where environmental confounding factors are hard to measure, controls can be chosen from the same neighborhood, ensuring that cases and controls share similar exposure levels to air pollutants within the matched sets. 

Case-control studies utilize matching more than cohort studies due to the typical scarcity of cases in the former, making matching a favored choice. Cohort studies, however, rarely face a dearth of exposed subjects. Hence, this chapter concentrates on the application of matching in case-control studies. 

## 6.1.3 Types of Matching

There are two types of matching in case-control studies: individual matching and frequency matching. Individual matching involves randomly selecting one or more controls and matching them to each index case using exact or caliper matching. This ensures that each set of controls is made similar to the corresponding index case on one or more matching variables. Exact matching is typically used for categorical confounding variables, while caliper matching is used for continuous variables. For example, if the index case is male, one or two male controls are selected to match the case, resulting in the same distribution of sex in each matched set or stratum. Caliper matching involves selecting controls with values on the matching variable that are close to the corresponding value of the index case. For instance, if the age range is set at ± 3 years for selecting one or more controls matched on the index case’s age, a control aged between 27 and 33 years old would be selected if the index’s age is 30. Paired matching involves matching one eligible control to an index case, while “one-to-more” or R-to-1 matching involves matching two or more controls (R) to an index case on a matching variable. 

In case-control studies, R-to-1 matching is utilized to enhance statistical power, which leads to increased precision in estimates and tests, particularly when the number of cases is small. The degree of statistical efficiency gained relative to 1-1 paired matching can be estimated approximately by 2R/(R+1) (Ury 1975). For instance, a 3-1 matched case-control study, where three controls are matched to each index case (R = 3), would have 1.5 times greater statistical power than a 1-1 matched case-control study. However, the case-control ratio may be restricted to 3 or 4 due to the minimal incremental gains in statistical power beyond a ratio of 4, and it would necessitate additional cost and time to locate eligible controls (Weiss and Koepsell 2014). The case-to-control ratio may differ across matched sets in a case-control study due to unavailability of controls. For example, if we plan to match controls to an index case based on sex, age, and race, a power analysis may determine a 3-1 matching ratio. However, in some cases, we may be unable to locate three controls with the exact matching variable values, necessitating a 1-1 or 2-1 ratio for those cases. 

By frequency matching, a comparison group is selected in a way that ensures the joint distribution of one or more matching variables in the control group is similar to that in the case group. For instance, if we plan to investigate the association between smoking and lung cancer through a case-control study, we may need 200 cases and 400 controls with a case-to-control ratio of 2. To avoid the confounding effect of sex, controls will be matched to cases based on the same sex. Frequency matching is preferred when individual matching is not possible due to practical reasons. In this approach, the sizes of female and male controls are determined based on the known or estimated sex distribution among cases. In cases where the sex distribution among cases is unknown, controls are selected based on the sex distribution among the recruited cases. In such a situation, controls are not selected until after all cases are identified. Statistical adjustment for individual matching and frequency matching are distinct and require different analytic methods (Section 6.2.2). 

## 6.1.4 Statistical Efficiency of Matching

As highlighted in the previous section, matching generally offers a more statistically efficient analysis compared to random sampling without matching. This enhanced efficiency is the primary rationale for employing matching in case-control studies. Matching often yields a reduced standard error and a tighter confidence interval for the estimated odds ratio than what might be obtained without it. Without matching, the different distribution of confounding variables between cases and controls can lead to situations where few cases and controls exhibit similar values for these variables. Such imbalanced distributions tend to decrease the precision of the confounder-adjusted odds ratio during casecontrol comparisons. 

However, by ensuring a balance in the distributions of cases and controls based on the values of confounding variables, matching controls confounding more adeptly. This is particularly true in scenarios with limited sample sizes. In the absence of matching, attempts to control for confounding during analysis can create multiple strata laden with sparse data. When the distribution is balanced across strata of a matching variable, the resulting odds ratio estimates are more stable, characterized by decreased standard errors and narrowed confidence intervals. 

For instance, let’s take a case-control study investigating the association between smoking and lung cancer, with age acting as a confounder. To account for age, one might use a Mantel-Haenszel analysis stratified by age. If controls are drawn randomly from the base population, it is likely that the age distribution among the controls would likely be younger compared to lung cancer cases, given that older individuals have a higher risk to develop lung cancer. Consequently, certain age strata might be predominantly occupied by controls with a paucity of cases, while in others, the reverse might be true. Matching controls to cases based on age helps to address this imbalance, ensuring an even distribution of cases and controls across each age stratum, which in turn enhances the statistical precision. 

Efficiency improvements are directly related to the strength of the association between the matching factor and the outcome, yet inversely related to the association between the exposure and the outcome (Thomas and Greenland 1983). However, this enhanced efficiency is accompanied by a selection bias introduced by the matching process. 

## 6.1.5 Selection Bias by Matching

As discussed in Section 5.2, the primary aim of controls in a case-control study is to estimate the exposure distribution in the base population that gave rise to the cases. If controls are selected to match cases on a matching factor that is correlated with the exposure, the estimated exposure frequency in controls may differ from that of the base population, defeating the aim of control selection. Because the matching variable is correlated with the exposure, the matched control sample may have an exposure distribution more similar to that of the cases than an unmatched control sample, leading to an underestimation of the exposure-disease association (Pearce 2016). If the matching factor were perfectly correlated with the exposure, the exposure distribution in controls would be identical to that in cases, resulting in a crude odds ratio of 1.0. 

The bias of the effect estimate towards the null value remains irrespective of the direction of the association, whether it is positive or negative, between the exposure and the matching variable. For illustration, consider a case-control study investigating the association between poverty and all-cause mortality, with race (either black or white) considered as a confounding variable. In this study, living siblings are chosen as controls. For every deceased individual, a living sibling of the same race is selected as a control. Given that poverty often runs in families, it is probable that poor controls will be chosen more frequently for poor cases, while rich controls will be more likely selected for rich cases. This process can lead the matched case-control study to display roughly equivalent proportions of poor individuals among both cases and controls, which might dilute the expected association between poverty and mortality. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/7a13bd419521d581bc1f2a8257a4fe6100050d1393b3eb172a981a8c69600c5a.jpg)



FIGURE 6.3 Case-control matching on a variable C associated with exposure E but not with disease D.


Therefore, matching on confounding variables is not sufficient to eliminate confounding bias, as it may introduce selection bias if the exposure distribution in controls is different from that of the base population that generates cases. It is necessary to adjust for matching variables to control for confounding efficiently. It is recommended to limit case-control matching to a few well-measured confounders that are strongly associated with the disease to achieve maximum efficiency (Mansournia, Jewell, and Greenland 2018). 

Matching on a variable that has an association solely with the exposure can inadvertently introduce it as a confounder. This phenomenon is often termed “overmatching” (Wacholder et al. 1992). Specifically, when a variable is associated to the exposure but not inherently to the disease, matching on this variable can produce an artificial association between the variable and the disease, thereby transforming it into a confounding variable. As shown in Figure 6.3, the variable M indicates whether an individual is selected to match a case based on the value of variable C (C → M). Because disease status affects the selection of controls, there is an arrow from D to M (D →M). In this setting, the selection of controls (M) serves as a collider and matching on C creates the spurious association between C and D. The efficiency loss due to matching on variable C, which has no direct effect on D, increases as the effect of the exposure on the outcome and its association with the matching variable C increase. Therefore, it is necessary to adjust for variable C in this scenario. 

Similar to the above scenario, matching on variables that are affected by exposure but not associated with disease can lead to a spurious association between the matching variable and disease, and decrease statistical efficiency. 

Another type of overmatching is matching on one or more mediating variables that are the result of exposure. Although the adjusted odds ratio that can be estimated from the matched data is unbiased, it only estimates the direct effect of exposure and removes the mediated effect (indirect effect) from the exposure-mediator-outcome path (Schisterman, Cole, and Platt 2009). As shown in Figure 6.4, the total effect of E on D can be decomposed into the direct effect of E on D (E→D) and the indirect effect via C (E→C→D). Matching on C will bias (or reduce) the indirect effect and the total effect, but not the direct effect. To reduce bias induced by matching, adjustment for C is necessary. However, adjusting for C will block (or remove) the indirect effect path of E→C→D. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/ef3ab9d154783e7cbfd1b47835c567dd02b46b128f6c0e1ab8578d8d7ff0609b.jpg)



FIGURE 6.4 Case-control matching on a mediating variable C.


When a data analyst observes that the estimated exposure effect deviates from expectations or presents with larger standard errors, it is essential to not only verify the accuracy of the analytic procedures but also assess if the discrepancies arise from poor matching selection or overmatching. Consequently, to optimally control for confounding bias and boost statistical efficiency, it is recommended to match exclusively on genuine confounding variables. Matching on non-confounding variables can negatively influence the estimated effect of the exposure on the disease. 

## 6.1.6 Illustration of Selection Bias and Statistical Efficiency

We now use a hypothetical base population afflicted with a rare disease as an example to demonstrate how matching can enhance statistical efficiency in both matched cohort and matched case-control studies. Additionally, we will explain how matching can potentially introduce selection bias in matched case-control studies, but not in cohort studies. 

## Example 6.1

Suppose there is a hypothetical base population consisting of 132,000 individuals, of which 15.2% are exposed to a risk factor (E) of interest and 16.7% receive low social support (C) which is also a risk factor for the disease outcome (D) (Tables 6.1 and 6.2). In this population, social support status is a confounding variable in the exposure-outcome association since 50% of individuals with low support are in the exposed group, while only 11% are in the unexposed group. Additionally, the disease risk is 5 times higher for individuals with low support compared to those with adequate support, both among the exposed (0.05/0.01) and unexposed (0.005/0.001) individuals (Table 6.3). 

Table 6.2 presents the proportions of the exposed and unexposed individuals, stratified by social support status, in the base population of 132,000 individuals. 

Suppose a total of 760 incidence cases are identified in a two-year follow-up period during which there are no immigration, emigration, competing risks, or other biases. 


TABLE 6.1 Number of Exposed Individuals Stratified by Social Support Status in a Base Population


<table><tr><td></td><td>Low Support</td><td>Adequate Support</td><td>Total</td></tr><tr><td>Exposed to E</td><td>10,000 (0.5)</td><td>10,000 (0.5)</td><td>20,000</td></tr><tr><td>Unexposed to E</td><td>12,000 (0.11)</td><td>100,000 (0.89)</td><td>112,000</td></tr><tr><td>Total</td><td>22,000</td><td>110,000</td><td>132,000</td></tr><tr><td>Proportion</td><td>0.455</td><td>0.091</td><td>0.152</td></tr></table>


TABLE 6.2 Proportion of Individuals Stratified by Exposure Status in a Base Population


<table><tr><td></td><td>Low support</td><td>Adequate support</td><td>Total</td></tr><tr><td>Exposed to E</td><td>0.076</td><td>0.076</td><td>0.152</td></tr><tr><td>Unexposed to E</td><td>0.091</td><td>0.758</td><td>0.848</td></tr><tr><td>Total</td><td>0.167</td><td>0.833</td><td>1.000</td></tr></table>


TABLE 6.3



Risk and Risk Ratio in a Base Population


<table><tr><td rowspan="2"></td><td colspan="2">Low Support</td><td colspan="2">Adequate Support</td><td colspan="2">Collapsed</td></tr><tr><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td></tr><tr><td>Cases (D)</td><td>500</td><td>60</td><td>100</td><td>100</td><td>600</td><td>160</td></tr><tr><td>Total</td><td>10,000</td><td>12,000</td><td>10,000</td><td>100,000</td><td>20,000</td><td>112,000</td></tr><tr><td>Risk</td><td>0.05</td><td>0.005</td><td>0.01</td><td>0.001</td><td>0.03</td><td>0.00143</td></tr><tr><td>Risk ratio</td><td>10</td><td></td><td>10</td><td></td><td>21</td><td></td></tr></table>

Within each support status group, the 2-year cumulative risk in the exposed group is 10 times higher than that in the unexposed group (Table 6.3). Among the unexposed individuals, individuals with low social support have a 5-fold higher disease risk compared to those with adequate social support, the corresponding risk ratio is 5 (0.005/0.001). This indicates that social support acts as a risk factor for the disease on its own. The crude risk ratio in the base population, when comparing the exposed group to the unexposed group, stands at 21. This is markedly different from the support-specific risk ratio of 10, highlighting the confounding bias introduced by social support. 

Suppose we conduct a matched cohort study by selecting study subjects from the base population. If we randomly select 20% of the exposed base population and include them in the cohort as the exposed group $( 2 0 , 0 0 0 \times \bar { 0 . 2 } = 4 , 0 0 0 )$ , we would expect 2,000 $( 4 , 0 0 0 \times 0 . 5 )$ subjects with low support and 2,000 $( 4 , 0 0 0 \times 0 . 5 )$ subjects with adequate support in the exposed group (Table 6.4). Assuming no random error, the risks among the two exposed groups in the base population remain the same in the exposed groups in the cohort study, with the number of cases among exposed subjects with low support being $1 0 0 \left( 2 , 0 0 0 \times 0 . 0 5 \right)$ and $2 0 \left( 2 , 0 0 0 \times 0 . 0 1 \right)$ in exposed subjects with adequate support. To match the unexposed subjects to the exposed subjects on social support status, 2,000 unexposed subjects with low support and 2,000 unexposed subjects with adequate support are randomly selected from the base population. Applying the same risks among the two unexposed groups in the base population to the two unexposed groups in the cohort, the number of cases among unexposed subjects with low support is 10 $( 2 , 0 0 0 \times 0 . 0 0 5 )$ and $2 \left( 2 , 0 0 0 \times 0 . 0 0 1 \right)$ among unexposed subjects with adequate support. 

Table 6.4 demonstrates that the estimated risk ratios for both subjects with low support and those with adequate support in the matched cohort study are 10. The collapsed cohort data also yielded the same risk ratio of 10. By matching, social support no longer confounds the exposure-disease association, as it is no longer associated with the exposure variable. 


TABLE 6.4



Estimated Risk and Risk Ratio in a Matched Cohort Study


<table><tr><td rowspan="2"></td><td colspan="2">Low Support</td><td colspan="2">Adequate Support</td><td colspan="2">Collapsed</td></tr><tr><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td></tr><tr><td>Cases</td><td>100</td><td>10</td><td>20</td><td>2</td><td>120</td><td>12</td></tr><tr><td>Total</td><td>2,000</td><td>2,000</td><td>2,000</td><td>2,000</td><td>4,000</td><td>4,000</td></tr><tr><td>Risk</td><td>0.05</td><td>0.005</td><td>0.01</td><td>0.001</td><td>0.03</td><td>0.003</td></tr><tr><td>Risk ratio</td><td>10</td><td></td><td>10</td><td></td><td>10</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>95% CI:</td><td>5.53–18.07</td></tr></table>

The proportion of subjects with low support is the same in both the exposed and unexposed groups (50%; 2.000/4,000). This example highlights that matching does not introduce selection bias but prevents confounding effects of matching variables in matched cohort studies. The crude risk ratio estimated from the collapsed data provides a valid estimate of the exposure-disease association without further statistical adjustment. However, when dealing with competing risks or losses to follow-up, adjusting for matching variables becomes necessary. This is because censoring can disrupt the balanced distribution of matched confounding variables between exposed and unexposed groups in a matched cohort study. 

Unlike cohort studies, matching on confounding variables in case-control studies can lead to selection bias, which distorts the exposure-outcome association. To illustrate this point, we use the same base population to explain how matching creates selection bias in a case-control study. Let’s consider a study with 760 cases, including 560 cases with low support and 200 cases with adequate support, generated from the base population (Table 6.3). We randomly select 560 controls with low support to match the 560 cases with low support, and 200 controls with adequate support to match the 200 cases with adequate support (Table 6.5). Assuming no random error, the proportion of exposed subjects in the controls with low support should be the same as that in the base population, which is 0.455 (10,000/22,000) in Table 6.1. Thus, the number of exposed controls with low support is 255 (560 × 0.455), while 305 are unexposed controls. Similarly, the proportion of exposed controls with adequate support should be the same as that in the base population, which is 0.09 (10,000/110,000) in Table 6.1. Thus, the number of exposed controls with adequate support is 18 (200    × 0.09), while 182 are unexposed controls with adequate support. 

Table 6.5 reveals that the matched case-control study yields an estimated OR of 6.7. Notably, this value is not only smaller than the odds ratios observed within the individual strata of social support (both low and adequate support) but also falls below the true RR observed in the base population (RR=10). The estimated OR of 6.7 is biased towards the null. 

The persistence of bias can be traced back to the matching process in the study. Despite the matching efforts, strong associations persist. For instance, the association between support and exposure among controls shows a high OR of 8.45 (calculated as 255×182/305×18). Similarly, the association between support and disease among unexposed subjects has an OR of 0.36 (calculated as 60×182/305×100). In contrast to the cohort study mentioned earlier, matching in this case-control study fails to effectively break the confounder-exposure (C-E) and confounder-disease (C-D) associations. This results in residual confounding effects. 


TABLE 6.5 Estimated Odds Ratios in a Matched Case-Control Study


<table><tr><td rowspan="2"></td><td colspan="2">Low Support</td><td colspan="2">Adequate Support</td><td colspan="2">Collapsed</td></tr><tr><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td></tr><tr><td>Cases</td><td>500</td><td>60</td><td>100</td><td>100</td><td>600</td><td>160</td></tr><tr><td>Controls</td><td>255</td><td>305</td><td>18</td><td>182</td><td>273</td><td>487</td></tr><tr><td>Odds ratio</td><td>10</td><td></td><td>10</td><td></td><td>6.7</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td colspan="2">adjusted odds ratio: 1095% CI:7.60–13.16</td></tr></table>

This bias manifests prominently when assessing the exposure-disease association. Since controls are selected based on a matching variable associated with exposure, the proportion of exposure in the control group does not accurately reflect the base population. Specifically, the proportion of exposure among controls stands at 0.36 (273/760), a figure considerably different from the 0.15, the proportion in the base population as documented in Table 6.2. 

The mechanisms driving bias in a matched case-control study stand in contrast to those in the base population. In the base population, the bias originates from the confounding variable, in this instance, social support. However, within a matched case-control study, the bias emerges as a composite of: 

1. Residual confounding: This is the confounding that remains even after the matching process as presented in Figure 6.2. 

2. Selection bias: This bias is introduced directly due to the matching process. 

To achieve an unbiased and precise estimate of the association between exposure and disease within a matched case-control study, a two-step approach is crucial: 

1. Matching on confounders: Initially, it is imperative to match controls to cases based on the values of confounding variables. This step is pivotal to enhancing statistical efficiency. 

2. Statistical adjustments: Post-matching, there is a need to apply specific statistical methods to counteract the selection bias brought about by matching. Approaches like the Mantel-Haenszel method and conditional logistic regression serve this purpose. 

For instance, once the data is stratified based on social support status and processed using the Mantel-Haenszel method, we get an adjusted OR of 10, which is a valid estimate of the RR in the base population (Table 6.5). 

A logical question to ask is why we bother to use matching in case-control studies when it introduces selection bias. The answer is related to statistical efficiency. To demonstrate, let’s consider a case-control study without matching using the same base population. We include all 760 cases in the case group and randomly select 760 controls from the base population (Table 6.6). Assuming no random error, we apply the proportions of exposed and unexposed subjects with low support (0.076 and 0.091 in Table 6.2) to the controls with low support. This results in 58 exposed controls with low support (760    × 0.076) and 


TABLE 6.6



Estimated Odds Ratios in an Unmatched Case-Control Study


<table><tr><td rowspan="2"></td><td colspan="2">Low Support</td><td colspan="2">Adequate Support</td><td colspan="2">Collapsed</td></tr><tr><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td><td>Exposed</td><td>Unexposed</td></tr><tr><td>Cases</td><td>500</td><td>60</td><td>100</td><td>100</td><td>600</td><td>160</td></tr><tr><td>Controls</td><td>58</td><td>69</td><td>57</td><td>576</td><td>115</td><td>645</td></tr><tr><td>Odds ratio</td><td>10</td><td></td><td>10</td><td></td><td>21</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td colspan="2">adjusted odds ratio: 10</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>95% CI:</td><td>7.42–13.27</td></tr></table>

69 unexposed controls $( 7 6 0 \times 0 . 0 9 1 )$ . Similarly, we apply the proportions of exposed and unexposed subjects with adequate support (0.076 and 0.758) to the controls with adequate support. This results in 57 exposed controls with adequate support $( 7 6 0 \times 0 . 0 7 6 )$ and 576 unexposed controls $( 7 6 0 \times 0 . 7 5 8 )$ . 

Because the study sample in this case-control study is a representative sample of the base population and disease is rare, the estimated odds ratios in this case-control study are equivalent to risk ratios estimated in the base population (Table 6.3). As shown in Table 6.6, social support is associated with the exposure variable among controls (OR = 8.49, calculated as $( \bar { 5 } 8 \times 5 7 6 ) / ( 6 9 \times 5 7 )$ ), and it is also associated with the disease among unexposed individuals $( \mathrm { O R } = 5 . 0 0 , $ , calculated as $( 6 0 \times 5 7 6 ) / ( 6 9 \times 1 0 0 ) )$ . Therefore, the crude odds ratio of 21 is biased by social support status, which is also biased in the base population (Table 6.3). 

Because controls are randomly selected from the base population, and the selection of controls is independent of social support status, the proportion of exposure in the control group $( 1 1 6 / 7 6 0 ^ { - } = 0 . 1 5 )$ is the same as that in the base population, indicating no selection bias. Therefore, the proportion of controls with low support (127/760=0.167) is identical to that in the base population (Table 6.2). To reduce confounding bias, the Mantel-Haenszel method is used to estimate the support-adjusted odds ratio. The resultant odds ratio is 10 (95% CI: 7.42–13.27), which is a valid estimate of the risk ratio in the base population. 

The above example demonstrates that we can use a statistical approach to adjust for confounding that exists in the base population without the need for matching. However, it is important to note that the 95% confidence interval of the adjusted odds ratio (7.42–13.27) in the unmatched case-control study is wider than that estimated in the matched case-control study (7.60–13.16), which indicates an improved statistical efficiency with the use of matching. 

Matching in case-control studies enhances statistical efficiency by ensuring a balanced ratio of controls to cases across strata of the matching variables. For instance, when controls were matched to cases based on their social support levels, we observed equal counts of cases and controls in the low-support stratum (560 each) and in the adequate support stratum (200 each). Conversely, the unmatched study depicted in Table 6.7 reveals an imbalance: a predominance of cases in the low support category and a surplus of controls in the adequate support category. This imbalance reduces the precision when estimating the association between the exposure and the disease in studies without matching. 

In summary, matching in case-control studies on variables associated with both exposure and outcome can lead to selection bias. However, this bias, as well as the original confounding by the matching variables, can be mitigated through statistical adjustments. For effective confounding control, it’s advisable to limit case-control matching to a few, well-measured confounders, especially those strongly related to the disease, like age and sex. Weaker or less important confounders can be better addressed through modelbased adjustments, such as stratification or regression analysis (Mansournia, Jewell, and Greenland 2018). 


TABLE 6.7 Number of Cases and Controls by Social Support Strata


<table><tr><td rowspan="2"></td><td colspan="2">Unmatched Case-Control Study</td><td colspan="2">Matched Case-Control Study</td></tr><tr><td>Low Support</td><td>Adequate Support</td><td>Low Support</td><td>Adequate Support</td></tr><tr><td>Cases</td><td>560</td><td>200</td><td>560</td><td>200</td></tr><tr><td>Controls</td><td>127</td><td>633</td><td>560</td><td>200</td></tr></table>

## 6.2 Simple Conditional Logistic Regression

The Mantel-Haenszel method is a simple and straightforward tool for analyzing matched case-control data, but it may encounter problems with sparse data when there are too many confounders to adjust for. Additionally, it is limited to categorical confounders and cannot directly handle continuous variables. To address these limitations, multiple regression methods can be used, such as unconditional logistic regression and conditional logistic regression. However, conditional logistic regression is considered the primary analytical approach in matched case-control studies as it not only adjusts for matching variables but also for other unmatched confounding variables (Wan, Colditz, and Sutcliffe 2021). In this section, we will focus on simple conditional logistic regression, which analyzes 1-1 paired data with one independent variable (i.e., exposure variable). 

## 6.2.1 Sparse-Data Bias and Conditional Logistic Regression

Conditional logistic regression is favored over unconditional logistic regression because of its superior handling of sparse data (Pearce 2016, Robins, Greenland, and Breslow 1986). When matching is done on multiple factors simultaneously (e.g., sex, race, and age categories), or when the matching is at or near the individual level (e.g., one case matched with one sibling control in a stratum), the size of each stratum in a standard analysis diminishes. For example, in one-to-one paired matching, each stratum comprises only one case and one control. This leads to a substantial number of strata, each with sparse data. Such a situation presents challenges when using the unconditional likelihood method since it demands a larger count within strata, unlike the conditional MLE (Greenland and Rothman 2008). As discussed in Section 5.3.2, conditional likelihood estimation is suitable in scenarios where the unconditional MI estimate may be biased, especially when the participant count within a stratum of the matched variable is minimal. The sparse-data bias, originating from limited numbers within strata of categorical confounders, can induce a bias away from the null value (Greenland, Schwartzbaum, and Finkle 2000). 

In situations where one control is paired with one case and exposure is binary, the odds ratio estimated by unconditional logistic regression models applied to pair-matched data will approach the square of the true odds ratio in larger samples (Breslow and Day 1980). The discrepancy between the odds ratios estimated by both the unconditional and conditional regression models can be reduced if more controls are matched to the index cases (Kleinbaum, Kupper, and Morgenstern 1982). However, it is essential to highlight that conditional logistic regression can also manifest biases away from the null value when overloaded with too many covariates or if used with an insufficient number of matched sets (Greenland, Schwartzbaum, and Finkle 2000). This is another reason that case-control matching should be limited to a few well-measured confounders, such as age and sex, to avoid potential biases. 

## 6.2.2 Dealing with Matched Variables

The decision to include matched variables in a conditional logistic regression model is dependent on the type of matching employed in a case-control study. In situations of exact matching – where individuals are paired based on specific variables such as sex – the matching variable does not need to be included as a covariate in the model. This is because both the case and its matched controls in each matched set share the same value for that variable. 

On the other hand, with caliper matching – where controls are matched to cases within a tolerance range, such as ± 3 years – there can be residual confounding as the matching is not exact. Even though the conditional likelihood designed for each pair assumes an exact match and identical risk for disease outcome, conditional logistic regression does not account for differences in matching values within pairs that could lead to different risks for the outcome occurrence. Consequently, to counteract this residual confounding, the matching variable should be included in a conditional logistic regression model. It is important to understand that the bias from this residual confounding escalates with the width of the caliper (Wan, Colditz, and Sutcliffe 2021). Furthermore, coefficient estimates from caliper-matched variables should not be used to measure the strength of the association between the matched variables and the outcome. This is because the model’s stratum indicator coefficients already account for part of this association. 

In the analysis of frequency-matched data, the odds ratio measuring the strength of the exposure-disease relationship can be estimated using the unconditional logistic regression model. Distinct from individual matching, all matching variables must be included as covariates in this model. For example, if sex and race are matched by frequency, both these variables – along with the exposure variable and any unmatched confounding variables – should be included in the model. As discussed in Section 5.3.2, unconditional maximum likelihood estimation emerges as a fitting analytical method when the number of parameters is relatively small compared to the subject count. This is commonly the situation when analyzing frequency-matched case-control data. 

Frequency matching involves forming subgroups based on specific categorical or categorized matching factors, such as sex or age groups. Within each subgroup, controls are selected at random in a manner that reflects the proportion observed in the case groups. This approach typically results in a substantial number of participants within each stratum, justifying the use of unconditional logistic regression that incorporates matching variables. Moreover, as frequency matching usually employs only one or two categorical variables with distinct levels, the stratification method, such as Mantel-Haenszel method, can also be employed to investigate the associations between exposure and disease. 

## 6.2.3 Use of Simple Conditional Logistic Regression

When analyzing matched case-control data using conditional logistic regression, it is imperative for each matched set to comprise at least one case and one control. Additionally, the dataset should contain an indicator delineating the membership of each subject within its corresponding matched set or stratum. This indicator is subsequently included in the conditional logistic regression model. The model estimates regression coefficients by accounting for the pairing or matching of cases and controls concerning the matching variables used during the matching process. This technique, known as “conditioned on” matching, effectively controls for the variables used in matching during the analysis (Agresti 2018). 

In a simple conditional logistic regression with only one binary exposure variable (E), and no other unmatched confounding variables other than the matching ones, the regression model stratifies on matched sets (i) , and each set has its own probability distribution with a separate intercept term (αi) for each set. The set-specific logistic regression equation is given by: 

$$
\operatorname{logit} \left[ P \left(Y _ {i E} = 1\right) \right] = \alpha_ {i} + \beta \times E _ {i} \tag {6.1}
$$

where $E _ { i }$ represents the exposure variable for the i-th matched set. In a case-control study with 100 matched sets or pairs, the value of i will range from 1 to 100, with each value representing a specific set. Notably, in regression Equation 6.1, the analytic unit is the matched set. Each set comprises a case and one or more controls with observed covariate values, which are presumed to be associated with the risk of the disease outcome (Agresti 2012, Jewell 2003). 

The probability of the outcome for pair i can be expressed as follows: 

When $E _ { i } = 1$ (exposed): 

$$
P \left(Y _ {i 1} = 1\right) = \frac {\exp (\alpha_ {i} + \beta)}{1 + \exp (\alpha_ {i} + \beta)} \tag {6.2}
$$

When $E _ { i } = 0$ (unexposed): 

$$
P \left(Y _ {i 0} = 1\right) = \frac {\exp \left(\alpha_ {i}\right)}{1 + \exp \left(\alpha_ {i}\right)} \tag {6.3}
$$

These equations compute the probability of the outcome for each matched set using both the values of covariates (including the exposure variable and other covariates) and the set-specific intercept term $( \alpha _ { i } )$ . Essentially, within each matched set, the probability of the outcome is determined by the observed covariate values of both the case and the controls, given the specific mix of covariates within the set. This probability is pivotal in assessing each set’s contribution to the conditional likelihood, emphasizing the importance of incorporating the matched design into the analytical process (Holford 2002). 

To further elucidate the concept of conditional likelihood, consider an example where one case is matched with three controls based on sex and race within a matched set, and the exposure variable under consideration is smoking. The case in this set possesses distinct values for the exposure and covariate variables, and similarly, the controls have their unique covariate values. The conditional likelihood stems from the probability that, given a specific covariate mix present in both the case and the controls of the set, the observed combination of covariates is associated with the case. 

As shown in Equation 6.1, every matched set or stratum has its own intercept $\alpha _ { i } ,$ which represents the log-odds among unexposed subjects $( E _ { i } = 0 )$ within each set. This facilitates each set in having its distinct disease or outcome probability. A larger $\alpha _ { i } ,$ relative to the magnitude of the coefficient $\beta ,$ suggests a greater disease probability (Equation 6.2). The inclusion of a separate intercept for each set accounts for heterogeneity across matched sets. However, the values of the intercepts are not of direct interest in the analysis, as the focus is on estimating the exposure effect (β). The coefficient of $\beta$ comparing the responses is conditional on the set (Agresti 2018). The regression of $\beta$ provides an estimate of the change in the log-odds for a one-unit increase in the exposure variable, holding all other covariates (confounding) constant within each matched set or stratum. The number of $\alpha _ { i }$ terms will increase as the number of matched sets increases, and will equal the number of matched sets. 

As pointed out in Section 5.3.2, a large number of $\alpha _ { i }$ in the model can make the maximum likelihood (ML) estimator $\beta$ severely biased. The conditional logistic regression model maximizes the likelihood function and estimates $\beta$ for a conditional distribution that omits the intercepts $\alpha _ { i } .$ . Thus, although indicators of matched sets and membership in matched sets are included in the conditional logistic regression model, the procedure does not provide estimates for $\alpha _ { i } .$ The lack of estimates for $\alpha _ { i }$ does not imply that matching indicators (i) have not been controlled by the conditional logistic regression model. It only means that the coefficients of indicators for the matched sets have not been estimated (Borgan et al. 2018). 

Unlike conditional logistic regression, unconditional logistic regression ignores matched sets and fails to consider each set’s contribution to the conditional likelihood. 

## Example 6.2

In situations where one control is matched to one case on one binary confounding variable and exposure is also binary, matched data can be analyzed by the McNemar analysis, stratified analysis (the Mantel-Haenszel method), and simple conditional logistic regression analysis. To demonstrate these three methods, we will use a matched casecontrol study constructed from the NHEFS dataset. 

Suppose we conducted a matched case-control study to investigate the effect of depression (DEP) on all-cause death. We randomly selected 100 subjects (cases) who died during the later follow-up waves and matched each case with a living subject on sex. The matching pairs are identified by the matching indicator variable “MATCH.” If we only control for the variable involved in matching, then the matched pairs in the dataset can be represented by 100 2 × 2 tables, one for each pair. Since we have a binary exposure and one matching variable, there are four possible combinations of exposure status. Each matched pair will have one of these four forms depending on the exposure status of the case and control, as shown in Figure 6.5. 

The four possible exposure combination forms are: both case and control in a pair are exposed (1-1 pair), the case is exposed but not the control (1-0 pair), the control is exposed but not the case (0-1 pair), and both case and control in a pair are unexposed (0-0 pair). Pairs for which both cases and controls are exposed or unexposed are called concordant pairs, while pairs with different exposure statuses are called discordant pairs. It is the discordant pairs (1-0 and 0-1 pairs) that provide the information to estimate the exposure effect. 

The number of each type of pair can be summarized in a matched-pair table (Table 6.8). The four cells in the table correspond to the number of pairs with the following characteristics: both exposed (a), case exposed but control unexposed (b), control exposed but case unexposed (c), and both unexposed (d). The total number of pairs is equal to the sum of all cells: $N = a + b + c + d .$ . 

The number of four types of matched pairs in this example is shown in Table 6.9. 

The probability that a case is exposed to the risk factor (depression) can be estimated as $p _ { c a s e } = \left( a + b \right) / N$ , where N is the total number of pairs. Similarly, the probability that a control is exposed to the risk factor can be estimated as $p _ { c o n t r o l } = \left( a + c \right) / N$ . If the risk factor is associated with the disease, the probability of exposure will be different for cases and controls, i.e., $p _ { c a s e } \neq p _ { c o n t r o l } .$ . The quantity $p _ { c a s e } - p _ { c o n t r o l } = \left( b - c \right) / N$ measures the difference in 

<table><tr><td rowspan="2"></td><td colspan="2">1-1 pairs</td><td rowspan="2"></td><td colspan="2">1-0 pairs</td><td rowspan="2"></td><td colspan="2">0-1 pairs</td><td rowspan="2"></td><td colspan="2">0-0 pairs</td></tr><tr><td>E</td><td>NE</td><td>E</td><td>NE</td><td>E</td><td>NE</td><td>E</td><td>NE</td></tr><tr><td rowspan="2">Case Control</td><td>1</td><td>0</td><td rowspan="2">Case Control</td><td>1</td><td>0</td><td rowspan="2">Case Control</td><td>0</td><td>1</td><td rowspan="2">Case Control</td><td>0</td><td>1</td></tr><tr><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr></table>

## FIGURE 6.5

Four types of matched pairs present exposure status of cases and controls. 

## TABLE 6.8


Matched-Pair Table Summarizing Four Type Pairs Stratified by Exposure Status


<table><tr><td rowspan="2">Cases</td><td colspan="2">Controls</td></tr><tr><td>Exposed</td><td>Unexposed</td></tr><tr><td>Exposed</td><td>a</td><td>b</td></tr><tr><td>Unexposed</td><td>c</td><td>d</td></tr></table>

## TABLE 6.9


Number of Matched Pairs in a Matched Case-Control Study


<table><tr><td rowspan="2">Cases</td><td colspan="2">Controls</td></tr><tr><td>Depressed</td><td>Non-depressed</td></tr><tr><td>Depressed</td><td>a = 3</td><td>b = 17</td></tr><tr><td>Non-depressed</td><td>c = 5</td><td>d = 75</td></tr></table>

the distribution of the exposure factor between cases and controls as a percentage. In this example, the difference of the two probabilities is 

$$
p _ {c a s e} - p _ {c o n t r o l} = \frac {b - c}{N} = \frac {1 7 - 5}{1 0 0} = 12 \%.
$$

Using the data in the above table, we can perform a McNemar’s test to assess the overall effect of exposure, while controlling for the matching variable (sex). The null hypothesis is that the difference between the discordant pairs is zero, i.e., b – c = 0, indicating that the numbers of discordant pairs b and c differ by chance alone. 

$$
X _ {p a i r e d} ^ {2} = \frac {(b - c) ^ {2}}{b + c} = \frac {(1 7 - 5) ^ {2}}{1 7 + 5} = 6. 5 5, d f = 1
$$

This statistic has an approximate Chi-square distribution with one degree of freedom under the null hypothesis. The p-value is 0.01, indicating that there is strong evidence to reject the null hypothesis. As the difference of the two probabilities is fairly large (12%), we conclude that there is a difference between the discordant pairs, and therefore, an overall effect of exposure. 

Next, we use the Mantel-Haenszel method to calculate the odds ratio in the discordant pairs: 

$$
\mathrm{OR} = \text { number   of } 1 - 0 \text { pairs } (b) / \text { number   of } 0 - 1 \text { pairs } (c) = b / c. \tag {6.4}
$$

Because the members of each matched pair have the same level of matched confounders, the estimated odds ratio is not confounded by the matched confounding variables. This Mantel-Haenszel estimator is identical to the conditional maximum-likelihood estimator of the common odds ratio across strata or pairs (Breslow and Day 1980). 

The sex-adjusted odds ratio of depression in cases compared with controls matched on sex can be estimated as: 

$$
\mathrm{OR} = \mathrm{b/c} = 1 7 / 5 = 3. 4.
$$

The standard error for ln(OR) is estimated as $( 1 / \mathrm { b } + 1 / \mathrm { c } ) ^ { 1 / 2 }$ . In this case, the standard error is estimated as: 

$$
\mathrm{SE} = (1 / \mathrm{b} + 1 / \mathrm{c}) ^ {1 / 2} = (1 / 1 7 + 1 / 5) ^ {1 / 2} = 0. 5 0 8 7
$$

The 95% confidence limits can be estimated as: 

$$
\exp \bigl [ \ln (3. 4) \pm 1. 9 6 (0. 5 0 8 7) \bigr ] = 1. 2 5, 9. 2 2
$$

Stratifying the data by sex allows for the estimate of the exposure effect of depression on death within each stratum, free from the confounding effect of sex, since matching ensures that cases and controls have the same sex within a stratum. Therefore, the summary or marginal odds ratio calculated from the data within each stratum is not confounded by sex. 

The Mantel-Haenszel odds ratio and its 95% confidence interval can be estimated using the following SAS PROC FRQ syntax for stratified analysis: 

```sql
PROC freq data=one;
table match*dep*case /cmh;
RUN; 
```

The estimated Mantel-Haenszel odds ratio is 3.4, and the 95% confidence interval is 1.25–9.22. 

The third method in matched data analysis is conditional logistic regression. We use the following SAS PROC LOGISTIC program to invoke the conditional logistic regression analysis: 

```txt
PROC logistic data=one;
class dep (ref='0')/param=ref;
model case(event='1')=dep;
strata match;
RUN; 
```

In PROC LOGISTIC, the STRATA statement is used to specify the matched set by an indicator (“MATCH”) and to request the appropriate conditional logistic model. PROC LOGISTIC also provides the point and confidence interval estimates of the odds ratio. As shown in SAS Output 6.1, only the coefficient of the exposure variable (DEP) is listed and not the coefficients of the matching indicator $a _ { i } .$ . 


SAS Output 6.1 Conditional Maximum Likelihood Estimates and odds ratio estimate


<table><tr><td colspan="7">Analysis of Conditional Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>1.2238</td><td>0.5087</td><td>5.7863</td><td>0.0162</td></tr></table>

<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>3.400</td><td>1.254</td><td>9.216</td></tr></table>

This odds ratio and its 95%CI generated by this SAS syntax are the same as those estimated by the Mantel-Haenszel method. 

To see the bias in the estimated odds ratio resulting from non-conditional logistic regression, we employ the following SAS syntax to estimate the odds ratio for depression in a traditional logistic regression. The indicator variable MATCH specifies 100 matched pairs, thereby creating 99 indicators to specify each matching pair. 

```txt
PROC logistic data=one;
class dep match/ref=first;
model case(event='1') = dep match;
RUN; 
```

The estimated odds ratio is 11.56, which represents the square of the odds ratio estimated by the conditional logistic regression (3.42 ). 

To tackle the issue introduced by sparse data, we can use exact conditional logistic regression to estimate the variance of the effect estimate and determine the 95% confidence interval. This method is used when the total numbers of exposed and unexposed cases and controls are too small for a regular logistic regression and/or when some of the strata formed by the outcome and categorical predictor variable have no observations. By using the optional EXACT statement, an exact conditional estimate and confidence interval of the odds ratio can be obtained. In the following SAS PROC LOGISTIC syntax, the EXACT statement specifies the exact method, and ESTIMATE=BOTH requests that both parameter estimates and odds ratios be generated. 

```txt
PROC logistic data=one;
class dep (ref='0') / param=ref;
model case(event='1')=dep;
strata match;
exact dep / estimate=both;
RUN; 
```

The SAS syntax estimates both odds ratios using non-exact conditional logistic regression and exact conditional regression. The exact odds ratio (3.40) is identical to the nonexact one, however, the 95% confidence interval is wider than the one estimated by the non-exact regression (SAS Output 6.2). 


SAS Output 6.2 Exact parameter estimates and exact odds ration


<table><tr><td colspan="6">Exact Parameter Estimates</td></tr><tr><td>Parameter</td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>p-Value</td></tr><tr><td>dep</td><td>1.2238</td><td>0.5087</td><td>0.1857</td><td>2.4670</td><td>0.0169</td></tr></table>

<table><tr><td colspan="5">Exact Odds Ratios</td></tr><tr><td>Parameter</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td><td>p-Value</td></tr><tr><td>dep</td><td>3.400</td><td>1.204</td><td>11.787</td><td>0.0169</td></tr></table>

## 6.3 Multiple Conditional Logistic Regression

One of the advantages of using conditional logistic regression is its capability to control for both matched and unmatched confounding variables. For example, when matching controls to cases based on age and race, it might also be desirable to account for variables such as marital status, BMI, and daily salt consumption. Even though they were measured, they were not used in the initial matching. Moreover, variables utilized for caliper matching should be incorporated into the model to further adjust for any residual confounding effects. 

## 6.3.1 General Form of Multiple Conditional Logistic Regression Model

This section demonstrates the use of the conditional logistic regression model to estimate the association between an exposure E and an outcome Y while controlling for a set of confounding variables Z and assessing modification effects of M. The bold $\bar { z }$ represents a vector of confounding covariates that are not matched, $\pmb { Z } = ( Z _ { 1 } , . . . , Z _ { p } ) .$ , and the bold M represents a collection of modifiers, $\pmb { M } = ( M _ { 1 } , . . . , M _ { k } )$ . The model includes summary variables S to indicate the different matched sets, $\pmb { S } = S _ { 1 } , . . . , S _ { i }$ . The conditional probability that the outcome is present is expressed as $P ( Y { = } 1 | E , S , Z , M )$ . We use the logistic regression model shown below to estimate the exposure-outcome association: 

$$
\begin{array}{l} \log \left(\text { odds } _ {Y = 1 | E, S, Z, M}\right) = \alpha + \beta E (\text { exposure }) \\ + \left[ \beta_ {i 1} S _ {1} + \dots + \beta_ {i i - 1} S _ {i - 1} \right] (\text { matching }) \\ + \left[ \beta_ {p 1} Z _ {1} + \dots + \beta_ {p p} Z _ {p} \right] (\text { unmatched   and   caliper - matched   confounders }) \\ + \left[ \beta_ {m 1} M _ {1} + \dots + \beta_ {m k} M _ {k} \right] + \left[ \beta_ {k 1} E M _ {1} + \dots + \beta_ {k k} E M _ {k} \right] (\text { modification }), \tag {6.5} \\ \end{array}
$$

In this model, $\beta _ { i 1 } . . . \beta _ { i i - 1 }$ are the coefficients of the dummy variables for matched sets, $\beta _ { p 1 } . . .$ $\beta _ { p p }$ are the coefficients of unmatched and caliper-matched confounders, $\beta _ { m 1 } . . . \beta _ { m k }$ are the coefficients of modifiers, and $\beta _ { k 1 } + . . . + \beta _ { k k }$ are the coefficients of the product terms. If there are 100 matched sets $( S _ { i } )$ in a matched case-control study, we need to create 99 indicators $( S _ { i - 1 } )$ . As mentioned previously, the conditional logistic regression model maximizes the likelihood function and estimates $\beta$ for a conditional distribution that eliminates the need to estimate the coefficients of the dummy variables $S _ { i - 1 } \left( \mathrm { i . e . , } \beta _ { i 1 } \ldots \beta _ { i i - 1 } \right)$ . Therefore, although indicators of matched sets and membership in matched sets are included in the conditional logistic regression model, the procedure does not provide estimates, $\beta _ { i 1 } \ldots \beta _ { i i - 1 } ,$ for $S _ { i } .$ 

## 6.3.2 Adjustment of Confounding

To adjust for confounding effects, we use a multiple conditional logistic regression model with the following example. The data for conditional logistic regression analysis include the key variables such as an indicating variable specifying each matched set, an exposure variable indicating the exposure status, and a variable indicating the case-control status (1 = case and 0 = control), along with other covariates that could be confounders or modifiers. 

## Example 6.3

As an application of the conditional logistic regression analysis, consider a matched case-control study to investigate the effect of depression (dep) on all-cause death. In this study, 100 subjects (cases) who died during the later follow-up waves were randomly selected, and 200 living subjects were selected to match cases on sex and age (caliper = ±3 years). The matching is identified by the matching indicator variable “match.” The unmatched confounding variables include education year (eduy), marital status (marital, 0: marriage, 1: never married, 2: widowed, divorced, or separated), residence areas (area, 0: rural area, 1: city, 2: city suburbs), family income (income, 0: less than or equal to $3,999, 1: $4,000–5,999, 2: $6,000–9,999, 3: $10,000–19,999, 4: $20,000–34,999, 5: equal and greater than $35,000), BMI (BMI3, 0: 18.5–24.9, 1: <18.5, 2: 25.91–29.92, 3: >29.92), and physical exercise (active: 0: inactive, 1: moderately active, and 2: very active). Race (race, 1: white, 0: other races) is taken as a modifier that potentially modifies the association between depression and all-cause death. Because age is not perfectly matched, and the cases were 0.76 years older than the controls even after matching, it is also included in the model as a covariate. The first five matched sets are listed in the following SAS output, which include all needed variables for analysis (SAS Output 6.3). 


SAS Output 6.3 Variables and their values included in the first 5 matched sets


<table><tr><td>Obs</td><td>match</td><td>case</td><td>sex</td><td>age</td><td>dep</td><td>race</td><td>eduy</td><td>marital</td><td>area</td><td>income</td></tr><tr><td>1</td><td>1</td><td>1</td><td>1</td><td>82</td><td>0</td><td>1</td><td>8</td><td>1</td><td>1</td><td>4</td></tr><tr><td>2</td><td>1</td><td>0</td><td>1</td><td>81</td><td>0</td><td>1</td><td>4</td><td>0</td><td>0</td><td>4</td></tr><tr><td>3</td><td>1</td><td>0</td><td>1</td><td>79</td><td>0</td><td>1</td><td>14</td><td>0</td><td>1</td><td>1</td></tr><tr><td>4</td><td>2</td><td>0</td><td>1</td><td>78</td><td>0</td><td>1</td><td>10</td><td>2</td><td>0</td><td>4</td></tr><tr><td>5</td><td>2</td><td>1</td><td>1</td><td>80</td><td>1</td><td>1</td><td>8</td><td>2</td><td>2</td><td>5</td></tr><tr><td>6</td><td>2</td><td>0</td><td>1</td><td>81</td><td>0</td><td>1</td><td>4</td><td>0</td><td>0</td><td>4</td></tr><tr><td>7</td><td>3</td><td>0</td><td>0</td><td>79</td><td>0</td><td>1</td><td>10</td><td>1</td><td>1</td><td>5</td></tr><tr><td>8</td><td>3</td><td>0</td><td>0</td><td>81</td><td>0</td><td>1</td><td>8</td><td>2</td><td>1</td><td>2</td></tr><tr><td>9</td><td>3</td><td>1</td><td>0</td><td>82</td><td>0</td><td>1</td><td>5</td><td>2</td><td>1</td><td>4</td></tr><tr><td>10</td><td>4</td><td>0</td><td>0</td><td>79</td><td>0</td><td>1</td><td>10</td><td>1</td><td>1</td><td>5</td></tr><tr><td>11</td><td>4</td><td>0</td><td>0</td><td>77</td><td>0</td><td>1</td><td>9</td><td>0</td><td>2</td><td>3</td></tr><tr><td>12</td><td>4</td><td>1</td><td>0</td><td>77</td><td>0</td><td>1</td><td>7</td><td>2</td><td>1</td><td>4</td></tr><tr><td>13</td><td>5</td><td>0</td><td>1</td><td>78</td><td>0</td><td>1</td><td>10</td><td>2</td><td>0</td><td>4</td></tr><tr><td>14</td><td>5</td><td>0</td><td>1</td><td>76</td><td>0</td><td>1</td><td>12</td><td>2</td><td>1</td><td>2</td></tr><tr><td>15</td><td>5</td><td>1</td><td>1</td><td>77</td><td>0</td><td>1</td><td>9</td><td>0</td><td>1</td><td>1</td></tr></table>

We first use the conditional logistic regression to estimate the depression-death association, by adjusting for confounding variables, using the following SAS syntax: 

```txt
PROC logistic data=match.Alldeath;
class dep marital area income active
    /param=ref ref=first;
model case(event='1')=dep age eduy marital area income active;
strata match;
RUN; 
```

The SAS output titled “Model Information” indicates that the response variable is “case” with two levels, and all 300 observations (subjects) are utilized in the model. In case of any variables with missing data, the number of “used observations” would be less than the total number of “read observations.” The Newton-Raphson algorithm is utilized to achieve maximum conditional likelihood estimates. The “Response Profile” output reveals that there are 100 cases and 200 controls present in the dataset. By selecting the “event = ‘1’” option, the model estimates the probability of the case. 


SAS Output 6.4 Model information and response profile


<table><tr><td colspan="3">Model Information</td></tr><tr><td>Data Set</td><td colspan="2">WORK.DEATH</td></tr><tr><td>Response Variable</td><td colspan="2">case</td></tr><tr><td>Number of Response Levels</td><td colspan="2">2</td></tr><tr><td>Number of Strata</td><td colspan="2">100</td></tr><tr><td>Model</td><td colspan="2">binary logit</td></tr><tr><td>Optimization Technique</td><td colspan="2">Newton-Raphson ridge</td></tr><tr><td colspan="2">Number of Observations Read</td><td>300</td></tr><tr><td colspan="2">Number of Observations Used</td><td>300</td></tr><tr><td colspan="2">Number of Observations Informative</td><td>300</td></tr></table>

<table><tr><td colspan="3">Response Profile</td></tr><tr><td>Ordered Value</td><td>case</td><td>Total Frequency</td></tr><tr><td>1</td><td>0</td><td>200</td></tr><tr><td>2</td><td>1</td><td>100</td></tr></table>

The SAS output “Strata Summary” contains information about the matching structure. There are 100 strata, each of which includes 1 case and 2 controls. 


SAS Output 6.5 Strata summary of the matched data


<table><tr><td colspan="5">Strata Summary</td></tr><tr><td rowspan="2">Response Pattern</td><td colspan="2">case</td><td rowspan="2">Number of Strata</td><td rowspan="2">Frequency</td></tr><tr><td>0</td><td>1</td></tr><tr><td>1</td><td>2</td><td>1</td><td>100</td><td>300</td></tr></table>

The SAS output “Analysis of conditional maximum likelihood estimates” lists coefficients of independent variables (parameter estimates) and their p-values (SAS Output 6.6). 


SAS Output 6.6 Analysis of conditional maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Conditional Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>1.3932</td><td>0.6052</td><td>5.2997</td><td>0.0213</td></tr><tr><td>age</td><td></td><td>1</td><td>0.4881</td><td>0.1395</td><td>12.2479</td><td>0.0005</td></tr><tr><td>eduy</td><td></td><td>1</td><td>-0.3562</td><td>0.0921</td><td>14.9678</td><td>0.0001</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-1.1992</td><td>0.7904</td><td>2.3020</td><td>0.1292</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>0.0915</td><td>0.4611</td><td>0.0394</td><td>0.8427</td></tr><tr><td>area</td><td>1</td><td>1</td><td>-0.9631</td><td>0.5044</td><td>3.6459</td><td>0.0562</td></tr><tr><td>area</td><td>2</td><td>1</td><td>-1.4014</td><td>0.5670</td><td>6.1093</td><td>0.0134</td></tr><tr><td>income</td><td>1</td><td>1</td><td>0.2193</td><td>0.8149</td><td>0.0724</td><td>0.7878</td></tr><tr><td>income</td><td>2</td><td>1</td><td>-0.0928</td><td>0.7905</td><td>0.0138</td><td>0.9065</td></tr><tr><td>income</td><td>3</td><td>1</td><td>-1.1769</td><td>0.9249</td><td>1.6190</td><td>0.2032</td></tr><tr><td>income</td><td>4</td><td>1</td><td>-2.6710</td><td>1.0998</td><td>5.8986</td><td>0.0152</td></tr><tr><td>income</td><td>5</td><td>1</td><td>-0.9682</td><td>1.1104</td><td>0.7602</td><td>0.3833</td></tr><tr><td>active</td><td>1</td><td>1</td><td>-1.8943</td><td>0.8312</td><td>5.1934</td><td>0.0227</td></tr><tr><td>active</td><td>2</td><td>1</td><td>-2.7521</td><td>0.7287</td><td>14.2634</td><td>0.0002</td></tr></table>

Odds ratios and 95% confidence intervals are presented in the output of “Odds ratio estimates.” The adjusted odds ratio of death for depressed subjects versus undepressed ones is 4.03, 95%CI: 1.23-13.19 (SAS Output 6.7). After adjusting for confounding variables, the estimated odds of death for the depressed subjects are 4 times higher than those for non-depressed subjects. 


SAS Output 6.7 Odds ratio estimates by conditional logistic regression


<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>4.028</td><td>1.230</td><td>13.188</td></tr><tr><td>age</td><td>1.629</td><td>1.240</td><td>2.141</td></tr><tr><td>eduy</td><td>0.700</td><td>0.585</td><td>0.839</td></tr><tr><td>marital 1 vs 0</td><td>0.301</td><td>0.064</td><td>1.419</td></tr><tr><td>marital 2 vs 0</td><td>1.096</td><td>0.444</td><td>2.706</td></tr><tr><td>area 1 vs 0</td><td>0.382</td><td>0.142</td><td>1.026</td></tr><tr><td>area 2 vs 0</td><td>0.246</td><td>0.081</td><td>0.748</td></tr><tr><td>income 1 vs 0</td><td>1.245</td><td>0.252</td><td>6.151</td></tr><tr><td>income 2 vs 0</td><td>0.911</td><td>0.194</td><td>4.291</td></tr><tr><td>income 3 vs 0</td><td>0.308</td><td>0.050</td><td>1.889</td></tr><tr><td>income 4 vs 0</td><td>0.069</td><td>0.008</td><td>0.597</td></tr><tr><td>income 5 vs 0</td><td>0.380</td><td>0.043</td><td>3.348</td></tr><tr><td>active 1 vs 0</td><td>0.150</td><td>0.029</td><td>0.767</td></tr><tr><td>active 2 vs 0</td><td>0.064</td><td>0.015</td><td>0.266</td></tr></table>

## 6.3.3 Bias Due to Ignorance of Matching Structure

If we ignore the matching structures and analyze data as if the controls were chosen randomly, the estimates in non-conditional logistic regression become biased (Greenland 2008, Selvin 2011). To demonstrate the biased estimates, we use the following SAS syntax to estimate the odds ratio for depression while adjusting for the same set of confounding variables. 

```txt
PROC logistic data=match.Alldeath;
class dep sex marital area income active
/ref=first;
model case(event='1')=dep sex age eduy marital area income active;
RUN; 
```

The estimated odds ratios are different from those estimated by conditional logistic regression (SAS Output 6.8). 


SAS Output 6.8 Odds ratio estimates by non-conditional logistic regression


<table><tr><td colspan="4">Odds Ratio Estimates</td></tr><tr><td>Effect</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>dep 1 vs 0</td><td>1.482</td><td>0.616</td><td>3.564</td></tr><tr><td>sex 1 vs 0</td><td>1.007</td><td>0.495</td><td>2.048</td></tr><tr><td>age</td><td>0.993</td><td>0.964</td><td>1.023</td></tr><tr><td>eduy</td><td>0.729</td><td>0.640</td><td>0.830</td></tr><tr><td>marital 1 vs 0</td><td>0.330</td><td>0.096</td><td>1.131</td></tr><tr><td>marital 2 vs 0</td><td>0.907</td><td>0.444</td><td>1.852</td></tr></table>

<table><tr><td>area</td><td>1 vs 0</td><td>0.345</td><td>0.162</td><td>0.736</td></tr><tr><td>area</td><td>2 vs 0</td><td>0.214</td><td>0.078</td><td>0.592</td></tr><tr><td>income</td><td>1 vs 0</td><td>0.872</td><td>0.234</td><td>3.257</td></tr><tr><td>income</td><td>2 vs 0</td><td>0.669</td><td>0.204</td><td>2.190</td></tr><tr><td>income</td><td>3 vs 0</td><td>0.188</td><td>0.044</td><td>0.814</td></tr><tr><td>income</td><td>4 vs 0</td><td>0.072</td><td>0.014</td><td>0.378</td></tr><tr><td>income</td><td>5 vs 0</td><td>0.401</td><td>0.068</td><td>2.370</td></tr><tr><td>active</td><td>1 vs 0</td><td>0.092</td><td>0.023</td><td>0.369</td></tr><tr><td>active</td><td>2 vs 0</td><td>0.063</td><td>0.020</td><td>0.195</td></tr></table>

Therefore, to correctly estimate the exposure effect of exposure in a matched case-control study, we should avoid this ignorance and take the advantage of matching into regression analysis. 

## 6.3.4 Assessment of Interaction Effect

We next assess the modification effect of race on the association between depression and death, using the following SAS syntax: 

```txt
PROC logistic data=match.Alldeath;
class dep race marital area income active
    /param=ref ref=first;
model case(event='1')=dep|race age eduy marital area income active;
strata match;
odds ratio dep/at (race='1' '0');
RUN; 
```

The SAS output titled “Analysis of Conditional Maximum Likelihood Estimates” shows that the coefficient for the product term (DEP*RACE) is 2.48, with a p-value of 0.09 (SAS Output 6.9). Due to the low statistical power in testing if the coefficient is zero, a significance level of 0.1 (instead of 0.05) is used as the cutoff, as suggested by Twisk (2019). In this case, even though the p-value stands at 0.09, the coefficient for the product term deviates substantially from the null value (i.e., 0). Thus, despite the test not being statistically significant, the modification effect cannot be ruled out. 


SAS Output 6.9 Analysis of conditional Maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Conditional Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>dep</td><td>1</td><td>1</td><td>0.2725</td><td>1.1552</td><td>0.0556</td><td>0.8135</td></tr><tr><td>race</td><td>1</td><td>1</td><td>0.6362</td><td>0.7066</td><td>0.8105</td><td>0.3680</td></tr><tr><td>dep*race</td><td>1</td><td>1</td><td>2.4819</td><td>1.4664</td><td>2.8649</td><td>0.0905</td></tr><tr><td>age</td><td></td><td>1</td><td>0.4509</td><td>0.1495</td><td>9.0926</td><td>0.0026</td></tr><tr><td>eduy</td><td></td><td>1</td><td>-0.4094</td><td>0.1029</td><td>15.8385</td><td>&lt;.0001</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.4527</td><td>0.8941</td><td>0.2564</td><td>0.6126</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>0.0170</td><td>0.4695</td><td>0.0013</td><td>0.9711</td></tr><tr><td>area</td><td>1</td><td>1</td><td>-0.7682</td><td>0.5320</td><td>2.0852</td><td>0.1487</td></tr><tr><td>area</td><td>2</td><td>1</td><td>-1.3484</td><td>0.6171</td><td>4.7738</td><td>0.0289</td></tr><tr><td>income</td><td>1</td><td>1</td><td>0.1492</td><td>0.8363</td><td>0.0318</td><td>0.8584</td></tr><tr><td>income</td><td>2</td><td>1</td><td>-0.0469</td><td>0.8220</td><td>0.0033</td><td>0.9545</td></tr><tr><td>income</td><td>3</td><td>1</td><td>-1.0921</td><td>0.9683</td><td>1.2719</td><td>0.2594</td></tr><tr><td>income</td><td>4</td><td>1</td><td>-2.7217</td><td>1.1542</td><td>5.5611</td><td>0.0184</td></tr><tr><td>income</td><td>5</td><td>1</td><td>-1.5030</td><td>1.2059</td><td>1.5534</td><td>0.2126</td></tr><tr><td>active</td><td>1</td><td>1</td><td>-2.1555</td><td>0.8773</td><td>6.0370</td><td>0.0140</td></tr><tr><td>active</td><td>2</td><td>1</td><td>-2.7632</td><td>0.7658</td><td>13.0193</td><td>0.0003</td></tr></table>

The odds ratios that measure the strength of the association between depression and death at the two levels of race can be estimated by: 

$$
O R = \exp \left(\beta_ {d e p} + \beta_ {d e p ^ {*} r a c e}\right) = \exp (0. 2 7 2 5 + 2. 4 8 1 9 \times r a c e).
$$

When race =1 (among whites), 

$$
O R = \exp (0. 2 7 2 5 + 2. 4 8 1 9 \times r a c e) = \exp (2. 7 5 4 4) = 1 5. 7 1.
$$

When race = 0 (among blacks), 

$$
O R = \exp (0. 2 7 2 5 + 2. 4 8 1 9 \times r a c e) = \exp (0. 2 7 2 5) = 1. 3 1.
$$

According to the two odds ratios presented, one for white subjects and the other for black subjects, race modifiers the association between depression and death. The association between depression and death is notably stronger among white subjects (OR = 15.71, 95% CI: 2.33–106.12) compared to black subjects (OR = 1.31, 95% CI: 0.14–12.64). The wide confidence intervals may be attributed to imbalanced ratios of cases to controls among whites and blacks and small cell sizes in some strata. The SAS option “ODDSRATIO” allows for the direct estimation of these two odds ratios as well as their 95% confidence intervals (SAS Output 6.10). 

SAS Output 6.10 Odds ratios measuring depression-death association among white and black 

<table><tr><td colspan="4">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Odds Ratio</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0 at race=1</td><td>15.712</td><td>2.327</td><td>106.116</td></tr><tr><td>dep 1 vs 0 at race=0</td><td>1.313</td><td>0.136</td><td>12.637</td></tr></table>

In the above analysis, the caliper-matched age was included in models to adjust for residual confounding. If we did not adjust for age in the model, the two odds would be 15.12 and 0.53 (SAS Output 6.11), quite different from the above adjusted ones. 

SAS Output 6.11 Odds ratios measuring depression-death association, without age adjustment 

<table><tr><td colspan="4">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Odds Ratio</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0 at race=1</td><td>15.119</td><td>2.289</td><td>99.876</td></tr><tr><td>dep 1 vs 0 at race=0</td><td>0.533</td><td>0.067</td><td>4.233</td></tr></table>

## 6.4 Analysis of Frequency-Matched Case-Control Study

As noted in Section 6.2.2, the traditional logistic regression model (i.e., non-conditional logistic regression model) can be employed to analyze data from frequency-matched case-control studies. Since the ratio of selection probabilities of cases and controls for each stratum of the matched variable varies, the matched variable must be included in the model. Hence, the unconditional logistic regression model includes all matched and unmatched variables as covariates to estimate the odds ratio, which quantifies the degree of association between the exposure and disease. 

## Example 6.4

Let us consider a matched case-control study aimed at examining the effect of depression (dep) on hypertension (hpd). The study entails frequency-matching controls to cases on the basis of the proportion of sex in the cases. Given that 30% of cases are female, controls are randomly chosen such that 30% of them are also female. In addition to sex, we also adjust for age, education years (eduy), and income, using this SAS PROC LOGISTIC program: 

```txt
PROC logistic data=abc.freq_match;
class dep sex marital income /ref=first param=ref;
model hpd(event='1')=dep sex age eduy marital income;
RUN; 
```

The adjusted odds ratio of hypertension comparing depressed individuals with nondepressed individual is 1.92, 95% CI: 0.91–4.03. 

If we believe that race modifies the association between depression and hypertension, we can conduct an interaction analysis, using the following SAS syntax: 

```txt
PROC logistic data=abc.freq_match;
class dep sex race marital income /ref=first param=ref;
model hpd(event='1')=dep|race sex age eduymarital income;
odds ratio dep/at (race ='1' '0');
RUN; 
```

The statistical test of the coefficient of the product term, dep*race, does not reach the significant level $( p ~ = ~ 0 . 1 )$ . However, its coefficient is far away from the null $\left( \beta _ { \mathrm { d e p } ^ { * } \mathrm { r a c e } } = 0 \right)$ . 


SAS Output 6.12 Analysis of maximum likelihood estimates


<table><tr><td colspan="8">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td></td><td>DF</td><td>Estimate</td><td>Standard Error</td><td>Wald Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>Intercept</td><td></td><td></td><td>1</td><td>-2.6715</td><td>1.0174</td><td>6.8952</td><td>0.0086</td></tr><tr><td>dep</td><td>1</td><td></td><td>1</td><td>-0.2206</td><td>0.9990</td><td>0.0488</td><td>0.8252</td></tr><tr><td>race</td><td>1</td><td></td><td>1</td><td>-0.1710</td><td>0.4582</td><td>0.1393</td><td>0.7090</td></tr><tr><td>dep*race</td><td>1</td><td>1</td><td>1</td><td>1.0180</td><td>1.0690</td><td>0.9068</td><td>0.3410</td></tr><tr><td>sex</td><td>1</td><td></td><td>1</td><td>-0.1563</td><td>0.2925</td><td>0.2855</td><td>0.5931</td></tr><tr><td>age</td><td></td><td></td><td>1</td><td>0.0378</td><td>0.0106</td><td>12.7650</td><td>0.0004</td></tr><tr><td>eduy</td><td></td><td></td><td>1</td><td>-0.0144</td><td>0.0451</td><td>0.1027</td><td>0.7486</td></tr><tr><td>marital</td><td>1</td><td></td><td>1</td><td>-0.1346</td><td>0.7362</td><td>0.0334</td><td>0.8549</td></tr><tr><td>marital</td><td>2</td><td></td><td>1</td><td>-0.1689</td><td>0.3710</td><td>0.2072</td><td>0.6490</td></tr><tr><td>income</td><td>1</td><td></td><td>1</td><td>-0.00436</td><td>0.6660</td><td>0.0000</td><td>0.9948</td></tr><tr><td>income</td><td>2</td><td></td><td>1</td><td>-0.00743</td><td>0.6349</td><td>0.0001</td><td>0.9907</td></tr><tr><td>income</td><td>3</td><td></td><td>1</td><td>0.2246</td><td>0.5911</td><td>0.1444</td><td>0.7039</td></tr><tr><td>income</td><td>4</td><td></td><td>1</td><td>0.0331</td><td>0.6135</td><td>0.0029</td><td>0.9570</td></tr><tr><td>income</td><td>5</td><td></td><td>1</td><td>0.3581</td><td>0.6768</td><td>0.2800</td><td>0.5967</td></tr></table>

The two odds ratios that measure the strength of the association between depression and hypertension at the two levels of race can be estimated by 

$$
O R = \exp \left(\beta_ {d e p} + \beta_ {d e p ^ {*} r a c e}\right) = \exp (- 0. 2 2 0 6 + 1. 0 1 8 \times r a c e).
$$

Among whites, the OR is 2.22, 95%CI: 1.00–4.95. Among blacks, it is 0.80, 95%CI: 0.11–5.68. The two odds ratios can be directly estimated by the SAS option “ODDSRATIO.” 

SAS Output 6.13 Odds ratios measuring depression-hypertension among white and black 

<table><tr><td colspan="4">Odds Ratio Estimates and Wald Confidence Intervals</td></tr><tr><td>Odds Ratio</td><td>Estimate</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>dep 1 vs 0 at race=1</td><td>2.220</td><td>0.996</td><td>4.946</td></tr><tr><td>dep 1 vs 0 at race=0</td><td>0.802</td><td>0.113</td><td>5.682</td></tr></table>

As demonstrated in this example, despite imprecise measurements, there is evidence of a heterogeneous effect of depression on hypertension between white and black populations, even though the p-value for the product term is 0.34. Consequently, it is essential to take into account the coefficient value of the product term and consider the heterogeneous effect when assessing effect modification, rather than relying solely on the p-value. 

## 6.5 Summary

Matched case-control study designs are frequently used in etiological studies due to their efficiency in controlling for confounding bias. While matching is appealing—given that cases and controls within matched sets often share similar values for important confounding variables—it’s essential to note that matching by itself does not completely eliminate confounding. Indeed, matching in case-control studies can often superimpose a selection bias over confounding since the matched controls no longer accurately represent the base population that produces the cases. 

To address both residual confounding and selection bias, stratification analysis and conditional logistic regression become crucial. Conditional logistic regression estimates the conditional odds ratio, makes adjustments for both matched and unmatched confounders, and evaluates interaction effects. Because conditional logistic regression is a large-sample method, it can manifest notable biases when certain types of matched sets are infrequent or when the model incorporates an excessive number of parameters (Greenland, Schwartzbaum, and Finkle 2000). Therefore, matched data should be carefully inspected for the detection of sparse-data problems before modeling. 

## Additional Readings

For more in-depth information about the matched case-control study design and data analysis, we recommend the follow excellence books: 



Holford, Theodore R. 2002. Multivariate methods in epidemiology, Monographs in epidemiology and biostatistics; v. 32. Oxford: Oxford University Press. 





Mansournia, M. A., N. P. Jewell, and S. Greenland. 2018. “Case-control matching: effects, misconceptions, and recommendations.” Eur J Epidemiol 33 (1):5–14. 





Pearce, N. 2016. “Analysis of matched case-control studies.” BMJ 352:i969. 





Selvin, S. 2011. Statistical tools for epidemiologic research: Oxford University Press, USA. 



## References



Agresti, A. 2012. Categorical data analysis. 2nd ed. Wiley series in probability and statistics. New York: Wiley. 





Agresti, A. 2018. An introduction to categorical data analysis. 3rd ed. Wiley series in probability and statistics. Hoboken, NJ: Wiley-Interscience. 





Borgan, Ø., N. E. Breslow, N. Chatterjee, M. H. Gail, A. Scott, and C. Wild. 2018. Handbook of statistical methods for case-control studies. Boca Raton, FL: Chapman & Hall/CRC Press. 





Breslow, N. E., and N. E. Day. 1980. Statistical methods in cancer research. Volume I - The analysis of casecontrol studies. 1980/01/01 ed. Vol. 1, IARC Sci Publ. Lyon: International Agency for research on cancer. 





Greenland, S. 2008. “Applications of stratified analysis methods.” In Modern Epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 283–302. Philidelphia, PA: Lippincott williams & Wilkins. 





Greenland, S., and H. Morgenstern. 2001. “Confounding in health research.” Annu Rev Public Health 22:189–212. doi: 10.1146/annurev.publhealth.22.1.189. 





Greenland, S., and K. J. Rothman. 2008. “Introduction to stratified analysis.” In Modern Epidemiology, edited by K. J. Rothman, S. Greenland and T.L. Lash, 259–282. Philidelphia, PA: Lippincott williams & Wilkins. 





Greenland, S., JA. Schwartzbaum, and WD. Finkle. 2000. “Problems due to small samples and sparse data in conditional logistic regression analysis.” Am J Epidemiol 151 (5):531–539. doi: 10.1093/ oxfordjournals.aje.a010240. 





Holford, T. R. 2002. Multivariate methods in epidemiology, Monographs in epidemiology and biostatistics; v. 32. Oxford: Oxford University Press. 





Jewell, N.P. 2003. Statistics for Epidemiology. Boca Raton: Taylor & Francis. 





Kleinbaum, D. G., L. L. Kupper, and H. Morgenstern. 1982. Epidemiologic research: principles and quantitative methods. Belmont, CA: Lifetime Learning Publications. 





Lash, T. L., and K. J. Rothman. 2021. “Case-control studies.” In Modern Epidemiology, edited by T. L. Lash, T. J. VanderWeele, S. Haneuse and K. J. Rothman, 161–184. Philadelphia: Wolters Kluwer. 





Mansournia, M. A., M. A. Hernán, and S. Greenland. 2013. “Matched designs and causal diagrams.” Int J Epidemiol 42 (3):860–869. doi: 10.1093/ije/dyt083. 





Mansournia, M. A., N. P. Jewell, and S. Greenland. 2018. “Case-control matching: effects, misconceptions, and recommendations.” Eur J Epidemiol 33 (1):5–14. doi: 10.1007/s10654-017-0325-0. 





Pearce, N. 2016. “Analysis of matched case-control studies.” BMJ 352:i969. doi: 10.1136/bmj.i969. 





Pearce, N. 2018. “Bias in matched case-control studies: DAGs are not enough.” Eur J Epidemiol 33 (1):1–4. doi: 10.1007/s10654-018-0362-3. 





Robins, J., S. Greenland, and N. E. Breslow. 1986. “A general estimator for the variance of the Mantel-Haenszel odds ratio.” Am J Epidemiol 124 (5):719–723. doi: 10.1093/oxfordjournals.aje.a114447. 





Schisterman, E. F., S. R. Cole, and R. W. Platt. 2009. “Overadjustment bias and unnecessary adjustment in epidemiologic studies.” Epidemiology 20 (4):488–495. doi: 10.1097/EDE.0b013e3181a819a1. 





Selvin, S. 2011. Statistical tools for epidemiologic research. USA: Oxford University Press. 





Suzuki, E., T. Shinozaki, and E. Yamamoto. 2020. “Causal diagrams: Pitfalls and tips.” J Epidemiol 30 (4):153–162. doi: 10.2188/jea.JE20190192. 





Thomas, D. C., and S. Greenland. 1983. “The relative efficiencies of matched and independent sample designs for case-control studies.” J Chronic Dis 36 (10):685–697. doi: 10.1016/0021-9681(83)90162-5. 





Twisk, J, W. R. 2019. Applied mixed model analysis: A practical guide. 2nd ed. Cambridge, UK: Cambridge University Press. 





Ury, H. K. 1975. “Efficiency of case-control studies with multiple controls per case: continuous or dichotomous data.” Biometrics 31 (3):643–649. 





Wacholder, S., D. T. Silverman, J. K. McLaughlin, and J. S. Mandel. 1992. “Selection of controls in case-control studies. III. Design options.” Am J Epidemiol 135 (9):1042–1050. doi: 10.1093/ oxfordjournals.aje.a116398. 





Wan, F., G. A. Colditz, and S. Sutcliffe. 2021. “Matched versus unmatched analysis of matched casecontrol studies.” Am J Epidemiol 190 (9):1859–1866. doi: 10.1093/aje/kwab056. 





Weiss, N. S., and T. D. Koepsell. 2014. Epidemiologic methods: Studying the occurrence of illness. 2nd ed. Oxford: Oxford University Press. 



## Modeling for Population-Based Case-Control Studies

The previous two chapters delved into the data analysis for non-population-based casecontrol studies. Specifically, they discussed traditional case-control studies, which use cumulative sampling to select controls from the base population and matched case-control studies where controls are matched to cases. This chapter shifts its focus toward data analysis for two specific types of population-based case-control studies: the nested casecontrol study and the case-subcohort study. As discussed in Chapter 5, these two designs estimate risk ratios, incidence rate ratios, or hazard ratios without relying on the raredisease assumption. Both designs extend the traditional case-control study to a cohort-like study, with the outcome of interest being an event with an associated event time. Due to their unique sampling process, these two designs are better viewed as a special form of a prospective cohort study. Consequently, population-based case-control studies possess features of both case-control and cohort studies, and data analysis must leverage the hybrid features to draw valid conclusions. 

## 7.1 Modeling for Nested Case-Control Studies

## 7.1.1 Features of Nested Case-Control Data

As discussed in Section 5.2.4, the nested case-control design implements density sampling to select one or more controls for each index case from the risk set at the time of the case event (i.e., matched on failure time) (Langholz and Goldstein 1996). Controls may also be matched to cases on selected confounding variables. To accurately analyze the data, it is important to understand the difference between the risk set and the time-matched set. The risk set for an index case includes the index case and all subjects at risk for the disease at the time the index case is diagnosed or identified. In contrast, the time-matched set for an index case comprises the index case and a small number of controls randomly selected from the risk set. 

Similar to cohort studies, censoring occurs in nested case-control studies. Study subjects who do not experience the outcome event of interest will have a right-censored event time, meaning that they have been observed in the cohort until the investigator knows they have not developed the event. Some subjects may be lost to followup or may have died due to other competing diseases during the observation period. Additionally, some subjects may be left-censored if they were exposed to the exposure of interest before study entry or entered the cohort after the start of follow-up. Therefore, the nested case-control design is an extension of a cohort study that focuses on time-to-event analysis. Data from the study can be analyzed using the conditional proportional hazards model, where the outcome of interest is an event with an associated event time (Keogh and Cox 2014). 

The nested case-control design is also a useful tool for addressing time-dependent exposure variables and confounding variables. In cohort studies, exposure variables are typically time-dependent, and this can be accounted for in the study design stage and the data analysis stage. To address time-dependent variables in the study design stage, the nested case-control approach can be used, whereby the exposure for controls reflects values corresponding to the time of selection of their index cases (Essebag et al. 2005). The values of exposure and confounding variables are measured at the same time from the index cases and controls in the time-matched sets, and the values measured in controls in the time-matched sets reflect the values of them in the risk sets from which the time-matched sets are randomly selected. Using this time-matching approach, the nested case-control design addresses time-varying exposure and reduces time-varying confounders. Analysis of nested case-control data is based on the time-matched sets, similar to the conventional matched case-control study. However, in the nested case-control design, the index case and its controls are time-matched. 

## 7.1.2 Conditional Cox Proportional Hazard (PH) Model

The conditional Cox PH model is frequently employed to analyze data collected from nested case-control studies. This model adopts a partial likelihood approach to estimate hazard ratios or incidence rate ratios, eliminating the need for the rare-disease assumption. Notably, the partial likelihood is mathematically congruent with the conditional logistic likelihood utilized in matched case-control studies (Prentice and Breslow 1978). In nested case-control studies, this partial likelihood estimation is conditioned on timematched sets. Each case within a time-matched set is compared with its respective controls. These controls are chosen at random from the risk set. This risk set encompasses all participants who have survived beyond the occurrence time of the index case’s failure and were enrolled in the study before this failure. As a result, the exposure within the risk set is time-dependent, with the exposure of controls truncated at the failure time of the index case. 

Unlike the traditional Cox PH model, which analyzes data from the entire cohort within which a case-control study is nested, the conditional PH model utilizes only a limited number of controls from each time-matched set, rather than using all subjects available in the risk set from which the time-matched set is nested. To make it clearer, consider an individual who was diagnosed with asthma on 12/01/2022. Suppose there are 100 subjects who were disease-free and at risk on that same day, forming a risk set defined by this index case. In a nested case-control study, instead of using all 100 potential controls within the risk set, we randomly select a smaller subset, say five controls, to pair with this case, creating a time-matched set. Consequently, the conditional regression analysis in this scenario is conditional upon these time-matched sets. In contrast, when employing traditional Cox PH analysis on the full cohort, all subjects in the risk set (in this instance, all 100 subjects) are incorporated into the analysis. 

When using the Kaplan–Meier method with cohort data (as discussed in Section 3.1.6), the denominator for estimating survival probability is the risk set, which includes the total number of individuals at risk at time $t _ { i }$ (including the i individuals who experience the event). However, to reduce cost and time, the nested case-control design randomly selects controls from the index case’s risk set and matches them on time $t _ { i \cdot }$ Therefore, the same conditional likelihood analytic approaches used for cohort data can be applied to nested case-control data to directly estimate the incidence rate ratio or hazard ratio. 

The conditional Cox PH regression model estimates the conditional probability of an event occurring for a particular case relative to all individuals in the case’s time-matched set who are under follow-up. The estimation takes into account the case’s age at the event (or another relevant time scale) and the exposure history of everyone up to that age. The probability or hazard at time t is estimated using the following Cox PH regression model described in Section 3.4: 

$$
h (t | X, \mathbf {Z}) = h _ {0} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}\right). \tag {3.10}
$$

where t is the time (or age) that has elapsed since an eligible subject entered the cohort, $h ( t | X , Z )$ is the hazard at time t given X and $Z ,$ and $\beta _ { \mathrm { x } } , \beta _ { 1 } , . . . , \beta _ { p }$ are regression coefficients. $h _ { 0 } ( t )$ is the baseline hazard and corresponds to the hazard function when all X and Z are equal to 0. Exponentiation of $\beta _ { \mathrm { x } }$ gives a hazard ratio that measures the strength of association between the outcome and the exposure $X ,$ while adjusting for Z. 

In a full cohort study, the partial likelihood estimate of regression coefficients $\beta _ { \mathrm { x } } , \beta _ { 1 } , . . . ,$ $\beta _ { p }$ is expressed as: 

$$
L \left(\beta_ {x}, \beta_ {z}\right) = \prod_ {t _ {i}} \frac {\exp \left(\beta_ {x} X _ {i} + \beta_ {z} Z _ {i}\right)}{\sum_ {k \in C _ {i}} \exp \left(\beta_ {x} X _ {k} + \beta_ {z} Z _ {k}\right)} \tag {7.1}
$$

where $C _ { i }$ is the risk set, and $\beta _ { z } \ i s \ \beta _ { 1 } , . . . , \beta _ { p } \ ( \mathsf { C o x \ 1 9 7 2 } )$ . In a nested case-control study, the partial likelihood estimate of regression coefficients is expressed as: 

$$
L \left(\beta_ {x}, \beta_ {z}\right) = \prod_ {t _ {i}} \frac {\exp \left(\beta_ {x} X _ {i} + \beta_ {z} Z _ {i}\right)}{\sum_ {k \in S _ {i}} \exp \left(\beta_ {x} X _ {k} + \beta_ {z} Z _ {k}\right)} \tag {7.2}
$$

where $S _ { i }$ is the time-matched risk set, a random sample of at-risk subjects from the risk set $C _ { i }$ (Borgan and Langholz 1993, Thomas et al. 1977). 

The core difference between the two likelihoods lies in $S _ { i }$ and $C _ { i } .$ . This difference is addressed through the conditional analysis of the nested case-control data. Using the conditional Cox PH regression model, each index case’s time-matched set is approached as a stratification variable, essentially conditioning on these time-matched sets. 

Therefore, for cohort data structured by time-matched sets, inferences about the rate ratio can be drawn using the conditional Cox PH regression model. The case-control comparison from each time-matched set is quantified through a conditional logistic likelihood contribution. The partial likelihood analysis of cohort data relies on the product of the conditional logistic contributions from each case-control set (Langholz and Richardson 2009). This is why the model is referred to as the conditional Cox PH regression model. Central to the proportional hazards analysis is the calculation of a set of conditional probabilities. Specifically, the probability for a subject to develop disease among all individuals (the case and time-matched controls) in the time-matched set (Wacholder 2009). 

## 7.1.3 Use of Conditional Cox PH Model to Analyze Data

We use the following examples to demonstrate the application of the conditional Cox proportional hazards model for estimating exposure effects while controlling for confounding variables and assessing modification effects. The example of a nested case-control study was constructed from the NHEFS dataset. 

## Example 7.1

In this example, we estimate the exposure effect of hypertension on the incidence of first heart attacks in a nested case-control study. The base population for this study was established at the baseline of the NHEFS during the first wave of data collection from 1982 to 1984. The cohort was followed up to the fourth wave of data collection in 1992. Out of the 6,900 subjects who had no history of a heart attack prior to the baseline, 260 experienced their first heart attack during the follow-up period. To construct the nested case-control study, we randomly selected three at-risk controls from the risk set when an index experienced their first heart attack episode. Additionally, 40 selected controls experienced a heart attack later during the follow-up period and were used as both cases and controls. As a result, the study consisted of 260 cases and 780 controls. Potential confounding variables include race (RACE, 1: white, 0: other races), marital status (MARITAL, 0: marriage, 1: never married, 2: widowed, divorced, or separated), residence areas (AREA, 0: rural area, 1: city, 2: city suburbs), smoke (0: non-smoker, 1: current smoker, and 2: former smoker), and alcohol drink (0: abstainer, 1: light drinker, 2: moderate or heavy drinker). For the purpose of illustration, sex (0: female, 1: male) is taken as a modifier that potentially modifies the association between hypertension and heart attack. The indicating variable of the time-matched sets is “MATCH” and t is attained age. To use the Cox PH regression to analyze data, the following time-scale and censoring variables were created: 

1. AGE_ENTRY: age at enrollment of the study 

2. AGE_MATCH: age at event (first heart attack) or age at censoring 

3. CENSOR: coded as “1” for subjects who experienced heart attack, coded as “0” otherwise. 

We first use the conditional Cox PH model to estimate the hypertension-attack association, adjusting for confounding variables, using the following SAS syntax: 

```txt
PROC phreg data=abc.NCC nosummary;
class hypert area marital smoke drink/ref=first;
model age_match*censor(0)=hypert race area marital
    smoke drink
    /entry=age_entry ties=discrete rl;
strata match; 
```

RUN; 

The SAS PROC PHREG syntax used in nested case-control studies differs from that used in cohort studies in that it includes a “STRATA” statement to indicate timematched sets. In the Cox PH model, the “MATCH” variable is treated as a stratification variable, conditioning on time-matched sets. The “ENTRY” option specifies that the values of “AGE_ENTRY” are used as a late or delayed entry point to the cohort (as outlined in Section 3.4.4: Age attained to event as time scale). Additionally, the “TIES = discrete” option replaces the Cox PH model with the discrete logistic regression model (SAS Institute Inc 2018). 

This model is suitable for analyzing the probability of an event occurring when the time variable is discretely measured, meaning there are only a few periods of time measured and the exact time of the event is not known. For example, in a 5-year follow-up study where outcome events such as lung cancer are screened annually, the exact time of lung cancer occurrence is often unknown, but it is known to have occurred in one of the five one-year intervals. Discrete-scale data are common in epidemiologic studies. Finally, the “RL” option displays the 95% confidence intervals. 

Executing the above PROC PHREG provides the regression coefficients, standard errors, and p-values of the Chi-square tests, which are listed in SAS Output 7.1. 


SAS Outcome 7.1 Analysis of maximum likelihood estimates


<table><tr><td colspan="7">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>hypert</td><td>1</td><td>1</td><td>0.34514</td><td>0.15693</td><td>4.8373</td><td>0.0279</td></tr><tr><td>race</td><td></td><td>1</td><td>-0.51468</td><td>0.22031</td><td>5.4577</td><td>0.0195</td></tr><tr><td>area</td><td>1</td><td>1</td><td>-0.36148</td><td>0.17779</td><td>4.1339</td><td>0.0420</td></tr><tr><td>area</td><td>2</td><td>1</td><td>-0.20643</td><td>0.20829</td><td>0.9823</td><td>0.3216</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.49369</td><td>0.46116</td><td>1.1461</td><td>0.2844</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>-0.06671</td><td>0.16938</td><td>0.1551</td><td>0.6937</td></tr><tr><td>smoke</td><td>1</td><td>1</td><td>0.90855</td><td>0.19406</td><td>21.9183</td><td>&lt;.0001</td></tr><tr><td>smoke</td><td>2</td><td>1</td><td>0.36973</td><td>0.19260</td><td>3.6853</td><td>0.0549</td></tr><tr><td>drink</td><td>1</td><td>1</td><td>0.06201</td><td>0.17238</td><td>0.1294</td><td>0.7190</td></tr><tr><td>drink</td><td>2</td><td>1</td><td>-0.26624</td><td>0.30458</td><td>0.7641</td><td>0.3820</td></tr></table>

Based on the results presented in SAS Output 7.1, the hazard ratio of heart attack comparing smokers with non-smokers is 1.41 (95% CI: 1.04–1.92) after adjusting for confounding variables (as shown in SAS Output 7.2). 


SAS Output 7.2 Hazard ratios and confidence intervals


<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>hypert</td><td>1.412</td><td>1.038</td><td>1.921</td></tr><tr><td>race</td><td>0.598</td><td>0.388</td><td>0.920</td></tr><tr><td>area</td><td>0.697</td><td>0.492</td><td>0.987</td></tr><tr><td>area</td><td>0.813</td><td>0.541</td><td>1.224</td></tr><tr><td>marital</td><td>0.610</td><td>0.247</td><td>1.507</td></tr><tr><td>marital</td><td>0.935</td><td>0.671</td><td>1.304</td></tr><tr><td>smoke</td><td>2.481</td><td>1.696</td><td>3.629</td></tr><tr><td>smoke</td><td>1.447</td><td>0.992</td><td>2.111</td></tr><tr><td>drink</td><td>1.064</td><td>0.759</td><td>1.492</td></tr><tr><td>drink</td><td>0.766</td><td>0.422</td><td>1.392</td></tr></table>

Another way to define a delayed entry time is by including the age at entry to the cohort (age_entry) and age at matching (age_match) for each subject in a time-matched set in the MODEL statement. 

```txt
PROC phreg data=abc.NCC nosummary;
class hypert area marital smoke drink/ref=first;
model (age_entry, age_match)*censor(0)=hypert race
area marital smoke drink/ties=discrete rl;
strata match; 
```

RUN; 

This SAS syntax estimates the same hazard ratios and their 95% confidence intervals as the previous syntax did. 

We now estimate the effect of modification of sex on the association between hypertension and heart attack. As explained in Section 5.4.2, if there is only one modifier (such as sex in this sample), the modification effects can be estimated using the following formula: 

$$
\text { hazard   ratio } (\mathrm{HR}) = \exp \left(\beta_ {1} + \beta_ {\text { hypert*sex }} \times s e x\right),
$$

where $\beta _ { 1 } \mathrm { i s }$ the coefficient of the exposure variable (HYPERT), and $\beta _ { h y p e r t ^ { * } s e x }$ is the coefficient of the product term. 

```txt
PROC phreg data=abc.NCC nosummary;
class hypert sex area marital smoke drink
    /ref=first param=ref;
model age_match*censor(0)=hypert|sex race area marital
    smoke drink
    /entry=age_entry ties=discrete rl;
strata match;
hazard ratio hypert/diff=ref at (sex='1' '0');
RUN; 
```

We can use the estimated coefficients listed in SAS Output 7.3 to manually estimate hazard ratios for males and females. 


SAS Output 7.3 Analysis of maximum likelihood estimates


<table><tr><td colspan="8">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td></td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>hypert</td><td>1</td><td></td><td>1</td><td>0.43072</td><td>0.20641</td><td>4.3545</td><td>0.0369</td></tr><tr><td>sex</td><td>1</td><td></td><td>1</td><td>0.52443</td><td>0.21709</td><td>5.8359</td><td>0.0157</td></tr><tr><td>hypert*sex</td><td>1</td><td>1</td><td>1</td><td>-0.16027</td><td>0.30758</td><td>0.2715</td><td>0.6023</td></tr><tr><td>race</td><td></td><td></td><td>1</td><td>-0.51738</td><td>0.22146</td><td>5.4580</td><td>0.0195</td></tr><tr><td>area</td><td>1</td><td></td><td>1</td><td>-0.31771</td><td>0.17902</td><td>3.1496</td><td>0.0759</td></tr><tr><td>area</td><td>2</td><td></td><td>1</td><td>-0.16488</td><td>0.20995</td><td>0.6167</td><td>0.4323</td></tr><tr><td>marital</td><td>1</td><td></td><td>1</td><td>-0.41675</td><td>0.46384</td><td>0.8073</td><td>0.3689</td></tr><tr><td>marital</td><td>2</td><td></td><td>1</td><td>0.07215</td><td>0.17785</td><td>0.1646</td><td>0.6850</td></tr><tr><td>smoke</td><td>1</td><td></td><td>1</td><td>0.78636</td><td>0.19931</td><td>15.5670</td><td>&lt;.0001</td></tr><tr><td>smoke</td><td>2</td><td></td><td>1</td><td>0.20412</td><td>0.20349</td><td>1.0062</td><td>0.3158</td></tr><tr><td>drink</td><td>1</td><td></td><td>1</td><td>0.03361</td><td>0.17327</td><td>0.0376</td><td>0.8462</td></tr><tr><td>drink</td><td>2</td><td></td><td>1</td><td>-0.34289</td><td>0.30756</td><td>1.2429</td><td>0.2649</td></tr></table>

$$
\mathrm{HR} = \exp \left(\beta_ {1} + \beta_ {\text {hypert*sex}} \times s e x\right) = \exp (0. 4 3 1 - 0. 1 6 \times s e x).
$$

When sex = 1 (among males): 

$$
\mathrm{HR} = \exp (0. 4 3 1 - 0. 1 6 \times 1) = 1. 3 1
$$

When sex = 0 (among females): 

$$
\mathrm{HR} = \exp (0. 4 3 1 - 0. 1 6 \times 0) = 1. 5 4
$$

The SAS statement of “HAZARDSRATIO” automatically generates the two hazard ratios with 95% confidence intervals. 


SAS Output 7.4 Hazard ratios and 96% confidence intervals


<table><tr><td colspan="4">Hazard Ratios for hypert</td></tr><tr><td>Description</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>hypert 1 vs 0 At sex=1</td><td>1.311</td><td>0.825</td><td>2.082</td></tr><tr><td>hypert 1 vs 0 At sex=0</td><td>1.538</td><td>1.027</td><td>2.305</td></tr></table>

The hazard of heart attack among hypertensive females is 1.54 times higher than that among non-hypertensive females, while the hazard of heart attack among hypertensive males is 1.31 times higher than that among non-hypertensive males. However, it seems that sex does not modify the association between hypertension and heart attack, as the regression coefficient of the product term (HYPERT*SEX) is small (−0.16; p = 0.6) and the two hazard ratios are similar. 

In order to compare the nested case-control study to the entire cohort study, we now estimate hazard ratios using data from the entire cohort, which includes 6,900 subjects. 

```txt
PROC phreg data=abc.entire_cohort;
class hypert area marital smoke drink/ref=first;
model surage*H_attack(0)=hypert race area marital smoke drink /entry=age_entry ties=breslow;
hazard ratio hypert/diff=ref; 
```

RUN; 

SAS Output 7.5 lists the regression coefficients, standard errors, and p-values of Chisquare tests. 


SAS Output 7.5 Analysis of maximum likelihood estimates


<table><tr><td colspan="8">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td></td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td><td>Hazard Ratio</td></tr><tr><td>hypert</td><td>1</td><td>1</td><td>0.39553</td><td>0.13113</td><td>9.0980</td><td>0.0026</td><td>1.485</td></tr><tr><td>race</td><td></td><td>1</td><td>-0.27792</td><td>0.17482</td><td>2.5272</td><td>0.1119</td><td>0.757</td></tr><tr><td>area</td><td>1</td><td>1</td><td>-0.19920</td><td>0.14485</td><td>1.8913</td><td>0.1691</td><td>0.819</td></tr><tr><td>area</td><td>2</td><td>1</td><td>-0.20283</td><td>0.17181</td><td>1.3936</td><td>0.2378</td><td>0.816</td></tr><tr><td>marital</td><td>1</td><td>1</td><td>-0.68156</td><td>0.41726</td><td>2.6681</td><td>0.1024</td><td>0.506</td></tr><tr><td>marital</td><td>2</td><td>1</td><td>-0.08803</td><td>0.14313</td><td>0.3782</td><td>0.5386</td><td>0.916</td></tr><tr><td>smoke</td><td>1</td><td>1</td><td>1.05300</td><td>0.16040</td><td>43.0994</td><td>&lt;.0001</td><td>2.866</td></tr><tr><td>smoke</td><td>2</td><td>1</td><td>0.31240</td><td>0.16444</td><td>3.6090</td><td>0.0575</td><td>1.367</td></tr><tr><td>drink</td><td>1</td><td>1</td><td>-0.12770</td><td>0.14105</td><td>0.8196</td><td>0.3653</td><td>0.880</td></tr><tr><td>drink</td><td>2</td><td>1</td><td>-0.37918</td><td>0.25425</td><td>2.2242</td><td>0.1359</td><td>0.684</td></tr></table>

The hazard ratio for hypertion and its 95% confidence interval are listed in SAS output 7.6. 


SAS Output 7.6 Hazard ratio and 95% confidence interval


<table><tr><td colspan="4">Hazard Ratios for hypert</td></tr><tr><td>Description</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>hypert 1 vs 0</td><td>1.485</td><td>1.149</td><td>1.920</td></tr></table>

The estimated hazard ratio in the entire cohort is 1.49 (95% CI: 1.15–1.92), which is similar to the hazard ratio estimated in the nested case-control study (HR = 1.41; 95%CI: 1.04–1.92). However, research costs are significantly lower in the nested case-control study due to its smaller sample size (1,040), compared to the entire cohort study, which includes 6,900 subjects. 

We also assess if sex modifies the association between heart attack and hypertension in the entire cohort data, using the following SAS syntax. 

```txt
PROC phreg data=abc.entire_cohort;
class hypert sex area marital smoke drink/ref=first;
model surage*H_attack(0)=hypert|sex race area marital smoke drink /entry=age_entry ties=breslow;
hazard ratio hypert/diff=ref at (sex='0' '1'); 
```

RUN; 

The p-value for the product term (HYPERT*SEX) is 0.67, and the two-point estimates (HR) are close to each other, indicating that there is no substantial interaction between hypertension and sex. This is further supported by the large overlap between the two 95% confidence intervals. These results are consistent with the findings from the nested casecontrol analysis (SAS Output 7.7). 


SAS Output 7.7 Hazard ratio and 95% confidence interval


<table><tr><td colspan="4">Hazard Ratios for hypert</td></tr><tr><td>Description</td><td>Point Estimate</td><td colspan="2">95% Wald Confidence Limits</td></tr><tr><td>hypert 1 vs 0 At sex=0</td><td>1.586</td><td>1.119</td><td>2.250</td></tr><tr><td>hypert 1 vs 0 At sex=1</td><td>1.426</td><td>0.992</td><td>2.049</td></tr></table>

To ensure the validity of the Cox PH model, it is important to check the assumption of proportionality of hazards for each of the covariates in the model. However, an approach for assessing the proportional assumption is not available for the nested case-control data. In this case, we can employ the method introduced in Sections 3.5 and 3.6 as an alternative approach. If we find that one or more variables fail to satisfy the proportionality assumption, we can still use the Cox model with certain modifications. These modifications include using the stratified Cox model, the Cox model with time-dependent variables, and the Cox model with a product term between exposure and a function of time. 

In summary, in the nested case-control design, we select one or more controls for each case in the cohort at random from that case’s risk set. This allows us to estimate the incidence rate ratio or hazard ratio directly from the nested case-control data, which is a close approximation of the hazard ratio estimated in the entire cohort. However, there are some limitations to this approach. For instance, some time-matched sets will be uninformative because the case and control(s) will be concordant for exposure (both exposed and unexposed to an exposure factor). This issue is discussed in detail in Section 6.2.3. Additionally, when exposure is rare, a large random sample may be required to draw meaningful inferences about the exposure-outcome association. Therefore, simple random sampling may not be the optimal method in this scenario. In this situation, we may consider using the counter-matching method to select controls. 

## 7.1.4 Counter-Matching in Nested Case-Control Study

In the pair-matched design, four types of matched pairs present the exposure status of cases and controls, but only the discordant pairs provide distinguished exposure status for estimating the exposure effect, as discussed in Section 6.2.3. To effectively use exposure information, we may purposely oversample discordant pairs, in which every exposed case is matched with an unexposed control and vice versa. This is known as counter-matching on exposure status (Langholz and Clayton 1994). However, to employ this approach, we must know the exposure status of the study subjects. If we do not have this information or if measuring exposure level or intensity is too expensive and time-consuming for the entire cohort, we can use an existing surrogate measure (although less optimal) to define the exposure status when selecting controls. 

Once cases and controls are counter-matched on the surrogate exposure status, we can measure their actual exposure status from selected cases and controls. This can reduce the burden of measuring actual exposure for the entire cohort and increase the statistical power of a matched case-control study. The variance and standard errors of the exposure estimate will be smaller in the counter-matched nested case-control study than in a nested case-control study without counter-matching (Borgan et al. 2018, Langholz and Goldstein 2001). The primary goal of using counter-matching in a nested case-control study is to increase efficiency, which depends mainly on the strength of the relationship between the surrogate and actual exposure, i.e., the stronger the relationship, the greater the efficacy of a counter-matched design. 

An example of a surrogate measure is the duration of exposure or employment, which can serve as a surrogate for cumulative exposure in an occupational cohort. Although the duration of exposure may be available for the entire cohort, measures of exposure intensity for each job over time may be unavailable. For instance, if we want to investigate the effect of phthalates on fertility among hairdressers, measuring concentrations of phthalates in blood samples is costly. Instead, we can use the duration of exposure (or employment) to cosmetic products containing phthalates as a surrogate. After matching controls to cases and controls on the surrogate exposure status, we then measure the concentrations of phthalates from blood samples taken from cases and controls. 

Counter-matching can be implemented in two situations: counter-matching on a surrogate exposure and counter-matching on the exposure of interest. We have just illustrated the first situation in which the inexpensive and less accurate measure of exposure (surrogate) is available for all subjects in a cohort, while the expensive and more accurate measure is measured from only a subset of cohort members in a nested case-control study. In the second situation, the exposure data are available for all individuals in the cohort, but some important confounding variables are not measured in the cohort. To reduce the research burden, these variables are only measured from a nested case-control study that is nested within the cohort (Steenland and Deddens 1997). 

To demonstrate the concept of counter-matching, let us assume that all individuals in a cohort are classified as either exposed or unexposed to a surrogate exposure. For a given risk set, the number of exposed and unexposed individuals are denoted by $N _ { 1 }$ and $N _ { 0 , \astrosun }$ respectively, and suppose we are to draw m controls from the total population N (where $N \overset { ^ { - } } { = } N _ { 1 } + \overset { ^ { } } { N _ { 0 } { } } )$ . The time-matched set comprises $n = m + 1$ subjects, including one case and m controls. The n subjects in each time-matched set include exposed subjects $n _ { 1 }$ and unexposed ones $n _ { 0 } .$ . When controls are drawn from the risk sets by simple random sampling, it may result in unbalanced numbers of exposed and unexposed individuals, leading to inefficiencies. In the case of a rare exposure, there may be an over-representation of unexposed controls. As discussed in Section 6.1.2, to improve study efficiency, we fix the ratio of exposed subjects to unexposed subjects to 1 within each time-matched set. This balances the number of exposed and unexposed subjects in each case’s time-matched set, creating exposure-discordant pairs that are used to estimate the exposure effect. This method is more efficient than simple random sampling as it increases the count of discordant pairs (Langholz and Clayton 1994). According to Steenland and Deddens (1997), counter-matching using three controls per case increased relative efficiency by approximately 25% compared to random sampling in nested case-control studies without counter-matching and was approximately equivalent to random sampling using ten controls. Although the above example sets a fixed value of m, the number of controls in each time-matched set can vary, and the time-matched sets for cases do not necessarily have to be of the same size. 

The concept of counter-matching can be further clarified by using an example. Let’s say there is a risk set consisting of 20 exposed and 300 unexposed individuals when a case (Case A) is diagnosed with the disease of interest. If we need 4 individuals (n = 4) for the time-matched set, including 1 case and 3 controls (m = 3), we would need to use countermatching. If Case A is an exposed case, we would select 1 exposed control and 2 unexposed controls. Conversely, if Case A is unexposed, we would select 2 exposed controls and 1 unexposed control. This ensures that the ratio of exposed subjects to unexposed subjects is balanced to be 1. With a 1-to-1 matching, an exposed case is paired with an unexposed control, and an unexposed case is paired with an exposed control. 

In addition to counter-match controls to cases based on the cases’ exposure status, we can match controls to cases on confounding variables to control confounding. In this approach, controls are not only matched to cases on exposure but also on confounding variables. This means that the counter-matched sampling scheme can be applied to each of the strata defined by the confounders. Figure 7.1 displays the causal directed acyclic graph (DAG) of countermatching on exposure E with matching on a confounding variable C. The DAG shows that the biasing paths from exposure E to the outcome variable D include E C ̶ D (confound ̶ - ing in the original cohort), E C ̶ ̶ M D (selection bias introduced by matching on C), and ̶ E ̶ M D (selection bias due to counter-matching) ( ̶ Mansournia, Hernán, and Greenland 2013). Adjustment for the confounding variable C is necessary to control the selection bias introduced by matching and the original confounding. This approach can be particularly useful when there are strong confounders that need to be controlled for in analysis. 

To adjust for the selection bias on the E ̶ M ̶ D path induced by counter-matching, a weighting procedure based on the C ̶ E specific sampling fractions is necessary, since there is no variable that can be adjusted to block the biasing path E ̶ M ̶ D. As a result of counter-matching, the exposure distribution in the time-matched set for case A differs from the exposure distribution in the risk set where controls are randomly selected. Therefore, weights W need to be calculated for each subject to compensate for the sampling differences. The weights can be calculated as: 

For an exposed subject: $W = N _ { 1 } / n _ { 1 } ,$ 

For an unexposed subject: $W = N _ { 0 } / n _ { 0 } ,$ 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/6474581e2f91fcbc3ebc1b8edc4b7130a018fe6f202a6e8e78761850c3e94dc5.jpg)



FIGURE 7.1 Causal directed acyclic graph presenting counter-matching on E.


where $N _ { 1 }$ is the number of exposed subjects and $N _ { 0 }$ is the number of unexposed subjects in a risk set; and $n _ { 1 }$ is the number of exposed subjects and $n _ { 0 }$ is the number of unexposed subjects in the time-matched set drawn from the risk set. Following the above example, when case A is diagnosed with the disease of interest, there are 20 exposed subjects $N _ { 1 }$ and 300 unexposed subjects $N _ { 0 }$ in the risk set and from whom we select controls. Suppose a total of 4 subjects $( n = 4$ and $m = 3 )$ are selected for the time-matched set, including 2 exposed $( n _ { 1 } )$ and 2 unexposed $\left( n _ { 0 } \right)$ subjects. If case A is exposed, counter-matching requires selecting 1 exposed control and 2 unexposed controls. The weight for an exposed subject is 10 (20/2), while the weight for an unexposed subject is 150 (300/2). 

The weights represent the inverse probability of selection of the corresponding subjects within the exposure level, either exposed or unexposed. These weights apply to both cases and controls and depend on the exposure status. The calculation of weights can also be applied to exposures with more than two levels. For instance, if an exposure has i levels, the weight for a subject drawn from sampling stratum i can be calculated as $W = N _ { i } / n _ { i } .$ . In cases where the exposure variable has three different durations of exposure, three weights would be calculated, one for each level (Clayton and Hills 1993). It is important to carefully prepare and accurately calculate the weights before modeling the exposure-outcome association. 

Conditional Cox PH regression, discussed in Section 7.1.2, can be used, with an offset of weights, to analyze counter-matched data. According to Langholz and Goldstein (2001), the conditional likelihood is dependent on the weights inherent in the sampling process, and the model fit must consider these weights. The Cox PH regression model, including covariates and an “offset” of weights, can estimate the effect of exposure on the outcome in terms of the hazard ratio. 

To account for bias in the sampling design, the sampling fractions as a function of the surrogate exposure can be included as an offset in the conditional Cox PH model. An example of using the conditional Cox PH model to analyze counter-matched data is presented below. 

## Example 7.2

We use the radiation and breast data that Borgan used in his book to assess the effects of radiation exposure on breast cancer occurrence (Borgan et al. 2018). This data was originally distributed through the Epicure computer program (Preston et al. 1993), and consists of a cohort of 1,720 female patients who were discharged from two tuberculosis sanatoria in Massachusetts between 1930 and 1956. Of these patients, 1,022 women received radiation exposure from X-ray fluoroscopy lung examinations, while the remaining 698 women did not require fluoroscopic monitoring (i.e., were unexposed to radiation). Follow-up data was collected until the end of 1980, during which 75 cases of breast cancer were reported (Hrubec et al. 1989). 

Although radiation data were collected for all 1,720 women, a counter-matched nested case-control study could have reduced the workload of exposure data collection. Borgan constructed a nested case-control study in which two controls were selected for each of the 75 cases by counter-matched sampling. The number of fluoroscopic examinations each woman received was available in the cohort and was used as a surrogate for the radiation-dose exposure. To mimic counter-matching sampling, the cohort was stratified into three strata based on the number of fluoroscopic examinations: (a) 698 women with no fluoroscopic examinations, (b) 765 women with 1–149 examinations, and (c) 257 women with 150 examinations or more. Controls were then selected to ensure that time-matched sets contained one woman from each of the three strata. For example, if the case was from stratum (c), one control from each stratum (a) and stratum (b) would be randomly selected. Finally, based on exposure status, a weight was calculated for each case and control in the dataset. 

The dataset used for analysis includes the following variables. The variable “AGE_IN” is the age at entry to the cohort, and “AGE_OUT” is the age at exit from the cohort, either having breast cancer or being censored. The variable “CASE” indicates the case status, where “1” indicates breast cancer patients, and “0” refers to non-breast cancer patients. The exposure variable is “LOGDOSE,” which represents the radiation dose a patient received. The variable “AGE10” is treated as a potential confounder and indicates the age at first TB treatment. “LOGWT” refers to the weight in the log scale, while “SETNO” is the label of the time-matched sets. 

To analyze the crude association between radiation dose (logdose) and breast cancer (case), the following SAS syntax is used: 

```txt
PROC phreg data=counter nosummary;
model age_out*case(0)=logdose /entry=age_in rl
offset=logwt;
strata setno;
RUN; 
```

As shown in the SAS output of “Analysis of Maximum Likelihood Estimates,” the unadjusted hazard ratio is 1.65 (95%CI: 1.16–2.34). 


SAS Output 7.8 Analysis of maximum likelihood estimates


<table><tr><td colspan="6">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>logdose</td><td>1</td><td>0.50096</td><td>0.17858</td><td>7.8691</td><td>0.0050</td></tr><tr><td>logwt</td><td>0</td><td>1.00000</td><td>0</td><td>.</td><td>.</td></tr></table>

<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>logdose</td><td>1.650</td><td>1.163</td><td>2.342</td></tr><tr><td>logwt</td><td>.</td><td>.</td><td>.</td></tr></table>

To control for the potential confounding effect, we use the following SAS syntax to estimate the effect of radiation on breast cancer risk, by adding age at first TB treatment (AGE10) into the model. 

```txt
PROC phreg data=counter nosummary;
model age_out*case(0)=logdose age10 /entry=age_in rl
offset=logwt;
strata setno;
RUN; 
```

As shown in SAS Output 7.9, the adjusted hazard ratio for “logdose” is 1.65 (95%CI: 1.16–2.35). 


SAS Output 7.9 Analysis of maximum likelihood estimates


<table><tr><td colspan="6">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>DF</td><td>Parameter Estimate</td><td>Standard Error</td><td>Chi-Square</td><td>Pr &gt; ChiSq</td></tr><tr><td>logdose</td><td>1</td><td>0.50080</td><td>0.18040</td><td>7.7063</td><td>0.0055</td></tr><tr><td>age10</td><td>1</td><td>-0.17326</td><td>0.20966</td><td>0.6829</td><td>0.4086</td></tr><tr><td>logwt</td><td>0</td><td>1.00000</td><td>0</td><td>.</td><td>.</td></tr></table>

<table><tr><td colspan="4">Analysis of Maximum Likelihood Estimates</td></tr><tr><td>Parameter</td><td>Hazard Ratio</td><td colspan="2">95% Confidence Limits</td></tr><tr><td>logdose</td><td>1.650</td><td>1.159</td><td>2.350</td></tr><tr><td>age10</td><td>0.841</td><td>0.558</td><td>1.268</td></tr><tr><td>logwt</td><td>.</td><td>.</td><td>.</td></tr></table>

Based on our analysis, it appears that age at the first TB treatment does not confound the association between radiation doses and breast cancer in this study, as the age-adjusted hazard ratio is the same as the non-adjusted hazard ratio. If we believe that race may modify the association between radiation dose and breast cancer, we can include a product term, “LOGDOSE*RACE,” in the model. 

To summarize, counter-matching is a relatively new sampling approach that selects one or more controls with a different exposure status than the index case. The purpose of counter-matching in epidemiological studies is to maximize the number of discordant case-control matching pairs, which contribute to the analysis of exposure effects. Countermatching can be employed with each stratum of confounding variables to control for confounding and improve the efficiency of exposure effect estimation in a study. Conditional Cox PH regression, with an offset of weights, can be utilized to analyze counter-matched data. Overall, counter-matching is an effective technique that helps control for confounding and enhances the accuracy of exposure effect estimation in epidemiological studies. 

## 7.2 Modeling for Case-Subcohort Studies

## 7.2.1 Feature of Case-Subcohort Data

In Section 5.1.4, we learned that in a case-subcohort study, the control group or “subcohort” is established by randomly selecting subjects from the base population at the beginning of the follow-up period, with a selection probability of p. During the pre-defined follow-up period, all subjects in the base population are monitored for the occurrence of case events, and incident cases are identified and recruited into the case group. Therefore, the case group comprises cases inside the subcohort and cases outside the subcohort within the base population. Exposure and covariate data are collected from subcohort subjects at baseline and from cases outside the subcohort when they are diagnosed during the follow-up period. If the size of the base population is n and a subcohort of size m is randomly selected, the selection probability for the subcohort is $p = m / n .$ . If d individuals become cases (failure) during the follow-up period, the total size of the case-subcohort study is m plus the number of cases outside the subcohort within the base population (as shown in Figure 7.2). 

When there are no losses to follow-up in the cohort and no competing risks for the outcome event of interest, risk ratios can be estimated directly from case-subcohort data 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/59343866-e119-4959-8487-960ac79ac50d/b452df3ec62af6904858fe05ab4f16cac30186f647e0c0950edb93a5af364886.jpg)


## FIGURE 7.2

Illustration of the case-subcohort design. 

using the robust logistic regression model. In this scenario, as discussed in Section 5.2.3 in Chapter 5, the estimated odds ratio from this model is the same as the risk ratio. However, if there are losses to follow-up or competing risks, it is recommended to use the pseudolikelihood-based Cox proportional hazards regression model, which takes into account event times, to estimate hazard ratios (Section 7.2.3). 

## 7.2.2 Robust Logistic Regression Model to Estimate Risk Ratio

A case-subcohort study can be used to estimate the risk ratio (RR) if subjects are followed for a fixed time period, and the exact event or failure times remain undetermined. This estimation of risk ratio is valid under the assumption that there are no losses during the follow-up, no competing risks are present for the outcome in question, and all subjects are monitored throughout the entire follow-up phase (Keogh and Cox 2014). As elucidated earlier, the cases in a case-subcohort study comprise those within the subcohort (termed “cases inside subcohort”) and those outside the subcohort but still within the base population (designated as “cases outside subcohort”). To accurately estimate the risk ratio, it is necessary to differentiate between the cases outside and those inside the subcohort (Table 7.1). 


TABLE 7.1



Data Layout of the Case-Subcohort Study Design


<table><tr><td></td><td>Exposed</td><td>Unexposed</td><td>Total</td></tr><tr><td>Cases outside subcohort</td><td><eq>d^{+}_{out}</eq></td><td><eq>d^{-}_{out}</eq></td><td><eq>d_{out}</eq></td></tr><tr><td>Cases inside subcohort</td><td><eq>d^{+}_{in}</eq></td><td><eq>d^{-}_{in}</eq></td><td><eq>d_{in}</eq></td></tr><tr><td>Non-cases in subcohort</td><td><eq>c^{+}</eq></td><td><eq>c^{-}</eq></td><td><eq>c</eq></td></tr><tr><td>Total</td><td><eq>e^{+}</eq></td><td><eq>e^{-}</eq></td><td><eq>m</eq></td></tr></table>

$d ^ { + } = d _ { o u t } ^ { + } + d _ { i n } ^ { + } = \mathrm { e x p o s e d ~ c a s e s }$ 

$d ^ { - } = d _ { o u t } ^ { - } + d _ { i n } ^ { - } = \mathrm { u n e x p o s e d c a s e s }$ 

$d = d ^ { + } + d ^ { - } = \mathrm { t o t a l ~ c a s e s }$ 

$m ^ { + } = d _ { i n } ^ { + } + c ^ { + } = \mathrm { e x p o s e d ~ c o n t r o l s }$ 

$m ^ { - } = d _ { i n } ^ { - } + c ^ { - } = \mathrm { u n e x p o s e d ~ c o n t r o l s }$ 

The estimated odds ratio (OR) is equal to the risk ratio (RR), according to the following estimator (Greenland 1986, Sato 1994): 

$$
O R = \frac {d ^ {+} \div d ^ {-}}{\frac {m ^ {+} \times (1 / p)}{m ^ {-} \times (1 / p)}} = \frac {d ^ {+} \times (m ^ {-} / p)}{d ^ {-} \times (m ^ {+} / p)} = \frac {d ^ {+} \div (m ^ {+} / p)}{d ^ {-} \div (m ^ {-} / p)} = \frac {d ^ {+} \div n ^ {+}}{d ^ {-} \div n ^ {-}} = R R \tag {7.3}
$$

where p is the selection probability for the subcohort, m+/p equals the size of the exposed subjects (n+) in the base population, and m−/p equals the size of the unexposed subjects (n−) in the base population. The variance for the logarithm of RR is given by: 

$$
\frac {1}{d ^ {+}} + \frac {1}{d ^ {-}} + \left(\frac {1}{m ^ {+}} + \frac {1}{m ^ {-}}\right) \left(1 - 2 \frac {d _ {i n} ^ {+} + d _ {i n} ^ {-}}{d}\right) \tag {7.4}
$$

The following example illustrates the use of a logistic regression model to estimate risk ratios in a case-subcohort study. 

## Example 7.3

This example study aims to estimate the exposure effect of hypertension on the first episode of heart attack using a case-subcohort study reconstructed from the NHEFS. The base population of this study consisted of the entire cohort, established at the baseline of the NHEFS during the first wave of data collection in 1982–1984, and followed up to 1992 (the fourth wave of data collection). Among the 6,900 subjects who did not have a history of heart attack before the baseline, 260 individuals experienced their first heart attack during the follow-up period. To construct a case-subcohort study, 1,380 subjects were randomly selected from the cohort using a selection probability (p) of 20%. Of these, 47 subcohort subjects experienced their first heart attack during the follow-up period. Therefore, the total sample size of the case-subcohort study was 1,593 (1380 + 260 ̶ 47), as shown in Table 7.2. 

To estimate the RR, which is the same as the OR, it is necessary to count the 47 cases inside the subcohort twice, as both controls and cases. Therefore, the total number of observations in the analysis should be 1,640 (1,593 + 47), instead of 1,593, as the 47 cases inside the subcohort are counted twice (Table 7.3). 

The equations estimators 7.3 and 7.4 are used to estimate the risk ratio and the variance of the log RR: 

$$
R R = \frac {1 2 2 \times 1 0 0 1}{1 3 8 \times 3 7 9} = 2. 3 3
$$


TABLE 7.2 Number of Cases and Non-Cases in the Case-Subcohort Study


<table><tr><td></td><td>Exposed</td><td>Unexposed</td><td>Total</td></tr><tr><td>Cases outside subcohort</td><td>98</td><td>115</td><td>213</td></tr><tr><td>Cases inside subcohort</td><td>24</td><td>23</td><td>47</td></tr><tr><td>Non-cases in subcohort</td><td>355</td><td>978</td><td>1,333</td></tr><tr><td>Total</td><td>477</td><td>1,116</td><td>1,593</td></tr></table>


TABLE 7.3 Number of Subjects with and without Heart Attack in the Case-Subcohort Study


<table><tr><td></td><td>Hypertension</td><td>Non-Hypertension</td><td>Total</td></tr><tr><td>Heart attack</td><td>122</td><td>138</td><td>260</td></tr><tr><td>No attack</td><td>379</td><td>1,001</td><td>1,380</td></tr><tr><td>Total</td><td>501</td><td>1,139</td><td>1,640</td></tr></table>

Using Equation 7.4, the variance of logRR is estimated to be 0.0178. 

We can also use the logistic regression model to estimate the RR. Because cases inside the subcohort appear as both cases and controls, the robust logistic regression model with the sandwich variance estimator is used. 

```txt
PROC genmod data=subcohort47;
class hypert (ref='0') merge_seq;
model H_attack(event='1')=hypert /dist=bin link=logit;
repeated subject=merge_seq;
lsmeans hypert / diff exp cl; 
```

RUN; 

SAS Output 7.10 lists regression coefficient, standard error, and p-value of the Z-test for hypertension. 


SAS Output 7.10 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-1.9815</td><td>0.0890</td><td>-2.1558</td><td>-1.8072</td><td>-22.28</td><td>&lt;.0001</td></tr><tr><td>hypert</td><td>1</td><td>0.8480</td><td>0.1331</td><td>0.5872</td><td>1.1088</td><td>6.37</td><td>&lt;.0001</td></tr><tr><td>hypert</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

The RR estimated by the logistic regression model is the same as the one we manually estimated (SAS Output 7.11). 


SAS Output 7.11 Risk ratio of heart attack for hypertension (hypert)


<table><tr><td colspan="5">Differences of hypert Least Squares Means</td></tr><tr><td>hypert</td><td>_hypert</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>2.3349</td><td>1.7989</td><td>3.0308</td></tr></table>

Using case-subcohort data, it is possible to estimate the exposure effect while controlling for confounding variables. To estimate the adjusted RR, we can use a multiple logistic regression model with a robust variance estimator, as shown in Example 7.4. 

## Example 7.4.

Suppose that the following variables potentially confound the association between hypertension and heart attack and will be adjusted for in the model: race (RACE, 1: white, 0: other races), marital status (MARITAL, 0: married, 1: never married, 2: 

widowed, divorced, or separated), residence areas (AREA, 0: rural area, 1: city, 2: city suburbs), smoke (0: non-smoker, 1: current smoker, and 2: former smoker), alcohol consumption (DRINK, 0: abstainer, 1: light drinker, 2: moderate or heavy drinker), and sex (Sex, 0: female, 1: male). The following SAS syntax is used to estimate the risk ratio for the first episode of heart attack. 

```txt
PROC genmod data=subcohort47;
class hypert sex race area marital smoke drink
merge_seq/ref=first;
model H_attack (event='1')=hypert sex race area
marital smoke drink /dist=bin link=logit;
repeated subject=merge_seq;
lsmeans hypert / diff exp cl;
RUN; 
```

SAS Output 7.12 shows regression coefficient, standard error, and p-value of the Z-test for hypertension, adjusting for confounding variables. 


SAS Output 7.12 Analysis of GEE parameter estimates


<table><tr><td colspan="8">Analysis Of GEE Parameter Estimates</td></tr><tr><td colspan="8">Empirical Standard Error Estimates</td></tr><tr><td>Parameter</td><td></td><td>Estimate</td><td>Standard Error</td><td colspan="2">95% Confidence Limits</td><td>Z</td><td>Pr &gt; |Z|</td></tr><tr><td>Intercept</td><td></td><td>-1.7720</td><td>0.2546</td><td>-2.2709</td><td>-1.2730</td><td>-6.96</td><td>&lt;.0001</td></tr><tr><td>hypert</td><td>1</td><td>0.7799</td><td>0.1403</td><td>0.5048</td><td>1.0549</td><td>5.56</td><td>&lt;.0001</td></tr><tr><td>hypert</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>sex</td><td>1</td><td>0.7640</td><td>0.1468</td><td>0.4762</td><td>1.0518</td><td>5.20</td><td>&lt;.0001</td></tr><tr><td>sex</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>race</td><td>1</td><td>-0.4618</td><td>0.2051</td><td>-0.8637</td><td>-0.0598</td><td>-2.25</td><td>0.0243</td></tr><tr><td>race</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>area</td><td>1</td><td>-0.1264</td><td>0.1637</td><td>-0.4474</td><td>0.1945</td><td>-0.77</td><td>0.4401</td></tr><tr><td>area</td><td>2</td><td>-0.2570</td><td>0.1832</td><td>-0.6161</td><td>0.1022</td><td>-1.40</td><td>0.1608</td></tr><tr><td>area</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>marital</td><td>1</td><td>-0.5541</td><td>0.4518</td><td>-1.4397</td><td>0.3315</td><td>-1.23</td><td>0.2201</td></tr><tr><td>marital</td><td>2</td><td>0.5322</td><td>0.1508</td><td>0.2366</td><td>0.8279</td><td>3.53</td><td>0.0004</td></tr><tr><td>marital</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>smoke</td><td>1</td><td>0.5721</td><td>0.1666</td><td>0.2456</td><td>0.8986</td><td>3.43</td><td>0.0006</td></tr><tr><td>smoke</td><td>2</td><td>0.0582</td><td>0.1788</td><td>-0.2922</td><td>0.4087</td><td>0.33</td><td>0.7447</td></tr><tr><td>smoke</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr><tr><td>drink</td><td>1</td><td>-0.4806</td><td>0.1515</td><td>-0.7776</td><td>-0.1837</td><td>-3.17</td><td>0.0015</td></tr><tr><td>drink</td><td>2</td><td>-0.9627</td><td>0.2740</td><td>-1.4998</td><td>-0.4256</td><td>-3.51</td><td>0.0004</td></tr><tr><td>drink</td><td>0</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>.</td><td>.</td></tr></table>

The adjusted RR for the first heart attack episode comparing hypertensive and nonhypertensive subjects is 2.18 (95%CI: 1.66–2.87), as shown in SAS Output 7.13. 


SAS Output 7.13 Risk ratio of heart attack for hypertension (hypert)


<table><tr><td colspan="5">Differences of hypert Least Squares Means</td></tr><tr><td>hypert</td><td>hypert</td><td>Exponentiated</td><td>Exponentiated Lower</td><td>Exponentiated Upper</td></tr><tr><td>1</td><td>0</td><td>2.1812</td><td>1.6566</td><td>2.8717</td></tr></table>

The robust logistic regression model can also be utilized to estimate effect modification when one or more variables may potentially serve as modifiers. Typically, we construct a product term as demonstrated in previous examples and incorporate it into the model. 

It is important to note that when estimating the RR in a case-subcohort study, the analysis focuses on cohort members rather than the person-time they have experienced. In this example case-subcohort data, the RR of 2.18 is biased due to frequent censoring in the dataset. Since subjects were not observed for the entire follow-up period, a time-to-event analysis must be performed to estimate the incidence rate ratio or hazard ratio, taking event times into consideration. 

## 7.2.3 Weighted Cox Model to Estimate Incidence Rate Ratio

If the event or failure times at which cases are diagnosed or identified are available, a case-subcohort study using event times enables estimation of the incidence rate ratio (IR) (Prentice 1986). In this case, the sampling unit is person-time, rather than participants, and the denominator of the exposure OR is the odds of exposure across a sample $p$ of all person-time. The exposure OR is equal to the IR: 

$$
O R = \frac {d ^ {+} \div d ^ {-}}{\frac {P T _ {m ^ {+}} \times (1 / p)}{P T _ {m ^ {-}} \times (1 / p)}} = \frac {d ^ {+} \times \left(P T _ {m ^ {-}} / p\right)}{d ^ {-} \times \left(P T _ {m ^ {+}} / p\right)} = \frac {d ^ {+} \div P T _ {n ^ {+}}}{d ^ {-} \div P T _ {n ^ {-}}} = I R \tag {7.5}
$$

where $p$ is the selection probability for the subcohort, $P T _ { m + } / p$ equals the person time contributed by the exposed subjects $( P T _ { n + } )$ in the base population, and $P \bar { T } _ { m - } / p$ equals the person time contributed by the unexposed subjects $( P T _ { n - } )$ in the base population. This analytical approach involves estimating incidence rates by considering individuals joining and leaving the cohort and time-varying exposures. When the existence of censoring is observed in a cohort from which the case-subcohort study is established, obtaining a valid estimation of the IR relies on typical assumptions. Specifically, it is assumed that censoring events, which encompass loss to follow-up and competing risks, are neither associated with exposure nor associated with the risk of the disease. 

In a case-subcohort study, much like the risk set in the nested case-control study, the exposure status of each case is compared with that of the at-risk subjects within the subcohort relevant at the specific time point defined by the case. For example, if an index case is identified at time $t ,$ a risk set at time t includes the index case and noncases inside the subcohort. Unlike the nested case-control study, where controls are chosen based on the index case’s event or failure time, the “risk set” for each case in a case-subcohort study is determined from the sampling of subcohort at the baseline, not the sampling of individuals at distinct event times. In other words, each case, at its specific event time, is compared with those subjects in the subcohort who remain at risk at that time. 

The weighted Cox PH model for event times is commonly used in the analysis of case-subcohort data. We first review the standard Cox PH model that was described in Section 3.4, Chapter 3. 

$$
h (t | X, \mathbf {Z}) = h _ {0} (t) \exp \left(\beta_ {x} X + \beta_ {1} Z _ {1} + \dots + \beta_ {p} Z _ {p}\right). \tag {3.10}
$$

where X is the exposure variable and Z represents a collection (or a vector) of covariates, $\pmb { Z } = ( Z _ { 1 } , . . . , Z _ { \mathrm { p } } )$ . X and Z may be time-dependent at time t. $h ( t | X , Z )$ is the hazard at time t given X and $Z . \beta _ { \mathrm { x } } , \beta _ { 1 } , . . . , \beta _ { p }$ are regression coefficients. $h _ { 0 } ( t )$ is the baseline hazard and corresponds to the hazard function when all X and $\boldsymbol { Z }$ are equal to 0. Exponentiation of $\beta _ { \mathrm { x } }$ gives a hazard ratio (HR) that measures the degree of association between the outcome and the exposure $X ,$ adjusting for Z. 

In a full cohort study, the estimation of $\beta s$ is achieved by maximizing the partial likelihood function. However, such an approach is not feasible in a case-subcohort study because information regarding X and Z is only available for subjects (cases and non-cases) within the subcohort, and information regarding cases outside the subcohort is unknown until their failure time. Additionally, the pseudo-score contributions are not independent due to the sampling method used in this study design, as the subcohort is repeatedly used in risk sets. Therefore, the case-subcohort design uses a pseudo-likelihood maximization to approximate the partial likelihood function (Prentice 1986). As described above, cases in a case-subcohort study included cases both inside and outside the subcohort; thus, cases are over-sampled relative to the subcohort. Because of the overrepresentation, it necessitates adjustments to the likelihood to ensure that the unadjusted risk sets in the likelihood accurately represent the original study cohort. To address this, the Cox PH regression model is weighted to adjust for the reduced risk set within the likelihood. The pseudo-likelihood is a time-varying weighted Cox regression model that assigns weights based on the case and subcohort status at each observed event time (Barlow et al. 1999). The weighted Cox PH regression analysis requires the usual assumptions for IR estimation in cohort studies, where censoring and competing risks are not associated with exposure or disease risk. 

We further explain the reasoning behind using weighting in the analysis of case-subcohort data. As illustrated in Table $7 . 4 ,$ , case-control data tracks individuals both inside and outside the subcohort. 

The selection probability for the subcohort or control group, denoted by $p ,$ is $m / n ,$ and the selection probability of the case group is 1, i.e., $( d _ { \mathrm { i n } } + d _ { \mathrm { o u t } } ) / d$ , which is larger than $p$ due to oversampling of cases. Thus, weighting is needed to adjust for this oversampling of cases. When disease is rare, the sampling fraction for non-cases is $c _ { \mathrm { i n } } / ( n { - } d )$ , which is close to $p .$ Since the control group $( \mathrm { i . e . , }$ or subcohort) is sampled at baseline and repeatedly used in risk sets, the individual pseudo-score function contributions are correlated. Therefore, it is important to account for this correlation when assessing precision. Robust variance estimators, such as sandwich estimators, are required for a reliable estimate of variance (Keogh and Cox 2014, Prentice 1986). 

The standard partial likelihood contribution for subject i who experiences failure (or develops the event being studied) at time $t _ { j }$ in the full cohort (base population) can be expressed as follows: 

$$
\frac {\lambda_ {i} \left(t _ {i}\right)}{\sum_ {j \in C} Y _ {j} \left(t _ {i}\right) \lambda_ {j} \left(t _ {i}\right)} \tag {7.6}
$$


TABLE 7.4 Data Layout for Analysis of Case-Subcohort Data


<table><tr><td rowspan="2"></td><td colspan="2">Subcohort</td><td rowspan="2">Base Population</td></tr><tr><td>Yes (inside)</td><td>No (outside)</td></tr><tr><td>Cases</td><td><eq>d_{\text{in}}</eq></td><td><eq>d_{\text{out}}</eq></td><td><eq>d</eq></td></tr><tr><td>Non-cases</td><td><eq>c_{\text{in}}</eq></td><td><eq>c_{\text{out}}</eq></td><td><eq>n-d</eq></td></tr><tr><td>Total</td><td><eq>m</eq></td><td><eq>n-m</eq></td><td><eq>n</eq></td></tr></table>


TABLE 7.5



Weights in the Pseudo-Likelihood Used for Estimators of Prentice and Barlow


<table><tr><td>Status of Cases and Controls</td><td>Prentice</td><td>Barlow</td></tr><tr><td>Case outside subcohort prior to failure</td><td>0</td><td>0</td></tr><tr><td>Case outside subcohort at failure</td><td>1</td><td>1</td></tr><tr><td>Case inside subcohort prior to failure</td><td>1</td><td><eq>1/p</eq></td></tr><tr><td>Case inside subcohort at failure</td><td>1</td><td>1</td></tr><tr><td>non-cases controls in subcohort</td><td>1</td><td><eq>1/p</eq></td></tr></table>

where $Y _ { j } ( t _ { i } )$ denotes whether subject $j$ is at risk at time $t _ { i }$ and $\lambda _ { j } \left( t _ { i } \right)$ represents the hazard rate for individual j at event time t. The denominator sums over all subjects at risk in the subcohort plus the case if the case is outside the subcohort. This expression can be interpreted as the probability of an event or failure occurring to individual i given an event and the risk set at time $t _ { i \cdot }$ 

In a case-subcohort study, the set C, which represents the subjects at risk at time $t _ { i }$ in the full cohort, is replaced by the set $S ,$ representing the subjects at risk at time $t _ { i }$ in the subcohort $( S \in C )$ (Barlow et al. 1999). However, using set S without adjustment would result in incorrect estimates for regression coefficients and resultant hazard rates, as the case-subcohort set includes cases inside and outside the subcohort. As a result, weighting methods are used to adjust for the partial likelihood in case-subcohort studies. 

There are two commonly used weighting methods for analyzing case-subcohort data: the Prentice weight (Prentice 1986) and the Barlow weight (Barlow et al. 1999). The two weights are summarized in Table 7.5. 

Both weighting methods assign a weight of 0 to cases outside the subcohort prior to failure because they do not provide any information before the failure time. In the Prentice method, subcohort members and cases are given a weight of 1 at all times, regardless of their subcohort status. This method is sometimes referred to as “unweighted” because subcohort members and cases outside of the subcohort are assigned a weight of 1 at the appropriate times (Table 7.5). 

The Barlow weighting method assigns weights to the subcohort controls $( \mathrm { i . e . , }$ non-cases in the subcohort) and cases in the subcohort prior to failure based on the inverse of the selection probability $( 1 / p )$ (Barlow 1994). For instance, if $p$ is 20%, a subject in the subcohort without the failure event would be assigned a weight of 5 (1/20%), indicating that one subcohort subject without the event represents five subjects without the event in the full cohort $( \mathrm { i . e . , }$ the base population). All cases, whether inside or outside the subcohort, have a weight of 1 at the time of failure because cases in the case-subcohort sample are equivalent to all cases in the entire cohort, i.e., $( d _ { \mathrm { i n } } + d _ { \mathrm { o u t } } ) / d = 1$ (Table 7.4). 

The two weighting methods for the analysis of case-subcohort data typically yield similar effect estimates and standard errors. This is especially true when the proportion of cases in the full cohort is less than 10% and the subcohort size is 15% or larger than the full cohort (Kim 2015, Onland-Moret et al. 2007). 

The analysis of case-subcohort data involves three main steps: creating weights to restructure the data, estimating log hazard ratios using pseudo-likelihood, and accounting for the case-subcohort data structure using robust variance. In order to estimate incidence rate ratios, these variables must be created for each subject: the time to enter into the cohort (entry time), the time for exit from the cohort due to being experienced the event of interest or being censored (exit time), and failure indicators (case or non-cases). Age at entry and exit is typically used in Cox PH regression analysis. To distinguish between the two statuses, “prior to failure” and “at failure” (as shown in Table 7.5), the failure time is subtracted by a small amount of time (less than the smallest failure time given in the data). The following examples are used to illustrate data analysis for this study design. 

## Example 7.5

The Cox PH regression is applied to the case-subcohort data from Example 7.3. We created three required variables: 

1. subcohort: 1: inside subcohort, 0: outside subcohort 

2. age_entry: age at enrollment 

3. surage: age at event (first heart attack in this example) or age at censoring 

4. merge_seq: identification variable for each subject 

A time indicator, “just before the failure time,” was created by subtracting 0.001 from the failure time to distinguish between “prior to failure” and “at failure” statuses. The subcohort selection probability was 0.2, resulting in a weight of 5 for the subcohort controls (i.e., non-cases in the subcohort) and cases in the subcohort prior to failure in the Barlow method. 

We begin the analysis by applying the Barlow method, followed by the Prentice method (Example 7.6). To appropriately weight cases in the subcohort according to event times, the case-subcohort data need to be restructured. The following SAS syntax is programmed to restructure the case-subcohort data, using the Barlow weighting method: 

1. Assign a weight of 1/p to cases inside the sub-cohort prior to failure. To create a time indicator for “just before the failure time,” a value of 0.001 is subtracted from the failure time and labeled as “stop.” Cases contribute person-times until just before their failure, with events being counted as non-events (0): 

```vhdl
data sub_cases5;
set abc.sub_cases1;
if subcohort=1 and H_attack=1 then do;
    start=age_entry;
    stop=surage-0.001;
    event=0;
    wt=1/0.2;
output; end; 
```

2. Assign a weight of 1 to cases that are outside the sub-cohort at the time of failure, as well as cases that are inside the sub-cohort at the time of failure. Events in both cases are counted as events (1): 

```vhdl
if H_attack=1 then do;
    start=surage-0.001;
    stop =surage;
    event=1;
    wt=1;
output; end; 
```