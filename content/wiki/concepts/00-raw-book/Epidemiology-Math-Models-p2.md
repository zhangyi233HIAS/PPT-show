Proof Let F and V be defined as above, and let $J _ { 2 1 }$ and $J _ { 2 2 }$ be the matrices of partial derivatives of g with respect to x and y evaluated at the disease-free equilibrium. The Jacobian matrix for the linearization of the system about the disease-free equilibrium has the block structure 

$$
J = \left[ \begin{array}{c c} F - V & 0 \\ J _ {2 1} & J _ {2 2} \end{array} \right].
$$

The disease-free equilibrium is locally asymptotically stable if the eigenvalues of the Jacobian matrix all have negative real parts. Since the eigenvalues of J are those of $( F - V )$ and $J _ { 2 2 }$ , and the latter all have negative real parts by assumption, the disease-free equilibrium is locally asymptotically stable if all eigenvalues of $( F - V )$ have negative real parts. By the assumptions on $\mathcal { F }$ and $\mathcal { V } .$ , F is non-negative and V is a non-singular M-matrix. Hence, by Lemma 5.2 all eigenvalues of $( F - V )$ have negative real parts if and only if $\rho ( F V ^ { - 1 } ) < 1$ . It follows that the disease-free equilibrium is locally asymptotically if $\mathcal { R } _ { 0 } = \rho ( F V ^ { - 1 } ) < 1$ . 

Instability for $\mathcal { R } _ { 0 } ~ > ~ 1$ can be established by a continuity argument. If $\mathcal { R } _ { 0 } \ \leq$ 1, then for any $\epsilon ~ > ~ 0 , ~ ( ( 1 + \epsilon ) I - F V ^ { - 1 } )$ is a non-singular M-matrix and, by Lemma 5.1, $( ( 1 + \epsilon ) I - F V ^ { - 1 } ) ^ { - 1 } \ \geq \ 0 .$ . By the proof of Lemma 5.2, all eigenvalues of $( ( 1 + \epsilon ) V - F )$ have positive real parts. Since $\epsilon > 0$ is arbitrary, and eigenvalues are continuous functions of the entries of the matrix, it follows that all eigenvalues of $( V - F )$ have non-negative real parts. To reverse the argument, suppose all the eigenvalues of $( V - F )$ have non-negative real parts. For any positive , $( V + \epsilon I - F )$ is a non-singular M-matrix, and by the proof of Lemma 5.2, $\rho ( F ( V + \epsilon I ) ^ { - 1 } ) < 1$ . Again, since $\epsilon > 0$ is arbitrary, it follows that $\rho ( F V ^ { - 1 } ) \le 1$ . Thus, $( F - V )$ has at least one eigenvalue with positive real part if and only if $\rho ( F V ^ { - 1 } ) > 1$ , and the disease-free equilibrium is unstable whenever $\mathcal { R } _ { 0 } > 1$ . □ 

These results validate the extension of the definition of the reproduction number to more general situations. In the vaccination model (5.1) of Sect. 5.1 we calculated a pair of final size relations which contained the elements of a matrix K. This matrix is precisely the next generation matrix with large domain $K _ { L } = F V ^ { - 1 }$ that has been introduced in this section. 

Example 1 Consider the SEI R model with infectivity in the exposed stage, 

$$
\begin{array}{l} S ^ {\prime} = - \frac {a}{N} S (I + \varepsilon E) \\ E ^ {\prime} = \frac {a}{N} S (I + \varepsilon E) - \kappa E \tag {5.10} \\ \end{array}
$$

$$
I ^ {\prime} = \kappa E - \alpha I
$$

$$
R ^ {\prime} = \alpha I.
$$

Here the disease states are E and I , 

$$
\mathcal {F} = \left[ \begin{array}{c} \varepsilon E a + I a \\ 0 \end{array} \right]
$$

and 

$$
F = \left[ \begin{array}{c c} \varepsilon a & a \\ 0 & 0 \end{array} \right], \quad V = \left[ \begin{array}{c c} \kappa & 0 \\ - \kappa & \alpha \end{array} \right], \quad V ^ {- 1} = \left[ \begin{array}{c c} 1 / \kappa & 0 \\ 1 / \alpha & 1 / \alpha \end{array} \right].
$$

Then we may calculate 

$$
K _ {L} = F V ^ {- 1} = \left[ \begin{array}{c c c} \frac {\varepsilon a}{\kappa} + \frac {a}{\alpha} & \frac {a}{\alpha} \\ 0 & 0 \end{array} \right].
$$

It is clear that since $\mathcal { R } _ { 0 }$ is equal to the trace of $F V ^ { - 1 }$ , 

$$
\mathcal {R} _ {0} = \frac {\varepsilon a}{\kappa} + \frac {a}{\alpha},
$$

the element in the first row and first column of $F V ^ { - 1 }$ . If all new infections are in a single compartment, as is the case here, the basic reproduction number is the trace of the matrix $F V ^ { - 1 }$ . 

In general, it is possible to reduce the size of the next generation matrix with large domain to the number of state at infection [18]. The states at infection are those disease states in which there can be new infections. Suppose that there are n disease states and k states at infection with $k < n$ . Then we may define an auxiliary $n \times k$ matrix P in which each column corresponds to a state at infection and has 1 in the corresponding row and 0 elsewhere. Then the next generation matrix is the $k \times k$ matrix 

$$
K = P ^ {T} K _ {L} P.
$$

It is easy to show, using the fact that $P P ^ { T } K _ { L } = K _ { L }$ , that the $n \times n$ matrix $K _ { L }$ and the $k \times k$ matrix K have the same non-zero eigenvalues and therefore the same spectral radius. Construction of the next generation matrix which has lower dimension than the next generation matrix with large domain may simplify the calculation of the basic reproduction number. 

In Example 1 above, the only disease state at infection is E, the matrix P is 

$$
\left[ \begin{array}{c} 1 \\ 0 \end{array} \right],
$$

and the next generation matrix K is the 1 1 matrix 

$$
K = \left[ \frac {\varepsilon a}{\kappa} + \frac {a}{\alpha} \right].
$$

## 5.2.1 Some More Complicated Examples

The next generation approach is very general and can be applied to models with heterogeneous mixing and control measures applied differently in different groups. 

Example 2 Consider the vaccination model (5.1) of Sect. 5.1. The disease states are $I _ { U }$ and $I _ { V }$ . Then 

$$
\mathcal {F} = \left[ \begin{array}{c} a _ {U} (I _ {U} + \delta I _ {V}) \\ \sigma a _ {V} (I _ {U} + \delta I _ {V} \end{array} \right]
$$

and 

$$
F = \left[ \begin{array}{c c} a _ {U} & \delta a _ {U} \\ \sigma a _ {V} & \sigma \delta a _ {V} \end{array} \right], V = \left[ \begin{array}{c c} \alpha_ {U} & 0 \\ 0 & \alpha_ {V} \end{array} \right].
$$

It is easy to see that the next generation matrix with large domain is the matrix K calculated in Sect. 5.1. Since each disease state is a disease state at infection, the next generation matrix is K, the same as the next generation matrix with large domain. As in Example 1, the determinant of K is zero and K has rank 1. Thus the control reproduction number is the trace of K, 

$$
\mathcal {R} _ {c} = \frac {w _ {U}}{\alpha_ {U}} + \frac {\delta \sigma N _ {V}}{\alpha_ {V}}.
$$

## 5.3 Heterogeneous Mixing

In disease transmission models not all members of the population make contacts at the same rate. In sexually transmitted diseases there is often a “core” group of very active members who are responsible for most of the disease cases, and control measures aimed at this core group have been very effective in control [27]. In epidemics there are often “super-spreaders”, who make many contacts and are instrumental in spreading disease and in general some members of the population make more contacts than others. Recently there has been a move to complicated network models for simulating epidemics [23, 24, 32–34, 38]. These assume knowledge of the mixing patterns of groups of members of the population and make predictions based on simulations of a stochastic model. A basic description of network models may be found in [44]. While network models can give very detailed predictions, they have some serious disadvantages. For a detailed network model, simulations take long enough to make it difficult to examine a significant range of parameter values, and it is difficult to estimate the sensitivity with respect to parameters of the model. The theoretical analysis of network models is a very active and rapidly developing field [38–40]. 

However, it is possible to consider models more realistic than simple compartmental models but simpler to analyze than detailed network models. To model heterogeneity in mixing we may assume that the population is divided into subgroups with different activity levels. We will analyze an SI R model in which there are two groups with different contact rates. The approach extends easily to models with more compartments, such as exposed periods or a sequence of infective stages and also to models with an arbitrary number of activity levels. In this way, we may hope to give models intermediate between the too simple compartmental models and the too complicated network models. 

In this section, we describe the formulation of models for two groups with different activity levels and give the main results for the simplest compartmental epidemic models. The analysis of models of the same type with more complicated compartmental structure is given in [11] and the analysis of models with more groups is given in [12]. There is no problem, other than technical calculation difficulties, in extending everything in this section to an arbitrary number of subpopulations. 

Consider two sub-populations of constant sizes $N _ { 1 } , N _ { 2 }$ , respectively, each divided into susceptibles, infectives, and removed members with subscripts to identify the sub-population. In this section, we will assume that the number of contacts per member in unit time is a constant. Suppose that each group i member makes $a _ { i }$ contacts sufficient to transmit infection in unit time, and that the fraction of contacts made by a member of group i that is with a member of group j is $p _ { i j } , ( i , j = 1 , 2 )$ . Then 

$$
p _ {i 1} + p _ {i 2} = 1, \quad i = 1, 2.
$$

We assume that all contacts between a susceptible and an infective transmit infection to the susceptible. Suppose the mean infective period in group i is $1 / \alpha _ { i }$ . We assume that there are no disease deaths, so that the population size of each group is constant. 

A two-group SI R epidemic model is 

$$
S _ {i} ^ {\prime} = - a _ {i} S _ {i} \left[ p _ {i 1} \frac {I _ {1}}{N _ {1}} + p _ {i 2} \frac {I _ {2}}{N _ {2}} \right] \tag {5.11}
$$

$$
I _ {i} ^ {\prime} = a _ {i} S _ {i} \left[ p _ {i 1} \frac {I _ {1}}{N _ {1}} + p _ {i 2} \frac {I _ {2}}{N _ {2}} \right] - \alpha_ {i} I _ {i}, \quad i = 1, 2.
$$

The initial conditions are 

$$
S _ {i} (0) + I _ {i} (0) = N _ {i}, \quad i = 1, 2.
$$

The two-group model includes two possibilities. It may describe a population with groups differing by activity levels and possibly by vulnerability to infection. For an epidemic model, in which we assume the time scale is short enough that members do not age over the course of the epidemic, the grouping could be by age. However, for a longer term disease transmission model with age-dependent transmission it would be necessary to take into account the fact that the ages of members of the population change over the course of the disease and use a different type of model, to be studied in Chap. 13. 

The two-group model (5.11) assumes the same infectivities and susceptibilities in each group. A more general model would be 

$$
S _ {i} ^ {\prime} = - \sigma_ {i} a _ {i} S _ {i} \left[ \delta_ {1} p _ {i 1} \frac {I _ {1}}{N _ {1}} + \delta_ {2} p _ {i 2} \frac {I _ {2}}{N _ {2}} \right] \tag {5.12}
$$

$$
I _ {i} ^ {\prime} = \sigma_ {i} a _ {i} S _ {i} \left[ \delta_ {1} p _ {i 1} \frac {I _ {1}}{N _ {1}} + \delta_ {2} p _ {i 2} \frac {I _ {2}}{N _ {2}} \right] - \alpha_ {i} I _ {i}, i = 1, 2.
$$

This is just the model (5.11) with the addition of susceptibility factors $\sigma _ { 1 } , \sigma _ { 2 }$ for susceptibles in the two groups and infectivity factors $\delta _ { 1 } , \delta _ { 2 }$ for infectives in the two groups. As before $a _ { 1 } , a _ { 2 }$ are effective contact rates, and this model adds transmission probabilities to (5.11). 

It is not possible to calculate the reproduction number for the two-group model (5.11) directly by counting secondary infections. It is necessary to use the next generation matrix approach of [45] described in Section 5.2 and calculate the reproduction number as the largest eigenvalue of the matrix $F V ^ { - 1 }$ , where 

$$
F = \left[ \begin{array}{c c} p _ {1 1} a _ {1} & p _ {1 2} a _ {1} \frac {N _ {1}}{N _ {2}} \\ p _ {2 1} a _ {2} \frac {N _ {2}}{N _ {1}} & p _ {2 2} a _ {2} \end{array} \right], \quad V = \left[ \begin{array}{c c} \alpha_ {1} & 0 \\ 0 & \alpha_ {2} \end{array} \right].
$$

Then 

$$
F V ^ {- 1} = \left[ \begin{array}{c c} \frac {p _ {1 1} a _ {1}}{\alpha_ {1}} & \frac {p _ {1 2} a _ {1}}{\alpha_ {2}} \frac {N _ {1}}{N _ {2}} \\ \frac {p _ {2 1} a _ {2}}{\alpha_ {1}} \frac {N _ {2}}{N _ {1}} & \frac {p _ {2 2} a _ {2}}{\alpha_ {2}} \end{array} \right].
$$

The eigenvalues of the matrix $F V ^ { - 1 }$ are the roots of the quadratic equation 

$$
\lambda^ {2} - \left(\frac {p _ {1 1} a _ {1}}{\alpha_ {1}} + \frac {p _ {2 2} a _ {2}}{\alpha_ {2}}\right) \lambda + (p _ {1 1} p _ {2 2} - p _ {1 2} p _ {2 1}) \frac {a _ {1} a _ {2}}{\alpha_ {1} \alpha_ {2}} = 0. \tag {5.13}
$$

## 5.3 Heterogeneous Mixing

The basic reproduction number $\mathcal { R } _ { 0 }$ is the larger of these two eigenvalues, 

$$
\mathcal {R} _ {0} = \frac {\frac {p _ {1 1} a _ {1}}{\alpha_ {1}} + \frac {p _ {2 2} a _ {2}}{\alpha_ {2}} + \sqrt {\left(\frac {p _ {1 1} a _ {1}}{\alpha_ {1}} - \frac {p _ {2 2} a _ {2}}{\alpha_ {2}}\right) ^ {2} + 4 \frac {p _ {1 2} p _ {2 1} a _ {1} a _ {2}}{\alpha_ {1} \alpha_ {2}}}}{2}.
$$

In order to obtain a more useful expression for $\mathcal { R } _ { 0 }$ , it is necessary to make some assumptions about the nature of the mixing between the two groups. The mixing is determined by the two quantities $p _ { 1 2 } , p _ { 2 1 }$ since $p _ { 1 1 } = 1 - p _ { 1 2 }$ and $p _ { 2 2 } = 1 - p _ { 2 1 }$ . 

There has been much study of mixing patterns, see, for example, [8, 9, 13]. One possibility is proportionate mixing, that is, that the number of contacts between groups is proportional to the relative activity levels. In other words, mixing is random but constrained by the activity levels [42]. Under the assumption of proportionate mixing, 

$$
p _ {i j} = \frac {a _ {j} N _ {j}}{a _ {1} N _ {1} + a _ {2} N _ {2}},
$$

and we may write 

$$
p _ {1 1} = p _ {2 1} = p _ {1}, \quad p _ {1 2} = p _ {2 2} = p _ {2},
$$

with $p _ { 1 } + p _ { 2 } = 1$ . In particular, 

$$
p _ {1 1} p _ {2 2} - p _ {1 2} p _ {2 1} = 0,
$$

and thus 

$$
\mathcal {R} _ {0} = a _ {1} \frac {p _ {1}}{\alpha_ {1}} + a _ {2} \frac {p _ {2}}{\alpha_ {2}}.
$$

Another possibility is preferred mixing [42], in which a fraction $\pi _ { i }$ of each group mixes randomly with its own group and the remaining members mix proportionately. Thus, preferred mixing is given by 

$$
p _ {1 1} = \pi_ {1} + (1 - \pi_ {1}) p _ {1}, p _ {1 2} = (1 - \pi_ {1}) p _ {2} \tag {5.14}
$$

$$
p _ {2 1} = (1 - \pi_ {2}) p _ {1}, \qquad p _ {2 2} = \pi_ {2} + (1 - \pi_ {2}) p _ {2},
$$

with 

$$
p _ {i} = \frac {(1 - \pi_ {i}) a _ {i} N _ {i}}{(1 - \pi_ {1}) a _ {1} N _ {1} + (1 - \pi_ {2}) a _ {2} N _ {2}}, \quad i = 1, 2.
$$

Proportionate mixing is the special case of preferred mixing with $\pi _ { 1 } = \pi _ { 2 } = 0$ . 

It is also possible to have like-with-like mixing, in which members of each group mix only with members of the same group. This is the special case of preferred mixing with $\pi _ { 1 } = \pi _ { 2 } = 1$ . For like-with-like mixing, 

$$
p _ {1 1} = p _ {2 2} = 1, \quad p _ {1 2} = p _ {2 1} = 0.
$$

Then the roots of (5.13) are $a _ { 1 } / \alpha _ { 1 }$ and $a _ { 2 } / \alpha _ { 2 }$ , and the reproduction number is 

$$
\mathcal {R} _ {0} = \max \left\{\frac {a _ {1}}{\alpha_ {1}}, \frac {a _ {2}}{\alpha_ {2}} \right\}.
$$

By calculating the partial derivatives of $p _ { i j } ( i , j = 1 , 2 )$ with respect to $\pi _ { 1 }$ and $\pi _ { 2 }$ , we may show that $p _ { 1 1 }$ and $p _ { 2 2 }$ increase when either $\pi _ { 1 }$ or $\pi _ { 2 }$ is increased, while $p _ { 1 2 }$ and $p _ { 2 1 }$ decrease when either $\pi _ { 1 }$ or $\pi _ { 2 }$ is increased. From this, we may see from the general expression for $\mathcal { R } _ { 0 }$ that increasing either of the preferences $\pi _ { 1 } , \pi _ { 2 }$ increases the basic reproduction number. 

We may follow the analysis of the SI R model (5.11) to obtain the basic reproduction number for the SI R model (5.12) with susceptibility and infectivity reduction factors 

$$
\mathcal {R} _ {0} = \frac {\sum_ {i = 1} ^ {2} \sigma_ {i} \delta_ {i} \frac {p _ {i i} a _ {i}}{\alpha_ {i}} + \sqrt {\left(\sigma_ {1} \delta_ {1} \frac {p _ {1 1} a _ {1}}{\alpha_ {1}} - \sigma_ {2} \delta_ {2} \frac {p _ {2 2} a _ {2}}{\alpha_ {2}}\right) ^ {2} + 4 \sigma_ {1} \delta_ {2} \sigma_ {2} \delta_ {1} \frac {p _ {1 2} p _ {2 1} a _ {1} a _ {2}}{\alpha_ {1} \alpha_ {2}}}}{2}.
$$

In the special case of proportionate mixing, where $p _ { 1 1 } p _ { 2 2 } { - } p _ { 1 2 } p _ { 2 1 } = 0$ , this reduces to 

$$
\mathcal {R} _ {0} = \sum_ {i = 1} ^ {2} \sigma_ {i} \delta_ {i} \frac {p _ {i i} a _ {i}}{\alpha_ {i}}.
$$

The vaccination model of Sect. 5.1 is an example of a two-group model of the form (5.12), with 

$$
\sigma_ {1} = \sigma_ {2} = \delta_ {1} = 1, \quad \delta_ {2} = \delta .
$$

It is easy to show [11] that, just as for a one-group model [10], 

$$
S _ {1} \rightarrow S _ {1} (\infty) > 0, \quad S _ {2} \rightarrow S _ {2} (\infty) > 0,
$$

as $t \to \infty$ . 

## 5.3 Heterogeneous Mixing

Example 1 Consider a two-group SEIR model, 

$$
S _ {i} ^ {\prime} = - a _ {i} S _ {i} \left[ p _ {i i} \frac {I _ {i}}{N _ {i}} + p _ {i j} \frac {I _ {j}}{N _ {j}} \right]
$$

$$
E _ {i} ^ {\prime} = a _ {i} S _ {i} \left[ p _ {i i} \frac {I _ {i}}{N _ {i}} + p _ {i j} \frac {I _ {j}}{N _ {j}} \right] - \kappa_ {i} E _ {i} \tag {5.15}
$$

$$
I _ {i} ^ {\prime} = \kappa_ {i} E _ {i} - \alpha_ {i} I _ {i}
$$

$$
R _ {i} ^ {\prime} = \alpha_ {i} I _ {i}, \quad i, j = 1, 2, i \neq j.
$$

The disease states are $E _ { i }$ and $I _ { i } ( i = 1 , 2 )$ . 

Now 

$$
\mathcal {F} = \left[ \begin{array}{c} a _ {1} p _ {1 1} I _ {1} + a _ {1} p _ {1 2} I _ {2} \frac {N _ {1}}{N _ {2}} \\ 0 \\ a _ {2} p _ {2 1} I _ {1} \frac {N _ {2}}{N _ {1}} \\ 0 \end{array} \right], \qquad F = \left[ \begin{array}{c c c c} 0 & a _ {1} p _ {1 1} & 0 & a _ {1} p _ {1 2} \frac {N _ {1}}{N _ {2}} \\ 0 & 0 & 0 & 0 \\ 0 & a _ {2} p _ {2 1} \frac {N _ {2}}{N _ {1}} & 0 & a _ {2} p _ {2 2} \\ 0 & 0 & 0 & 0 \end{array} \right],
$$

and 

$$
V = \left[ \begin{array}{c c c c} \kappa_ {1} & 0 & 0 & 0 \\ - \kappa_ {1} & \alpha_ {1} & 0 & 0 \\ 0 & 0 \kappa_ {2} & 0 \\ 0 & 0 & - \kappa_ {2} & \alpha_ {2} \end{array} \right], \qquad V ^ {- 1} = \left[ \begin{array}{c c c c} \frac {1}{\kappa_ {1}} & 0 & 0 & 0 \\ \frac {1}{\alpha_ {1}} & \frac {1}{\alpha_ {1}} & 0 & 0 \\ 0 & 0 & \frac {1}{\kappa_ {2}} & 0 \\ 0 & 0 & \frac {1}{\alpha_ {2}} & \frac {1}{\alpha_ {2}} \end{array} \right].
$$

Then we may calculate 

$$
K _ {L} = F V ^ {- 1} = \left[ \begin{array}{c c c c} a _ {1} \frac {p _ {1 1}}{\alpha_ {1}} & a _ {1} \frac {p _ {1 1}}{\alpha_ {1}} & a _ {1} \frac {p _ {1 2}}{\alpha_ {1}} \frac {N _ {1}}{N _ {2}} & a _ {1} \frac {p _ {1 2}}{\alpha_ {1}} \frac {N _ {1}}{N _ {2}} \\ 0 & 0 & 0 & 0 \\ a _ {2} \frac {p _ {2 1}}{\alpha_ {1}} \frac {N _ {2}}{N _ {1}} & a _ {2} \frac {p _ {2 1}}{\alpha_ {1}} \frac {N _ {2}}{N _ {1}} & a _ {2} \frac {p _ {2 2}}{\alpha_ {2}} & a _ {2} \frac {p _ {2 2}}{\alpha_ {2}} \\ 0 & 0 & 0 & 0 \end{array} \right].
$$

In this example, it is advantageous to construct the next generation matrix by reducing the next generation matrix with large domain $K _ { L }$ . In order to do this, we use the auxiliary matrix 

$$
E = \left[ \begin{array}{l l} 1 & 0 \\ 0 & 0 \\ 0 & 1 \\ 0 & 0 \end{array} \right]
$$

to construct the next generation matrix 

$$
K = E ^ {T} K _ {L} E = \left[ \begin{array}{c c} \frac {p _ {1 1} a _ {1}}{\alpha_ {1}} & \frac {p _ {1 2} a _ {1}}{\alpha_ {2}} \frac {N _ {1}}{N _ {2}} \\ \frac {p _ {2 1} a _ {2}}{\alpha_ {1}} \frac {N _ {2}}{N _ {1}} & \frac {p _ {2 2} a _ {2}}{\alpha_ {2}} \end{array} \right]. \tag {5.16}
$$

This is the same matrix as the next generation matrix obtained for the two-group SI R model (5.11) introduced in this section. 

For a one-group epidemic model there is a final size relation that makes it possible to calculate the size of the epidemic from the reproduction number [10, 35]. There is a corresponding final size relation for the two-group model (5.1), established in much the same way, combining expressions for the integrals of $( S _ { 1 } +$ $I _ { 1 } ) ^ { \prime } , ( S _ { 2 } + I _ { 2 } ) ^ { \prime } , ( S _ { 1 } ) ^ { \prime } / S _ { 1 } , ( S _ { 2 } ) ^ { \prime } / S _ { 2 } )$ . This relation does not involve the reproduction number explicitly but still makes it possible to calculate the size of the epidemic from the model parameters. 

The final size relation for the model (5.11) is the pair of equations 

$$
\log \frac {S _ {i} (0)}{S _ {i} (\infty)} = a _ {i} \left[ \frac {p _ {i i}}{\alpha_ {i}} \left(1 - \frac {S _ {i} (\infty)}{N _ {i}}\right) + \frac {p _ {i j}}{\alpha_ {j}} \left(1 - \frac {S _ {j} (\infty)}{N _ {j}}\right) \right], i, j = 1, 2, i \neq j. \tag {5.17}
$$

Just as with the vaccination model (5.1), the final size relation may be written in terms of the matrix 

$$
\mathcal {R} = \left[ \begin{array}{c c} \mathcal {R} _ {1 1} & \mathcal {R} _ {1 2} \\ \mathcal {R} _ {2 1} & \mathcal {R} _ {2 2} \end{array} \right] = \left[ \begin{array}{c c} \frac {a _ {1} p _ {1 1}}{\alpha_ {1}} & \frac {a _ {1} p _ {1 2}}{\alpha_ {2}} \\ \frac {a _ {2} p _ {2 1}}{\alpha_ {1}} & \frac {a _ {2} p _ {2 2}}{\alpha_ {2}} \end{array} \right].
$$

The matrix $\mathcal { R }$ is similar to the next generation matrix K (and therefore has the same eigenvalues), since 

$$
\mathcal {R} = T ^ {- 1} K T,
$$

where 

$$
T = \left[ \begin{array}{c c} N _ {1} & 0 \\ 0 & N _ {2} \end{array} \right].
$$

The final size relation makes it possible to calculate $S _ { 1 } ( \infty )$ and $S _ { 2 } ( \infty )$ and thence the number of disease cases 

$$
[ N _ {1} - S _ {1} (\infty) ] + [ N _ {2} - S _ {2} (\infty) ].
$$

## 5.3 Heterogeneous Mixing

The final size relation takes a simpler form if the mixing is proportionate. With proportionate mixing, since 

$$
p _ {1 1} = p _ {2 1} = p _ {1}, \quad p _ {1 2} = p _ {2 2} = p _ {2},
$$

(5.17) implies 

$$
a _ {2} \log \frac {S _ {1} (0)}{S _ {1} (\infty)} = a _ {1} \log \frac {S _ {2} (0)}{S _ {2} (\infty)},
$$

and we may write the final size relations as 

$$
\log \frac {S _ {1} (0)}{S _ {1} (\infty)} = \frac {a _ {1} p _ {1}}{\alpha_ {1}} \left[ 1 - \frac {S _ {1} (\infty)}{N _ {1}} \right] + \frac {a _ {1} p _ {2}}{\alpha_ {2}} \left[ 1 - \frac {S _ {2} (\infty)}{N _ {2}} \right], \tag {5.18}
$$

$$
\left[ \frac {S _ {1} (\infty)}{S _ {1} (0)} \right] ^ {a _ {2}} = \left[ \frac {S _ {2} (\infty)}{S _ {2} (0)} \right] ^ {a _ {1}}.
$$

We recall that in the case of proportionate mixing 

$$
\mathcal {R} _ {0} = \frac {p _ {1} a _ {1}}{\alpha_ {1}} + \frac {p _ {2} a _ {2}}{\alpha_ {2}}.
$$

The second equation of (5.18) implies that if $a _ { 1 } > a _ { 2 }$ , then 

$$
1 - \frac {S _ {1} (\infty)}{S _ {1} (0)} > 1 - \frac {S _ {2} (\infty)}{S _ {2} (0)},
$$

that is, the attack ratio is greater in the more active group. 

It is not difficult to show that the final size relations (5.18) give a unique set of final numbers of susceptibles in each group. The final size relation can also be obtained in a similar way for more complicated compartmental models [4–6]. 

The model can be extended easily to an arbitrary number of groups with different activity levels. It is also important to be able to describe models with more stages in the progression through compartments, and models in which there are differences between groups in susceptibility. For example, influenza has two characteristics not included in the model (5.11) that are of importance. There is a latent period between infection and the development of infectivity and influenza symptoms. Also, only a fraction of latent members develop symptoms, while the remainder go through an asymptomatic stage in which there is some infectivity. Another important aspect is treatment, which could be directed at either or both group, and could be used for making decisions on how to target groups for treatment. A natural way to proceed in this direction is to build an age of infection model for populations with multiple groups. 

Example 2 Consider a two-group endemic SI R model with preferential mixing and group-targeted vaccination: 

$$
\frac {d S _ {i}}{d t} = \mu N _ {i} (1 - \phi_ {i}) - (\lambda_ {i} (t) + \mu) S _ {i},
$$

$$
\frac {d I _ {i}}{d t} = \lambda_ {i} (t) S _ {i} - (\alpha + \mu) I _ {i}, \tag {5.19}
$$

$$
\frac {d R _ {i}}{d t} = \mu N _ {i} \phi_ {i} + \alpha I _ {i} - \mu R _ {i}, i = 1, 2,
$$

where $N _ { i } = S _ { i } + I _ { i } + R _ { i }$ . Here, $\lambda _ { i }$ represents the force of infection for susceptibles in group i given by 

$$
\lambda_ {i} = a _ {i} \sigma \sum_ {j = 1} ^ {n} p _ {i j} \frac {I _ {j}}{N _ {j}}, \tag {5.20}
$$

where $a _ { i }$ denotes the average number of contacts an individual in sub-population i has per unit of time (which represents the activity level of group i), and $\sigma$ is the probability of infection per contact when the contact is with an infectious individual, $\phi _ { i }$ denotes the proportion of susceptibles in group i vaccinated (and removed) when entering the population. The fraction $I _ { j } / N _ { j }$ gives the probability that a contact is with an infectious individual in sub-population $j .$ . The contact matrix $( p _ { i j } )$ has the same form as the preferential mixing considered earlier with 

$$
p _ {i j} = \pi_ {i} \delta_ {i j} + (1 - \pi_ {i}) p _ {j}, \quad i, j = 1, 2. \tag {5.21}
$$

The parameter $\pi _ { i }$ is the fraction of contacts with individuals in the same subpopulation, $\delta _ { i j }$ is the Kronecker delta (i.e., 1 when $i = j$ and 0 otherwise), and 

$$
p _ {j} = \frac {(1 - \pi_ {j}) a _ {j} N _ {j}}{(1 - \pi_ {1}) a _ {1} N _ {1} + (1 - \pi_ {2}) a _ {2} N _ {2}}, \quad j = 1, 2.
$$

Clearly, unless all the sub-groups are isolated (i.e., no interactions between the groups), there must be some i with $\pi _ { i } < 1$ . 

For each sub-population i, if all contacts are with people within the same group $( \mathrm { i . e . , } p _ { i i } = 1 $ and $p _ { i j } ~ = ~ 0$ for $i \neq j )$ , then the basic and control reproduction numbers for group i are, respectively, 

$$
\mathcal {R} _ {0 i} = \frac {\sigma a _ {i}}{\mu + \alpha}, \mathcal {R} _ {v i} = \mathcal {R} _ {0 i} (1 - \phi_ {i}), \quad i = 1, 2. \tag {5.22}
$$

When there are contacts between sub-populations, i.e., $p _ { i i } < 1$ or $\pi _ { i } < 1$ for some i, we can derive the basic and control reproduction numbers for the metapopulation. 

## 5.3 Heterogeneous Mixing

These reproduction numbers will be functions of $\mathcal { R } _ { 0 i }$ or $\mathcal { R } _ { v i }$ . The next generation matrix $K _ { v }$ (v for vaccination) is 

$$
K _ {v} = \left( \begin{array}{c c} \mathcal {R} _ {v 1} p _ {1 1} & \mathcal {R} _ {v 1} p _ {1 2} \\ \mathcal {R} _ {v 2} p _ {2 1} & \mathcal {R} _ {v 2} p _ {2 2} \end{array} \right). \tag {5.23}
$$

The control reproduction number $\mathcal { R } _ { v }$ for the metapopulation is given by 

$$
\mathcal {R} _ {v} = \frac {1}{2} \left[ A + D + \sqrt {(A - D) ^ {2} + 4 B C} \right], \tag {5.24}
$$

where 

$$
A = \mathcal {R} _ {0 1} p _ {1 1} (1 - \phi_ {1}), B = \mathcal {R} _ {0 1} p _ {1 2} (1 - \phi_ {1}),
$$

$$
C = \mathcal {R} _ {0 2} p _ {2 1} (1 - \phi_ {2}), D = \mathcal {R} _ {0 2} p _ {2 2} (1 - \phi_ {2}),
$$

and $\mathcal { R } _ { 0 i } \left( i = 1 , 2 \right)$ are given in (5.22). If $\phi _ { 1 } = \phi _ { 2 } = 0$ , then $\mathcal { R } _ { v }$ reduces to 

$$
\mathcal {R} _ {0} = \frac {1}{2} \Big [ \mathcal {R} _ {0 1} p _ {1 1} + \mathcal {R} _ {0 2} p _ {2 2} + \sqrt {(\mathcal {R} _ {0 1} p _ {1 1} - \mathcal {R} _ {0 2} p _ {2 2}) ^ {2} + 4 \mathcal {R} _ {0 1} p _ {1 2} \mathcal {R} _ {0 2} p _ {2 1}} \Big ].
$$

To study the effects of vaccination strategies, assume that $\mathcal { R } _ { 0 } > 1$ in the absence of vaccination and 

$$
\mathcal {R} _ {0 1} > 1, \quad \mathcal {R} _ {0 2} > 1. \tag {5.25}
$$

Let 

$$
\Omega = \{(\phi_ {1}, \phi_ {2}) | 0 \leq \phi_ {1} <   1, 0 \leq \phi_ {2} <   1 \}. \tag {5.26}
$$

Then each point $( \phi _ { 1 } , \phi _ { 2 } ) \in \Omega$ represents a vaccination strategy. 

Because we are interested in the case when the two groups are not isolated, either $\pi _ { 1 } < 1 \mathrm { o r } \pi _ { 2 } < 1$ . This will be assumed for the results below. It can be shown that, for each fixed $( \phi _ { 1 } , \phi _ { 2 } ) \in \Omega , \mathcal { R } _ { v }$ increases with both $\pi _ { 1 }$ and $\pi _ { 2 } , \mathrm { i . e . }$ , 

$$
\frac {\partial \mathcal {R} _ {v}}{\partial \pi_ {1}} > 0, \quad \frac {\partial \mathcal {R} _ {v}}{\partial \pi_ {2}} > 0 \quad \text {   for   all   } (\pi_ {1}, \pi_ {2}) \in \Omega . \tag {5.27}
$$

For each fixed $( \pi _ { 1 } , \pi _ { 2 } )$ , there are different combinations of $\phi _ { 1 }$ and $\phi _ { 2 }$ that can reduce $\mathcal { R } _ { v }$ to be below 1. For ease of presentation, consider the simpler case in which 

$$
\pi_ {1} = \pi_ {2} = \pi ,
$$

and consider $\mathcal { R } _ { v } = \mathcal { R } _ { v } ( \pi )$ as a function of $\pi$ . Then, for each fixed $\pi \in [ 0 , 1 )$ , the curve determined by $\mathcal { R } _ { v } ( \pi ) = 1$ divides the region $\varOmega$ into two parts: one is the region 

$$
\Omega_ {\pi} = \{(\phi_ {1}, \phi_ {2}) | 0 \leq \mathscr {R} _ {v} (\pi) <   1, (\phi_ {1}, \phi_ {2}) \in \Omega , 0 \leq \pi <   1 \},
$$

which includes all points above the curve (see Fig. 5.1), and another is the region 

$$
D _ {\pi} = \{(\phi_ {1}, \phi_ {2}) | \mathscr {R} _ {v} (\pi) > 1, (\phi_ {1}, \phi_ {2}) \in \Omega , 0 \leq \pi <   1 \},
$$

which includes all points below the curve. It can be shown that the region $\varOmega _ { \pi }$ decreases as $\pi$ increases and reduces to the region $\varOmega ^ { * }$ as $\pi  0$ , while the region $D _ { \pi }$ decreases as $\pi$ decreases and reduces to the region $D ^ { * }$ as $\pi  1$ (see Fig. 5.1). All these curves intersect at a single point $( \phi _ { 1 c } , \phi _ { 2 c } )$ with 

$$
\phi_ {1 c} = 1 - \frac {1}{\mathcal {R} _ {0 1}}, \quad \phi_ {2 c} = 1 - \frac {1}{\mathcal {R} _ {0 2}}. \tag {5.28}
$$

We observe from Fig. 5.1 that the region $\varOmega ^ { * }$ (lighter-shaded) is determined by the two inequalities 

$$
\phi_ {1 c} <   \phi_ {1} <   1, \quad \phi_ {2 c} <   \phi_ {2} <   1, \tag {5.29}
$$

where $\phi _ { 1 c }$ and $\phi _ { 2 c }$ are defined in (5.28). For region $D ^ { * }$ (darker-shaded), the upper bound is determined by the line 

$$
\phi_ {2} = - \mathscr {A} \phi_ {1} + \mathscr {B}, \tag {5.30}
$$


Fig. 5.1 Plot showing the regions $\varOmega ^ { * }$ and $D ^ { * }$ . Several curves of $\mathcal { R } _ { v } ( \pi ) = 1$ for different π values are also shown, with the dashed curves corresponding to $0 < \pi < 1$ , the thin solid lines (boundary of $\varOmega ^ { * } )$ corresponding to $\pi = 1$ , and the thick line corresponding to $\pi = 0$ (the upper bound of the region $D ^ { * } )$ . The arrows indicate the direction of change of the curve $\mathcal { R } _ { v } ( \pi ) = 1$ as π increases from 0 to 1. All of the $\mathcal { R } _ { v } ( \pi ) = 1$ curves intersect at the single point $( \phi _ { 1 c } , \phi _ { 2 c } )$ . Source: [15]


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/4ae9b2d5785fd8f3904e33c3243d2432f68991fdc7bbb59c3773875ab2258e67.jpg)


where 

$$
\mathcal {A} = \frac {\mathcal {R} _ {0 1} a _ {1} N _ {1}}{\mathcal {R} _ {0 2} a _ {2} N _ {2}}, \tag {5.31}
$$

$$
\mathcal {B} = \frac {(\mathcal {R} _ {0 1} - 1) a _ {1} N _ {1} + (R _ {0 2} - 1) a _ {2} N _ {2}}{\mathcal {R} _ {0 2} a _ {2} N _ {2}}.
$$

The two regions intersect at the point $( \phi _ { 1 c } , \phi _ { 2 c } )$ . 

This result suggests that there is a “lower bound” for vaccination efforts $( \phi _ { 1 } , \phi _ { 2 } )$ , above which the infection can be eradicated regardless of mixing patterns. Similarly, it provides an “upper bound” for vaccination efforts $( \phi _ { 1 } , \phi _ { 2 } )$ , below which the infection cannot be eradicated regardless of mixing patterns (see the definitions for $\phi _ { 1 } ^ { * }$ and $\phi _ { 2 } ^ { * }$ defined in (5.32) and see Fig. 5.2 for an illustration of the lower and upper bound). For an “intermediate level” vaccination strategy $( \phi _ { 1 } , \phi _ { 2 } )$ , mixing parameters $\pi _ { 1 }$ and $\pi _ { 2 }$ can play an important role in influencing the effect of vaccination strategies on reducing $\mathcal { R } _ { v }$ . Thus, when designing vaccination strategies, one should take into consideration mixing patterns within and between sub-populations. 

For given $\pi _ { i } ( i = 1 , 2 )$ , it can be shown that ∂Rv $\frac { \partial \mathcal { R } _ { v } } { \partial \phi _ { i } } < 0$ ∂ φi . When the curve $\mathcal { R } _ { v } = 1$ lies between regions $D ^ { * }$ and $\varOmega ^ { * }$ , the curve intersects the $\phi _ { \mathrm { 1 } } \mathrm { - a x i s }$ and $\phi _ { 2 } \mathrm { - a x i s }$ at $( \phi _ { 1 } ^ { * } , 0 )$ and $( 0 , \phi _ { 2 } ^ { * } )$ , respectively, where 

$$
\begin{array}{l} \phi_ {1} ^ {*} = 1 - \frac {1 - \mathcal {R} _ {0 2} p _ {2 2}}{\mathcal {R} _ {0 1} p _ {1 1} (1 - \mathcal {R} _ {0 2} p _ {2 2}) + \mathcal {R} _ {0 1} \mathcal {R} _ {0 2} p _ {1 2} p _ {2 1}}, \tag {5.32} \\ \phi_ {2} ^ {*} = 1 - \frac {1 - \mathcal {R} _ {0 1} p _ {1 1}}{\mathcal {R} _ {0 2} p _ {2 2} (1 - \mathcal {R} _ {0 1} p _ {1 1}) + \mathcal {R} _ {2 2} \mathcal {R} _ {0 1} p _ {1 2} p _ {2 1}}. \\ \end{array}
$$

Because $\mathcal { R } _ { 0 i } > 1$ for $i = 1 , 2 ,$ , it is possible that $\mathcal { R } _ { 0 1 { p } _ { 1 1 } } > 1$ and/or $\mathcal { R } _ { 0 2 } p _ { 2 2 } > 1$ . Thus, it is possible that $\phi _ { 1 } ^ { * } > 1$ and/or $\phi _ { 2 } ^ { * } > 1$ . When $\phi _ { 1 } ^ { * } > 1$ , we know from $\partial \mathcal { R } _ { v } / \partial \phi _ { 1 } ~ < ~ 1$ that $\mathcal { R } _ { v } \ > \ 1$ for any vaccination strategy $( \phi _ { 1 } , 0 )$ . Thus, it is impossible to eradicate the infection if only sub-population 1 is vaccinated. 

The results described above are based on the control reproduction number. Figure 5.2 shows some simulation results illustrating the effect of vaccination on the prevalence of infection. Different preference levels are used: $\pi _ { 1 } ~ = ~ 0 . 2$ and $\pi _ { 2 } ~ = ~ 0 . 4$ , i.e., group 2 has a higher preference contacting people in its own group. Other parameter values used are $\sigma = 0 . 0 3 , \alpha = 0 . 1 5$ (an infective period of about 6 days), and $a _ { 1 } = 1 2 , a _ { 2 } = 8 , \mu = 0 . 0 0 0 1 6$ (a duration of 17 years in school). These values correspond to $\mathcal { R } _ { 0 1 } ~ = ~ 2 . 4$ and $\mathcal { R } _ { 0 2 } ~ = ~ 1 . 6$ . The initial conditions are $x _ { 1 } ( 0 ) = S _ { 1 } ( 0 ) / N _ { 1 } ( 0 ) = 0 . 4 , y _ { 1 } ( 0 ) = I _ { 1 } ( 0 ) / N _ { 1 } ( 0 ) = 0 . 0 0 0 0 2$ , $x _ { 2 } ( 0 ) = S _ { 2 } ( 0 ) / N _ { 2 } ( 0 ) = 0 . 6 , y _ { 2 } ( 0 ) = I _ { 2 } ( 0 ) / N _ { 2 } ( 0 ) = 0 . 0 0 0 0 2$ . For this set of parameters, $\phi _ { 1 } ^ { * } = 0 . 7 7$ and $\phi _ { 2 } ^ { * } \gg 1$ . Figure 5.2a is for a vaccination strategy $( \phi _ { 1 } , 0 )$ with $\phi _ { 1 } = 0 . 2 < \phi _ { 1 } ^ { * }$ , for which the infection persists $( \mathcal { R } _ { v } ~ = ~ 1 . 8 ~ > ~ 1 )$ , while Fig. 5.2b is for a vaccination strategy $( \phi _ { 1 } , 0 )$ with $\phi _ { 1 } = 0 . 8 > \phi _ { 1 } ^ { * }$ , in which case the infection dies out $( \mathcal { R } _ { v } = 0 . 9 7 < 1 )$ . 


a


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/17db5b3f67221a1873534fe54e96916ad633cff2b5bf44604efa6f0f2ecd04e8.jpg)



b


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/15b409f3410fdafd5fafd8747b92aa048170049a95bff84f57cdd9c0f246d019.jpg)



Fig. 5.2 When $\phi _ { 1 } ^ { * } < 1$ and $\phi _ { 2 } ^ { * } ~ > ~ 1$ , the disease is eventually eradicated if the vaccination is applied to sub-population 1 alone at a level above $\phi _ { 1 } ^ { * }$ . (a) $( \phi _ { 1 } , \phi _ { 2 } ) = ( 0 . 2 , 0 )$ and $\phi _ { 1 } < \phi _ { 1 } ^ { * } =$ 0.77, the disease persists $( \mathcal { R } _ { v } = 1 . 8 ) $ ; (b) $( \phi _ { 1 } , \phi _ { 2 } ) = ( 0 . 8 , 0 )$ and $\phi _ { 1 } > \phi _ { 1 } ^ { * } = 0 . 7 7$ , the disease eventually disappears $( \mathcal { R } _ { v } = 0 . 9 7 )$ . Source: [15]


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/3d9cf2ba6efc80ca3d66cb2f9c7085a9abd0c81592d9e4e33d672f4e0baefa5c.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/527c50fd495f326eba4381aa0f1e47db19cc88b8ea542a264f302a8e21488e06.jpg)



Fig. 5.3 The figure on the left shows observed patterns of contacts between age groups [41]. The lighter areas correspond to higher level of contacts. The figure on the right shows schematic contact matrices illustrating the main and off-diagonals representing contacts among contemporaries, between children and parents, and vice versa


Example 3 This example considers a more general preferential mixing function than the one given in (5.21). This is motivated by the observed mixing pattern shown in Fig. 5.3. Figure 5.3 illustrates the recently collected data reported in [41], which reveals the preferential mixing between parents and children in addition to that among contemporaries. 

In the case of n groups, the similar function as (5.21) can be written as 

$$
p _ {i j} = \pi_ {i} \delta_ {i j} + (1 - \pi_ {i}) p _ {j}, \quad i, j = 1, 2, \dots , n, \quad j \neq i \tag {5.33}
$$

## 5.3 Heterogeneous Mixing

with 

$$
p _ {i} = \frac {(1 - \pi_ {i}) a _ {i} N _ {i}}{\sum_ {k = 1} ^ {n} (1 - \pi_ {k}) a _ {k} N _ {k}}, \quad i = 1, 2, \dots , n.
$$

Here, $\boldsymbol { a } _ { i } \ ' _ { \mathbf { S } }$ are the contact rates, $\delta _ { i j } { } ^ { \mathbf { \ ' } } \mathbf { s }$ are the Kronecker delta $( { \mathrm { i . e . , ~ } } \delta _ { i j } = 1 { \mathrm { ~ i f ~ } } i = j$ and $\delta _ { i j } = 0 \mathrm { i f } i \neq j )$ . 

To capture the feature shown in Fig. 5.3 (left), Glasser et al. in [25] extended the mixing function (5.33) to include not only the preference along the diagonal but also along the sub- and super-diagonals as indicated in Fig. 5.3 (right). The function is described by 

$$
p _ {i j} = \phi_ {i j} + \left(1 - \sum_ {l = 1} ^ {3} \pi_ {l i}\right) p _ {j}, \quad p _ {j} = \frac {\left(1 - \sum_ {l = 1} ^ {3} \pi_ {l i}\right) a _ {j} N _ {j}}{\sum_ {k = 1} ^ {n} \left(1 - \sum_ {l = 1} ^ {3} \pi_ {l k}\right) a _ {k} N _ {k}} \tag {5.34}
$$

with 

$$
\phi_ {i j} = \left\{ \begin{array}{l l} \delta_ {i j} \pi_ {1 i} + \delta_ {i (j + G)} \pi_ {2 i}, & i \geq G, \\ \delta_ {i j} \pi_ {1 i} + \delta_ {i (j - G)} \pi_ {3 i}, & i \leq L - G. \end{array} \right. \tag {5.35}
$$

G is the generation time $( \mathrm { i . e . }$ , average age at which women bear children), L is longevity (i.e., average expectation of life at birth), and $L > G$ . The parameters $\varepsilon _ { 1 i } -$ $\varepsilon _ { 3 i }$ represent the fractions of contacts reserved for contemporaries, children $( j - G )$ ), and parents $( j + G )$ , respectively, and the corresponding delta function is defined as 

$$
\delta_ {i (j \pm G)} = \left\{ \begin{array}{l l} 1 & \text { if   } i = j \pm G, \\ 0 & \text { otherwise. } \end{array} \right. \tag {5.36}
$$

Only people whose ages equal or exceed G can have children, and only those whose ages equal to or less than $L - G$ can have parents, but people aged at least G but not more than $L - G$ can have both children and parents. 

Denote the preferential vectors by $\varPi _ { l } = ( \pi _ { l 1 } , \pi _ { l 2 } , \cdot \cdot \cdot , \pi _ { l n } ) , l = 1 , 2 , 3$ . When $\varPi _ { 2 } = \varPi _ { 3 } = 0$ , the expression (5.34) reduces to the formula (5.33). For ease of notation, we mix indices and real numbers, but if age classes are $0 { \cdot } 4 , 5 { \cdot } 9 , \cdots$ and $G = 2 5$ years, for example, by $i > G$ we mean i > class 5. Notice that the non-zero elements of $\varPi _ { 2 }$ and $\varPi _ { 3 }$ are related. If G 25 years, for example, then 

$$
a _ {i} N _ {i} \pi_ {2 i} = a _ {j} N _ {j} \pi_ {3 j}, \quad i = 6, 7, \dots , \quad j = i - 5.
$$

Notice also that $\begin{array} { r } { 0 \leq \sum _ { l = 1 } ^ { 3 } \pi _ { l i } < 1 } \end{array}$ 

The mixing function was further extended in [25] to replace the delta functions in (5.36) by Gaussian kernels. Delta formulations are convenient mathematically, but do not allow the age range of one’s contemporaries to vary as one ages (e.g., the range narrows perceptively among adolescents), much less differences between the age ranges of $\mathrm { o n e ^ { \prime } s }$ contemporaries and $\mathrm { o n e ^ { \prime } s }$ parents or children. By virtue of secular patterns in childbearing, moreover, the age ranges of parents and children may change with age. But the Gaussian formulation allows such variation, reproducing the essential features of these observations. Figure 5.4 demonstrates the comparison between observed mixing patterns (left panel) and the model outcomes (right panel) using the extended mixing functions. 

## 5.3.1 *Optimal Vaccine Allocation in Heterogeneous Populations

One of the significant benefits of models with heterogeneous mixing is that it provides an approach to identifying optimal allocation of vaccines in a metapopulation, particularly when resources are limited. Consider a metapopulation with n sub-populations connected by heterogeneous mixing, which is described by an $n \times n$ matrix $P = ( p _ { i j } )$ for $i , j = 1 , 2 , \cdots , n$ . The following model is studied in [21, 26, 43]: 

$$
\begin{array}{l} \frac {d S _ {i}}{d t} = (1 - \phi_ {i}) \theta N _ {i} - (\lambda_ {i} + \theta) S _ {i} \\ \frac {d I _ {i}}{d t} = \lambda_ {i} S _ {i} - (\gamma + \theta) I _ {i} \\ \frac {d R _ {i}}{d t} = \phi_ {i} \theta N _ {i} + \gamma I _ {i} - \theta R _ {i} \tag {5.37} \\ \end{array}
$$

$$
N _ {i} = S _ {i} + I _ {i} + R _ {i}
$$

$$
\lambda_ {i} = \sigma a _ {i} \sum_ {j = 1} ^ {n} p _ {i j} I _ {j} / N _ {j}, \quad i = 1, 2, \dots , n,
$$

where $\phi _ { i }$ are proportions immunized at entry into sub-population $i , \gamma$ is the $p e r { - }$ capita recovery rate, $\theta$ is the per-capita rate for entering and leaving sub-population $i$ so that the population size $N _ { i }$ remains constant. The function $\lambda _ { i }$ is the force of infection, i.e., per-capita hazard rate of infection of susceptible individuals in sub-population $i ,$ in which $\sigma$ is the probability of infection upon contacting an infectious person, $a _ { i }$ is the average contact rate (activity) in sub-population $i , p _ { i j }$ is the proportion of ith sub-population’s contacts that are with members of j th subpopulation, and $I _ { j } / N _ { j }$ is the probability that a randomly encountered member of sub-population $j$ is infectious. A similar model with two-level mixing is studied in [22]. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/02bc24cce5a133ae9b280827b1946674aff5b35022d72b98cead4ee18be7d677.jpg)



Fig. 5.4 Comparison of the mixing patterns generated by the four empirical studies (top to bottom): [17, 41, 47, 49] (left panel) and the fitted model (5.34) and (5.35) (right panel). Interpolating functions are fitted to geometric means of corresponding row- and column-elements of the mixing matrix Source: [25]


The mixing matrix P can incorporate heterogeneities in contact rate $\left( { { a } _ { i } } \right)$ , population size $( N _ { i } )$ , preference for mixing within the same sub-population $( \pi _ { i } )$ , etc. Because of these heterogeneities, the optimal combination of vaccination coverages $\phi _ { i }$ is unlikely to be homogeneous. Typically, the matrix P has to satisfy the following conditions of [14]: 

$$
\begin{array}{l} p _ {i j} \geq 0, \quad i, j = 1, \dots , n, \\ \sum_ {j = 1} ^ {n} p _ {i j} = 1, \quad i = 1, \dots , n, \tag {5.38} \\ a _ {i} N _ {i} p _ {i j} = a _ {j} N _ {j} p _ {j i}, \quad i, j = 1, \ldots , n. \\ \end{array}
$$

A commonly used non-homogeneous mixing function that satisfies conditions in (5.38) is the preferred mixing function of [30] given by 

$$
p _ {i j} = \pi_ {i} \delta_ {i j} + (1 - \pi_ {i}) \frac {(1 - \pi_ {j}) a _ {j} N _ {j}}{\sum_ {k = 1} ^ {n} (1 - \pi_ {k}) a _ {k} N _ {k}}, \quad i, j = 1, \dots , n, \tag {5.39}
$$

where $\pi _ { i } ~ \in ~ [ 0 , 1 ]$ is the fraction of contacts of group i that is reserved for itself (preferential mixing), whereas the complement $( 1 - \pi _ { i } )$ is distributed among all sub-populations in proportion to the unreserved contacts, including i (proportionate mixing). We refer to the mixing given by (5.39) as Jacquez-type preferred mixing. Two extreme cases of (5.39) are the proportionate mixing when $\pi _ { i } = 0$ and the isolated mixing (i.e., no interactions between sub-populations) when $\pi _ { i } = 1$ . 

For model (5.37), the basic and effective sub-population reproduction numbers, denoted, respectively, by $\mathcal { R } _ { 0 i }$ and $\mathcal { R } _ { v i }$ , for sub-population $i ( i = 1 , 2 , \dots , n )$ are given by 

$$
\mathcal {R} _ {0 i} = \rho a _ {i}, \quad \mathcal {R} _ {v i} = \mathcal {R} _ {0 i} (1 - \phi_ {i}), \quad i = 1, 2, \dots , n, \tag {5.40}
$$

where 

$$
\rho = \frac {\sigma}{\gamma + \theta}.
$$

The next generation matrix (NGM) corresponding to this metapopulation model is 

$$
K _ {v} = \left( \begin{array}{c c c c} \mathcal {R} _ {v 1} p _ {1 1} & \mathcal {R} _ {v 1} p _ {1 2} & \dots & \mathcal {R} _ {v 1} p _ {1 n} \\ \mathcal {R} _ {v 2} p _ {2 1} & \mathcal {R} _ {v 2} p _ {2 2} & \dots & \mathcal {R} _ {v 2} p _ {2 n} \\ \vdots & \ddots & & \vdots \\ \mathcal {R} _ {v n} p _ {n 1} & \mathcal {R} _ {v n} p _ {n 2} & \dots & \mathcal {R} _ {v n} p _ {n n} \end{array} \right). \tag {5.41}
$$

Then the effective reproduction number for the metapopulation is given as 

$$
\mathcal {R} _ {v} = r (K _ {v}),
$$

which is the spectral radius (and the dominant eigenvalue, by the Perron–Frobenius Theorem) of the non-negative matrix $K _ { v }$ . Let $\phi = ( \phi _ { 1 } , \phi _ { 2 } , \cdot \cdot \cdot , \phi _ { n } )$ . Naturally, $\mathcal { R } _ { v } = \mathcal { R } _ { v } ( \phi )$ is a function of $\phi .$ . The total number of vaccine doses, denoted by $\eta _ { ; }$ , is $\begin{array} { r } { \eta \ : = \ : \sum _ { i = 1 } ^ { n } \phi _ { i } N _ { i } } \end{array}$ . For demonstration purposes, we will assume that vaccine efficacy is 100%. We focus on identifying the most efficient allocation of vaccine $\phi = ( \phi _ { 1 } , \phi _ { 2 } , \cdot \cdot \cdot , \phi _ { n } ) \in [ 0 , 1 ] ^ { n }$ for reducing $\mathcal { R } _ { v }$ with limited vaccine doses $\eta$ or using fewest doses to achieve $\mathcal { R } _ { v } < 1$ (to prevent outbreaks). More specifically, we consider the following two constrained optimization problems: 

(I) Minimize $\mathcal { R } _ { v } = \mathcal { R } _ { v } ( \phi )$ , subject to $\ell ( \phi ) : = \sum _ { i = 1 } ^ { n } \phi _ { i } N _ { i } = \eta$ , for $\phi \in [ 0 , 1 ] ^ { n }$ . 

(II) Minimize $\eta = \sum _ { i = 1 } ^ { n } \phi _ { i } N _ { i }$ , subject to $\mathcal { R } _ { v } ( \phi ) \leq 1$ , for $\phi \in [ 0 , 1 ] ^ { n }$ . 

Consider the optimization problem only for the case of $\mathcal { R } _ { 0 } = \mathcal { R } _ { v } ( 0 ) \geq 1$ , as there will be no outbreak if $\mathcal { R } _ { 0 } < 1$ . If a solution to Problem (I) exists for a given value of $\eta ,$ , let $\Phi ^ { * } = \varPhi ^ { * } ( \eta )$ and $\mathcal { R } _ { v \{ m i n \} } ( \eta )$ denote the optimal vaccination allocation and corresponding minimum reproduction number, , respectively. Let 

$$
\Omega_ {\phi} ^ {(n)} (\eta) := \Bigl \{(\phi_ {1}, \phi_ {2}, \dots , \phi_ {n}): \ell (\phi) = \eta \Bigr \}.
$$

Then, for the solution $\varPhi ^ { \ast }$ to be feasible, we need to have 

$$
\begin{array}{l} \Phi^ {*} (\eta) = \left(\phi_ {1} ^ {*} (\eta), \phi_ {2} ^ {*} (\eta), \dots , \phi_ {n} ^ {*} (\eta)\right) \in [ 0, 1 ] ^ {n}, \\ \mathcal {R} _ {v \{m i n \}} (\eta) = \min _ {\Omega_ {\phi} ^ {(n)} (\eta) \cap [ 0, 1 ] ^ {n}} \mathcal {R} _ {v} = \left. \mathcal {R} _ {v} \right| _ {\Phi^ {*} (\eta)}. \tag {5.42} \\ \end{array}
$$

An optimal solution $\Phi ^ { * } ( \eta )$ to Problem (I) that lies in the interior of the unit hypercube must satisfy the following equations: 

$$
\begin{array}{l} \left. \nabla \mathcal {R} _ {v} \right| _ {\Phi^ {*} (\eta)} = \widetilde {\lambda} \nabla \ell = \widetilde {\lambda} (N _ {1}, \dots , N _ {n}), \quad \Phi^ {*} (\eta) \in (0, 1) ^ {n}, \\ \left. \ell \right| _ {\Phi^ {*} (\eta)} = \sum_ {i = 1} ^ {n} \phi_ {i} ^ {*} (\eta) N _ {i} = \eta , \tag {5.43} \\ \end{array}
$$

where the constant $\widetilde { \lambda }$ is the Lagrange multiplier. 

Similarly, if an optimal solution to Problem (II) exists, it is useful practically to have an explicit expression or estimate of the bounds for the minimum vaccine doses needed, which we denote by $\eta _ { * }$ . The significance of $\eta _ { * }$ is that it is the smallest number of vaccination doses that can prevent outbreaks under an optimal vaccination policy. 

To find $\eta _ { * }$ , notice that $\mathcal { R } _ { v } ( \phi )$ is a monotonically decreasing function of $\phi _ { i }$ , and thus, a decreasing function of $\begin{array} { r } { \eta = \sum _ { i = 1 } ^ { n } \phi _ { i } N _ { i } } \end{array}$ . Therefore, the inequality constraint $\mathcal { R } _ { v } ( \phi ) \leq 1$ can be replaced by an equality constraint $\mathcal { R } _ { v } ( \phi ) = 1$ , and thus, 

$$
\eta_ {*} = \min _ {\{\mathscr {R} _ {v} (\phi) = 1 \} \cap [ 0, 1 ] ^ {n}} \ell (\phi).
$$

It follows that $\eta _ { * }$ is the minimum of $\eta \in [ 0 , N ]$ such that $\mathcal { R } _ { v \{ m i n \} } ( \eta ) = 1$ and can be found by solving the equation: 

$$
\left. \mathcal {R} _ {v \{m i n \}} (\eta_ {*}) = \mathcal {R} _ {v} \right| _ {P ^ {*} (\eta_ {*})} = 1. \tag {5.44}
$$

Before we present the results of optimal solutions for Problems (I) and (II), we state the following important results, which is proved in [43], regarding the bounds for the effective reproduction number $\mathcal { R } _ { v }$ for general mixing matrices (not just Jacquez-type preferred mixing given in (5.39)). 

Theorem 5.2 (Bounds for $\mathcal { R } _ { v } ( \phi ) )$ Let P be a non-negative, invertible, irreducible matrix such that $- P ^ { - 1 }$ is essentially non-negative and the conditions (5.38) are satisfied. Then 

(a) The lower and upper bounds of $\mathcal { R } _ { v } ( \phi )$ ) are 

$$
\sum_ {i = 1} ^ {n} \omega_ {i} \mathcal {R} _ {v i} \leq \mathcal {R} _ {v} \leq \max \left\{\mathcal {R} _ {v 1}, \dots , \mathcal {R} _ {v n} \right\}, \quad \text { where } \omega_ {i} = \frac {a _ {i} N _ {i}}{\sum_ {k = 1} ^ {n} a _ {k} N _ {k}}. \tag {5.45}
$$

(b) The lower and upper bounds of $\mathcal { R } _ { v } ( \phi )$ correspond to the cases of proportionate mixing and isolated mixing, respectively. 

For the optimal solutions of Problems (I) and (II), it is shown in [43] that for the case of $n = 2$ explicit expressions for $\varPhi ^ { \ast }$ and $\eta _ { * }$ are possible, and for the case of $n > 2$ their upper and lower bounds can be obtained. 

For ease of presentation, introduce the following notation: 

$$
\kappa_ {1} := p _ {2 2} \sqrt {N _ {1} N _ {2}} \mathcal {R} _ {0 2} - N _ {2} \sqrt {p _ {1 2} p _ {2 1} \mathcal {R} _ {0 1} \mathcal {R} _ {0 2}},
$$

$$
\kappa_ {2} := p _ {1 1} \sqrt {N _ {1} N _ {2}} \mathcal {R} _ {0 1} - N _ {1} \sqrt {p _ {1 2} p _ {2 1} \mathcal {R} _ {0 1} \mathcal {R} _ {0 2}}, \tag {5.46}
$$

$$
\eta_ {0} := N - \frac {\kappa_ {1} N _ {1} + \kappa_ {2} N _ {2}}{\max \{\kappa_ {1} , \kappa_ {2} \}}.
$$

For the mixing given in (5.39), it is easy to verify the following fact: 

$$
| P | = \left| \begin{array}{c c} p _ {1 1} & p _ {1 2} \\ p _ {2 1} & p _ {2 2} \end{array} \right| = \pi_ {1} \pi_ {2} + \frac {\pi_ {1} (1 - \pi_ {2}) ^ {2} a _ {2} N _ {2} + \pi_ {2} (1 - \pi_ {1}) ^ {2} a _ {1} N _ {1}}{(1 - \pi_ {1}) a _ {1} N _ {1} + (1 - \pi_ {2}) a _ {2} N _ {2}} > 0, \tag {5.47}
$$

provided that $\pi _ { i } \in ( 0 , 1 ) , a _ { i } > 0$ , and $N _ { i } > 0 , i = 1 , 2$ . 

Theorem 5.3 (Optimal Solution to Problem (I) When $n = 2 )$ Consider $\mathcal { R } _ { v } \ : =$ $\mathcal { R } _ { v } ( \phi _ { 1 } , \phi _ { 2 } )$ as a function $o f \phi _ { 1 }$ and $\phi _ { 2 }$ , and let η0 and $\kappa _ { i }$ be given in (5.46). Assume that condition (5.47) holds. 

(a) For a given value of η, the optimal point $\Phi ^ { * } ( \eta )$ exists and lies in the interior of the unit square if and only if 

$$
\eta_ {0} <   \eta <   N \quad a n d \quad \kappa_ {i} > 0 f o r i = 1, 2. \tag {5.48}
$$

(b) For each $\eta _ { 0 } ~ < ~ \eta ~ < ~ N _ { \mathrm { { i } } }$ , the explicit formulae for $P ^ { * } ( \eta )$ and $\mathcal { R } _ { v \{ m i n \} } ( \eta )$ are given by 

$$
\Phi^ {*} (\eta) = (1, 1) - \frac {N - \eta}{\kappa_ {1} N _ {1} + \kappa_ {2} N _ {2}} (\kappa_ {1}, \kappa_ {2}) \tag {5.49}
$$

$$
\mathcal {R} _ {v \{m i n \}} (\eta) = | P | \mathcal {R} _ {0 1} \mathcal {R} _ {0 2} \sqrt {N _ {1} N _ {2}} \frac {N - \eta}{\kappa_ {1} N _ {1} + \kappa_ {2} N _ {2}}. \tag {5.50}
$$

(c) $H 0 ~ < ~ \eta ~ < ~ \eta _ { 0 }$ , the minimum point $\Phi ^ { * } ( \eta )$ is one of the boundary points $\left( \eta / N _ { 1 } , 0 \right) o r \left( 0 , \eta / N _ { 2 } \right)$ and hence 

$$
\mathscr {R} _ {v \{m i n \}} (\eta) = \min \{\mathscr {R} _ {v} (\eta / N _ {1}, 0), \mathscr {R} _ {v} (0, \eta / N _ {2}) \}.
$$

For the general case of $n \ > \ 2$ , Theorem 5.2 can be used to derive the lower and upper bounds for the minimum reproduction number $\mathcal { R } _ { v \{ m i n \} } ( \eta )$ . To facilitate biological interpretations, introduce the following notation: 

$f _ { i } : = N _ { i } / N , 1 \le i \le n$ Population fraction of sub-population i; 

n $\mathcal { U } : = \sum _ { i = 1 \atop n } ^ { \cdot } ( 1 - \phi _ { i } ) f _ { i }$ Population fraction unvaccinated; 

$\widehat { \mathcal { R } } _ { 0 } : = \sum _ { i = 1 } ^ { n } \mathcal { R } _ { 0 i } f _ { i }$ Population weighted reproduction number (5.51) 

$\mathcal { R } _ { 0 } ^ { \diamond } : = \Big ( \sum _ { i = 1 } ^ { n } \frac { 1 } { \mathcal { R } _ { 0 i } } f _ { i } \Big ) ^ { - 1 }$ Harmonic mean of ${ \mathcal R } _ { 0 i }$ weighted by R0i 

sub-population fractions $f _ { i }$ ·， $\widetilde { \mathcal { R } } _ { 0 } : = \operatorname* { m i n } _ { i } \mathcal { R } _ { 0 i } ^ { 2 } / \widehat { \mathcal { R } } _ { 0 }$ Analogous to a scaled reproduction number. 

The following results provide the lower and upper bounds for the minimum $\mathcal { R } _ { v \{ m i n \} } ( \eta )$ in Problem (I): 

Theorem 5.4 Assume that the conditions of Theorem 5.2 hold. Let $\eta < N$ , and let $\mathcal { U } , \widehat { \mathcal { R } } _ { 0 } , \mathcal { R } _ { 0 } ^ { \circ }$ , and $\mathcal { \widetilde { R } } _ { 0 }$ be defined in (5.51). 

(a) The bounds of $\mathcal { R } _ { v \{ m i n \} } ( \eta )$ for $\phi \in \Omega _ { p } ^ { ( n ) } ( \eta ) \cap [ 0 , 1 ] ^ { n }$ are 

$$
\tilde {\mathcal {R}} _ {0} \mathcal {U} \leq \mathcal {R} _ {v \{m i n \}} (\eta) \leq \mathcal {R} _ {0} ^ {\diamond} \mathcal {U}. \tag {5.52}
$$

(b) $I f \mathcal { R } _ { 0 i } > 1$ for all i, then 

$$
\frac {\eta_ {*}}{N} \leq 1 - \frac {1}{\mathcal {R} _ {0} ^ {\diamond}}. \tag {5.53}
$$

Remarks The bounds for the optimal solutions have clear biological meanings based on the biological interpretations of the quantities in (5.51). (i) Note that $\mathcal { R } _ { 0 } ^ { \circ }$ and $\mathcal { \widetilde { R } } _ { 0 }$ are weighted basic reproduction numbers, and the factor $\boldsymbol { \mathcal U }$ is the fraction of the overall population that remains susceptible. In light of this, we see that the lower and upper bounds for $\mathcal { R } _ { v \{ m i n \} } ( \eta )$ in (5.52) take the familiar form of an effective reproduction number. (ii) For the upper bound of $\eta _ { * } , \operatorname { i f } a _ { i } = a$ are all the same, we have $\mathcal { R } _ { 0 } ^ { \circ } = \mathcal { R } _ { 0 }$ , in which case the upper bound in (5.53) becomes $1 - 1 / \mathcal { R } _ { 0 }$ . This is similar to the usual formula for the critical vaccination fraction $\phi _ { c } = 1 - 1 / \mathcal { R } _ { 0 }$ , for which the number of vaccinated is $\eta _ { c } = \phi _ { c } N = N ( 1 - 1 / \mathcal { R } _ { 0 } )$ . 

Although various observations about the effect of mixing on reproduction numbers have been made in previous studies, the result stated in Theorem 5.2 provided a definitive lower and upper bounds corresponding to the proportionate and the isolated mixing (a rigorous proof can be found in [43]) for a large class of mixing matrix P (not just Jacquez-type). Using a model metapopulation composed of a city and several villages, May and Anderson [36, 37] showed that heterogeneity in relevant sub-population characteristics also increased $\mathcal { R } _ { v }$ . Hethcote and van Ark [28] argued that person-to-person contact rates in densely populated urban areas should be no more than twice those in sparsely populated rural ones. This change in parameter values diminished the apparent effect of heterogeneity. The facts that population heterogeneities tend to increase $\mathcal { R } _ { 0 }$ and that models assuming proportionate mixing generate lower values of $\mathcal { R } _ { 0 }$ have been suggested by other researchers [1, 3, 20]. 

Example 4 Figure 5.5 illustrates an example from [21], which extends May and Anderson’s [36] conclusion that “under a uniformly applied immunization program, the overall fraction that must be immunized is larger than would be estimated by (incorrectly) assuming the population to be homogeneously mixed.” Consider $\mathcal { R } _ { v } = \mathcal { R } _ { v } ( \phi _ { 1 } , \phi _ { 2 } )$ as a function of vaccination coverage $( \phi _ { 1 } , \phi _ { 2 } )$ . The two contour plots of $\mathcal { R } _ { v }$ are for the cases of (a) homogeneous contacts $( a _ { 1 } = a _ { 2 } = 1 0 )$ ) and (b) heterogeneous contacts $( a _ { 1 } = 8 , a _ { 2 } = 1 2 )$ ), while other parameters are the same for the two sub-populations $( N _ { 1 } = N _ { 2 } , \pi _ { 1 } = \pi _ { 2 } = 0 . 6 , \sigma = 0 . 0 5 , \gamma = 1 / 7 .$ , $\theta ~ = ~ 1 / ( 3 6 5 ~ \times ~ 7 0 ) )$ . Note that the total number of vaccine doses is given by $\phi _ { 1 } N _ { 1 } + \phi _ { 2 } N _ { 2 }$ . Because $N _ { 1 } = N _ { 2 }$ , a vaccination pair $( \phi _ { 1 } , \phi _ { 2 } )$ that minimizes the total doses if and only if it minimizes the quantity $\phi _ { 1 } + \phi _ { 2 }$ . The thicker curve is the contour for $\mathcal { R } _ { v } = 1$ . The thick dashed line with slope 1 is $\phi _ { 1 } + \phi _ { 2 } = c$ for a constant $c > 0$ . It shows in (a) that $\mathcal { R } _ { v } ( 0 . 7 4 , 0 . 7 4 ) = 1$ and that $\mathcal { R } _ { v } ( \phi _ { 1 } , \phi _ { 2 } ) > 1$ for all other pairs $( \phi _ { 1 } , \phi _ { 2 } )$ with $\phi _ { 1 } + \phi _ { 2 } \ = \ 2 \times 0 . 7 4$ . This suggests that the optimal allocation is the homogeneous coverage $\phi _ { 1 } ~ = ~ \phi _ { 2 }$ . However, the plot in (b) shows a very different result. Particularly, among all pairs $( \phi _ { 1 } , \phi _ { 2 } )$ on the line $\phi _ { 1 } + \phi _ { 2 } = 2 \times 0 . 7 4$ , some can make $\mathcal { R } _ { v } ( \phi _ { 1 } , \phi _ { 2 } ) \ : < \ : 1$ . In fact, there is one point $( \phi _ { 1 c } , \phi _ { 2 c } )$ at which the minimum $\mathcal { R } _ { v } ( \phi _ { 1 c } , \phi _ { 2 c } ) = 0 . 8 6$ is achieved. This suggests that, in a non-homogeneous population, uniform coverage (equal $\phi _ { i }$ for all i) may not be the most efficient. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/8b7c29a05b51b7d193a849ce1da1f64100995594f880347313c7c8100ee58f15.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/bcc0187c8a47b3bd079599bfc20cfd49af64ad97d104ae155dfd7dac94a87ae3.jpg)



Fig. 5.5 Contour plots of $\mathcal { R } _ { v }$ as a function of $\phi _ { 1 }$ and $\phi _ { 2 }$ for (a) homogeneous population $( a _ { 1 } = a _ { 2 } )$ and (b) heterogeneous population $( a _ { 1 } \neq a _ { 2 } )$ . For both plots, $\pi _ { 1 } = \pi _ { 2 }$ and $N _ { 1 } = N _ { 2 }$ . The thick solid curve represents the contour $\mathcal { R } _ { v } = 1$ . The thin and thick dashed lines correspond to $\phi _ { 1 } = \phi _ { 2 }$ and $\phi + \phi _ { 2 } = 2 \times 0 . 7 4$ , respectively. All points $( \phi _ { 1 } , \phi _ { 2 } )$ on the line $\phi _ { 1 } + \phi _ { 2 } = c$ for a constant $c > 0$ correspond to the same total vaccination doses. Source: [21]


## 5.4 A Heterogeneous Mixing Age of Infection Model

The basic age of infection model extends the simple SI R epidemic model by allowing an arbitrary number of stages in the model and arbitrary distributions of stay in each stage. However, it does not include the possibility of subgroups with different activity levels and heterogeneous mixing between subgroups. This possibility can be included in a heterogeneous mixing age of infection model. As in homogeneous mixing models, the age of infection approach is more general than simpler models in several respects. Age of infection models allow arbitrary distributions of stay in compartments and arbitrary sequences of compartments. In addition, they allow variable infectivity. This can be included in the kernel $A ( s )$ which leads to the infectivity function $\varphi ( t )$ describing infectivity rather than simply counting the number of infectives. 

As in the previous section, we consider two sub-populations of sizes $N _ { 1 } , N _ { 2 }$ , respectively, each divided into susceptibles and infected members with subscripts to identify the sub-population. Suppose that $A _ { i } ( s )$ is the mean infectivity of individuals who have been infected s time units previously, and that $a _ { 1 } , a _ { 2 }$ are the contact rates of the two sub-populations. It is necessary to describe also the mixing between the two groups. Suppose that the fraction of contacts made by a member of group i that is with a member of group j is $p _ { i j } , i , j = 1 , 2$ . Then 

$$
p _ {1 1} + p _ {1 2} = p _ {2 1} + p _ {2 2} = 1.
$$

A two-group model may describe a population with groups differing by activity levels and possibly by vulnerability to infection, so that $a _ { 1 } \neq a _ { 2 }$ but $A _ { 1 } ( s ) = A _ { 2 } ( s )$ . It may also describe a population with one group which has been vaccinated against infection, so that the two groups have the same activity level but different disease model parameters. In this case, $a _ { 1 } = a _ { 2 }$ but $A _ { 1 } ( \tau ) \neq A _ { 2 } ( \tau )$ . In this model, any differences between groups in susceptibility or infectivity are included in the factors $A _ { 1 } ( s ) , A _ { 2 } ( s )$ . 

An age of infection model with two subgroups is 

$$
S _ {i} ^ {\prime} = - a _ {i} S _ {i} \left[ \frac {p _ {i i}}{N _ {i}} \varphi_ {i} + \frac {p _ {i j}}{N _ {j}} \varphi_ {j} \right]
$$

$$
\varphi_ {i} (t) = \int_ {0} ^ {\infty} [ - S _ {i} ^ {\prime} (t - \tau) ] A _ {i} (\tau) d \tau , i, j = 1, 2, i \neq j.
$$

Here, $\varphi _ { i } ( t )$ is the total infectivity of infected members of group $i ( i = 1 , 2 )$ . 

As for the homogeneous mixing model, we may write this model using only the equations for $S _ { i }$ , 

$$
\begin{array}{c} S _ {i} ^ {\prime} (t) = - a _ {i} S _ {i} (t) \left[ \frac {p _ {i i}}{N _ {i}} \int_ {0} ^ {\infty} A _ {i} (s) S _ {i} ^ {\prime} (t - s) d s + \frac {p _ {i j}}{N _ {j}} \int_ {0} ^ {\infty} A _ {j} (s) S _ {j} ^ {\prime} (t - s) d s \right], \\ i, j = 1, 2, i \neq j. \end{array} \tag {5.54}
$$

The next generation matrix is 

$$
P = \left[ \begin{array}{c c} a _ {1} p _ {1 1} \int_ {0} ^ {\infty} A _ {1} (\tau) d s & a _ {1} p _ {1 2} \frac {N _ {1}}{N _ {2}} \int_ {0} ^ {\infty} A _ {2} (s) d s \\ a _ {2} p _ {2 1} \frac {N _ {2}}{N _ {1}} \int_ {0} ^ {\infty} A _ {1} (s) d s & a _ {2} p _ {2 2} \int_ {0} ^ {\infty} A _ {2} (s) d s \end{array} \right].
$$

The matrix P is similar to the matrix $Q = R ^ { - 1 } P R$ , with 

$$
R = \left[ \begin{array}{c c} N _ {1} & 0 \\ 0 & N _ {2} \end{array} \right]
$$

and 

$$
Q = \left[ \begin{array}{c c} a _ {1} p _ {1 1} \int_ {0} ^ {\infty} A _ {1} (s) d s & a _ {1} p _ {1 2} \int_ {0} ^ {\infty} A _ {2} (s) d s \\ a _ {2} p _ {2 1} \int_ {0} ^ {\infty} A _ {1} (s) d s & a _ {2} p _ {2 2} \int_ {0} ^ {\infty} A _ {2} (s) d s \end{array} \right].
$$

Thus $\mathcal { R } _ { 0 }$ is the largest root of 

$$
\det \left[ \begin{array}{c c} a _ {1} p _ {1 1} \int_ {0} ^ {\infty} A _ {1} (s) d s - \lambda & a _ {1} p _ {1 2} \int_ {0} ^ {\infty} A _ {2} (s) d s \\ a _ {2} p _ {2 1} \int_ {0} ^ {\infty} A _ {1} (s) d s & a _ {2} p _ {2 2} \int_ {0} ^ {\infty} A _ {2} (s) d s - \lambda \end{array} \right] = 0. \tag {5.55}
$$

In order to obtain an invasion criterion, initially when $S _ { 1 } ( t )$ is close to $S _ { 1 } ( 0 ) =$ $N _ { 1 }$ and $S _ { 2 } ( t )$ is close to $S _ { 2 } ( 0 ) ~ = ~ N _ { 2 }$ , we replace $S _ { 1 } ( t )$ and $S _ { 2 } ( t )$ by $N _ { 1 } , N _ { 2 }$ , respectively, to give a linear system, and the condition that this linear system has a solution $S _ { i } ( t ) = N _ { i } e ^ { r t } \left( i = 1 , 2 \right)$ is 

$$
1 = a _ {i} p _ {i 1} \int_ {0} ^ {\infty} e ^ {- r s} A _ {1} (s) d s + a _ {i} p _ {i 2} \int_ {0} ^ {\infty} e ^ {- r s} A _ {2} (s) d s, i = 1, 2. \tag {5.56}
$$

The initial exponential growth rate is the solution r of the equation 

$$
\det \left[ \begin{array}{c c} a _ {1} p _ {1 1} \int_ {0} ^ {\infty} e ^ {- r s} A _ {1} (s) d s - 1 & a _ {1} p _ {1 2} \int_ {0} ^ {\infty} e ^ {- r s} A _ {2} (s) d s \\ a _ {2} p _ {2 1} \int_ {0} ^ {\infty} e ^ {- r s} A _ {1} (s) d s & a _ {2} p _ {2 2} \int_ {0} ^ {\infty} e ^ {- r s} A _ {2} (s) d s - 1 \end{array} \right] = 0. \tag {5.57}
$$

In the special case of proportionate mixing, in which $p _ { 1 1 } = p _ { 2 1 } , p _ { 1 2 } = p _ { 2 2 }$ , so that $p _ { 1 2 } p _ { 2 1 } = p _ { 1 1 } p _ { 2 2 }$ , the basic reproduction number is given by 

$$
\mathscr {R} _ {0} = a _ {1} p _ {1 1} \int_ {0} ^ {\infty} A _ {1} (s) d s + a _ {2} p _ {2 2} \int_ {0} ^ {\infty} A _ {2} (s) d s,
$$

and Eq. (5.57) reduces to 

$$
a _ {1} p _ {1 1} \int_ {0} ^ {\infty} e ^ {- r s} A _ {1} (s) d s + a _ {2} p _ {2 2} \int_ {0} ^ {\infty} e ^ {- r s} A _ {i} (s) d s = 1. \tag {5.58}
$$

There is an epidemic if and only if $\mathcal { R } _ { 0 } > 1$ . 

In the special case in which the two groups have the same infectivity distribution but may have different activity levels and possibly vulnerability to infection, so that $A _ { 1 } ( s ) = A _ { 2 } ( s ) = A ( s ) , \mathcal { R } _ { 0 }$ is the largest root of 

$$
\det \left[ \begin{array}{c c} a _ {1} p _ {1 1} \int_ {0} ^ {\infty} A (s) d s - \lambda & a _ {1} p _ {1 2} \int_ {0} ^ {\infty} A (s) d s \\ a _ {2} p _ {2 1} \int_ {0} ^ {\infty} A (s) d s & a _ {2} p _ {2 2} \int_ {0} ^ {\infty} A (s) d s - \lambda \end{array} \right]
$$

and the initial exponential growth rate is the solution r of the equation 

$$
\det \left[ \begin{array}{c c} a _ {1} p _ {1 1} \int_ {0} ^ {\infty} e ^ {- r s} A (s) d s - 1 & a _ {1} p _ {1 2} \int_ {0} ^ {\infty} e ^ {- r s} A (s) d s \\ a _ {2} p _ {2 1} \int_ {0} ^ {\infty} e ^ {- r s} A (s) d s & a _ {2} p _ {2 2} \int_ {0} ^ {\infty} e ^ {- r s} A (s) d s - 1 \end{array} \right] = 0. \tag {5.59}
$$

Comparing Eqs. (5.55) and (5.59), we see that each of $\begin{array} { r } { \mathcal { R } _ { 0 } / \int _ { 0 } ^ { \infty } A ( \tau ) d \tau } \end{array}$ and $\begin{array} { r } { 1 / \int _ { 0 } ^ { \infty } e ^ { - r \tau } A ( \tau ) d \tau } \end{array}$ is the largest eigenvalue of the matrix 

$$
\left[ \begin{array}{c c} a _ {1} p _ {1 1} & a _ {1} p _ {1 2} \\ a _ {2} p _ {2 1} & a _ {2} p _ {2 2} \end{array} \right],
$$

the largest root of the equation 

$$
x ^ {2} - (a _ {1} p _ {1 1} + a _ {2} p _ {2 2}) x + a _ {1} a _ {2} (p _ {1 1} p _ {2 2} - p _ {1 2} p _ {2 1}) = 0.
$$

Thus 

$$
\frac {\mathcal {R} _ {0}}{\int_ {0} ^ {\infty} A (s) d s} = \frac {1}{\int_ {0} ^ {\infty} e ^ {- r s} A (s) d s},
$$

which implies the same relation as for the homogeneous mixing model. Thus, if we assume heterogeneous mixing, we obtain the same estimate of the reproduction number from observation of the initial exponential growth rate, and this conclusion remains valid for an arbitrary number of groups with different contact rates. The estimate of the basic reproduction number from the initial exponential growth rate does not depend on heterogeneity of the model. This result does not generalize to the case $A _ { 1 } ( s ) \neq A _ { 2 } ( s )$ , but it does remain valid for an arbitrary number of groups with different contact rates. 

## 5.4.1 The Final Size of a Heterogeneous Mixing Epidemic

With homogeneous mixing, knowledge of the basic reproduction number translates into knowledge of the final size of the epidemic. However, with heterogeneous mixing, even in the simplest case of proportionate mixing, the size of the epidemic is not determined uniquely by the basic reproduction number. 

For the heterogeneous mixing model (5.54) there is a pair of final size relations. We divide the equation for $S _ { 1 }$ in (5.54) by $S _ { i } ( t )$ and integrate with respect to t from 0 to $\infty$ . Much as in the derivation of the final size relation for the homogeneous mixing model we obtain a pair of final size relations which may be solved for $S _ { 1 } ( \infty )$ and $S _ { 2 } ( \infty )$ : 

$$
\log \frac {S _ {i} (0)}{S _ {i} (\infty)} = \sum_ {j = 1} ^ {2} \left[ a _ {i} \frac {p _ {i j}}{N _ {j}} \left(N _ {j} - S _ {j} (\infty)\right) \int_ {0} ^ {\infty} A _ {j} (s) d s \right], \quad i = 1, 2. \tag {5.60}
$$

The system of equations (5.60) has a unique solution $( S _ { 1 } ( \infty ) , S _ { 2 } ( \infty ) )$ ). In order to prove this, we define 

$$
g _ {i} (x _ {1}, x _ {2}) = \log \frac {S _ {i} (0)}{x _ {i}} - a _ {i} \sum_ {j = 1} ^ {2} p _ {i j} \left[ 1 - \frac {x _ {j}}{N _ {j}} \right] \int_ {0} ^ {\infty} A _ {j} (s) d s.
$$

A solution of (5.60) is a solution $( x _ { 1 } , x _ { 2 } )$ of the system 

$$
g _ {i} (x _ {1}, x _ {2}) = 0, \quad i = 1, 2.
$$

For each $x _ { 2 } , g _ { 1 } ( 0 ^ { + } , x _ { 2 } ) > 0 , g _ { 1 } ( S _ { 1 } ( 0 ) , x _ { 2 } ) < 0$ . Also, as a function of $x _ { 1 } , g _ { 1 } ( x _ { 1 } , x _ { 2 } )$ either decreases or decreases initially and then increases to a negative value when $x _ { 1 } ~ = ~ S _ { 1 } ( 0 )$ . Thus for each $\begin{array} { r } { \begin{array} { r l r } { x _ { 2 } } & { { } < } & { S _ { 2 } ( 0 ) } \end{array} } \end{array}$ , there is a unique $x _ { 1 } ( x _ { 2 } )$ such that $g _ { 1 } ( x _ { 1 } ( x _ { 2 } ) , x _ { 2 } ) \ = \ 0$ . Also, since $g _ { 1 } ( x _ { 1 } , x _ { 2 } )$ is an increasing function of $x _ { 2 }$ , the function $x _ { 1 } ( x _ { 2 } )$ is increasing. Now, since $g _ { 2 } ( x _ { 1 } , 0 ^ { + } ) ~ > ~ 0 , g _ { 2 } ( x _ { 1 } , S _ { 2 } ( 0 ) ) ~ < ~ 0$ , there exists $x _ { 2 }$ such that $g _ { 2 } ( x _ { 1 } ( x _ { 2 } ) , x _ { 2 } ) = 0$ . Also, $g _ { 2 } ( x _ { 1 } ( x _ { 2 } ) , x _ { 2 } )$ either decreases monotonically or decreases initially and then increases to a negative value when $x _ { 2 } = S _ { 2 } ( 0 )$ . Therefore this solution is also unique. This implies that 

$$
(x _ {1} (x _ {2}), x _ {2})
$$

is the unique solution of the final size relations. 

Numerical simulations indicate that models with heterogeneous mixing may give very different epidemic sizes than models with the same basic reproduction number and homogeneous mixing. The reproduction number of an epidemic model is not sufficient to determine the size of the epidemic if there is heterogeneity in the model. We conjecture that for a given value of the basic reproduction number the maximum epidemic size for any mixing is obtained with homogeneous mixing. 

Assume that the parameters $\begin{array} { r } { N _ { 1 } , N _ { 2 } , \int _ { 0 } ^ { \infty } A ( \tau ) d \tau } \end{array}$ remain fixed and attempt to minimize $S _ { 1 } ( \infty ) + S _ { 2 } ( \infty )$ as a function of $a _ { 1 } , a _ { 2 }$ (with $a _ { 1 } , a _ { 2 }$ constrained to keep $p _ { 1 } a _ { 1 } + p _ { 2 } a _ { 2 } = k $ fixed and $p _ { 1 } , p _ { 2 }$ as specified by proportionate mixing). Homogeneous mixing corresponds to $a _ { 1 } = a _ { 2 }$ . 

The constraint relating $a _ { 1 } , a _ { 2 }$ implies that 

$$
{\frac {d a _ {2}}{d a _ {1}}} = {\frac {2 a _ {1} - k}{k - 2 a _ {2}}} \cdot {\frac {N _ {1}}{N _ {2}}};
$$

when $a _ { 1 } = a _ { 2 } = k$ we have 

$$
\frac {d a _ {2}}{d a _ {1}} = - \frac {N _ {1}}{N _ {2}}.
$$

Also, when $a _ { 1 } = a _ { 2 }$ 

$$
p _ {1} = \frac {N _ {1}}{N _ {1} + N _ {2}}, \quad p _ {2} = \frac {N _ {2}}{N _ {1} + N _ {2}}, \quad \frac {S _ {1}}{N _ {1}} = \frac {S _ {2}}{N _ {2}}, \quad \frac {d p _ {1}}{d a _ {1}} = \frac {N _ {1}}{k N}.
$$

If we differentiate with respect to $a _ { 1 }$ , we can calculate that 

$$
\frac {d [ S _ {1} (\infty) + S _ {2} (\infty) ]}{d a _ {1}} = 0
$$

when $a _ { 1 } ~ = ~ a _ { 2 }$ . We believe that $a _ { 1 } ~ = ~ a _ { 2 }$ is the only critical point of $S _ { 1 } ( \infty ) +$ $S _ { 2 } ( \infty )$ , although we have not been able to verify this analytically. If $a _ { 1 } = a _ { 2 }$ is the only critical point of $S _ { 1 } ( \infty ) + S _ { 2 } ( \infty )$ , this critical point must be a minimum. We conjecture that this result is also valid if we allow arbitrary mixing, that is, we conjecture that for a given value of the basic reproduction number the maximum epidemic size for any mixing is obtained with homogeneous mixing. 

While we have confined the description of the heterogeneous mixing situation to a two-group model, the extension to an arbitrary number of groups is straightforward. We suggest that in advance planning for a pandemic, the number of groups to be considered for different treatment rates should determine the number of groups to be used in the model. On the other hand, the number of groups to be considered should also depend on the amount and reliability of data, and these two criteria may be contradictory. A model with fewer groups and parameters chosen as weighted averages of the parameters for a model with more groups may give predictions that are quite similar to those of the more detailed models. We suggest also that use of the final size relations for a model with total population size assumed constant is a good time-saving procedure for making predictions if the disease death rate is small. 

We have seen that in the case of homogeneous mixing, knowledge of the initial exponential growth rate and the infective period distribution is sufficient to determine the basic reproduction number and thence the final size of an epidemic. In the case of heterogeneous mixing, knowledge of the initial exponential growth rate and the infective period distribution is sufficient to determine the basic reproduction number, but not to determine the final size of the epidemic. 

This raises the question of what additional information that may be measured at the start of a disease outbreak would suffice to determine the epidemic final size if the mixing is heterogeneous. 

We assume that $A _ { 1 } ( s ) , A _ { 2 } ( s )$ , and the mixing matrix 

$$
M = \left[ \begin{array}{c c} p _ {1 1} & p _ {1 2} \\ p _ {2 1} & p _ {2 2} \end{array} \right]
$$

are known. The next generation matrix is 

$$
K = \left[ \begin{array}{c c} a _ {1} \frac {p _ {1 1}}{N _ {1}} \int_ {0} ^ {\infty} A _ {1} (s) d s & a _ {1} \frac {p _ {1 2}}{N _ {2}} \int_ {0} ^ {\infty} A _ {2} (s) d s \\ a _ {2} \frac {p _ {2 1}}{N _ {1}} \int_ {0} ^ {\infty} A _ {1} (s) d s & a _ {2} \frac {p _ {2 2}}{N _ {2}} \int_ {0} ^ {\infty} A _ {2} (s) d s \end{array} \right],
$$

and $\mathcal { R } _ { 0 }$ is the largest (positive) eigenvalue of this matrix. There is a corresponding eigenvector with positive components 

$$
\mathbf {u} = \left[ \begin{array}{c} u _ {1} \\ u _ {2} \end{array} \right].
$$

Since the components of this eigenvector give the proportions of infective cases in the two groups initially, it is reasonable to hope to be able to determine this eigenvector from early outbreak data. 

The general final size relation is 

$$
\log \frac {S _ {i} (0)}{S _ {i} (\infty)} = \sum_ {j = 1} ^ {2} \left[ a _ {i} p _ {i j} \left(1 - \frac {S _ {j} (\infty)}{N _ {j}}\right) \int_ {0} ^ {\infty} A _ {j} (s) d s \right], \quad i = 1, 2.
$$

These equations may be solved for $S _ { 1 } ( \infty ) , S _ { 2 } ( \infty )$ if the contact rates $a _ { 1 } , a _ { 2 }$ can be determined from the available information. 

The condition that the vector u with components $( u _ { 1 } , u _ { 2 } )$ is an eigenvector of the next generation matrix corresponding to the eigenvalue $\mathcal { R } _ { 0 }$ is 

$$
a _ {i} \left(p _ {i 1} u _ {1} + p _ {i 2} u _ {2}\right) \int_ {0} ^ {\infty} A _ {i} (s) d s = \mathscr {R} _ {0} u _ {i}, \quad i = 1, 2,
$$

and since it is assumed that the function $A ( \tau )$ , the vector u, and the mixing matrix $( p _ { i j } )$ are known these equations determine $a _ { 1 }$ and $a _ { 2 }$ . 

In vector notation, if we define the column vector 

$$
\mathbf {a} = \left[ \begin{array}{c} a _ {1} \\ a _ {2} \end{array} \right]
$$

and the row vectors 

$$
M _ {j} = \left[ p _ {j 1} p _ {j 2} \right],
$$

we have 

$$
a _ {j} = \frac {\mathcal {R} _ {0}}{M _ {j} \mathbf {u} \int_ {0} ^ {\infty} A _ {j} (s) d s} u _ {j}.
$$

When these values are substituted into the final size system, $S _ { 1 } ( \infty )$ and $S _ { 2 } ( \infty )$ may be determined. This argument extends easily to models with an arbitrary number of activity groups. 

In real-life applications, there are usually many groups, and the final size of an epidemic is obtained most efficiently by numerical simulations. The results obtained here are more likely to be useful in theoretical applications, such as comparisons of different control strategies. 

One may think of the case $a _ { 1 } \neq a _ { 2 } , A _ { 1 } ( s ) = A _ { 2 } ( s )$ as a model for a disease with heterogeneous mixing but not treatment and the case $a _ { 1 } = a _ { 2 } , A _ { 1 } ( s ) \neq A _ { 2 } ( s )$ as a model for a disease in which the mixing is homogeneous but treatment that changes the infective period distribution has been applied to a part of the population. Of course, if the treatment also includes quarantine that also changes the contact rate, the case $a _ { 1 } \neq a _ { 2 } , A _ { 1 } ( s ) \neq A _ { 2 } ( s )$ ) would be appropriate. 

We suggest that in advance planning for a pandemic, the number of groups to be considered for different treatment rates should determine the number of groups to be used in the model. On the other hand, the number of groups to be considered should also depend on the amount and reliability of data, and these two criteria may be contradictory. A model with fewer groups and parameters chosen as weighted averages of the parameters for a model with more groups may give predictions that are quite similar to those of the more detailed models. We suggest also that use of the final size relations for a model with total population size assumed constant is a good time-saving procedure for making predictions if the disease death rate is small. 

## 5.5 Some Warnings

An actual epidemic differs considerably from the idealized models such as (5.1) as well as the extensions considered later. Some notable differences are: 

1. When it is realized that an epidemic has begun, individuals are likely to modify their behavior by avoiding crowds to reduce their contacts and by being more careful about hygiene to reduce the risk that a contact will produce infection. 

2. If a vaccine is available for the disease which has broken out, public health measures will include vaccination of part of the population. Various vaccination strategies are possible, including vaccination of health care workers and other first line responders to the epidemic, vaccination of members of the population who have been in contact with diagnosed infectives, or vaccination of members of the population who live in close proximity to diagnosed infectives. 

3. Diagnosed infectives may be hospitalized, both for treatment and to isolate them from the rest of the population. Isolation may be imperfect; in-hospital transmission of infection was a major problem in the SARS epidemic. 

4. Contact tracing of diagnosed infectives may identify people at risk of becoming infective, who may be quarantined (instructed to remain at home and avoid contacts) and monitored so that they may be isolated immediately if and when they become infective. 

5. In some diseases, exposed members who have not yet developed symptoms may already be infective, and this would require inclusion in the model of new infections caused by contacts between susceptibles and asymptomatic infectives from the exposed class. 

6. In the SARS epidemic of 2002–2003 in-hospital transmission of disease from patients to health care workers or visitors because of imperfect isolation accounted for many of the cases. This points to an essential heterogeneity in disease transmission which must be included whenever there is any risk of such transmission. 

## 5.6 *Projects: Reproduction Numbers for Discrete Models

This project concerns the computation of the reproduction number for discrete models using the approach of the next generation matrix. A formula for the reproduction number $\mathcal { R }$ (either $\mathcal { R } _ { 0 }$ or $\mathcal { R } _ { C } )$ is derived by adopting the method used in [2] based on the next generation matrix approach. That is, in the discrete-time case 

$$
\mathcal {R} = \varrho (F (I - T) ^ {- 1}), \tag {5.61}
$$

where  represents the spectral radius, F is the matrix associated with new infections, and $T$ is the matrix of transitions with $\varrho ( T ) < 1$ (see [2, 16, 31, 48]). Here F and T are calculated on the infected variables only evaluated at the diseasefree equilibrium, and the Jacobian on these variables is $F + T$ , which is assumed to be irreducible. 

Consider the simple discrete SEIR model with geometric distributions for the latent and infectious period with parameters α and $\delta ( \alpha < 1 , \delta < 1 )$ , respectively. This is equivalent to assuming constant transition probabilities $1 - \alpha$ and $1 - \delta$ per unit time from E to I and from I to R, respectively. The model reads 

$$
S _ {n + 1} = S _ {n} e ^ {- \beta \frac {I _ {n}}{N}},
$$

$$
E _ {n + 1} = S _ {n} (1 - e ^ {- \beta \frac {I _ {n}}{N}}) + \alpha E _ {n} \tag {5.62}
$$

$$
I _ {n + 1} = (1 - \alpha) E _ {n} + \delta I _ {n}, \quad n = 1, 2, \dots .
$$

For system (5.62), the matrices associated with new infections and transitions are 

$$
F = \left[ \begin{array}{c c} 0 & \beta \\ 0 & 0 \end{array} \right] \quad \text { and } \quad T = \left[ \begin{array}{c c} \alpha & 0 \\ 1 - \alpha & \delta \end{array} \right],
$$

respectively. Then $\varrho ( T ) = \operatorname* { m a x } \{ \alpha , \delta \} < 1$ ; thus, 

$$
\mathcal {R} = \varrho (F (I - T) ^ {- 1}) = \frac {\beta}{1 - \delta}. \tag {5.63}
$$

Question 1 Extend the model (5.62) by incorporating isolation or hospitalization of infectious individuals. For the extended model, compute the reproduction number using the formula (5.61). 

Question 2 Extend the model (5.62) by considering different transmission rates $\beta _ { i }$ for individuals in different infectious stages $I _ { i } ( i = 1 , 2 , \cdots )$ . Use the formula (5.61) to compute the reproduction number for the extended model. 

Project 2 Consider next the case when the infective period follows an arbitrary discrete (bounded) distribution, which is denoted by Y . Let $q _ { i } = \mathbb { P } ( Y > i )$ and $\mathbb { P } ( Y = i ) = q _ { i - 1 } - q _ { i }$ . It is easy to see that $q _ { i }$ is a decreasing function, i.e., $q _ { i } \geq$ $q _ { i + 1 }$ . In fact, $q _ { 0 } = 1$ and $q _ { m } = 0$ for all $m \geq M$ , where M is the maximum number of units of time that an individual takes to recover. 

Because the geometric is the only memoryless discrete distribution, when other distributions are considered it is necessary to keep track of the past in order to know the values at the present. In fact, it is impossible to use the next generation matrix approach directly because the disease stages (S, E, and I ) at time $n + 1$ cannot be written in the form 

$$
[ E _ {n + 1}, I _ {n + 1}, S _ {n + 1} ] ^ {T} = \mathcal {M} \left([ E _ {n}, I _ {n}, S _ {n} ] ^ {T}\right),
$$

where $\mathcal { M } : \mathbb { R } ^ { 3 } \to \mathbb { R } ^ { 3 }$ . To overcome this difficulty we can consider multiple I stages, similar to the approach known as the “linear chain trick” used in continuous models to convert a gamma distribution to a sequence of exponential distributions. Thus, we introduce the subclasses $I ^ { ( 1 ) } , I ^ { ( 2 ) } , \cdots , I ^ { ( M ) }$ (see Fig. 5.6). The superscript i corresponds to the time since becoming infectious. Notice that these subclasses $I ^ { ( i ) }$ are different from those in the negative binomial model because here an individual can only stay in $I ^ { ( i ) }$ for one unit of time, and must go to either the $I ^ { ( i + 1 ) }$ class with probability $q _ { i }$ or the recovered class R with probability $1 - q _ { i }$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/48bc5bf487c41d448e11f81368578125d92e4e4f253dc5c82496f29cca8aae96.jpg)



Fig. 5.6 A transition diagram for the case when the stage duration of the infective period has an arbitrary bounded distribution with upper bound M. The superscript i is the stage age in the infectious period and individuals in $I ^ { ( i ) }$ (for all i) can enter the recovered class R with a certain probability


From Fig. 5.6 the model equations can be written as 

$$
S _ {n + 1} = S _ {n} e ^ {- \sum_ {i = 1} ^ {M} \beta_ {i} \frac {I _ {n} ^ {(i)}}{N}},
$$

$$
E _ {n + 1} = S _ {n} \left[ 1 - e ^ {- \sum_ {i = 1} ^ {M} \beta_ {i} \frac {I _ {n} ^ {(i)}}{N}} \right] + \alpha E _ {n}, \tag {5.64}
$$

$$
I _ {n + 1} ^ {(1)} = (1 - \alpha) E _ {n}, I _ {n + 1} ^ {(2)} = q _ {1} I _ {n} ^ {(1)}, I _ {n + 1} ^ {(j)} = \frac {q _ {j - 1}}{q _ {j - 2}} I _ {n} ^ {(j - 1)}, 3 \leq j \leq M,
$$

where $\beta _ { i }$ denote the transmission rates at the infective stage i, $1 \leq i \leq M$ . As $q _ { i }$ is the probability that an infective individual remains infective i time units after becoming infective, the transition probability from $I _ { n } ^ { ( 2 ) }$ to (3) $I _ { n + 1 } ^ { ( 3 ) }$ is given by the + probability that an infective individual is still infective two time units after becoming infectious given that the person remained infective one time unit ago, i.e., $q _ { 2 } / q _ { 1 }$ . $I _ { n + 1 } ^ { ( 3 ) }$ $I _ { n + 1 } ^ { ( j ) }$ $3 \le j \le M$ 

Question 1 For the case when transmission rates $\beta _ { i }$ are stage-dependent, show that 

$$
\mathcal {R} _ {0} = \varrho (F (I - T) ^ {- 1}) = \sum_ {i = 1} ^ {M} \beta_ {i} q _ {i - 1}. \tag {5.65}
$$

Question 2 Derive $\mathcal { R } _ { 0 }$ from its biological definition. Hint: Using the fact that the distribution Y has an upper bound M and that for a given function $f$ 

$$
\sum_ {m = 1} ^ {M} \mathbb {P} (Y = m) f (m) = \mathbb {E} (f (Y)).
$$

The reproduction number from the biological definition (with $\begin{array} { r } { f ( m ) = \sum _ { i = 1 } ^ { m } \beta _ { i } ) } \end{array}$ is $\mathcal { R } = \sum _ { i = 0 } ^ { M - 1 } \beta _ { i + 1 } q _ { i } .$ 

The formula (5.63) can also be applied to models with various heterogeneities. Consider a model that includes two sub-populations, female and male populations, with heterogeneous mixing (i.e., no sexual contacts between individuals of the same sex). Assume that the infective periods for female and male populations follow arbitrary discrete (bounded) distributions denoted by $Y _ { f }$ and $Y _ { m }$ , respectively. Here the subscripts f and m stand for female and male, respectively. Let $q _ { f , i } = \mathbb { P } ( Y _ { f } >$ i) and $q _ { m , i } = \mathbb { P } ( Y _ { m } > i )$ ) with $q _ { f , 0 } = q _ { m , 0 } = 1$ , and the upper bounds for the two distributions (i.e., the maximum numbers of units of time that an individual takes to recover) be $M _ { w }$ for $w = f , m$ . 

The model equations are 

$$
S _ {w, n + 1} = S _ {w, n} e ^ {- \sum_ {i = 1} ^ {M _ {\tilde {w}}} \beta_ {\tilde {w}, i} I _ {\tilde {w}, n} ^ {(i)} / N},
$$

$$
E _ {w, n + 1} = S _ {w, n} \big [ 1 - e ^ {- \sum_ {i = 1} ^ {M _ {\tilde {w}}} \beta_ {\tilde {w}, i} I _ {\tilde {w}, n} ^ {(i)} / N} \big ] + \alpha_ {w} E _ {w, n},
$$

$$
I _ {w, n + 1} ^ {(1)} = (1 - \alpha_ {w}) E _ {w, n}, I _ {w, n + 1} ^ {(2)} = q _ {w, 1} I _ {w, n} ^ {(1)},
$$

$$
I _ {w, n + 1} ^ {(j)} = \frac {q _ {w , j - 1}}{q _ {w , j - 2}} I _ {w, n} ^ {(j - 1)}, \quad 3 \leq j \leq M _ {w}, \quad \text { for } w = f, m.
$$

Here $\tilde { w }$ represents the opposite sex of w, i.e., $\tilde { f } = m , \tilde { m } = f$ . The constant $\beta _ { \tilde { f } , i }$ $( \beta _ { \tilde { m } , i } )$ represents the infection rate to a female (male) transmitted by infectious male (female) individuals with stage age i. 

Question 3 Show that the reproduction number is given by 

$$
\mathcal {R} = \varrho (F (I - T) ^ {- 1}) = \sqrt {\left(\sum_ {i = 1} ^ {M _ {f}} \beta_ {f , i} q _ {f , i - 1}\right) \left(\sum_ {i = 1} ^ {M _ {m}} \beta_ {m , i} q _ {m , i - 1}\right)}. \tag {5.66}
$$

The square root in (5.66) is a consequence of the fact that the secondary infections need to be computed from one female (male) to other females (males) through the male (female) population. 

Hint: Consider the order of variables: 

$$
(E _ {f, n}, I _ {f, n} ^ {(1)}, I _ {f, n} ^ {(2)}, \dots , I _ {f, n} ^ {(M _ {f})}, E _ {m, n}, I _ {m, n} ^ {(1)}, I _ {m, n} ^ {(2)}, \dots , I _ {m, n} ^ {(M _ {m})}).
$$

First show that 

$$
F (I - T) ^ {- 1} = \left[ \begin{array}{c c} 0 & F _ {m} (I - T _ {m}) ^ {- 1} \\ F _ {f} (I - T _ {f}) ^ {- 1} & 0 \end{array} \right],
$$

where 

$$
F _ {w} (I - T _ {w}) ^ {- 1} = \left[ \begin{array}{c c c c} \sum_ {i = 1} ^ {M _ {w}} \beta_ {w, i} q _ {w, i - 1} \sum_ {i = 1} ^ {M _ {w}} \beta_ {w, i} q _ {w, i - 1} \dots & \beta_ {w, M _ {w}} \\ 0 & 0 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & 0 \end{array} \right], \quad w = f, m.
$$

References: [2, 16, 31, 48]. 

## 5.7 *Project: Modeling the Synergy Between HIV and HSV-2

Consider the following model for HSV-2, which includes a male population (specified by subscript m) and a female population with two sub-groups representing low-risk and high-risk groups (specified by subscripts $f _ { 1 }$ and $f _ { 2 }$ , respectively): 

$$
\frac {d S _ {i}}{d t} = \mu_ {i} N _ {i} - \lambda_ {i} (t) S _ {i} - \mu_ {i} S _ {i},
$$

$$
\frac {d A _ {i}}{d t} = \lambda_ {i} (t) S _ {i} + \gamma_ {i} (\theta_ {i}) L _ {i} - (\omega_ {i} + \theta_ {i} + \mu_ {i}) A _ {i}, \tag {5.67}
$$

$$
\frac {d L _ {i}}{d t} = (\omega_ {i} + \theta_ {i}) A _ {i} - \bigl (\gamma_ {i} (\theta_ {i}) + \mu_ {i} \bigr) L _ {i}, \qquad i = m, f _ {1}, f _ {2},
$$

where $\lambda _ { i } ( t ) ( i = m , f _ { 1 } , f _ { 2 } )$ are the force of infection functions given by 

$$
\lambda_ {m} (t) = \sum_ {i = 1} ^ {2} b _ {m} c _ {i} \beta_ {f _ {i} m} \frac {A _ {f _ {i}}}{N _ {f _ {i}}}, \tag {5.68}
$$

$$
\lambda_ {f _ {j}} (t) = b _ {f _ {j}} \beta_ {m f _ {j}} \frac {A _ {m}}{N _ {m}}, j = 1, 2,
$$

and $N _ { i } ~ = ~ S _ { i } + A _ { i } + L _ { i } , ~ i ~ = ~ m , f _ { 1 } , f _ { 2 }$ . Each group $i ( i { \bf \alpha } = m , f _ { 1 } , f _ { 2 } )$ is divided into three subgroups: susceptible $( S _ { i } )$ , infected with acute HSV-2 only $( A _ { i } )$ , infected with latent HSV-2 only $( L _ { i } )$ . The population within each group is assumed to be homogeneous in the sense that individuals have the same infective period, duration of immunity, contact rate, and so on. A transition diagram between these epidemiological classes within group i is depicted in Fig. 5.7. 

For each sub-population i $( i = f _ { 1 } , f _ { 2 } , m )$ there is a per-capita recruitment rate $\mu _ { i }$ into the susceptible group. For all classes there is a constant per-capita rate $\mu _ { i }$ of exiting the sexually active population. Thus, the total population $N _ { i }$ in group i remains constant for all time. Susceptible people in group i acquire infection with HSV-2 at the rate $\lambda _ { i } ( t )$ . Upon being infected with HSV-2, people in group i enter the class $A _ { i }$ . These individuals become latent $L _ { i }$ at the constant rate $\omega _ { i }$ (an average duration in $A _ { i }$ is $1 / \omega _ { i } )$ . Following an appropriate stimulus in individuals with latent HSV-2, reactivation may occur at the rate $\gamma _ { i }$ . Finally, the antiviral treatment rate for the $A _ { i }$ individuals is denoted by $\theta _ { i }$ . Because antiviral medications will also suppress reactivation of latent HSV-2, we assume that the reactivation rate of people with latent $\mathrm { H S V } { - } 2 \gamma _ { i }$ is a decreasing function of $\theta _ { i }$ , denoted by $\gamma _ { i } ( \theta _ { i } )$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/dd9e940af2f143109583cd9595e76a12419b4866ebe79a3b03028d4815fb96f1.jpg)



Fig. 5.7 A transition diagram for HSV-2 for subgroup $i ( i = m , f _ { 1 } , f _ { 2 } )$


For the forces of infection $\lambda _ { i } ( t ) ( i = m , f _ { 1 } , f _ { 2 } ) , b _ { i }$ is the rate at which individuals in group i acquire new sexual partners (also referred to as contact rates), and $c _ { j }$ denotes the probability that a male chooses a female partner in group $j \left( j = f _ { 1 } , f _ { 2 } \right)$ . Then $c _ { 1 } + c _ { 2 } = 1$ . For ease of notation, let 

$$
c _ {1} = c, \quad c _ {2} = 1 - c.
$$

Overall, the number of female partners in groups $j \ ( j = 1 , 2 )$ that males acquire should be equal to the number of male partners that females in groups j acquire. These observations lead to the following balance conditions: 

$$
b _ {m} c N _ {m} = b _ {f _ {1}} N _ {f _ {1}}, \quad b _ {m} (1 - c) N _ {m} = b _ {f _ {2}} N _ {f _ {2}}. \tag {5.69}
$$

To ensure that constraints in (5.69) are satisfied, we assume in numerical simulations that $b _ { m }$ and $c$ are fixed constants with $b _ { f _ { 1 } }$ and $b _ { f _ { 2 } }$ being varied according to $N _ { m } , N _ { f _ { 1 } }$ , and $N _ { f _ { 2 } }$ . The parameters $\beta _ { i m } ( \beta _ { m i } ) , i = f _ { 1 } , f _ { 2 }$ are the HSV-2 transmission probabilities per partner between females infected with acute HSV-2 in group i and susceptible males (between males infected with acute HSV-2 and susceptible females in group i). 

Question 1 Let $R _ { m f _ { j } m }$ denote the average number of secondary male infections generated by one male individual through females in group $f _ { j } \ ( j = 1 , 2 )$ . Show that 

$$
\mathcal {R} _ {m f _ {j} m} = \sqrt {\frac {b _ {f _ {j}} \beta_ {m f _ {j}}}{\omega_ {m} + \theta_ {m} + \mu_ {m}} \cdot P _ {m} \cdot \frac {b _ {m} c _ {j} \beta_ {f _ {j} m}}{\omega_ {f _ {j}} + \theta_ {f _ {j}} + \mu_ {f _ {j}}} \cdot P _ {f _ {j}}}, \quad j = 1, 2
$$

with $P _ { i } ( i = m , f _ { 1 } , f _ { 2 } )$ representing the probability that an individual of group i is in the acute stage (A), which is given by 

$$
P _ {i} = \frac {\left(\omega_ {i} + \theta_ {i} + \mu_ {i}\right) \left(\gamma_ {i} (\theta_ {i}) + \mu_ {i}\right)}{\left[ \gamma_ {i} ^ {L} (\theta_ {i}) + \omega_ {i} + \theta_ {i} + \mu_ {i} \right] \mu_ {i}}, \quad i = m, f _ {1}, f _ {2}. \tag {5.70}
$$

Question 2 Let $\mathcal { R }$ denote the overall reproduction number for the entire population. (a) Show that 

$$
\mathcal {R} = \sqrt {\left(\mathcal {R} _ {m f _ {1} m}\right) ^ {2} + \left(\mathcal {R} _ {m f _ {2} m}\right) ^ {2}}, \tag {5.71}
$$

where $\mathcal { R } _ { m f _ { j } m } \left( j = 1 , 2 \right)$ are given in Question 1. 

(b) Provide a biological interpretation of the expression on the right-hand side of Eq. (5.71). 

Question 3 Let $E _ { 0 }$ denote the disease-free equilibrium of the system (5.67), and let $E ^ { * }$ denote an endemic equilibrium. 

(a) Show that $E _ { 0 }$ is locally asymptotically stable when $\mathcal { R } < 1$ and unstable when $\mathcal { R } > 1$ . 

(b) Choose the function for $\gamma ( \theta )$ to be in the following form: $\begin{array} { r l } { \gamma _ { i } ( \theta _ { i } ) } & { { } = } \end{array}$ $\gamma _ { i } ( 0 ) \alpha _ { i } / ( \alpha _ { i } { \bf \beta } + { \bf \beta } \theta _ { i } )$ . Show via numerical simulations that $E ^ { * }$ exists and is locally asymptotically stable when $\mathcal { R } > 1$ . One case to consider is when $c > 0 . 5 , \mathrm { e . g . } , c = 0 . 9 \ ( 9 0 \%$ of male contacts are with the low-risk female group). Because of the constraint (5.69), $b _ { i }$ and $N _ { i }$ are not independent. Choose $b _ { m } ~ = ~ 0 . 1 , ~ b _ { f _ { 1 } } ~ = ~ 0 . 0 9 0 1 , b _ { f _ { 2 } } ~ = ~ 9 . 0 1$ (so that $b _ { f _ { 2 } } / b _ { f _ { 1 } } ~ = ~ 1 0 0 )$ , $N _ { m } = N _ { f _ { 1 } } + N _ { f _ { 2 } } = \mathrm { i } 0 ^ { 7 } \ : ( \mathrm { e . g . } , N _ { f _ { 1 } } = 9 . 9 8 8 9 \times 1 0 ^ { 6 } , N _ { f _ { 2 } } = 1 . 1 0 9 9 \times 1 0 ^ { 4 } )$ . Consider the case when treatment is absent, i.e., $\theta = 0$ . Other parameter values are $\omega = 2 . 5 , \gamma _ { m } ( 0 ) = 0 . 4 3 6 , \gamma _ { f _ { 1 } } = \gamma _ { f _ { 2 } } = 0 . 3 3 9 , \alpha _ { i } = 2$ . The time unit is month. 

(c) Explore numerically the effect of treatment θ. Consider various scenarios such as treatment in only one subgroup (male, low-risk female or high-risk female group). Summarize the observed outcomes in terms of effect of treatment on the prevalence of HSV-2. 

## 5.8 Project: Effect of Heterogeneities on Reproduction Numbers

Consider the metapopulation model (5.37), which includes vaccination coverage $\boldsymbol { \phi } = ( \phi _ { 1 } , \phi _ { 2 } , \cdot \cdot \cdot , \phi _ { n } )$ in the n sub-populations. As pointed out in Sect. 5.3.1 that several types of heterogeneities including the activity $\left( { { a } _ { i } } \right)$ , sub-population size $( N _ { i } )$ , and preference for mixing within the sub-population $( \pi _ { i } )$ may affect the optimal vaccination strategy. In this project, we examine in more details how these heterogeneities may affect $\mathcal { R } _ { v }$ for the case of $n = 2$ , and how to choose $( \phi _ { 1 } , \phi _ { 2 } )$ to reduce $\mathcal { R } _ { v }$ below a certain level. For example, Fig. 5.8 illustrates the different parameter regions in the $( \phi _ { 1 } , \phi _ { 2 } )$ plane in which $\mathcal { R } _ { v } \ < \ 1$ in the cases of (a) proportionate mixing $( \pi _ { 1 } = \pi _ { 2 } = 0 )$ and (b) preferential mixing $( \pi _ { i } > 0 )$ . 

For Questions 1–3 below, let $\sigma = 0 . 0 5 , \gamma = 1 / 7$ . 

Question 1 For the cases in (a) and (b) below, determine the values of the basic reproduction number $\mathcal { R } _ { 0 }$ for each case. Describe how preferential mixing and heterogeneous activity may influence the effect of heterogeneity in activity on $\mathcal { R } _ { 0 }$ . Let $N _ { 1 } = N _ { 2 } = 5 0 0$ . Determine the values of $\mathcal { R } _ { 0 }$ for each case. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/ea40b406a626a008b41bf9e2d74f33fe294ad3cce32905a9748300a9461ead04.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/dfc46d1b2564d31a09dd53c708d1f95ad7a21a5a93865ba7f26a9dc832b1afe3.jpg)



Fig. 5.8 Plots of $\mathcal { R } _ { v }$ as a function of $\phi _ { 1 }$ and $\phi _ { 2 }$ for (a) proportionate mixing $( \pi _ { i } { \bf \alpha } = { \bf \alpha } 0 ,$ , no preference) and (b) preferential mixing $( \pi _ { i } ~ > ~ 0 )$ . Values at or below their intersection with the dark plane, $\mathcal { R } _ { v } = 1$ , are combinations of $\phi _ { i } ( i = 1 , 2 )$ at which population-immunity attains or exceeds this threshold


(a) Homogeneous activity: $a _ { 1 } = a _ { 2 } = 1 0 ( a _ { 1 } + a _ { 2 } = 2 0 )$ . 

(i) No preference: $\pi _ { 1 } = \pi _ { 2 } = 0$ . 

(ii) Homogeneous preference: $\pi _ { 1 } = \pi _ { 2 } = 0 . 5$ 

(iii) Heterogeneous preference: $\pi _ { 1 } = 0 . 2 5 , \pi _ { 2 } = 0 . 7 5$ and $\pi _ { 1 } = 0 . 7 5 , \pi _ { 2 } =$ 0.25. 

(b) Heterogeneous activity: $a _ { 1 } = 8$ and $a _ { 2 } = 1 2 ( a _ { 1 } + a _ { 2 } = 2 0 )$ . 

Repeat (i)–(iii) in (a). 

Question 2 Same as in Question 1 but consider heterogeneities in both activity $a _ { i }$ and population size $N _ { i }$ . Given that $N _ { 1 } + N _ { 2 } = N = 1 0 0 0$ and $a _ { 1 } = 5 , a _ { 2 } = 1 0$ . Repeat (i)–(iii) in Question 1(a) for the following two cases: 

(a) Homogeneous population size: $N _ { 1 } = N _ { 2 } = 0 . 5 N$ . 

(b) Heterogeneous population size: $N _ { 1 } = 0 . 1 N$ and $N _ { 2 } = 0 . 9 N$ . 

Question 3 Consider the effective reproduction number $\mathcal { R } _ { v } ( \phi _ { 1 } , \phi _ { 2 } )$ as a function of vaccination coverage $( \phi _ { 1 } , \phi _ { 2 } )$ . 

(a) Find the optimal solution $\phi ^ { * } = ( \phi _ { 1 } ^ { * } , \phi _ { 2 } ^ { * } )$ for the following set of parameter values: $\pi _ { 1 } = \pi _ { 2 } = 0 . 3 , a _ { 1 } = 1 5 , a _ { 2 } = \bar { 1 } 2 , N _ { 1 } = 1 1 0 0 , N _ { 2 } = 9 0 0$ . The given number of vaccine doses is $\phi _ { 1 } N _ { 1 } + \phi _ { 2 } N _ { 2 } = 9 9 0$ . 

(b) What is the minimum value $\mathcal { R } _ { v \{ m i n \} } = \mathcal { R } _ { v } ( \phi ^ { * } ) \ ?$ 

## References



24. Gani, R., H. Hughes, T. Griffin, J. Medlock, & S. Leach (2005) Potential impact of antiviral use on hospitalizations during influenza pandemic, Emerg. Infect. Dis. 11: 1355–1362. 





47. Wallinga, J., P. Teunis, & M. Kretzschmar (2006) Using data on social contacts to estimate agespecific transmission parameters for respiratory-spread infectious agents, American Journal of Epi, 164(10): 936–944. 





1. Adler, F.R. (1992) The effects of averaging on the basic reproduction ratio, Math Biosci. 111(1): 89–98. 





25. Glasser, J., Z. Feng, A. Moylan, S. Del Valle & C. Castillo-Chavez (2012) Mixing in agestructured population models of infectious diseases, Math. Biosci., 235(1): 1–7. 





48. Wesley, C. L., L.J. Allen, C.B. Jonsson, Y.-K. Chu, R.D. Owen (2009) A discrete-time rodenthantavirus model structured by infection and developmental stages, Adv. Stu. Pure Math. 53: 387–398. 





2. Allen,L.J. and P. van den Driessche (2008) The basic reproduction number in some discretetime epidemic models, J. Diff. Equ. App. 14: 1127–1147. 





26. Glasser, J.W., Z. Feng, S.B. Omer, P.J. Smith, L.E. Rodewald (2016) The effect of heterogeneity in uptake of the measles, mumps, and rubella vaccine on the potential for outbreaks of measles: a modelling study, 16(5): 599–605. 





49. Zagheni, E., F.C. Billari, P. Manfredi, A. Melegaro, J. Mossong & W.J. Edmunds (2008) Using time-use data to parameterize models for the spread of close-contact infectious diseases, Am. J. Epi., 168(9), 1082–1090. 





3. Andersson, H. & Britton, T. (1998) Heterogeneity in epidemic models and its effect on the spread of infection, J. Appl. Prob. 35: 651–661. 





27. Hethcote, H.W. & J.A. Yorke (1984) Gonorrhea Transmission Dynamics and Control, Lect. Notes in Biomath. 56, Springer-Verlag, Berlin-Heidelberg-New York (1984). 





4. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2006) Simple models for containment of a pandemic, J. Roy. Soc. Interface, 3: 453–457. 





28. Hethcote, H.W. & J.W. van Ark (1987) Epidemiological models for heterogeneous populations: proportionate mixing, parameter estimation and immunization programs. Math. Biosci., 84(1): 85–118. 





5. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2007) A final size relation for epidemic models, Math. Biosc. & Eng. 4: 159–176. 





29. Hirsch, M.W. & S. Smale, Differential Equations (1974) Dynamical Systems, and Linear Algebra, Academic Press, Orlando, FL (1974). 





6. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2008) A model for influenza with vaccination and antiviral treatment, Theor. Pop. Biol. 253: 118–130. 





30. Jacquez, J.A., C.P. Simon, J. Koopman, L. Sattenspiel, & T. Perry (1988) Modeling and analyzing HIV transmission: the effect of contact patterns, Math. Biosci., 92: 119–199. 





7. Berman, A. & R.J. Plemmons (1994) Nonnegative Matrices in the Mathematical Sciences, SIAM, Vol. 9, 1994. 





31. Lewis, M.A., J. Renclawowicz, P. van Den Driessche, and M. Wonham (2006) A comparison of continuous and discrete-time West Nile Virus models, Bull. Math. Biol. 68(3): 491–509. 





8. Blythe, S.P., S. Busenberg & C. Castillo-Chavez (1995) Affinity and paired-event probability, Math. Biosc. 128: 265–84 . 





32. Longini, I.M., M.E. Halloran, A. Nizam, & Y. Yang (2004) Containing pandemic influenza with antiviral agents, Am. J. Epidem. 159: 623–633. 





9. Blythe, S.P. , C. Castillo-Chavez, J. Palmer & M. Cheng (1991) Towards a unified theory of mixing and pair formation, Math. Biosc. 107: 379–405. 





33. Longini, I.M., A. Nizam, S. Xu, K. Ungchusak, W. Hanshaoworakul, D.A.T. Cummings, & M.E. Halloran (2005) Containing pandemic influenza at the source, Science 309, 1083–1087. 





10. Brauer, F. (2005) The Kermack–McKendrick epidemic model revisited, Math. Biosc. 198: 119–131. 





34. Longini, I. M. & M. E. Halloran (2005) Strategy for distribution of influenza vaccine to high - risk groups and children, Am. J. Epidem. 161: 303–306. 





11. Brauer, F. (2008) Epidemic models with treatment and heterogeneous mixing, Bull. Math. Biol. 70: 1869–1885. 





35. Ma, J. & D.J.D. Earn (2006) Generality of the final size formula for an epidemic of a newly invading infectious disease, Bull. Math. Biol. 68: 679–702. 





12. Brauer, F. & J. Watmough (2009) Age of infection epidemic models with heterogeneous mixing, J. Biol. Dynamics 3: 324–330. 





36. May, R.M. & R.M. Anderson (1984) Spatial heterogeneity and the design of immunization programs. Math Biosci. 72(1): 83–111. 





13. Busenberg, S. & C. Castillo-Chavez (1989) Interaction, pair formation and force of infection terms in sexually transmitted diseases, In Mathematical and Statistical Approaches to AIDS Epidemiology, Lect. Notes Biomath. 83, C. Castillo-Chavez (ed.), Springer-Verlag, Berlin-Heidelberg-New York, 289–300. 





37. May, R.M. & R.M. Anderson (1984) Spatial, temporal and genetic heterogeneity in host populations and the design of immunization programmes. IMA J Math Appl Math Biol. 1(3): 233–66. 





14. Busenberg, S. & C. Castillo-Chavez (1991) A general solution of the problem of mixing of sub-populations and its application to risk- and age-structured epidemic models for the spread of AIDS, IMA J. Math. Appl. Med. Biol., 8: 1–29. 





38. Meyers, L.A. (2007) Contact network epidemiology: Bond percolation applied to infectious disease prediction and control, Bull. Am. Math. Soc. 44, 63–86. 





15. Chow, L., M. Fan, and Z. Feng (2011) Dynamics of a multi-group epidemiological model with group-targeted vaccination strategies, J. Theor. Biol. 29: 56–64. 





39. Meyers, L.A. , M.E.J. Newman & B. Pourbohloul (2006) Predicting epidemics on directed contact networks, J. Theor. Biol. 240, 400–418. 





16. De Jong, M., O. Diekmann and J.A.P. Heesterbeek (1994) The computation of R0 for discretetime epidemic models with dynamic heterogeneity, Math. Biosci. 119(1): 97–114. 





40. Meyers, L.A., B. Pourbohloul, M.E.J. Newman, D.M. Skowronski, & R.C. Brunham (2005) Network theory and SARS: predicting outbreak diversity. J. Theor. Biol., 232: 71–81. 





17. Del Valle, S. Y., J.M. Hyman, H.W. Hethcote & S.G. Eubank (2007) Mixing patterns between age groups in social networks, Social Networks, 29(4): 539–554. 





41. Mossong, J., N. Hens, M. Jit, P. Beutels, K. Auranen, R. Mikolajczyk, . . . & W. J. Edmunds (2008) Social contacts and mixing patterns relevant to the spread of infectious diseases, PLoS Medicine, 5(3): e74. 





18. Diekmann, O. & J.A.P. Heesterbeek (2000) Mathematical Epidemiology of Infectious Diseases. Wiley, Chichester (2000) 





42. Nold, A. (1980) Heterogeneity in disease transmission modeling, Math. Biosci, 52: 227–240. 





19. Diekmann, O., J.A.P. Heesterbeek & J.A.J. Metz (1990) On the definition and the computation of the basic reproductive ratio R0 in models for infectious diseases in heterogeneous populations, J. Math. Biol. 28: 365–382. 





43. Poghotanyan, G., Z. Feng, J.W. Glasser, A.N. Hill (2018) Constrained minimization problems for the reproduction number in meta-population models, J. Math. Biol. https:/doi.org/10.1007/ s00285-018-1216-z. 





20. Diekmann, O., J.A.P. Heesterbeek, & T. Britton (2012) Mathematical tools for understanding infectious disease dynamics, 2012, Princeton University Press. 





44. Pourbohloul, B. & J. Miller (2008) Network theory and the spread of communicable diseases, Center for Disease Modeling Preprint 2008-03, www.cdm.yorku.ca/cdmprint03.pdf 





21. Feng, Z., A.N. Hill, P.J. Smith, J.W. Glasser (2015) An elaboration of theory about preventing outbreaks in homogeneous populations to include heterogeneity or preferential mixing, J. Theor. Biol. 386: 177–187. 





45. van den Driessche, P. & J. Watmough (2002) Reproduction numbers and sub-threshold endemic equilibria for compartmental models of disease transmission. Math. Biosc. 180: 29–48. 





22. Feng, Z., A.N. Hill, A.T. Curns, J.W. Glasser (2007) Evaluating targeted interventions via meta-population models with multi-level mixing, Math. Biosci. 287: 93–104. 





46. van den Driessche, P. & J. Watmough (2002) Further notes on the basic reproduction number, in Mathematical Epidemiology, F. Brauer, P. van den Driessche, & J. Wu (eds.) Springer Lecture Notes, Vol. 1945. 





23. Ferguson, N.M., D.A.T. Cummings, S. Cauchemez, C. Fraser, S. Riley, A. Meeyai, S. Iamsirithaworn, & D.S. Burke (2005) Strategies for containing an emerging influenza pandemic in Southeast Asia, Nature, 437: 209–214. 



# Chapter 6 Models for Diseases Transmitted by Vectors

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/26da1dd9eeb91c5ce2e91442788b46cdca0804936d9d592a7cb517e4119b4694.jpg)


## 6.1 Introduction

Many diseases are transmitted from human to human indirectly, through a vector. Vectors are living organisms that can transmit infectious diseases between humans. Many vectors are bloodsucking insects that ingest disease-producing microorganisms during blood meals from an infected (human) host, and then inject it into a new host during a subsequent blood meal. The best known vectors are mosquitoes for diseases including malaria, dengue fever, chikungunya, Zika virus, Rift Valley fever, yellow fever, Japanese encephalitis, lymphatic filariasis, and West Nile fever, but ticks (for Lyme disease and tularemia), bugs (for Chagas’ disease), flies (for onchocerciasis), sandflies (for leishmaniasis), fleas (for plague, transmitted by fleas from rats to humans), and some freshwater snails (for schistosomiasis) are vectors for some diseases. 

Every year there are more than a billion cases of vector-borne diseases and more than a million deaths. Vector-borne diseases account for over 17% of all infectious diseases worldwide. Malaria is the most deadly vector-borne diseases and caused an estimated 627,000 deaths in 2012. The most rapidly growing vector-borne disease is dengue, for which the number of cases has multiplied by 30 in the last 50 years. These diseases are found more commonly in tropical and sub-tropical regions where mosquitoes flourish and in places where access to safe drinking water and sanitation systems is uncertain. 

Some vector-borne diseases, such as dengue, chikungunya, and West Nile virus , are emerging in countries where they were unknown previously because of globalization of travel and trade and environmental challenges such as climate change. 

Many of the important underlying ideas of mathematical epidemiology arose in the study of malaria begun by Sir. R.A. Ross [16]. Malaria is one example of a disease with vector transmission, the infection being transmitted back and forth between vectors (mosquitoes) and hosts (humans). It kills hundreds of thousands of people annually, mostly children and mostly in poor countries in Africa. Among communicable diseases, only tuberculosis causes more deaths. We will analyze some models for malaria in a later chapter. Other vector diseases include West Nile virus and HIV with heterosexual transmission, yellow fever, and dengue fever (which will also be studied in a later chapter). 

Vector-transmitted diseases require models that include both vectors and hosts. For most diseases transmitted by vectors, the vectors are insects, with a much shorter life span than the hosts, who may be humans as for malaria or animals as for West Nile virus. For heterosexually transmitted human diseases, transmission goes back and forth between males and females rather than between two different species, but a model still requires two separate groups. 

The compartmental structure of the disease may be different in host and vector species; for many diseases with insects as vectors an infected vector remains infected for life so that the disease may have an SI or SEI structure in the vectors and an SI R or SEI R structure in the hosts. We will describe vector models with SEI R structure in the host species and SEI structure in the vector species, but the analysis of other types of vector-transmitted diseases is similar. The models are of the same type as those studied in Chaps. 2–4, but have a more complicated structure because they involve two different species. 

## 6.2 A Basic Vector Transmission Models

Ross received the second Nobel Prize in Medicine for demonstrating the vector transmission nature of malaria, and he then constructed a model in 1909 that predicted the possibility of controlling malaria by decreasing the mosquito population size below a threshold value. This prediction was borne out in practice, but controlling the mosquito population size is very difficult because of the ability of mosquitoes to adapt to pesticides. Malaria remains a very dangerous disease. 

We describe a basic model for a vector-transmitted disease, in which we assume throughout that vectors satisfy a simple SEI model, with no recovery from infection, and the hosts satisfy a simple SEI R model. This model is a template for vector disease transmission models for many specific diseases. We are thinking of mosquitoes as vectors, and because a mosquito lifetime is much shorter than that of the human hosts we must include demographics in the vector population. The model includes both epidemic and endemic situations. 

We consider a constant total population size $N _ { h }$ of hosts (humans), divided into $S _ { h }$ susceptibles, $E _ { h }$ exposed members, $I _ { h }$ infectives, and $R _ { h }$ removed members. There is a birth rate $\varLambda _ { h }$ in the susceptible class and a proportional natural death rate $\mu _ { h }$ in each class. Exposed hosts proceed to the infective class at rate $\eta _ { h }$ and infected hosts recover at rate $\gamma$ . 

There is a constant birth rate $\mu N _ { v }$ of vectors in unit time and a proportional vector death rate $\mu$ in each class, so that the total vector population size $N _ { v }$ is constant. The vector population is divided into $S _ { v }$ susceptibles, $E _ { v }$ exposed members, and $I _ { v }$ infectives. Exposed vectors move to the infected class at rate $\eta _ { v }$ and do not recover from infection. For simplicity, we assume that there are no disease deaths of either hosts or vectors. 

We assume that the mosquito biting rate is proportional to the size $N _ { h }$ of the host population. Thus an average mosquito makes $b N _ { h }$ bites in unit time. The total number of mosquito bites in unit time is $b N _ { h } N _ { v }$ and the number of bites received by an average host in unit time is $b N _ { v }$ . We assume that $f _ { v h }$ is the probability that a bite transmits infection from vector to host and $f _ { h v }$ is the probability that a bite transmits infection from host to vector. We define 

$$
\beta_ {h} = b f _ {v h} N _ {v}, \quad \beta_ {v} = b f _ {h v} N _ {h}.
$$

If we eliminate b from these two equations, we obtain a balance relation 

$$
f _ {v h} \beta_ {h} N _ {v} = f _ {h v} \beta_ {v} N _ {h}. \tag {6.1}
$$

In many models for vector-transmitted diseases, the vector population size is much larger than the host population size but the two contact rates $\beta _ { h }$ and $\beta _ { v }$ are of the same order of magnitude, suggesting that $f _ { h v } > > f _ { v h }$ . 

Then the number of new infective hosts in unit time is 

$$
b f _ {v h} N _ {v} S _ {h} \frac {I _ {v}}{N _ {v}} = \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}}.
$$

A similar argument shows that the number of new mosquito infections is 

$$
\beta_ {v} S _ {v} \frac {I _ {h}}{N _ {h}}.
$$

The model is 

$$
\begin{array}{l} S _ {h} ^ {\prime} = \varLambda (N _ {h}) - \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}} - \mu_ {h} S _ {h} \\ E _ {h} ^ {\prime} = \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}} - (\eta_ {h} + \mu_ {h}) E _ {h} \\ I _ {h} ^ {\prime} = \eta_ {h} E _ {h} I _ {v} - (\gamma + \mu_ {h}) I _ {h} \tag {6.2} \\ \end{array}
$$

$$
S _ {v} ^ {\prime} = \mu_ {v} N _ {v} - \beta_ {v} S _ {v} \frac {I _ {h}}{N _ {h}} - \mu_ {v} S _ {v}
$$

$$
E _ {v} ^ {\prime} = \beta_ {v} S _ {v} \frac {I _ {h}}{N _ {h}} - (\eta_ {v} + \mu_ {v}) E _ {v}
$$

$$
I _ {v} ^ {\prime} = \eta_ {v} E _ {v} - \mu_ {v} I _ {v}.
$$

The corresponding epidemic model is (6.2) with $\varLambda ( N _ { h } ) = \mu _ { h } = 0$ . 

## 6.2.1 The Basic Reproduction Number

The basic reproduction number is defined as the number of secondary disease cases caused by introducing a single infective host into a wholly susceptible population of both hosts (humans) and vectors (mosquitoes). For the model (6.2) this may be calculated directly. There are two stages. First, the infective human infects mosquitoes, at a rate $\beta _ { v }$ for a time $1 / ( \gamma + \mu _ { h } )$ . This produces $\beta _ { v } / ( \gamma + \mu _ { h } )$ infected mosquitoes, of whom a fraction $\eta _ { v } / ( \eta _ { v } + \mu _ { v } )$ proceeds to become infective. 

The second stage is that these infective mosquitoes infect humans at a rate $\beta _ { h }$ for a time $1 / \mu _ { v }$ , producing $\beta _ { h } / \mu _ { v }$ infected humans per mosquito. The net result of these two stages is 

$$
\frac {\beta_ {h}}{\gamma + \mu_ {h}} \frac {\eta_ {v}}{\eta_ {v} + \mu_ {v}} \frac {\beta_ {v}}{\mu_ {v}} = \beta_ {v} \beta_ {h} \frac {\eta_ {v}}{(\eta_ {v} + \mu_ {v}) (\gamma + \mu_ {h}) \mu_ {v}}
$$

infected humans, and this is the basic reproduction number $\mathcal { R } _ { 0 }$ . 

We could also calculate the basic reproduction number by using the next generation matrix approach [21]. This would give the next generation matrix 

$$
K \left[ \begin{array}{c c} 0 & \beta_ {v} \frac {\eta_ {v}}{\mu_ {v} (\mu_ {v} + \eta_ {v})} \\ \beta_ {h} \frac {1}{\gamma + \mu_ {h}} & 0 \end{array} \right].
$$

The basic reproduction number is the positive eigenvalue of this matrix, 

$$
\mathcal {R} _ {0} = \sqrt {\beta_ {h} \beta_ {v} \frac {\eta_ {v}}{\mu_ {v} (\gamma + \mu_ {h}) (\mu_ {v} + \eta_ {v})}}.
$$

In this calculation, the transition from host to vector to host is considered as two generations. In studying vector-transmitted diseases it is common to consider this as one generation and use the value that we obtained by our direct approach 

$$
\mathcal {R} _ {0} = \beta_ {h} \beta_ {v} \frac {\eta_ {v}}{\mu_ {v} (\gamma + \mu_ {h}) (\mu_ {v} + \eta_ {v})}. \tag {6.3}
$$

This choice is made in [4, 10] and is the choice that we make because it conforms to the result obtained by direct calculation, without using the next generation approach. However, other references, including [13], use the square root form, and it is important to be aware of which form is being used in any study. The two choices have the same threshold value. 

In fact, different expressions are possible for the next generation matrix. This is shown in [6]. Using the next generation matrix approach but considering only host infections as new infections and vector infections as transitions, we would obtain the form (6.3). 

## 6.2.2 The Initial Exponential Growth Rate

In order to determine the initial exponential growth rate from the model, a quantity that can be compared with experimental data, we linearize the model (6.2) about the disease-free equilibrium $S _ { h } = N _ { h } , E _ { h } = I _ { h } = 0 , S _ { v } = N _ { v } , E _ { v } = I _ { v } = 0$ . If we let $y = N _ { h } - S _ { h } , z = N _ { v } - S _ { v }$ , we obtain the linearization 

$$
y ^ {\prime} = \beta_ {v} I _ {v} - \mu_ {h} y
$$

$$
E _ {h} ^ {\prime} = \beta_ {v} I _ {v} - (\eta + \mu_ {h}) E _ {h}
$$

$$
I _ {h} ^ {\prime} = \eta E _ {h} - (\gamma + \mu_ {h}) I _ {h} \tag {6.4}
$$

$$
z ^ {\prime} = - \mu_ {v} z + \beta_ {h} I _ {h}
$$

$$
E _ {v} = \beta_ {h} I _ {h} - (\mu_ {v} + \eta_ {v}) E _ {v}
$$

$$
I _ {v} ^ {\prime} = \eta_ {v} E _ {v} - \mu_ {v} I _ {v}.
$$

The corresponding characteristic equation is 

$$
d e t \left[ \begin{array}{c c c c c c} - \lambda & 0 & 0 & 0 & 0 & \beta_ {v} \\ 0 & - (\lambda + \eta_ {h} + \mu_ {h}) & 0 & 0 & 0 & \beta_ {v} \\ 0 & \eta_ {h} & - (\lambda + \gamma + \mu_ {h}) & 0 & 0 & 0 \\ 0 & 0 & - \beta_ {h} & - (\lambda + \mu_ {v}) & 0 & 0 \\ 0 & 0 & - \beta_ {h} & 0 & - (\lambda + \mu_ {v} + \eta_ {v}) & 0 \\ 0 & 0 & 0 & 0 & \eta_ {v} & - (\lambda + \mu_ {v}) \end{array} \right] = 0.
$$

Solutions of the linearization (6.4) are linear combinations of exponential functions whose exponents are the roots of the characteristic equation (the eigenvalues of the coefficient matrix of (6.4)). 

We can reduce this equation to a product of two factors and a fourth degree polynomial equation 

$$
\lambda (\lambda + \mu_ {v}) d e t \left[ \begin{array}{c c c c} - (\lambda + \eta_ {h} + \mu_ {h}) & 0 & 0 & \beta_ {v} \\ \eta_ {h} & - (\lambda + \gamma + \mu_ {h}) & 0 & 0 \\ 0 & \beta_ {h} & - (\lambda + \mu_ {v} + \eta_ {v}) & 0 \\ 0 & 0 & \eta_ {v} & - (\lambda + \mu_ {v}) \end{array} \right] = 0.
$$

The initial exponential growth rate is the largest root of this fourth degree equation, which reduces to 

$$
g (\lambda) = (\lambda + \eta_ {h}) (\lambda + \gamma + \mu_ {h}) (\lambda + \mu_ {v} + \eta_ {v}) (\lambda + \mu_ {v}) - \beta_ {h} \beta_ {v} \eta_ {h} \eta_ {v} = 0. \tag {6.5}
$$

Since $g ( 0 ) \ < \ 0 \ \mathrm { i f } \ \mathcal { R } _ { 0 } \ > \ 1$ , and since $g ( \lambda )$ is positive for large positive λ and $g ^ { \prime } ( \lambda ) > 0$ for positive λ, there is a unique positive root of the equation $g ( \lambda ) = 0$ , and this is the initial exponential growth rate. The initial exponential growth rate may be measured experimentally, and if the measured value is $\rho _ { \cdot }$ , then from (6.5) we 

obtain 

$$
(\rho + \eta_ {h}) (\rho + \gamma) (\rho + \mu_ {v} + \eta_ {v}) (\rho + \mu_ {v}) = \beta_ {h} \beta_ {v} \eta_ {h} \eta_ {v} = \mathcal {R} _ {0} \eta_ {h} \mu_ {v} \gamma (\mu_ {v} + \eta_ {v}).
$$

From this, we obtain 

$$
\mathcal {R} _ {0} = \frac {(\rho + \eta_ {h}) (\rho + \gamma) (\rho + \mu_ {v} + \eta_ {v}) (\rho + \mu_ {v})}{\eta_ {h} \mu_ {v} \gamma (\mu_ {v} + \eta_ {v})}. \tag {6.6}
$$

This gives a way to estimate the basic reproduction number from measurable quantities. In addition, the balance relation (6.1) allows us to calculate the values of $\beta _ { h }$ and $\beta _ { v }$ separately, which makes it possible to simulate the model. 

The same reasoning may be used for a short term epidemic model in which we ignore demographics in the host population. The results would be the same except that $\varLambda ( N _ { h } )$ and $\mu _ { h }$ would be replaced by zero. 

By linearizing the system (6.2) at an equilibrium it is possible to show that the disease-free equilibrium is asymptotically stable if and only if $\mathcal { R } _ { 0 } < 1$ and that the endemic equilibrium exists only if $\mathcal { R } _ { 0 } > 1$ and is asymptotically stable. 

## 6.3 Fast and Slow Dynamics

In vector-borne disease transmission models in which the vector is an insect, the vector time scale is often much faster than the host time scale. In such models it is possible to consider two separate time scales [3]. We can make a quasi-steadystate hypothesis assuming that the vector population sizes remain almost constant [17]. We treat the vector population sizes as constants which depend on the host population sizes and approximate the system by a host model, which has fewer equations than the full system but may be more complicated in form. 

We describe the process in an $S I R / S I$ epidemic model which is somewhat simpler than (6.2). Consider a host population with total population size $N _ { h }$ , and no demographics, and a vector population with birth and death rates $\mu _ { v }$ and constant total population size $N _ { v }$ . We assume mass action contact rate with contact rates $\beta _ { h } , \beta _ { v }$ , recovery rate $\gamma$ for the host species and no recovery for the vector species. 

The resulting model is 

$$
\frac {d S _ {h}}{d t} = - \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}}
$$

$$
\frac {d I _ {h}}{d t} = \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}} - \gamma I _ {h}
$$

## 6.3 Fast and Slow Dynamics

$$
\begin{array}{l} \frac {d S _ {v}}{d t} = \mu_ {v} N _ {v} - \beta_ {v} S _ {v} \frac {I _ {h}}{N _ {h}} - \mu_ {v} S _ {v} \\ \frac {d I _ {v}}{d t} = \beta_ {v} S _ {v} \frac {I _ {h}}{N _ {h}} - \mu_ {v} I _ {v}. \\ \end{array}
$$

Because $S _ { v } + I _ { v }$ is a constant $N _ { v }$ , we can reduce this model to a three-dimensional problem, 

$$
\frac {d S _ {h}}{d t} = - \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}}
$$

$$
\frac {d I _ {h}}{d t} = \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}} - \gamma I _ {h} \tag {6.7}
$$

$$
\frac {d I _ {v}}{d t} = \beta_ {v} (N _ {v} - I _ {v}) \frac {I _ {h}}{N _ {h}} - \mu_ {v} I _ {v}.
$$

In order to obtain the basic reproduction number, we observe that a single infective host infects 

$$
\frac {\beta_ {h}}{\gamma}
$$

vectors in a wholly susceptible population of vectors, and each of these infects 

$$
\frac {\beta_ {v}}{\mu_ {v}}
$$

hosts in a wholly susceptible host population. Thus the number of secondary infections caused by an infective host (and also the number of secondary vector infections caused by an infective vector) is given by 

$$
\mathcal {R} _ {0} = \frac {\beta_ {h} \beta_ {v}}{\gamma \mu_ {v}}.
$$

However, one could also argue that the transition from host to vector to host should be viewed as two generations, and it may be more reasonable to say that 

$$
\mathcal {R} _ {0} = \sqrt {\frac {\beta_ {h} \beta_ {v}}{\gamma \mu_ {v}}}.
$$

With either choice, the transition is at $\mathcal { R } _ { 0 } = 1$ . 

It is possible to prove that there is an epidemic if and only if $\mathcal { R } _ { 0 } > 1$ . 

A model for dengue fever of the form (6.7) has been studied in [15]. In terms of the above model, with time measured in days, this model has parameter values with $\mu _ { h }$ much smaller than $\mu _ { v }$ and $\beta _ { h }$ much smaller than $\beta _ { v }$ , expressing the fact that the vector dynamics are much faster than the host dynamics, and this suggests a model 

$$
\frac {d S _ {h}}{d t} = - \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}}
$$

$$
\frac {d I _ {h}}{d t} = \beta_ {h} S _ {h} \frac {I _ {v}}{N _ {v}} - \alpha I _ {h} \tag {6.8}
$$

$$
\epsilon \frac {d I _ {v}}{d t} = \beta_ {v} (N _ {v} - I _ {v}) \frac {I _ {h}}{N _ {h}} - \mu_ {v} I _ {v},
$$

with $\textbf { \ ' { \epsilon } } \textbf { a }$ small positive constant. 

Other models describing two time scales may be found in [18, 19]. In fact, such a form is valid for all vector disease transmission models in which the vector population size is much greater than the host population size. We assume that $N _ { h } < < N _ { v }$ , and we let 

$$
\epsilon = \frac {N _ {h}}{N _ {v}} <   <   1. \tag {6.9}
$$

Then, if we replace $N _ { h }$ by $\epsilon N _ { v }$ (6.7) becomes 

$$
\frac {d S _ {h}}{d t} = - \beta_ {h} S _ {h} I _ {v}
$$

$$
\frac {d I _ {h}}{d t} = \beta_ {h} S _ {h} I _ {v} - \alpha I _ {h} \tag {6.10}
$$

$$
\epsilon \frac {d I _ {v}}{d t} = \beta_ {v} (N _ {v} - I _ {v}) \frac {I _ {h}}{N _ {v}} - \frac {N _ {h}}{N _ {v}} \mu_ {v} I _ {v}.
$$

For differential equations or systems of differential equations which depend on a parameter there is a general theorem to the effect that solutions are continuous functions of the parameter on any finite interval. However, if a derivative is multiplied by a parameter which may be allowed to tend to zero, this is not necessarily true. Such a situation is called a singular perturbation. Many problems in the biological sciences involve actions on very different time scales, and these may lead to a rapid change in some of the variables on a very short initial time interval, while other variables act more slowly. 

## 6.3.1 Singular Perturbations

Singular perturbation problems arise in models (systems of differential equations) containing a small parameter , of the form 

$$
\epsilon \frac {d y}{d \tau} = f (y, z, \epsilon), \quad y (0) = y _ {0} \tag {6.11}
$$

$$
\frac {d z}{d \tau} = g (y, z, \epsilon), \quad z (0) = z _ {0}
$$

with solution $( y ( \tau , \epsilon ) , z ( \tau , \epsilon ) )$ . There is a corresponding reduced system obtained by setting $\epsilon = 0$ , 

$$
f (y, z, 0) = 0 \tag {6.12}
$$

$$
\frac {d z}{d \tau} = g (y, z, 0), \quad z (0) = z _ {0}
$$

with solution $( y _ { 0 } ( \tau ) , z _ { 0 } ( \tau ) )$ . 

Since  is assumed to be small, the form (6.11) suggests that the y reaction time is much faster than the z reaction time. Thus y goes to its equilibrium value rapidly, and at its equilibrium $f ( y , z , 0 ) ~ = ~ 0$ . Then we might expect that the reduced problem (6.12) is a good approximation to the full problem (6.11) after a short initial time interval near $\tau = 0$ during which y moves to its equilibrium value. In applications one often makes a quasi-steady-state hypothesis that y remains almost constant, so that $\begin{array} { r } { \frac { d y } { d \tau } \approx 0 } \end{array}$ . This hypothesis is expressed as $f ( y , z , 0 ) = 0 ;$ ; in singular perturbation language the hypothesis is just that the full problem is approximated by the reduced problem. 

Because (6.12) is a first-order differential equation (which requires one initial condition to identify a unique solution) and (6.11) is a two-dimensional system (requiring two initial conditions for a unique solution) we must expect to lose an initial condition in the reduction, and this suggests that the solutions of (6.12) and (6.11) (each derived on a different time scale) may not agree close to $\tau = 0$ . Because $y ( \tau , \epsilon )$ (the solution to the full problem) and $y _ { 0 } ( \tau )$ (the solution to the reduced problem) do not match at $\tau = 0$ , we should expect that $y ( \tau , \epsilon )$ changes rapidly for t close to 0. It is possible to analyze this by making a change of independent variable to change from the slow time scale to the fast time scale. However, since our interest is mainly in the long-term behavior of the system we do not explore this further here. 

If the partial derivative $f _ { v } ( y , z , 0 ) \neq 0$ we may solve the equation $f ( y , z , 0 ) = 0$ for y as a function of $z , y = \phi ( z )$ . Thus the reduced system (6.12) is equivalent to the first-order initial value problem 

$$
\frac {d z}{d \tau} = g (\phi (z), z, 0), \quad z (0) = z _ {0}. \tag {6.13}
$$

Then we have the solution of (6.12) with $z _ { 0 } ( \tau )$ the solution of (6.13) and $y _ { 0 } ( \tau ) =$ $\phi ( z _ { 0 } ( \tau ) )$ , and $y _ { 0 } ( 0 ) = \phi ( z _ { 0 } ) . { \mathrm { ~ I f ~ } } y _ { 0 } \neq \phi ( z _ { 0 } )$ it is not possible for the solution of the reduced problem (6.12) to satisfy the two initial conditions of the full problem (6.11). The solution $( y _ { 0 } ( \tau ) , z _ { 0 } ( \tau ) )$ of the reduced problem is called the outer solution. In order to use the solution of the reduced problem (6.12) as an approximation to the solution of the full problem (6.11), we would need a result to the effect that for each t away from $t = 0$ the solution of the reduced problem (6.12) is the limit as $\epsilon  0$ of the solution of the full problem (6.11). 

A change of time scale $\tau = \epsilon t$ transforms the system (6.11) to the system 

$$
\frac {d y}{d t} = f (y, z, \epsilon), \quad y (0) = y _ {0} \tag {6.14}
$$

$$
\frac {d z}{d t} = \epsilon g (y, z, \epsilon), \quad z (0) = z _ {0}.
$$

The second equation of (6.14) says that the second variable $z$ remains almost constant on a large t-interval corresponding to a small τ -interval. This suggests considering the initial value problem 

$$
\frac {d y}{d t} = f (y, z _ {0}, 0), \quad y (0) = y _ {0}, \tag {6.15}
$$

called the boundary layer system, as an approximation valid on a small t-interval called the boundary layer. 

The mathematical treatment of singular perturbations began in the 1940s from the perspective of asymptotic expansions. A few years later the qualitative result which justifies the use of the reduced system as an approximation to the full system was obtained independently in the USA and the Soviet Union [12, 20]. 

## Theorem 6.1 (Levinson–Tihonov) Suppose that

1. $f , g$ are smooth functions, 

2. the equation $f ( y , z , 0 ) = 0$ can be solved for y as a smooth function of $z , y =$ $\phi ( z )$ , 

3. the reduced system (6.12) has a solution on an interval $0 \leq \tau \leq T$ , 

4. the boundary layer system (6.15) has an asymptotically stable equilibrium. 

Then $y ( \tau , \epsilon ) \to y _ { 0 } ( \tau ) , z ( t , \epsilon ) \to z _ { 0 } ( \tau ) a s \epsilon \to 0 + f o r 0 < \tau \leq T$ . The convergence of y is non-uniform at $\tau = 0$ . 

There is an extension of this result to infinite time intervals [9] 

Theorem 6.2 Suppose, in addition to the hypotheses of the Levinson–Tihonov theorem that the reduced system (6.12) has a solution which is asymptotically stable and that the boundary layer system (6.15) has a solution which is asymptotically stable uniformly in $z _ { 0 } .$ . Then the convergence is uniform on closed subsets of $0 < t < \infty$ . 

The essential content of these results is that if  is sufficiently small the solution of the reduced system is a good approximation to the solution of the singularly perturbed system except very close to $t ~ = ~ 0$ . The relation $f ( y , z , 0 ) ~ = ~ 0$ is called the quasi-steady-state. Close to $\tau = 0$ the solution of the boundary layer system (6.15) describes the behavior of solutions. Thus the analysis of a singular perturbation problem can be decomposed into the analysis of two simpler problems, namely the boundary layer system and the reduced problem. Curiously, in fluid dynamic applications the focus of attention has been on the boundary layer system, whereas in most biological applications the primary interest has been in the longterm behavior, that is, the reduced problem. 

The underlying idea in a singular perturbation problem is that there are two different time scales inherent in the problem, and this makes it possible to analyze the problem separately on each time scale. The reduction in dimension because of this separation simplifies the analysis. The singular perturbation idea will be applied to the malaria model of Sect. 11.3 which includes epidemiological and genetic processes that occur on very different time scales. 

## 6.4 A Vector-Borne Epidemic Model

We begin with the epidemic model (6.10), which is in singular perturbation form. The quasi-steady-state, which is the case $\epsilon = 0$ of the equation for $I _ { v }$ in (6.10), is given by the equation 

$$
\beta_ {v} (N _ {v} - I _ {v}) \frac {I _ {h}}{N _ {v}} = \frac {N _ {h}}{N _ {v}} \mu_ {v} I _ {v}.
$$

This expresses $I _ { v }$ as a function of the other variables as 

$$
I _ {v} = \frac {\beta_ {v} N _ {v} I _ {h}}{\beta_ {v} I _ {h} + \mu_ {v} N _ {h}}. \tag {6.16}
$$

We substitute this form for $I _ { v }$ into the equations for $S _ { h }$ and $I _ { h }$ to give the reduced equation 

$$
S _ {h} ^ {\prime} = - \beta_ {h} S _ {h} \frac {\beta_ {v} I _ {h}}{\beta_ {v} I _ {h} + \mu_ {v} N _ {h}} \tag {6.17}
$$

$$
I _ {h} ^ {\prime} = \beta_ {h} S _ {h} \frac {\beta_ {v} I _ {h}}{\beta_ {v} I _ {h} + \mu_ {v} N _ {h}} - \alpha I _ {h}.
$$

This approach gives a way to formulate models for vector-transmitted diseases which consist of a system involving only the host variables. While this system is two-dimensional and the original system is three-dimensional, it does have a more complicated form. 

## 6.4.1 A Final Size Relation

Addition of the first two equations of (6.17) (or (6.10)) gives 

$$
(S _ {h} + I _ {h}) ^ {\prime} = - \alpha_ {h} I _ {h}.
$$

Thus $S _ { h } + I _ { h }$ is a decreasing non-negative function and tends to a limit as $t \to \infty$ . Also, its derivative tends to zero, so that $I _ { h } ( t ) \to 0$ as $t  \infty$ . Integration of this equation with respect to t from 0 to gives 

$$
N _ {h} - S _ {h} (\infty) = \alpha \int_ {0} ^ {\infty} I _ {h} (t) d t. \tag {6.18}
$$

Division of the first equation of (6.17) by $S _ { h }$ and integration gives 

$$
\log \frac {S _ {h} (0)}{S _ {h} (\infty)} = \beta_ {h} \beta_ {v} \int_ {0} ^ {\infty} \frac {I _ {h} (t)}{\mu_ {v} N _ {h} + \beta_ {v} I _ {h} (t)} d t.
$$

Since 

$$
\mu_ {v} N _ {h} \leq \mu_ {v} N _ {h} + \beta_ {v} I _ {h} \leq (\mu_ {v} + \beta_ {v}) N _ {h},
$$

we obtain 

$$
\begin{array}{l} \log \frac {S _ {h} (0)}{S _ {h} (\infty)} \leq \frac {\beta_ {h} \beta_ {v}}{\mu_ {v} N _ {h}} \int_ {0} ^ {\infty} I _ {h} (t) d t \\ = \frac {\beta_ {h} \beta_ {v}}{\mu_ {v} \alpha} [ N _ {h} - S _ {h} (\infty) ] \\ = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {h} (\infty)}{N _ {h}} \right], \tag {6.19} \\ \end{array}
$$

and 

$$
\begin{array}{l} \log \frac {S _ {h} (0)}{S _ {h} (\infty)} \geq \frac {\beta_ {h} \beta_ {v}}{(\mu_ {v} + \beta_ {v}) N _ {h}} \int_ {0} ^ {\infty} I _ {h} (t) d t \\ = \frac {\mu_ {v}}{\mu_ {v} + \beta_ {v}} \mathcal {R} _ {0} \left[ 1 - \frac {S _ {h} (\infty)}{N _ {h}} \right]. \tag {6.20} \\ \end{array}
$$

Combining (6.19) and (6.20) we obtain the two-sided estimate final size relation 

$$
\frac {\mu_ {v}}{\mu_ {v} + \beta_ {v}} \mathcal {R} _ {0} \left[ 1 - \frac {S _ {h} (\infty)}{N _ {h}} \right] \leq \log \frac {S _ {h} (0)}{S _ {h} (\infty)} \leq \mathcal {R} _ {0} \left[ 1 - \frac {S _ {h} (\infty)}{N _ {h}} \right]. \tag {6.21}
$$

This final size estimate gives upper and lower bounds for $S _ { h } ( \infty )$ . Further information about this topic may be found in [1, 2]. 

## 6.5 *Project: An SEI R/SEI Model

Consider the SEIR/SEI epidemic model 

$$
S _ {h} ^ {\prime} = - \beta_ {v} S _ {h} I _ {v} - \mu_ {h} S _ {h} \tag {6.22}
$$

$$
E _ {h} ^ {\prime} = \beta_ {v} S _ {h} I _ {v} - (\eta_ {h} + \mu_ {h}) E _ {h}
$$

$$
I _ {h} ^ {\prime} = \eta_ {h} E _ {h} - (\alpha + \mu_ {h}) I _ {h}
$$

$$
S _ {v} ^ {\prime} = \mu_ {v} N _ {v} - \beta_ {h} S _ {v} I _ {h} - \mu_ {v} S _ {v}
$$

$$
E _ {v} ^ {\prime} = \beta_ {h} S _ {v} I _ {h} - (\eta_ {v} + \mu_ {v}) E _ {v}
$$

$$
{I _ {v} ^ {\prime}} {= \eta_ {v} E _ {v} - \mu_ {v} I _ {v}.}
$$

Assume that the vector dynamics are much faster than the host dynamics. 

Question 1 Determine the basic reproduction number of the system (6.22). 

Question 2 Consider the model (6.22) as a two time scale system and find the quasisteady-state. 

Question 3 Obtain a final size relation for the model (6.22). 

## 6.6 *Project: Models for Onchocerciasis

Onchocerciasis, also known as “River Blindness” is a vector-borne disease that affects the skin and eyes of humans. It is endemic in parts of Africa, Yemen, and Central America, and is especially prevalent in sub-Saharan Africa. It is transmitted by Onchocerca volvulus, a parasitic worm whose life cycle includes five larval stages, including a stage that requires a human host and another stage that requires a black fly host. 

The peak biting time for black flies is during the daylight hours, and the black flies remain near their breeding sites on well-oxygenated water. Thus communities on the river’s edge are most at risk. The vector stage is very complicated, and it would be difficult to include all of its stages in a model. We will assume a constant total vector population size with an SI model for vectors. 

The standard medication for treatment of onchocerciasis is ivermectin [8]; oral administration kills larvae rapidly but does not kill the adult worms. However, it does reduce their reproductive rate for several months [5, 14]. Ivermectin treatment is available to a fraction $p$ of the population, limited by restrictions on who can receive the medication, limited health care, and willingness to participate. 

For humans we assume a model of SEI R type but with infectives divided into those who do not participate in treatment (I), participants who are not yet being treated (P), and infectives who have received ivermectin treatment (M). We let $H =$ $P + M$ , the population of infected hosts who are currently or will eventually be treated. 

Because the total human population size $N = S + E + I + H$ and the total vector population size $F = U + V$ are constants, we do not need differential equations for S and $U$ . The effective human population size is $W = I + P + ( 1 - \nu ) M =$ $I + H - \nu M$ , where ν is the relative decrease in infectivity of a medicated host compared to an untreated host. In reality, ν is 1 shortly after treatment but falls gradually to about 0.35. We will take $\nu$ to have a constant value of 0.6. We assume proportional death rates $\mu$ for hosts and $d$ for vectors a rate $\sigma$ of progression from exposed to infective stage for hosts. The rates of progression from $E$ to $P$ and I are $p \sigma$ and $q \sigma$ , respectively, where $q \ = \ 1 - \ p .$ . The progression rate from the premedication class $P$ to the medicated class M is $\varphi .$ . Since infected humans recover only through the death of all adult worms, there is a rate of recovery of all infected host classes $\gamma$ . With time measured in years, approximate parameter values are 

$$
\mu = 0. 0 2, d = 1 2, \sigma = 1, p = 0. 6 5, \varphi = 2, \nu = 0. 6, \gamma = 0. 8.
$$

The values of the contact rate $\beta$ and the infection rate $\alpha$ are difficult to measure. Since N is constant, we can omit $S = N - E - I - R$ from the model. 

The model is 

$$
\frac {d E}{d t} = \beta S V - (\sigma + \mu) E
$$

$$
\frac {d I}{d t} = q \sigma E - (\gamma + \mu) I
$$

$$
\frac {d H}{d t} = p \sigma E - (\gamma + \mu) H \tag {6.23}
$$

$$
\frac {d M}{d t} = \varphi H - (\varphi + \gamma + \mu) M
$$

$$
\frac {d V}{d t} = \alpha (F - V) W - d V.
$$

The parameters α and $\beta$ can be estimated from known endemic fractions of infected humans and vectors in the absence of ivermectin treatment. Field estimates from Cameroon suggest 

$$
\alpha = \frac {1 . 0 8}{N}, \quad \beta = \frac {0 . 3}{F}.
$$

Question 1 Use the next generation matrix to obtain an expression for the basic reproduction number $\mathcal { R } _ { 0 }$ and estimate a numerical value for $\mathcal { R } _ { 0 }$ using the given parameter values. 

Question 2 We rescale the system (6.23) with respect to the constant total host population size N and the constant total vector population size F . We make the substitutions 

$$
S = N x, E = N y, I = N i, H = N h, M = N m, V = F v, W = F w.
$$

Obtain the resulting system, with $a = \alpha / d $ , 

$$
\frac {d y}{d t} = \beta x v - (\sigma + \mu) y
$$

$$
\frac {d i}{d t} = q \sigma y - (\gamma + \mu) i
$$

$$
\frac {d h}{d t} = p \sigma y - (\gamma + \mu) h \tag {6.24}
$$

$$
\frac {d m}{d t} = \varphi h - (\varphi + \gamma + \mu) m
$$

$$
\frac {1}{d} \frac {d v}{d t} = a w (1 - v) - v.
$$

Question 3 Rescale the system (6.24) further by making a change of independent variable $\tau = ( \gamma + \mu ) t$ . 

Question 4 The model (6.24) has different time scales for vectors and hosts. We may view it as a singular perturbation and approximate it by letting $1 / d  0$ . There is a quasi-steady state given by $a w ( 1 - v ) - v = 0$ or 

$$
v = \frac {a w}{1 + a w}, \tag {6.25}
$$

and the model is given by the first four equations of (6.24) together with (6.25). The error in this approximation to (6.24) is in the boundary layer close to $t \ =$ 0. Show that the reduced model has a disease-free equilibrium $y = 1 , i = h =$ $m = 0$ . Determine the basic reproduction number $\mathcal { R } _ { 0 }$ and show that the diseasefree equilibrium is asymptotically stable if $\mathcal { R } _ { 0 } < 1$ . Show that there is an endemic equilibrium which is asymptotically stable if $\mathcal { R } _ { 0 } > 1$ . 

In practice, delivery of ivermectin is administered at fixed intervals. This suggests that a pulse vaccination model would be appropriate, and this would admit the possibility of stable periodic orbits. However, we do not explore this generalization here. 

References: [7, 11]. 

## 6.7 Exercises

1. Consider the model 



5. Coffeng, L.E., W.A. Stolk, HGM Zouré, J.L. Vetterman, & K.B. Agblewonu (2013) African programme for onchocerciasis control 1995–2015:Model-estimated health impact and cost, PLoS Neglected tropical diseases, 7: e2032. https://doi.org/10.13571/journal.ptnd.0002032. 



$$
S _ {h} ^ {\prime} = \varLambda_ {h} (N _ {h}) - \beta_ {h} S _ {h} I _ {v} - \mu_ {h} S _ {h}
$$



6. Cushing, J.M. & O. Diekmann (2016) The many guises of $\mathcal { R } _ { 0 }$ (a didactic note), J. Theor. Biol. 404: 295–302. 



$$
I _ {h} ^ {\prime} = \beta_ {h} S _ {h} I _ {v} - (\mu_ {h} + \alpha_ {h}) I _ {h}
$$



7. Dietz, K. (1982) The population dynamics of onchocerciasis, in Population Dynamics of Infectious Diseases (R.m. Anderson, ed.), Chapman and Hall, London, pp.209–241. 



$$
S _ {v} ^ {\prime} = \varLambda_ {v} (N _ {v}) - \beta_ {h} S _ {v} I _ {h} - \mu_ {v} S _ {v}
$$



8. Hopkins, A. and B.A. Boatin (2011) Onchocerciasis, water and sanitation-related diseases and the environment: Challenges, interventions, and preventive measures (J.M.H. Selendi, ed.), John Wiley and Sons: pp.133–149. 



$$
I _ {v} ^ {\prime} = \beta_ {v} S _ {v} I _ {h} - \mu_ {v} I _ {v},
$$



9. Hoppensteadt, F.C. (1966) Singular perturbations on the infinite interval, Trans. Amer. Math. Soc. 123: 521–535. 



a simple model for malaria with a host species (h) and a vector species (v) under the assumptions $\varLambda _ { i } ( N _ { h } ) = \mu _ { i } N _ { i } , i = h , v$ , and $\alpha _ { h } = 0$ . 



10. Kucharski, A.J., S. Funk, R.M. Egge, H-P. Mallet, W.J. Edmunds and E.J. Nilles (2016) Transmission dynamics of Zika virus in island populations: a modelling analysis of the 2013– 14 French Polynesia outbreak, PLOS Neglected tropical Diseases DOI 101371 



(a) Derive the expression of $\mathcal { R } _ { 0 }$ . 



11. Ledder, G., D. Sylvester, R.R. Bouchat, and J.A. Thiel (2017) Continued and pulsed epidemiological models for onchocerciasis with implications for eradication strategy, Math. Biosc. & Eng., to appear. 



(b) Find all possible equilibrium points. 



12. Levinson, N. (1950) Perturbations of discontinuous solutions of nonlinear systems of differential equations, Acta Math. 82: 71–106. 



(c) Find the conditions (in terms of $\mathcal { R } _ { 0 } )$ under which an endemic equilibrium exists. 



13. Pinho, S.T.R., C.P. Ferreira, L. Esteva, F.R.Barreto, V.C. Morato e Silva and M.G.L Teixeira (2010) Modelling the dynamics of dengue real epidemics, Phil. Trans. Roy. Soc. A 368: 5679– 5693. 



(d) Determine the critical value of $\beta _ { v c }$ such that $\mathcal { R } _ { 0 } < 1$ for all $\beta _ { v } < \beta _ { v c }$ 



14. Plaisier,A.P., E.S. Alley, B.A. Boutin, G.J. van Oortmasrssen, & H. Remme (1995) Irreversible effects of ivermectin on adult parasites in onchocerciasis patients in the onchocerciasis control programme in West Africa, J. Inf. Diseases 172; 204–210. 





15. Rocha, F., M. Aguiar, M. Souza, & N. Stollenwerk (2013) Time-scale separation and centre manifold analysis describing vector-borne disease dynamics, Int. J. Comp. Math 90: 2105– 2125. 



2. Consider the model 



16. Ross, R. (1911) The Prevention of Malaria, 2nd ed., (with Addendum), John Murray, London. 



$$
S _ {h} ^ {\prime} = - \beta_ {h} S _ {h} I _ {v}
$$



17. Segel, L.A. & M. Slemrod (1989) The quasi-steady-state assumption: A case study in perturbation, SIAM Review 31: 446–477. 



$$
I _ {h} ^ {\prime} = \beta_ {h} S _ {h} I _ {v} - \alpha_ {h} I _ {h}
$$



18. Souza, M.O. (2014) Multiscale analysis for a vector-borne epidemic model (2014) J. Math. Biol. 68: 1269–1291. 



$$
S _ {v} ^ {\prime} = \varLambda_ {v} (N _ {v}) - \beta_ {v} S _ {v} I _ {h} - \mu_ {v} S _ {v} - \sigma S _ {v}
$$



19. Takeuchi, Y., W. Ma, & E. Beretta (2000) Global asymptotic properties of a delay SI R epidemic model with finite incubation times, Nonlin. Analysis 42; 931–947. 



$$
I _ {v} ^ {\prime} = \beta_ {v} S _ {v} I _ {h} - \mu_ {v} I _ {v} - \sigma S _ {v},
$$



20. Tihonov, A.N. (1948) On the dependence of the solutions of differential equations on a small parameter, Mat. Sbornik NS 22; 193–204. 



describing a vector-borne SI R/SI epidemic model that includes removal of vectors at rate σ . Calculate the basic reproduction number. 



21. van den Driessche, P. and J. Watmough (2002) Reproduction numbers and subthreshold endemic equilibria for compartmental models of disease transmission, Math. Biosc. 180:29– 48. 



3. Formulate a model for a vector-borne epidemic with a rate of treatment of infective hosts, and calculate its reproduction number. 

## References



1. Brauer, F. (2017) A final size relation for epidemic models of vector - transmitted diseases, Infectious Disease Modelling, 2: 12–20. 





2. Brauer, F. (2019) A singular perturbation approach to epidemics of vector-transmitted diseases, to appear. 





3. Brauer, F. and C. Kribs (2016) Dynamical Systems for Biological Modeling: An Introduction, CRC Press. 





4. Chowell, G., P. Diaz-Duenas, J.C. Miller, A. Alcazar-Velasco, J.M. Hyman, P.W. Fenimore, and C. Castillo-Chavez (2007) Estimation of the reproduction number of dengue fever from spatial epidemic data, Math. Biosc. 208: 571–589. 



## Part II

## Models for Specific Diseases

# Chapter 7 Models for Tuberculosis

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/9552f0c5640e4d4d22573315de963d2b2c579d061071c8fdb9cdded3a2043e4f.jpg)


In this chapter we describe several models for tuberculosis (TB). The disease is endemic in many areas of the world. The models in this chapter will be extensions of the standard SIR or SEIR type of endemic models presented in Chap. 3. Depending on the typical characteristics of a specific disease, various modifications of the standard models will be considered. 

According to the recent WHO report [25], there were 8.6 million new TB cases in 2012 and 1.3 million TB deaths. TB remains a major global health problem and is the leading cause of death by an infectious disease, after the human immunodeficiency virus (HIV). It is reported that about three million people who developed TB in 2012 were missed by national notification systems. Key actions needed to detect people with the illness and ensure that they get the right treatment and care include: expanded services (including rapid tests) throughout health systems bolstered by the support of nongovernmental organizations, community workers, and volunteers to diagnose and report cases. 

A typical epidemiological feature associated with TB is its long period of latency. As pointed out by G.W. Comstock, “tuberculosis is an infectious disease with an incubation period from weeks to a lifetime.” Figure 7.1 illustrates that TB has a long and variable period of latency. Treating a patient with an active TB is more difficult and requires a much longer time to complete the treatment than treating a latent TB infection (LTBI). This makes it important to identify and treat latent people before they develop the disease. One of the approaches to achieve this is through screening. However, such screening programs require resources. An optimal control problem can be formulated using mathematical models for TB. 

Figure 7.2 shows the data from observation in adolescents who had developed clinical tuberculosis following primary infection [24]. It suggests that among the 10% of latent individuals who eventually develop active TB, around 60% will do so during the first year post-infection. The rest will develop active TB in either 2 years (20%), 5 years (15%), 20 years (5%), or even longer. 


Fig. 7.1 A diagram showing the progression from latent to active TB during the period of infection (adopted from www. biomerieux-Rdiagnos6cs.ˇ com). It shows that only about 10% of latently infected will develop active TB and 5% of those will stay in the latent stage for long time


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/ef5ba7894e7c02baad45aa46f58177c2972617475774dfa4c3a494c3d71aaaeb.jpg)



Fig. 7.2 An example of distribution of progression from latent to active TB [24]


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/82f52f100bb2190a57324907c09cf93f64553ce1f6f44b4690174ab6e8089d37.jpg)


The good news is that latent and active TB can be treated with antibiotics. The bad news is that its treatment has side effects (sometimes quite serious) and takes a long time. Carriers of the tubercle bacillus who have not developed TB disease can be treated with a single drug INH; unfortunately, it must be taken religiously for 6 months [6]. Treatment for those with active TB requires the simultaneous use of three drugs for a period of about 9 months. Lack of compliance with these drug treatments (a very serious problem) may lead to not only a relapse but also to the development of multidrug-resistant TB (MDR-TB)—one of the most serious public health problems facing society today. According to the WHO report [25], globally in 2012, approximately 450,000 people developed MDR-TB and there were approximately 170,000 deaths from MDR-TB. An individual can become infected with the resistant strain of TB in two ways, one is the so-called primary resistance which is obtained by direct transmission from someone with resistant TB, and the other is the acquired resistance which is developed from the sensitive TB due to incomplete or inappropriate treatment. This also creates a challenge for designing treatment policy, and should be incorporated in the modeling of optimal control for TB. 

In this chapter we present several TB models that can be used to study the above mentioned problems. We begin with a relatively simple TB model with a single strain, and then extend it to include both drug-sensitive and drug-resistant strains. The two-strain model will be further extended to include two control measures representing “case-finding” (i.e., identifying people with LTBI) and “case-holding” (i.e., making sure the treatment of active TB infections is complete) and study the optimal control strategies. 

## 7.1 A One-Strain Model with Treatment

Because there is no permanent immunity and an individual after treatment for TB can still become infected with possibly reduced susceptibility, we divide the population into four epidemiological classes: susceptible (S), latently infected (L), infectious (I), and treated (T). Assume that latent and infectious individuals are treated at rates $r _ { 1 }$ and $r _ { 2 }$ , respectively, and latent individuals develop active TB at rate $\kappa .$ . The model reads 

$$
\begin{array}{l} S ^ {\prime} = \mu N - c S \frac {I}{N} - \mu S + r _ {1} L + r _ {2} I, \\ L ^ {\prime} = c S \frac {I}{N} + c ^ {*} T \frac {I}{N} - (\kappa + r _ {1} + \mu) L, \tag {7.1} \\ \end{array}
$$

$$
I ^ {\prime} = \kappa L - (r _ {2} + \mu) I,
$$

$$
T ^ {\prime} = r _ {1} L + r _ {2} I - c ^ {*} T \frac {I}{N} - \mu T,
$$

where $N = S + L + I + T$ is the total population, which will remain constant for all time due to the balanced birth and natural death rate $\mu .$ . The parameters c and $c ^ { * }$ denote the average numbers of susceptible and treated individuals, respectively, infected by one infective individual per unit of time. If the treated individuals have a reduced susceptibility to infection, then $c ^ { * } < c$ . 

The dynamics of system (7.1) is standard in the sense that the disease will either go extinct or persist depending on whether the reproduction number 

$$
\mathcal {R} _ {0} = \frac {c \kappa}{(\kappa + r _ {1} + \mu) (r _ {2} + \mu)} \tag {7.2}
$$

is less or greater than 1. It is clear from (7.2) that $\mathcal { R } _ { 0 }$ is a decreasing function of treatment rates $r _ { 1 }$ and $r _ { 2 }$ . The effect of treatment on the disease prevalence can be examined by considering the fraction of infectives $I / N$ at the endemic equilibrium in the case $\mathcal { R } _ { 0 } > 1$ . In the simpler case when $c = c ^ { * }$ , the equilibrium value of $I / N$ is given by 

$$
\frac {I ^ {*}}{N ^ {*}} = \frac {\kappa}{\kappa + r _ {2} + \mu} \left(1 - \frac {1}{\mathcal {R} _ {0}}\right), \tag {7.3}
$$

which is a decreasing function of $r _ { 1 }$ and $r _ { 2 }$ as well. This shows that in the absence of the resistant strain, treatment is beneficial in reducing the disease burden. This is not the case when a resistant strain is considered, as shown in the two-strain model presented next. 

## 7.2 A Two-Strain TB Model

As mentioned earlier, treatment of active TB may take as long as 12 months, and lack of compliance with these treatments may lead to the development of antibiotic resistant TB. The one-strain model (7.1) can be extended to include both drug-sensitive (DS) and drug-resistant (DR) strains of TB, with possible development of resistance due to treatment failure. A transition diagram between the epidemiological classes is shown in Fig. 7.3. The latent and infectious individuals with sensitive TB are denoted by $L _ { 1 }$ and $I _ { 1 }$ , respectively. Two additional classes are included for the resistant strain, i.e., the latent and infectious classes with resistant strain denoted by $L _ { 2 }$ and $I _ { 2 }$ , respectively. The sensitive and resistant strains will be referred to as strain 1 and 2, respectively. Because it is very hard to cure a patient with resistant TB, we ignore the treatment of the resistant strain. Furthermore, assume that $I _ { 2 }$ individuals can infect S, $L _ { 1 }$ , and $T$ individuals. The λ functions represent the forces of infection, which are given by 

$$
\lambda_ {i} (t) = c _ {i} \frac {I _ {i}}{N}, \quad \lambda_ {1} ^ {*} (t) = c _ {1} ^ {*} \frac {I _ {1}}{N}, \quad i = 1, 2,
$$

where $c _ { 1 }$ and $c _ { 1 } ^ { * }$ have the meaning as $c$ and $c ^ { * }$ in the one-strain model $( 7 . 1 ) ; c _ { 2 }$ is similar to $c _ { 1 }$ but for the resistant strain; $r _ { i } ( i = 1 , 2 )$ and $\mu$ are the same as in (7.1); $\kappa _ { i }$ denotes the progression rate from latent to infectious stage of strain i. 


Fig. 7.3 A diagram for the two-strain TB model showing transitions between the epidemiological classes. The thicker arrow and the rate $q r _ { 2 }$ represent the development of resistant TB due to the failure of treatment for infections with the sensitive strain. The birth and death rates are omitted


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/657e272ffacae5badbac4b9ba702d13e8b9bfb73bc6dd85d904c0bb28bf001e9.jpg)


The additional parameters are related to treatment failure and the development of resistant TB. For example, $p + q$ denotes the proportion of those treated infectious individuals who did not complete their treatment, where the proportion $p$ modifies the rate that departs from the sensitive TB latent class; $q r _ { 2 } I _ { 1 }$ gives the rate at which individuals develop resistant TB because they did not complete the treatment of active TB. Therefore, $p \ge 0 , q \ge 0$ and $p + q \leq 1$ . From the disease transmission diagram (see Fig. 7.3) we can write the following system of ordinary differential equations: 

$$
S ^ {\prime} = \mu N - c _ {1} S \frac {I _ {1}}{N} - c _ {2} S \frac {I _ {2}}{N} - \mu S,
$$

$$
L _ {1} ^ {\prime} = c _ {1} S \frac {I _ {1}}{N} - (\mu + \kappa_ {1}) L _ {1} - r _ {1} L _ {1} + p r _ {2} I _ {1} + c _ {1} ^ {*} T \frac {I _ {1}}{N} - c _ {2} L _ {1} \frac {I _ {2}}{N},
$$

$$
I _ {1} ^ {\prime} = \kappa_ {1} L _ {1} - \mu I _ {1} - r _ {2} I _ {1}, \tag {7.4}
$$

$$
L _ {2} ^ {\prime} = q r _ {2} I _ {1} - (\mu + \kappa_ {2}) L _ {2} + c _ {2} (S + L _ {1} + T) \frac {I _ {2}}{N},
$$

$$
I _ {2} = \kappa_ {2} L _ {2} - \mu I _ {2},
$$

$$
T ^ {\prime} = r _ {1} L _ {1} + (1 - p - q) r _ {2} I _ {1} - c _ {1} ^ {*} T \frac {I _ {1}}{N} - c _ {2} T \frac {I _ {2}}{N} - \mu T,
$$

where $N = S + L _ { 1 } + I _ { 1 } + T + L _ { 2 } + I _ { 2 }$ is the total population, which remains constant. 

The detailed analysis of the model (7.4) is presented in [4]. System (7.4) has up to four possible equilibria denoted by $E _ { 0 }$ (infection-free), $E _ { 1 }$ (only the sensitive strain is present), $E _ { 2 }$ (only the resistant strain is present), and $E ^ { * }$ (coexistence of both strains). The existence of these equilibria depends on the reproduction numbers for the sensitive and resistant strains, which are given by 

$$
\mathcal {R} _ {S} = \left(\frac {c _ {1} + p r _ {2}}{\mu + r _ {2}}\right) \left(\frac {\kappa_ {1}}{\mu + \kappa_ {1} + r _ {1}}\right) \tag {7.5}
$$

and 

$$
\mathcal {R} _ {R} = \left(\frac {c _ {2}}{\mu}\right) \left(\frac {\kappa_ {2}}{\mu + \kappa_ {2}}\right), \tag {7.6}
$$

respectively. 

The dynamics of system (7.4) are dramatically different for the cases $q \ = \ 0$ and $q > 0$ (development of resistant TB due to treatment failure), particularly in terms of the number of equilibria and their stability, as well as the likelihood for coexistence of both strains. In addition to the reproduction numbers, there are two functions, $\mathcal { R } _ { R } = f ( \mathcal { R } _ { S } )$ and $\mathcal { R } _ { R } = g ( \mathcal { R } _ { S } )$ , which divide the parameter region in the $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ plane into sub-regions for the stability of equilibria: 

$$
f (\mathcal {R} _ {S}) = \frac {1}{1 + \frac {1 - \mathcal {R} _ {S}}{(\mathcal {R} _ {S} - A B) (1 + 1 / B)}} \tag {7.7}
$$

$$
g (\mathcal {R} _ {S}) = \frac {1}{C} \left(A B + C - 1 \pm \sqrt {(A B + C - 1) ^ {2} + 4 (\mathcal {R} _ {S} - A B) C}\right),
$$

for $\mathcal { R } _ { S } \geq 1$ where 

$$
A = \frac {p r _ {2}}{\mu + \kappa_ {1} + r _ {1}}, \quad B = \frac {\kappa_ {1}}{\mu + d _ {1} + r _ {2}}, \quad C = \frac {\mu}{\mu + \kappa_ {1} + r _ {1}}.
$$

The properties of f and g include 

$$
f (1) = g (1) = 1, \quad f (\mathcal {R} _ {S}) <   g (\mathcal {R} _ {S}) \quad \text { for } \mathcal {R} _ {S} > 1
$$

(see Fig. 7.4). The two curves of f and g and the lines $\mathcal { R } _ { i } = 1 ( i = S , R )$ divide the first quadrant of the $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ plane into either four regions in the case $q = 0$ (see Fig. 7.4a) or three regions in the case $q > 0$ (see Fig. 7.4b). The stability results for system (7.4) in the case of $q = 0$ and $q > 0$ are summarized in Theorems 7.1 and 7.2, respectively. 

Theorem 7.1 Assume $q = 0 .$ . Let Regions I –I V be as in Fig. 7.4a. 

(a) The disease-free equilibrium $E _ { 0 }$ is g.a.s. $i f ( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ is in Region I . 

(b) For $\mathcal { R } _ { S } ~ > ~ 1$ , the boundary equilibrium $E _ { 1 }$ is locally asymptotically stable if $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ is in Region II and unstable in Regions III and IV . 

(c) $F o r \mathcal { R } _ { R } > 1$ , the boundary equilibrium $E _ { 2 }$ is locally asymptotically stable if $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ is in Region I V and unstable if in Regions I I and I I I . 

(d) The coexistence equilibrium $E ^ { * }$ exists and is locally asymptotically stable if $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ is in Region I I I . 

When $q > 0$ , the equilibrium $E _ { 1 }$ (sensitive strain only) is never stable, and the coexistence region $I I I$ is much larger than that in the case of $q = 0$ , as stated in the following theorem and illustrated in Fig. 7.4b. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/c1c21a49970bb1b983dd1be2dda9a4c3b7c9d0e55d887a83c21949b5734fd7a4.jpg)



(a)q=0


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/d4a5c76d5cb6c0ec44a680e20818bc133c76fa06fb96a95bc5fd39e35bdf730e.jpg)



(b)q>0



Fig. 7.4 (a) A bifurcation diagram for the system in the case $q \ = \ 0 .$ . There are four Regions $I , I I , I I I$ , and I V in the parameter space $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ . In Region $I , E _ { 0 }$ is a global attractor and other equilibria are unstable when they exist. In Regions I I and $I V , E ^ { * }$ does not exist, while $E _ { 1 }$ and $E _ { 2 }$ are locally asymptotically stable, respectively. In Region $I I I , E ^ { * }$ exists and is locally asymptotically stable . (b) A bifurcation diagram for the system in the case $q > 0$ . There are three Regions I , I I I , and $I V$ in the parameter space $\left( \mathcal { R } _ { S } , \mathcal { R } _ { R } \right) \left( E _ { 1 } \right.$ does not exist), in which $E _ { 0 } , \ E _ { 2 }$ , and $E ^ { * }$ are stable, respectively


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/41e46c1c9b1a6b122c28883c9449a94d451dae7450e2433923aa782eb1e3b930.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/c5dbc48dc2dc0af88819e4204f4cb9dff701bf834d4f91b783e76c634e79865b.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/cdccaf7e4435a82d5eeb89aa365fb219a4189b75bbf1dcf4d2eb4617df19723a.jpg)



Fig. 7.5 Phase portraits of solutions to (7.4) in the case of $q = 0$ . The choice of parameter values gives a fixed value $\mathcal { R } _ { S } ~ = ~ 3 . 4 5$ . In (a) $\mathcal { R } _ { R } ~ = ~ 2$ and $( \mathcal { R } _ { S } , \mathcal { R } _ { R } ) \in \mathrm { I V }$ . In (b) $\mathcal { R } _ { R } \ : = \ : 2 . 4$ and $( \mathcal { R } _ { S } , \mathcal { R } _ { R } ) \in \mathrm { I I I }$ . In (c) $\mathcal { R } _ { R } = 1 . 2$ and $( \mathcal { R } _ { S } , \mathcal { R } _ { R } ) \in \mathbb { I }$ . A circle indicates a stable equilibrium, and a triangle indicates an unstable equilibrium


## Theorem 7.2 Assume that $q > 0 .$ . Let Regions I –I I I be as in Fig. 7.4b.

(a) The disease-free equilibrium $E _ { 1 }$ is g.a.s. $i f \mathcal { R } s < 1$ and $\mathcal { R } _ { R } < 1$ (Region I ). 

(b) For $\mathcal { R } _ { R } > 1$ , the boundary equilibrium $E _ { 2 }$ is locally asymptotically stable if $\mathcal { R } _ { S } < 1 o r i f \mathcal { R } _ { S } > 1$ and $\mathcal { R } _ { R } > g ( \mathcal { R } _ { S } )$ (Region I V ). $E _ { 2 }$ is unstable if $\mathcal { R } _ { S } > 1$ and $\mathcal { R } _ { R } < g ( \mathcal { R } _ { S } )$ (Region I I I ). 

(c) The equilibrium $E _ { 3 }$ exists and is locally asymptotically stable iff $\mathcal { R } _ { S } > 1$ and $\mathcal { R } _ { R } < g ( \mathcal { R } _ { S } ) ( R e g i o n I I I )$ . 

Figure 7.5 shows some simulation results of the model in the case of $q \ : = \ : 0 ;$ , illustrating the disease outcomes for $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ in different regions as shown in Fig. 7.4a. In this figure, the parameter values used are $\mu = 0 . 1 4 3 , c _ { 1 } = 1 3 , \kappa _ { 1 } =$ $1 , q = 0 , p = 0 . 5 , r _ { 1 } = 1 , r _ { 2 } = 2 , \kappa _ { 2 } = 1$ . For this set of values, $\mathcal { R } _ { S } = 3 . 4 5$ . 

Figure 7.5a–c corresponds to different values of $\mathcal { R } _ { R }$ (or equivalently $_ { c _ { 2 } ) }$ , for which $( \mathcal { R } _ { S } , \mathcal { R } _ { R } )$ is in Regions I V , I I I , and I I , respectively. 

These results demonstrate that lack of drug treatment compliance by TB patients may have an important implication for the maintenance of antibiotic resistant strains. To make the role of antibiotic resistance transparent, we first studied a special version of our two-strain model with two competing strains of TB: the typical strain plus a resistant strain that was not the result of antibiotic resistance $( q = 0 )$ . In this last situation, we found that coexistence is possible but rare while later we noticed that coexistence is almost certain when the second strain is the result of antibiotic resistance. In our two-strain model there is a superinfection-like term $c _ { 2 } L _ { 1 } I _ { 2 } / N$ . Is this necessary to obtain the coexistence result because it is well known that superinfection can cause coexistence (see [16, 18])? The answer is no. In fact, it can be shown that in the absence of the superinfection-like term coexistence is still almost the rule when the second strain is the result of antibiotic resistance (see Fig. 7.4). 

## 7.3 Optimal Treatment Strategies

Analysis of the two-strain model in Sect. 7.2 demonstrated that treatment may facilitate the spread of resistant TB and increase the level of TB prevalence. Thus, the effort levels devoted to treating latent and infectious TB individuals may lead to different outcomes. 

Let $u _ { 1 } ( t )$ and $u _ { 2 } ( t )$ denote the time-dependent control efforts, which represent the fractions of individuals in $L _ { 1 }$ and $I _ { 1 }$ classes receiving prophylaxis and drug treatment, respectively, at time t. The state system with controls $u _ { 1 } ( t )$ and $u _ { 2 } ( t )$ reads: 

$$
\begin{array}{l} S ^ {\prime} = \mu N - c _ {1} S \frac {I _ {1}}{N} - c _ {2} S \frac {I _ {2}}{N} - \mu S, \\ L _ {1} ^ {\prime} = c _ {1} S \frac {I _ {1}}{N} - (\mu + \kappa_ {1}) L _ {1} - u _ {1} (t) r _ {1} L _ {1} \\ + (1 - u _ {2} (t)) p r _ {2} I _ {1} + c _ {1} ^ {*} T \frac {I _ {1}}{N} - c _ {2} L _ {1} \frac {I _ {2}}{N}, \\ I _ {1} ^ {\prime} = \kappa_ {1} L _ {1} - \mu I _ {1} - r _ {2} I _ {1}, \\ L _ {2} ^ {\prime} = (1 - u _ {2} (t)) q r _ {2} I _ {1} - (\mu + \kappa_ {2}) L _ {2} + c _ {2} (S + L _ {1} + T) \frac {I _ {2}}{N}, \\ I _ {2} = \kappa_ {2} L _ {2} - \mu I _ {2}, \\ T ^ {\prime} = u _ {1} (t) r _ {1} L _ {1} + \left[ 1 - \left(1 - u _ {2} (t)\right) (p + q) \right] r _ {2} I _ {1} - c _ {1} ^ {*} T \frac {I _ {1}}{N} - c _ {2} T \frac {I _ {2}}{N} - \mu T, \tag {7.8} \\ \end{array}
$$

with initial values $S ( 0 ) , L _ { 1 } ( 0 ) , I _ { 1 } ( 0 ) , L _ { 2 } ( 0 ) , I _ { 2 } ( 0 ) , T ( 0 )$ . 

The control functions, $u _ { 1 } ( t )$ and $u _ { 2 } ( t )$ , are bounded, Lebesgue integrable functions. The “case-finding” control, $u _ { 1 } ( t )$ , represents the fraction of typical TB latent individuals that is identified and will be put under treatment (to reduce the number of individuals that may be infectious). The coefficient, $1 - u _ { 2 } ( t )$ , represents the effort that prevents the failure of the treatment in the typical TB infectious individuals (to reduce the number of individuals developing resistant TB). When the “case-holding” control $u _ { 2 } ( t )$ is near 1, there is low treatment failure and high implementation costs. 

Our objective function to be minimized is 

$$
J (u _ {1}, u _ {2}) = \int_ {0} ^ {t _ {f}} \left[ L _ {2} (t) + I _ {2} (t) + \frac {B _ {1}}{2} u _ {1} ^ {2} (t) + \frac {B _ {2}}{2} u _ {2} ^ {2} (t) \right] d t, \tag {7.9}
$$

where we want to minimize the latent and infectious groups with resistant-strain TB while also keeping the cost of the treatments low. We assume that the costs of the treatments are nonlinear and take quadratic form here. The coefficients, $B _ { 1 }$ and $B _ { 2 }$ , are balancing cost factors due to size and importance of the three parts of the objective functional. We seek to find an optimal control pair, $u _ { 1 } ^ { * }$ and $u _ { 2 } ^ { * }$ , such that 

$$
J (u _ {1} ^ {*}, u _ {2} ^ {*}) = \min _ {\Omega} J (u _ {1}, u _ {2}), \tag {7.10}
$$

where $\Omega = \{ ( u _ { 1 } , u _ { 2 } ) \in L ^ { 1 } ( 0 , t _ { f } ) \mid a _ { i } \le u _ { i } \le b _ { i } , i = 1 , 2 \}$ and $a _ { i }$ and $b _ { i } , i = 1 , 2$ , are fixed positive constants. 

The necessary conditions that an optimal pair must satisfy come from Pontryagin’s maximum principle [19]. This principle converts $( 7 . 8 ) \substack { - ( 7 . 1 0 ) }$ into a problem of minimizing pointwise a Hamiltonian, H , with respect to $u _ { 1 }$ and $u _ { 2 } .$ : 

$$
H = L _ {2} + I _ {2} + \frac {B _ {1}}{2} u _ {1} ^ {2} + \frac {B _ {2}}{2} u _ {2} ^ {2} + \sum_ {i = 1} ^ {6} \lambda_ {i} g _ {i}, \tag {7.11}
$$

where $g _ { i }$ is the right-hand side of the differential equation of the ith state variable. By applying Pontryagin’s maximum principle [19] and the existence result for the optimal control pairs from [13], we know that there exists an optimal control pair $u _ { 1 } ^ { * }$ , $u _ { 2 } ^ { * }$ and corresponding solution, $S ^ { * } , L _ { 1 } ^ { * } , I _ { 1 } ^ { * } , L _ { 2 } ^ { * } , I _ { 2 } ^ { * }$ , and $T ^ { * }$ , that minimizes $J ( u _ { 1 } , u _ { 2 } )$ over $\varOmega$ . Furthermore, there exist adjoint functions, $\lambda _ { 1 } ( t ) , \ldots , \lambda _ { 6 } ( t )$ , such that 

$$
\lambda_ {1} ^ {\prime} = \lambda_ {1} (c _ {1} \frac {I _ {1} ^ {*}}{N} + c _ {1} ^ {*} \frac {I _ {2} ^ {*}}{N} + \mu) + \lambda_ {2} (- c _ {1} \frac {I _ {1} ^ {*}}{N}) + \lambda_ {4} (- c _ {1} ^ {*} \frac {I _ {2} ^ {*}}{N}),
$$

$$
\lambda_ {2} ^ {\prime} = \lambda_ {2} (\mu + \kappa_ {1} + u _ {1} (t) r _ {1} + c _ {1} ^ {*} \frac {I _ {2} ^ {*}}{N}) + \lambda_ {3} (- \kappa_ {1}) + \lambda_ {4} (- c _ {1} ^ {*} \frac {I _ {2} ^ {*}}{N}) + \lambda_ {6} (- u _ {1} ^ {*} (t) r _ {1}),
$$

$$
\lambda_ {3} ^ {\prime} = \lambda_ {1} (c _ {1} \frac {S ^ {*}}{N}) + \lambda_ {2} (- c _ {1} \frac {S ^ {*}}{N} - (1 - u _ {2} ^ {*} (t)) p r _ {2} - c _ {2} \frac {T ^ {*}}{N}) + \lambda_ {3} (\mu + r _ {2})
$$

$$
+ \lambda_ {4} (- (1 - u _ {2} ^ {*} (t)) q r _ {2}) + \lambda_ {6} (- (1 - (1 - u _ {2} ^ {*} (t)) (p + q)) r _ {2} + c _ {2} \frac {T ^ {*}}{N}),
$$

$$
\lambda_ {4} ^ {\prime} = - 1 + \lambda_ {4} (\mu + \kappa_ {2}) + \lambda_ {5} (- \kappa_ {2}),
$$

$$
\lambda_ {5} ^ {\prime} = - 1 + \lambda_ {1} (c _ {1} ^ {*} \frac {S ^ {*}}{N}) + \lambda_ {2} (c _ {1} ^ {*} \frac {L _ {1} ^ {*}}{N}) - \lambda_ {4} (\beta^ {*} \frac {S ^ {*} + L _ {1} ^ {*} + T ^ {*}}{N}) + \lambda_ {5} \mu + \lambda_ {6} (c _ {1} ^ {*} \frac {T ^ {*}}{N}),
$$

$$
\lambda_ {6} ^ {\prime} = \lambda_ {2} (- c _ {2} \frac {I _ {1} ^ {*}}{N}) + \lambda_ {4} (- c _ {1} ^ {*} \frac {I _ {2} ^ {*}}{N}) + \lambda_ {6} (c _ {2} \frac {I _ {1} ^ {*}}{N} + c _ {1} ^ {*} \frac {I _ {2} ^ {*}}{N} + \mu), \tag {7.12}
$$

with transversality conditions 

$$
\lambda_ {i} (t _ {f}) = 0, \quad i = 1, \dots , 6 \tag {7.13}
$$

and $N = S ^ { * } + L _ { 1 } ^ { * } + I _ { 1 } ^ { * } + L _ { 2 } ^ { * } + I _ { 2 } ^ { * } + T ^ { * }$ . Moreover, the characterization holds: 

$$
\begin{array}{l} u _ {1} ^ {*} (t) = \min \left(\max \left(a _ {1}, \frac {1}{B _ {1}} \left(\lambda_ {2} - \lambda_ {6}\right) r _ {1} L _ {1} ^ {*}\right), b _ {1}\right) \\ * (t) = \dot {\cdot} \left(\max \left(a _ {1}, \frac {1}{B _ {1}} \left(\lambda_ {2} + \lambda_ {6}\right) r _ {1} L _ {1} ^ {*}\right), b _ {1}\right) \end{array} \tag {7.14}
$$

$$
u _ {2} ^ {*} (t) = \min \big (\max (a _ {2}, \frac {1}{B _ {2}} (\lambda_ {2} p + \lambda_ {4} q - \lambda_ {6} (p + q) r _ {2} I _ {1} ^ {*})), b _ {2} \big).
$$

Due to the a priori boundedness of the state and adjoint functions and the resulting Lipschitz structure of the ODEs, we obtain the uniqueness of the optimal control for small $t _ { f }$ . The uniqueness of the optimal control follows from the uniqueness of the optimality system, which consists of (7.8) and (7.12)–(7.14). There is a restriction on the time interval in order to guarantee the uniqueness of the optimality system. This smallness restriction on the length on the time interval is due to the opposite time orientations of (7.8), (7.12), and (7.13); the state problem has initial values and the adjoint problem has final values. This restriction is very common in control problems (see [12, 15]). 

The optimal treatment is obtained by solving the optimality system, consisting of the state and adjoint equations. An iterative method is used for solving the optimality system. We start to solve the state equations with a guess for the controls over the simulated time using a forward fourth-order Runge–Kutta scheme. Because of the transversality conditions (7.13), the adjoint equations are solved by a backward fourth-order Runge–Kutta scheme using the current iteration solution of the state equations. Then, the controls are updated by using a convex combination of the previous controls and the value from the characterizations (7.14). This process is repeated and iteration is stopped if the values of unknowns at the previous iteration are very close to the ones at the present iteration. 

For the figures presented here, we assume that the weight factor $B _ { 2 }$ associated with control $u _ { 2 }$ is greater than or equal to $B _ { 1 }$ which is associated with control $u _ { 1 }$ . This assumption is based on the following facts: The cost associated with $u _ { 1 }$ will include the cost of screening and treatment programs, and the cost associated with $u _ { 2 }$ will include the cost of holding the patients in the hospital or sending people to watch the patients to finish their treatment. Treating an infectious TB individual takes longer (by several months) than treating a latent TB individual. In these three figures, the set of the weight factors, $B _ { 1 } = 5 0$ and $B _ { 2 } = 5 0 0$ , is chosen to illustrate the optimal treatment strategy. Other epidemiological and numerical parameters are presented in [14]. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/7417082410ff3c497615f2a0c262732e41ddd7696f5a854e91e3292759f0a612.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/adf23bff40ebc38a64838ee4f393f32c54328392eda98c9410b0aa3eba378379.jpg)



Fig. 7.6 The optimal control strategy for the case of $B _ { 1 } = 5 0$ and $B _ { 2 } = 5 0 0$


In the top frame of Fig. 7.6, the controls, $u _ { 1 }$ (solid curve) and $u _ { 2 }$ (dashdot curve), are plotted as a function of time. In the bottom frame, the fractions of individuals infected with resistant TB, $( L _ { 2 } + I _ { 2 } ) / N$ , with control (solid curve) and without control (dashed curve) are plotted. Parameters $N = 3 0 { , } 0 0 0$ and $\beta ^ { * } = 0 . 0 2 9$ are chosen. Results for other parameters are presented in [14]. To minimize the total number of the latent and infectious individuals with resistant TB, $L _ { 2 } + I _ { 2 }$ , the optimal control $u _ { 2 }$ is at the upper bound during almost 4.3 years and then $u _ { 2 }$ is decreasing to the lower bound, while the steadily decreasing value for $u _ { 1 }$ is applied over the most of the simulated time, 5 years. The total number of individuals $L _ { 2 } + I _ { 2 }$ infected with resistant TB at the final time $t _ { f } = 5$ (years) is 1123 in the case with control and 4176 without control, and the total number of cases of resistant TB prevented at the end of the control program is 3053 $( = 4 1 7 6 - 1 1 2 3 )$ . 

In Fig. 7.7, the controls, $u _ { 1 }$ and $u _ { 2 }$ , are plotted as a function of time for $N = 6 0 0 0 , 1 2 , 0 0 0$ , and 30,000 in the top and bottom frame, respectively. Other parameters except the total number of individuals and $c _ { 1 } ^ { * } = 0 . 0 2 9$ are fixed for these three cases. These results show that more effort should be devoted to “casefinding” control $u _ { 1 }$ if the population size is small, but “case-holding” control $u _ { 2 }$ will play a more significant role if the population size is big. Note that, in general, with $B _ { 1 }$ fixed, as $B _ { 2 }$ increases, the amount of $u _ { 2 }$ decreases. A similar result holds if $B _ { 2 }$ is fixed and $B _ { 1 }$ increases. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/968309474eb8b5a05f1d93adac1a68dae154efb4ca651fa310c47866bc5f475e.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/91c1597ffa9791240a07a99d6b3fb26379a84bec201190f012687c7bd223bf7d.jpg)



Fig. 7.7 The controls, $\mu _ { 1 }$ and $\mu _ { 2 }$ , are plotted as a function of time for $\begin{array} { r l } { N } & { { } = } \end{array}$ 6000, 12,000, and 30,000 in the top and bottom frame, respectively


In conclusion, our optimal control results show how a cost-effective combination of treatment efforts (case holding and case finding) may depend on the population size, cost of implementing treatments controls, and the parameters of the model. We have identified optimal control strategies for several scenarios. Control programs that follow these strategies can effectively reduce the number of latent and infectious resistant-strain TB cases. 

## 7.4 Modeling of the Long and Variable Latency of TB

As indicated in Figs. 7.1 and 7.2, the latent period of TB can range from a couple of years to lifetime. One of the approaches to incorporate this feature is to divide latent individuals into two classes based on the rates of progression to the disease stage, with one class having a faster progression than the other. For example, based on the transition diagram shown in Fig. 7.8, Blower et al. considered the following model in [3]: 


Fig. 7.8 A transition diagram of TB with fast and slow progressions [3]


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/88a6ff388aed9162b52177c0eb448398f595626b8e6e781147a1dc575b509b33.jpg)


$$
S ^ {\prime} = \Lambda - c S I - \mu S,
$$

$$
L ^ {\prime} = (1 - p) c S I - (\kappa + r _ {1} + \mu) L,
$$

$$
I ^ {\prime} = p c S I + \kappa L - (r _ {2} + \mu + d) I, \tag {7.15}
$$

$$
C ^ {\prime} = r _ {1} L - \mu C,
$$

$$
T ^ {\prime} = r _ {2} I - \mu T,
$$

which includes five epidemiological classes: susceptible (S), latently infected (L), infectious (I ), effectively chemoprophylaxed (C), and effectively treated (T ). The model assumes that a fraction $p$ of the newly infected individuals will become infectious within 1 year (fast progression, $p \approx 0 . 0 5 )$ , while the remaining $1 - p$ fraction of newly infected individuals will enter the latent stage first and develop active TB at a rate $\kappa$ (slow progression, approximately 1/20 (years)). The model suggests that for fast progression, an infected individual enters the infectious class I immediately. The parameters $r _ { 1 }$ and $r _ { 2 }$ denote the rates of prophylaxis and treatment, respectively. The per-capita natural and disease mortalities are $\mu$ and $d ,$ respectively. 

The control reproduction number of the model (7.15) is 

$$
\mathcal {R} _ {C} = \mathcal {R} _ {C} ^ {\text { fast }} + \mathcal {R} _ {C} ^ {\text { slow }}, \tag {7.16}
$$

where 

$$
\mathcal {R} _ {C} ^ {\mathrm{fast}} = \Big (\frac {c p \varLambda}{\mu} \Big) \Big (\frac {1}{r _ {2} + \mu + d} \Big)
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/959b227bffa0c94e0400f4bbd9c7846616fd1e8d72d2e2cd0c3203f4ef28e894.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/424577f4f8c8f95b338abcd4e9175c9039e6b08634c9f5786220cc457f76a3c6.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/c28f2a1770bb8e2f81de9667e6b6cbdd3742eb4aaebca2ce5cd55c3ec59e39f0.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/6fd2aa9ba1fc52c3bcd1812b2715c6fe67b8ac8657baff52c1b9f11bc828c353.jpg)



Fig. 7.9 Plots of the curve $\mathcal { R } _ { C } ~ = ~ 1$ for severity levels of mild, moderate, and severe, which correspond to the basic reproduction number $\mathcal { R } _ { 0 }$ values of 4, 9, and 17, respectively [3]


and 

$$
\mathcal {R} _ {C} ^ {\mathrm{slow}} = \Big (\frac {c (1 - p) \varLambda}{\mu} \Big) \Big (\frac {\kappa}{r _ {1} + \kappa + \mu} \Big) \Big (\frac {1}{r _ {2} + \mu + d} \Big)
$$

represent the reproduction numbers associated with the fast and slow paths, respectively. The formula (7.16) can be used to evaluate the possibility to eradicate tuberculosis either by treatment alone or by a combination of treatment and chemoprophylaxis, as demonstrated in Fig. 7.9 (adopted from [3]). 

To investigate the role of treatment failure for drug-sensitive (DS) cases in the prevalence of drug-resistant (DR) TB, Blower et al. [3] extended the one-strain TB model (7.15) to include a drug-resistant strain as follows: 

$$
\begin{array}{l} S ^ {\prime} = \Lambda - \left(c _ {S} I _ {S} + c _ {R} I _ {R}\right) S - \mu S, \\ L _ {S} ^ {\prime} = (1 - p) c _ {S} I _ {S} S - (r _ {1} + \kappa + \mu) L _ {S}, \\ I _ {S} ^ {\prime} = p c _ {S} I _ {S} S + \kappa L _ {S} - (r _ {2} + \mu + d) I _ {S}, \\ C _ {S} ^ {\prime} = r _ {1} L _ {S} - \mu C _ {S}, \tag {7.17} \\ T _ {S} ^ {\prime} = r _ {2} (1 - q) I _ {S} - \mu T _ {S}, \\ L _ {R} ^ {\prime} = (1 - p) c _ {R} I _ {R} S - (\kappa + \mu) L _ {R}, \\ I _ {R} ^ {\prime} = p c _ {R} I _ {R} S + q r _ {2} I _ {S} + \kappa L _ {R} - (r _ {2} \delta + \mu + d) I _ {R}, \\ T _ {R} ^ {\prime} = \delta r _ {2} T _ {R} - \mu T _ {R}, \\ \end{array}
$$

where the epidemiological classes associated with the DS and DR tuberculosis are indicated by the subscripts S and R, respectively. The parameter q represents the fraction of treatment failure for DS tuberculosis that leads to the development of DR tuberculosis, and the parameter δ denotes the relative effectiveness of treatment for a resistant case. 

Blower et al. [3] showed that the model (7.17) can help gain insights into the impact of treatment failure (q) on the development of DR tuberculosis. 

Another approach to incorporate the long and variable latency is to consider an arbitrarily distributed latency, in which case the model consists of a system of integro-differential equations. Examples can be found in [10, 11]. It is shown in [10] that the model with a distributed latency has the same dynamical behavior as the ODE model, although it can provide a more detailed description for the reproduction number as it involves a more realistic distribution of the latent period. The model considered in [11] includes both DS and DR strains with infection age-dependent progression (e.g., the progression distribution shown in Fig. 7.2). 

## 7.5 Backward Bifurcation in a TB Model with Reinfection

As mentioned earlier, the latent period of TB can be as long as many years and even lifetime. Re-exposure to TB bacilli through repeated contacts with individuals with active TB may accelerate the progression of LTBI towards active TB, and exogenous reinfection (i.e., acquiring a new infection from another infected individual) may occur. To investigate the impact of exogenous reinfection in the spread and control of TB, we can extend the one-strain model (7.1) by incorporating the exogenous reinfection. It is demonstrated in [9] that exogenous reinfection may play a fundamental role in the transmission dynamics and the epidemiology of TB at the population level. Particularly, the model is capable of exhibiting a backward bifurcation, i.e., a stable endemic equilibrium can exist even when the reproduction number is less than 1. Although some studies (e.g., see [23]) find that, for parameter values in a certain range, the onset of the backward bifurcation is unlikely to occur, other scenarios are possible in which the conditions for backward bifurcation can be satisfied. In either case, it is helpful to know that exogenous reinfection may play an important role in TB dynamics, which can be critical for the design of control programs for TB. 

An extension of the one-strain model (7.1) when reinfection is included takes the form: 

$$
\begin{array}{l} S ^ {\prime} = \mu N - c S \frac {I}{N} - \mu S, \\ L ^ {\prime} = c S \frac {I}{N _ {I}} + c ^ {*} T \frac {I}{N} - p c L \frac {I}{N} - (\kappa + \mu) L, \tag {7.18} \\ \end{array}
$$

$$
I ^ {\prime} = p c L \frac {I}{N} + \kappa L - (r + \mu) I,
$$

$$
T ^ {\prime} = r I - c ^ {*} T \frac {I}{N} - \mu T.
$$

The model (7.18) ignores the treatment of latent individuals and only infectious individuals may receive treatment at the rate $r .$ . The parameter $p$ is a factor reflecting the difference between primary infections (infection from susceptibles) and exogenous reinfections (infection from latent individuals). A value of $p \in$ (0, 1) implies that a primary infection provides some degree of cross-immunity to exogenous reinfections. Other parameters have the same meaning as in (7.1). 

The reproduction number for (7.18) is 

$$
\mathcal {R} _ {0} = \frac {c \kappa}{(\kappa + \mu) (r + \mu)}. \tag {7.19}
$$

The usual result that the disease-free equilibrium is locally asymptotically stable when $\mathcal { R } _ { 0 } ~ < ~ 1$ still holds. However, the usual result that there is no endemic equilibrium when $\mathcal { R } _ { 0 } < 1$ no longer holds. To show that an endemic equilibrium may exist when $\mathcal { R } _ { 0 } ~ < ~ 1$ , consider the simpler case when $c ^ { * } = c$ . Let $U ^ { * } =$ $( S ^ { * } , L ^ { * } , I ^ { * } , T ^ { * } )$ denote an endemic equilibrium, i.e., $I ^ { * } > 0$ . Let $x = I ^ { * } / N$ , then 

$$
\frac {S ^ {*}}{N} = \frac {\mu}{\mu + c x ^ {*}}, \quad \frac {L ^ {*}}{N} = \frac {(\mu + r) x ^ {*}}{\kappa + p c x ^ {*}}, \quad \frac {T ^ {*}}{N} = \frac {r x}{\mu + c x},
$$

and $x ^ { * }$ is a solution of the quadratic equation 

$$
A x ^ {2} + B x + C = 0, \tag {7.20}
$$

where 

$$
A = p \mathcal {R} _ {0}, \quad B = (1 + p + Q) D _ {E} - p \mathcal {R} _ {0}, \quad C = D _ {E} Q \Big (\frac {1}{\mathcal {R} _ {0}} - 1 \Big),
$$

and $D _ { E } = \kappa / ( \mu + \kappa )$ and $Q = \kappa / ( \mu + r )$ ). Note that $D _ { E } < 1$ denotes the probability that a latent individual survives and becomes infective. Let 

$$
\mathcal {R} _ {p} = \frac {1}{p} \left(D _ {E} (1 + p - Q) + s \sqrt {D _ {E} Q (p - p D _ {E} - D _ {E})}\right) \tag {7.21}
$$

and 

$$
p _ {0} = \frac {(1 + Q) D _ {E}}{1 - D _ {E}}. \tag {7.22}
$$

Then $\mathcal { R } _ { p } < 1$ if $p > p _ { 0 }$ , and $B ^ { 2 } - 4 A C > ( = , ~ < ) 0 \mathrm { i f } \mathcal { R } _ { 0 } > ( = , ~ < ) \mathcal { R } _ { p }$ , in which case Eq. (7.20) has two (one, none) positive solutions $x _ { \pm }$ (see [9] for more detailed proofs). This establishes the following result: 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/a23fed1bb5d8e113ad0f25c6606170607bb5088cab3e8a30ad3f250b4756c61f.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/d69ee5a3de669c1212a252b84bcecc8f92ad21f302e4f1c0be3038a25cd29829.jpg)



Fig. 7.10 The left plot is a depiction of the backward bifurcation for the model with reinfection (7.18). The $I ^ { * }$ component of an equilibria is plotted as a function of $\mathcal { R } _ { 0 }$ . The curve demonstrates that there are two positive steady states for $\mathcal { R } _ { p } ~ < ~ \mathcal { R } _ { 0 } ~ < ~ 1$ . The solid part of the curve corresponds to the stable steady state (SSS) and the dashed part corresponds to the unstable steady state (USS). The right figure shows the numerical solutions of system (7.18) for parameter values in the region where the backward bifurcation occurs $( \mathcal { R } _ { p } ~ < ~ \mathcal { R } _ { 0 } ~ < ~ 1$ and $p \ > \ p _ { 0 } )$ . The number of infectious individuals $I ( t )$ is plotted. It illustrates that, depending on the initial conditions, the solution will converge to either the infection-free equilibrium (the solid curves) or the stable positive equilibrium (dashed curves)


Theorem 7.3 Let $\mathcal { R } _ { 0 } , \mathcal { R } _ { p }$ , and $p _ { 0 }$ be as defined in (7.19), (7.21), and (7.22). 

(a) $I f \mathcal { R } _ { 0 } > 1$ , then system (7.18) has exactly one endemic equilibrium and it is locally asymptotically stable 

(b) $I f \mathcal { R } _ { 0 } < 1$ , then the disease-free equilibrium is locally asymptotically stable Moreover, 

(i) for each $p \ > \ p _ { 0 }$ there exists a positive constant $\mathcal { R } _ { p } ~ < ~ 1$ such that system (7.18) has exactly two (one, none) positive equilibria when $\mathcal { R } _ { 0 } >$ $( \mathbf { \partial } = , \mathbf { \partial } < ) \mathbf { \partial } \mathcal { R } _ { p }$ . In the case of two positive equilibria, the one with large (smaller) $I ^ { * }$ component is stable (unstable), as depicted in Fig. 7.10 (left). 

(ii) for $p = ( < ) p _ { 0 }$ , system (7.18) has exactly one (no) positive equilibrium. 

Numerical simulations of the model (7.18) confirm the backward bifurcation. Figure 7.10 (right) shows the I component of the solutions with different initial values in the case $p \ > \ p _ { 0 }$ and $\mathcal R _ { p } ~ < ~ \mathcal R _ { 0 } ~ < ~ 1$ . We observe that solutions with initial I values near 0 converge to the disease-free steady state (see the solid curves), whereas other solutions converge to the endemic steady state with a larger I value (see the dashed curves). 

## 7.6 Other TB Models with More Complexities

The models considered above assume homogeneity in several aspects including mixing and age structure of the population. In many cases, the problems under investigation require the consideration of some of the heterogeneities. For example, in [1] TB models involving non-homogeneous mixing that incorporates “household” contacts and age-dependent mixing are considered to assess the possible causes for the observed historical decline of tuberculosis notifications. In [5], an age-structured TB model is used to study optimal age-dependent vaccination strategies $\psi ( a )$ , where $a$ denotes the chronological age of an individual. One of the optimal control problems is to minimize the reproduction number corresponding to $\psi ( a ) , \mathcal { R } _ { \psi }$ , under the constraint on the cost $C ( \psi ) < C ^ { * }$ , where $C ^ { * }$ is a fixed constant. Results suggest that the optimal vaccination strategy is either a one-age strategy (vaccinate every one at a single age A determined by the parameter and parameter functions in the model) or two-age strategy (vaccinate the population at two fixed ages $A _ { 1 }$ and $A _ { 2 }$ determined by model parameters). 

Models with multiple resistant strains have been used to answer various questions associated with the establishment and spread of drug-resistant TB. Blower and Chou [2] use a model with three strains of resistant TB to study how to effectively control MDR-TB in “hot zones” (i.e., areas that have $> 5 \%$ prevalence of MDR-TB). The findings of the model suggest that the levels of MDR are driven by case-finding rates, cure rates, and amplification probabilities (the probability that a case will develop further resistance during treatment). In [7], heterogeneity in the relative fitness of MDR strains is incorporated in a TB model. The model includes two resistant strains (one is more fit than the other), as well as a drug-sensitive strain, and is used to study the impact of initial fitness estimates on the emergence of MDR-TB. The model results show that “even when the average relative fitness of MDR strains is low and a well-functioning control program is in place, a small sub-population of a relatively fit MDR strain may eventually outcompete both the drug-sensitive strains and the less fit MDR strains.” 

A two-strain TB model with reinfection is considered in [21] to study the role of reinfection in the transmission dynamics of drug-resistant TB and the coexistence of sensitive and resistant strains of TB. In [17] multiple sub-populations are considered with one sub-population being genetically susceptible to TB. Different strategies involving treatment of latent TB infections and active TB disease are examined and in different populations are examined. Results from the model analysis suggest that the presence of a genetically susceptible sub-population dramatically alters effects of treatment. To study the impact of treatment failure and its influence in the criteria for the control of drug-resistant TB, a model with multiple stages of treatment failure with different probabilities of leading to resistant TB is considered in [8]. Model results indicate that case detection and treatment can be a critical factor in the control of MDR-TB. 

To explore the influence of HIV on TB prevalence, models including the interaction between TB and HIV can be used, in which case the model analysis can be very challenging due to the possible coinfections of TB and HIV. For example, a model incorporating both TB and HIV with multiple stages of HIV is studied in [20]. The model results suggest that “an HIV epidemic can significantly increase the frequency and severity of tuberculosis outbreaks, but that this amplification effect of HIV on tuberculosis outbreaks is very sensitive to the tuberculosis treatment rate.” Another model that includes both TB and HIV is studied in [22]. The model results suggest that the accelerated progression from LTBI to active TB in individuals coinfected with HIV can have a significant influence in TB prevalence. 

## 7.7 Project: Some Calculations for the Two-Strain Model

Exercise 1 Derive the formulas of the reproduction numbers $\mathcal { R } _ { S }$ and $\mathcal { R } _ { R }$ given in (7.5) and (7.6), respectively, for the two-strain TB model (7.4) by considering the stability of the disease-free equilibrium 

$$
E _ {0} = \left(S ^ {(0)}, L _ {1} ^ {(0)}, I _ {1} ^ {(0)}, L _ {2} ^ {(0)}, I _ {2} ^ {(0)}, T ^ {(0)}\right) = (N, 0, 0, 0, 0, 0).
$$

The Jacobian a $E _ { 0 }$ is 

$$
J (E _ {0}) = \left[ \begin{array}{c c c c c c} - \mu & 0 & - c _ {1} & 0 & - c _ {2} & 0 \\ 0 & - (\mu + \kappa_ {1} + r _ {1}) & c _ {1} + p r _ {2} & 0 & 0 & 0 \\ 0 & \kappa_ {1} & - (\mu + r _ {2}) & 0 & 0 & 0 \\ 0 & 0 & q r _ {2} & - (\mu + \kappa_ {2}) & c _ {2} & 0 \\ 0 & 0 & 0 & \kappa_ {2} & - \mu & 0 \\ 0 & r _ {1} & (p + q) r _ {2} & 0 & 0 & - \mu \end{array} \right].
$$

Clearly, $J ( E _ { 0 } )$ has the negative eigenvalues $\mu$ with multiplicity 2, and other eigenvalues are given by the eigenvalues of $J _ { 1 }$ and $J _ { 2 }$ , where 

$$
J _ {1} = \left[ \begin{array}{c c} - (\mu + \kappa_ {1} + r _ {1}) & c _ {1} + p r _ {2} \\ \kappa_ {1} & - (\mu + r _ {2}) \end{array} \right], \quad J _ {2} = \left[ \begin{array}{c c} - (\mu + \kappa_ {2}) & c _ {2} \\ \kappa_ {2} & - \mu \end{array} \right].
$$

Show that $J _ { 1 }$ has negative eigenvalues if and only if $\mathcal { R } _ { S } ~ < ~ 1$ and $J _ { 2 }$ has negative eigenvalues if and only if $\mathcal { R } _ { R } < 1$ . 

Exercise 2 Consider the two-strain TB model (7.4) and conduct numerical simulations of the system for parameter values specified below. Given the parameter values $\mu = 0 . 0 1 4 3$ (or $1 / \mu = 7 0 ) , c _ { 1 } = 1 3 , \kappa _ { 1 } = \kappa _ { 2 } = 1 , r _ { 1 } = 1 , r _ { 2 } = 2 , q = 0 , p = 0 . 5$ . Choose the values of $c _ { 2 }$ such that 

(a) $E _ { 1 }$ is stable; 

(b) $E _ { 2 }$ is stable; 

(c) $E ^ { * }$ is stable. 

Exercise 3 Similar to Exercise 2 but for the case when $q > 0 ,$ . Given the same values for other parameters as in Exercise 2, and choose the values of $c _ { 2 }$ such that 

(a) $E _ { 2 }$ is stable; 

(b) $E ^ { * }$ is stable. 

## 7.8 Project: Refinements of the One-Strain Model

The model (7.1) is a one-strain model for TB, which assumes that infected people stay in the latent stage L before entering the infective stage I . The model (7.15) includes fast and slow progression (represented by $p$ and $1 - p .$ , respectively), which assumes that with fractions $1 - p$ and $p$ infected individuals will enter the latent $L$ and infectious I stages, respectively. In both models, the stage duration is assumed to be exponentially distributed with parameter k. That is, the probability that an infected individual has not become infective s units of time after infection is $e ^ { - k s }$ . This assumption may not be appropriate for TB due to the long and variable latency, as shown in Figs. 7.1 and 7.2. To examine whether or not a model with a more realistic assumption on the distribution of latent period, we can consider a model in which the exponential survival function $e ^ { - k s }$ is replaced by a general distribution $p ( s )$ , as described below. 

Let $p ( s )$ be a function representing the proportion of those individuals latent at time t and who, if alive, are still infected (but not infectious) at time $t + s$ . Then $- \dot { p } ( \tau )$ is the rate of removal of individuals from $E$ class into I class τ units of time after becoming latent. Assume that 

$$
p (s) \geq 0, \quad \dot {p} (s) \leq 0, \quad p (0) = 1, \quad \int_ {0} ^ {\infty} p (s) d s <   \infty .
$$

Let $S ( t ) , E ( t ) , I ( t )$ , and $T ( t )$ denote the number of individuals in the susceptible, latent, infectious, and treated classes, respectively. Consider the following model with $p ( s )$ being the arbitrary distribution of the latent stage: 

$$
S ^ {\prime} = \Lambda - c S \frac {I}{N} - \mu S,
$$

$$
E (t) = E _ {0} (t) + \int_ {0} ^ {t} \left[ c S (s) + c ^ {*} T (s) \right] \frac {I (s)}{N (s)} p (t - s) e ^ {- (\mu + r _ {1}) (t - s)} d s,
$$

$$
I (t) = \int_ {0} ^ {t} \int_ {0} ^ {\tau} [ c S (s) + c ^ {*} T (s) ] \frac {I (s)}{N (s)} e ^ {- (\mu + r _ {1}) (\tau - s)} \tag {7.23}
$$

$$
\times [ - \dot {p} (\tau - s) e ^ {- (\mu + r _ {2}) (t - \tau)} ] d s d \tau + I _ {0} e ^ {- (\mu + r _ {2}) t} + I _ {0} (t),
$$

$$
T ^ {\prime} = r _ {1} E + r _ {2} I - c ^ {*} T \frac {I}{N} - \mu T,
$$

$$
N = S + E + I,
$$

where $E _ { 0 } ( t )$ denotes those individuals in E class at time $t \ = \ 0$ and still in the latent class, $I _ { 0 } ( t )$ denotes those initially in class E who have moved into class I and are still alive at time t , and $I _ { 0 } e ^ { - ( \mu + r _ { 2 } ) t }$ with $I _ { 0 } = I ( 0 )$ represents those who are infective at time 0 and are still alive and in I class. $E _ { 0 } ( t )$ and $I _ { 0 } ( t )$ are assumed to have compact support (that is, they vanish for large enough t). All other parameters have the same meanings as in model (7.1). 

Question 1 Derive the formula below for the reproduction number $\mathcal { R } _ { 0 }$ 

$$
\mathcal {R} _ {0} = c \int_ {0} ^ {\infty} a (\tau) d \tau , \tag {7.24}
$$

where $a ( u )$ is defined by 

$$
a (t - s) = \int_ {s} ^ {t} e ^ {- (\mu + r _ {1}) (\tau - s)} [ - \dot {p} (\tau - s) e ^ {- (\mu + r _ {2}) (t - \tau)} ] d \tau .
$$

Provide biological interpretations for the $a ( u )$ and the factors in the expression of $a ( u )$ . 

Question 2 Show that the disease will die out if $\mathcal { R } _ { 0 } < 1$ and persist if $\mathcal { R } _ { 0 } > 1$ . 

Question 3 Find all biologically feasible steady-state solutions of the model (7.23). Determine the condition for the existence of a coexistence steady state $( \mathrm { i } . \mathrm { e } . , I > 0$ and $J > 0 )$ . 

Question 4 For each steady state, identify the conditions under which the steady state is locally asymptotically stable. 

Question 5 Does the model with a more realistic distribution for the latent stage provide new qualitative behavior of the disease dynamics in comparison with the ODE model (7.1)? Identify the additional insights that the model (7.23) can provide. 

## 7.9 Project: Refinements of the Two-Strain Model

Model (7.4) is a two-strain model for TB with drug-sensitive and drug-resistant strains. In this model, the latent stages for both strain are assumed to be exponentially distributed with parameters $\kappa _ { 1 }$ and $\kappa _ { 2 }$ . The long and variable latency for the sensitive strain make this assumption unrealistic (the latent period for the resistant strain is much shorter). The model below is an alternative two-strain model with distributed delay in latency, in which $p ( \theta )$ is used to describe the progression from latent stage to infectious stage and $\theta$ is the age of infection (time since becoming infected): 

$$
\begin{array}{l} \frac {d S}{d t} = \mu N - (\mu + \lambda_ {1} (t) + \lambda_ {2} (t)) S + (1 - r) \chi \int_ {0} ^ {\infty} p (\theta) i (\theta , t) d \theta , \\ \frac {\partial i}{\partial t} + \frac {\partial i}{\partial \theta} + \mu i (\theta , t) + (1 - r + q r) \chi p (\theta) i (\theta , t) = 0, \tag {7.25} \\ \end{array}
$$

$$
\frac {d J}{d t} = \lambda_ {2} (t) S - \mu J + q r \chi \int_ {0} ^ {\infty} p (\theta) i (\theta , t) d \theta ,
$$

$$
i (0, t) = \lambda_ {1} (t) S (t), S (0) = S _ {0} > 0, i (\theta , 0) = i _ {0} (\theta) \geq 0, J (0) = J _ {0} > 0.
$$

$S ( t )$ is the number of susceptibles at time $t ; i ( \theta , t )$ denotes the density of infection age $\theta$ individuals with the drug-sensitive strain at time $t ; J ( t )$ is the number of infected individuals with a drug-resistant strain at time $t ;$ and $N = S + I + J$ , where 

$$
I (t) = \int_ {0} ^ {\infty} i (\theta , t) d \theta
$$

is the total number of individuals infected with the sensitive strain. The function $p ( \theta ) \left( 0 \leq p ( \theta ) \leq 1 \right)$ is assumed constant in time and is based on experimental data (e.g., the distribution in Fig. 7.2). Note that $p ( \theta ) i ( \theta , t )$ represents the age density of infectious individuals. The transmission rates of sensitive and resistant strains are 

$$
\lambda_ {1} (t) = \frac {c _ {1}}{N (t)} \int_ {0} ^ {\infty} p (\theta) i (\theta , t) d \theta \quad \text { and } \quad \lambda_ {2} (t) = c _ {2} \frac {J (t)}{N (t)}, \tag {7.26}
$$

respectively, with $c _ { 1 }$ and $c _ { 2 }$ being the per-capita transmission rates of the sensitive and resistant strains. The rate at which sensitive-strain-infected individuals leave the i class due to treatment is $( 1 - r + q r ) \chi p ( \theta )$ , where $\chi$ denotes the treatment rate for individuals with drug-sensitive TB. The factor $( 1 - r + q r )$ introduces the effect of incomplete treatment: a fraction r of the treated individuals with sensitive TB do not recover due to incomplete treatment, and the remaining fraction $1 - r$ is actually cured and becomes susceptible again. Moreover, among the individuals who do not finish their treatment, a fraction $q$ of them will develop drug-resistant TB and the remaining fraction will remain latent. The per-capita birth and natural death rates are assumed to be the same and equal to $\mu$ . In this model, for simplicity, treated individuals are assumed to have the same susceptibility. 

Question 1 Let $v ( t ) = i ( 0 , t ) = \lambda _ { 1 } ( t ) S ( t )$ . Show that system (7.25) is equivalent to the following system, which is easier to analyze: 

$$
\begin{array}{l} v (t) = \frac {N (t) - J (t) - \int_ {0} ^ {t} K _ {0} (\theta) v (t - \theta) d \theta}{N (t)} \int_ {0} ^ {t} K _ {1} (\theta) v (t - \theta) d \theta + \tilde {F} _ {1} (t), \\ \frac {d J}{d t} = \beta_ {2} \left(N (t) - J (t) - \int_ {0} ^ {t} K _ {0} (\theta) v (t - \theta) d \theta\right) \frac {J (t)}{N (t)} \\ - m J (t) + \int_ {0} ^ {t} K _ {2} (\theta) v (t - \theta) d \theta + \tilde {F} _ {2} (t), \\ \frac {d N}{d t} = b (N) N (t) - \mu N (t) - \delta J (t), \tag {7.27} \\ \end{array}
$$

where $\tilde { F } _ { i } ( t )$ involve parameters and initial condition with $\begin{array} { r } { \operatorname* { l i m } _ { t  \infty } \tilde { F } _ { i } ( t ) = 0 , i = } \end{array}$ 1, 2, and 



7. Cohen, T., and M. Murray (2004) Modeling epidemics of multidrug-resistant M. tuberculosis of heterogeneous fitness Nature Medicine 10: 1117–1121. 



$$
K _ {0} (\theta) = e ^ {- \mu \theta - \int_ {0} ^ {\theta} (1 - r + q r) \chi p (s) d s},
$$



8. Dye, C., and B.G. Williams (2000) Criteria for the control of drug-resistant tuberculosis, Proc. Nat. Acad. Sci. 97: 8180–8185. 



$$
K _ {1} (\theta) = \beta_ {1} p (\theta) K _ {0} (\theta) = - \frac {\beta_ {1}}{\chi (1 - r + q r)} \left(\frac {d}{d \theta} K _ {0} (\theta) + \mu K _ {0} (\theta)\right), \tag {7.28}
$$



9. Feng, Z., C. Castillo-Chavez, and A.F. Capurro (2000) A model for tuberculosis with exogenous reinfection, Theor. Pop. Biol. 57: 235–247. 



$$
K _ {2} (\theta) = q r \chi p (\theta) K _ {0} (\theta) = - \frac {q r}{(1 - r + q r)} \left(\frac {d}{d \theta} K _ {0} (\theta) + \mu K _ {0} (\theta)\right).
$$



10. Feng, Z., W. Huang, and C. Castillo-Chavez (2001) On the role of variable latent periods in mathematical models for tuberculosis, J. Dyn. Diff. Eq. 13: 435–452. 



Question 2 Let $\mathcal { R } _ { 1 }$ and $\mathcal { R } _ { 2 }$ denote the reproduction numbers for the sensitive and resistant strains. Derive a formula for $\mathcal { R } _ { 1 }$ and $\mathcal { R } _ { 2 }$ . 



11. Feng, Z., M. Iannelli, and F.A. Milner (2002) A two-strain tuberculosis model with age of infection, SIAM J. Appl. Math. 62: 1634–1656. 



Question 3 Explore how the existence and stability of steady states of the model (7.25) depend on $\mathcal { R } _ { 1 }$ and $\mathcal { R } _ { 2 }$ . 



12. Fister, K. R., S. Lenhart, and J.S. McNally (1998) Optimizing chemotherapy in an HIV model, Electronic J. Diff. Eq. 32: 1–12. 



Question 4 Does the model with a more realistic distribution for the latent stage for the sensitive strain provide new qualitative behavior of the disease dynamics in comparison with the ODEs model (7.4)? Identify the additional insights that the model (7.25) may provide. 



13. Fleming, W., and R. Rishel (1975) Deterministic and Stochastic Optimal Control, Springer. 



## References



14. Jung, E., S. Lenhart, and Z. Feng (2002) Optimal control of treatments in a two-strain tuberculosis model, Discrete and Continuous Dynamical Systems Series B 2: 473–482. 





15. Kirschner, D., S. Lenhart, and S. Serbin (1997) Optimal control of the chemotherapy of HIV J. Math. Biol. 35: 775–792. 





1. Aparicio, J. P., and C. Castillo-Chavez (2009) Mathematical modelling of tuberculosis epidemics, Math. Biosc. Eng. 6: 209–237. 





16. Levin, S. and D. Pimentel (1981) Selection of intermediate rates of increase in parasite-host systems, Am. Naturalist 117: 308–315. 





2. Blower, S. M., and T. Chou (2004) Modeling the emergence of the ‘hot zones’: tuberculosis and the amplification dynamics of drug resistance, Nature Medicine 10: 1111–1116. 





17. Murphy, B. M., B.H. Singer, and D. Kirschner (2003) On treatment of tuberculosis in heterogeneous populations, J. Theor. Biol. 223: 391–404. 





3. Blower, S. M., P.M. Small, and P.C. Hopewell (1996) Control strategies for tuberculosis epidemics: new models for old problems, Science 273: 497–500. 





18. Nowak, M.A., and R.M. May (1994) Superinfection and the evolution of parasite virulence, Proc. Roy. Soc. London, Series B: Biological Sciences 255: 81–89. 





4. Castillo-Chavez, C., and Z. Feng (1997) To treat or not to treat: the case of tuberculosis. J. Math. Biol. 35: 629–656. 





19. Pontryagin, L.S. (1987) Mathematical Theory of Optimal Processes, CRC Press. 





5. Castillo-Chavez, C., and Z. Feng (1998) Global stability of an age-structure model for TB and its applications to optimal vaccination strategies, Math.Biosc. 151: 135–154. 





20. Porco, T.C., P.M. Small, and S.M. Blower (2001) Amplification dynamics: predicting the effect of HIV on tuberculosis outbreaks, J. Acquired Immune Deficiency Syndromes 28: 437–444. 





6. CDC, Tuberculosis treatment (2014) http://www.cdc.gov/tb/topic/treatment/. 





21. Rodrigues, P., M.G.M. Gomes, and C. Rebelo (2007) Drug resistance in tuberculosis, a reinfection model, Theor. Pop. Biol. 71: 196–212. 





22. Roeger, L-I.W., Z. Feng, and C. Castillo-Chavez (2009) Modeling TB and HIV co-infections Math. Biosc. Eng. 6: 815–837. 





23. Singer, B.H., and D.E. Kirschner (2004) Influence of backward bifurcation on interpretation of R in a model of epidemic tuberculosis with reinfection, Math. Biosc. Eng. 1: 81–93. 





24. Styblo, K. (1991) Selected papers. vol. 24, Epidemiology of tuberculosis, Hague, The Netherlands: Royal Netherlands Tuberculosis Association. 





25. WHO. Global tuberculosis report 2013 http://www.who.int/tb/publications/global_report/. 



# Chapter 8 Models for HIV/AIDS

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/aca84e9c722026d23c301e883d2fa9bb34c091c3a789e97c7939c229811a98d5.jpg)


## 8.1 Introduction

Acquired immunodeficiency syndrome (AIDS) was first identified as a new disease in the homosexual community in San Francisco in 1981. The human immunodeficiency virus (HIV) was identified as the causative agent for AIDS in 1983. The disease has several very unusual aspects. After the initial infection, there are symptoms, including headaches and fever for 2 or 3 weeks. Transmissibility is high for about 2 months, and then there is a very long latent period during which transmissibility is low. At the end of this latent period, which may last 10 years, transmissibility rises, signaling the development of full-blown AIDS. In the absence of treatment, AIDS is invariably fatal. Now, HIV can be treated with a combination of highly active antiretroviral therapy (HAART) drugs, which both reduce the symptoms and prolong the period of low infectivity. While there is still no cure for AIDS, treatment has made it no longer a necessarily fatal disease. To describe the variation of infectivity for HIV, one possibility would be to use a staged progression model, with multiple infective stages having different infectivity. Another possibility would be to use an age of infection model. 

HIV is transmitted in many ways, the most common of which are sexual contact, either heterosexual or homosexual, shared drug injection needles, and contaminated blood transfusions. Vertical transmission from mother to child is also possible. In the past, transfusions of contaminated blood were another source of disease transmission, but in developed countries screening of blood since 1985 has eliminated blood transfusions as a transmission mode. 

A full model for HIV/AIDS should include a variety of transmission modes, and might take into account of many factors including the level of sexual activity, drug use, condom use, and the sexual contact network, resulting in large scale systems with many parameters that need to be estimated from data. Models were developed first for homosexual transmission. In this chapter, we will consider not only models for disease transmission in a homosexual community (the current terminology is men having sex with men, or MSM), but also models that include heterosexual transmission through female sex workers. We also consider modes that include the joint disease dynamics of HIV and TB and the synergy between HIV and HSV-2. 

The identification of the human immunodeficiency virus [11, 55, 56, 58, 107] captured the attention of theoreticians and modelers as AIDS became one of the most feared diseases nearly three decades ago. Most of the initial modeling contributions focused on the study of the transmission dynamics of HIV at the population level since little was known about the epidemiology of HIV and, as expected, modeling was carried out first under simple settings and crude assumptions [3– 7, 10, 19, 26, 32–35, 46, 48, 49, 57, 59, 65, 67–71, 75, 76, 79, 81, 88, 95–97, 102, 103]. An overview of the “state of the art” on the transmission dynamics of HIV modeling in the 1980’s is found in [30], the review papers [97, 99], or in the books [8, 30, 63]. 

The modeling studies in [32–35, 67, 102, 103] focused on the impact that changes in the pool of susceptibles, disease-induced mortality, heterogeneous mixing, vertical transmission, asymptomatic carriers, variable infectivity, and incubation (or latent) and infective periods may have on the dynamics of sexually transmitted HIV. Efforts to model the risk of infection from sexual partner selection or from within and between group mixing became central to the research of various groups studying HIV dynamics. Other studies focused on the role of gender, core populations, and heterogenous mixing contact rates on HIV dynamics. These were naturally involved in the development of sexual-behavior surveys and data collection on sexual and “dating” activity, as well as on the mathematical modeling and analysis of heterogenous “mixing” frameworks (see [20, 21, 23, 24, 27, 28, 36– 39, 41, 47, 78, 93]). The overview in [83] highlights the potential role of sexual activity and drinking on the dynamics of STDs [47, 65, 66, 93] and while the adaptive dynamics generated by changing behaviors in response, to a multitude of factors, were rarely explored, some earlier attempts were also carried out as a result of the HIV pandemic [22, 60]. 

As described in these historical papers [3–5], knowledge of these periods was quickly identified as critical to the initial efforts to predict the dynamics of HIV. In [35] it is observed that: “The duration of the latent period is thought to be a few days to a few weeks [3–5], and while the duration of the infectious period is not yet known, those individuals that develop full-blown AIDS have an average incubation period estimated variously at 35–47 months [88], 66 months [3], and as high as 96 months [81].” This estimate is continually being revised as information and experience accumulate. However, even the most conservative estimate suggests that it may be reasonable to approximate the infectious period by the incubation period; that is, to assume a negligible latent period. Pickering et al. [88] stress that the ability to transmit HIV is not constant, as individuals are most infectious 3–16 months following exposure, and recent studies [58, 77, 94] report the existence of two peaks of infectiousness, one taking place a few weeks after exposure and the other before the onset of “full-blown” AIDS. 

In the context of the dynamics of a homosexually-active homogeneously-mixing population, the reproduction number is given by $\mathcal { R } _ { 0 } = \lambda C ( T ) D$ , where λ denotes the probability of transmission per partner, C(T ) the mean number of sexual partners an average individual has per unit time when the population density is $T$ , and D the death-adjusted mean infective period (see [35]). Since HIV is a slow disease, if $\mathcal { R } _ { 0 } ~ \leq ~ 1$ it will die out while if $\mathcal { R } _ { 0 } ~ \ge ~ 1$ it will persist in the presence of a small number of infected/infective individuals. The mathematical analysis and numerical simulations in [35] suggest that whenever the incubation period distribution is exponential the reproduction number $\mathcal { R } _ { 0 }$ is a global bifurcation parameter (transcritical bifurcation), that is, as $\mathcal { R } _ { 0 }$ crosses 1 a global transfer of stability from the disease-free state to the endemic equilibrium takes place, and vice versa. Local results do not depend on the distribution of times spent in the infective categories (the survivorship functions). Keeping a suite of parameters fixed [35] allowed for the comparison of the exponential incubation period distribution versus a piecewise constant survivorship (individuals remain infective for a fixed length of time). It was found that for “. . . some realistic parameters we can see (at least in these cases) that the reproduction numbers corresponding to these two extreme cases do not differ by more than 18% whenever the two distributions have the same mean [35].” 

The inclusion of heterogeneity via the introduction of a large number of subgroups limited the forecasting capability of these models due to factors that included increased levels of uncertainty (more parameters). The use of multigroup models raised the expected modeling and parameter estimation challenges [20, 21, 23, 24, 27, 28, 36–38, 41, 65, 66, 93]. In addition, the analyses of some of these models generated novel dynamic behavior, questioning, possibly for the first time in epidemiology, the centrality of the role of the basic reproduction number in the identification and development of control, or education, or intervention measures. For example, the natural asymmetry present in disease transmission as a result of prevalent alternative modes of sexual engagement proved to be capable of giving rise to the existence of multiple equilibria [33, 34, 67]; an unexpected outcome at that time. 

## 8.2 A Model with Exponential Waiting Times

A single homosexually-active population is divided into three classes. S denoting the number of susceptible individuals, I infective individuals, and A former I - individuals who have developed full-blown AIDS (see Fig. 8.9). We assume that all HIV-infected individuals will eventually develop full-blown AIDS (unless they die first from other causes). This, unfortunately, may be the most realistic as evidence accumulates that AIDS is a progressive disease. Later, we will suggest a project to develop a model under the assumption that some fraction of infected individuals will escape progression to full-blown AIDS. Originally, a latent class (i.e., those exposed individuals that are not yet infectious) was not included because it was believed then that the time spent in that class is short. It is further assumed that individuals who develop full-blown AIDS are no longer actively infective, that is, that they have no sexual contacts; it is also assumed that infected individuals become infective immediately. Finally, it is assumed that infective individuals acquire AIDS at the constant rate $\alpha _ { I }$ per unit time and become sexually inactive at the constant rate α per unit time. Therefore, $1 / ( \mu + \alpha _ { I } )$ gives the mean incubation period and $1 / ( \mu + \alpha )$ gives the mean sexual life expectancy. 

The introduction of the model requires additional definitions. Λ will denote the constant recruitment rate into the susceptible class (individuals who are sexually active); $\mu$ the constant per-capita natural mortality rate; $d$ the per-capita constant disease-induced mortality due to AIDS. The function $C ( T )$ models the mean number of sexual partners an average individual has per unit time when the population density is $T ; \lambda$ (a constant) denotes the average sexual risk per infected partner; $\lambda$ is often thought as the product $i \phi$ [68], where $\phi$ is the average number of contacts per sexual partner and i the conditional probability of infection from a sexual contact when the latter is infected. Kingsley et al. [72] had presented (not surprising) evidence that the probability of seroconversion (infection) increases with the number of infected sexual partners. Hence, $\lambda C ( T )$ models the transmission rate per unit time per infected partner when the size of the sexually active population is $T$ . Using the modeling framework published in [3, 4] with the help of Fig. 8.1, we arrive at the following epidemiological model [35] for sexually transmitted HIV under the assumption of exponential waiting times in the infection classes. 

$$
\begin{array}{l} \frac {d S (t)}{d t} = \Lambda - \lambda C (T (t)) \frac {S (t) I (t)}{T (t)} - \mu S (t) \\ \frac {d I (t)}{d t} = \lambda C (T (t)) \frac {S (t) I (t)}{T (t)} - (\alpha_ {I} + \mu) I (t) \tag {8.1} \\ \frac {d A (t)}{d t} = \alpha_ {I} I (t) - (\alpha + \mu) A (t) \\ \end{array}
$$

where 

$$
T = I + S. \tag {8.2}
$$

The fraction $I / T$ can be thought of as representing the fraction of contacts that a susceptible individual has with a randomly selected infective individual. Here $\lambda C ( T ) S I / T$ denotes the number of newly-infected individuals per unit time since individuals in classes A are sexually inactive. A plausible assumption for modeling $C ( T )$ would be to assume that it is approximately linear for small T approaching a saturation level for large values of T [62]. Here, it is assumed that $C ( T )$ is a differentiable and increasing function of T (except when noted). Anderson et. al. [4] observe that $C ( T )$ , the mean number of sexual partners per unit time, underestimates the importance of highly active individuals and that consequently, modifications should be made to this framework in order to properly account for their role. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/e38687eab01338e6c4aae31a5b1c479b566c260d693834cf77b766f5b7264f72.jpg)



Fig. 8.1 Flow diagram: single group model in the case when all infected people will progress to AIDS


The analysis of the system (8.1) found in [35] makes the following assumptions concerning C(T ): 

$$
C (T) > 0, \quad C ^ {\prime} (T) \geq 0, \tag {8.3}
$$

with prime denoting the derivative with respect to $T$ . The dynamics of S and I are independent of A (by construction). The system is well-posed, that is, if $S ( 0 ) \geq 0 _ { : }$ , $I ( 0 ) \geq 0 , A ( 0 ) \geq 0$ then a unique solution exists with $S ( t ) \geq 0 , I ( t ) \geq 0 , A ( t ) \geq 0$ for $t \geq 0$ . 

As it is the case with most of the epidemiological systems addressed in this book, system (8.1) always has the disease-free equilibrium given by 

$$
(S, I, A) = \left(\frac {\Lambda}{\mu}, 0, 0\right), \tag {8.4}
$$

and under certain assumptions it also supports a unique endemic equilibrium. 

The stability of the disease-free equilibrium (8.4) is determined by the nondimensional ratio 

$$
\mathcal {R} _ {0} = \lambda \left(\frac {1}{\sigma_ {I}}\right) C \left(\frac {\Lambda}{\mu}\right), \tag {8.5}
$$

that is, by the basic reproduction number. In the definition of $\mathcal { R } _ { 0 } , \sigma _ { I } = \alpha _ { I } + \mu$ , and $\mathcal { R } _ { 0 }$ denotes the number of secondary infections generated by a single infective individual in a population of susceptibles at a demographic steady state. $\mathcal { R } _ { 0 }$ is given by the product of the three factors (epidemiological parameters): λ (the probability of transmission per partner), $C ( \varLambda / \mu )$ (the mean number of sexual partners that an average susceptible individual has per unit time when everybody in the population is susceptible), and 

$$
D = \left(\frac {1}{\sigma_ {I}}\right). \tag {8.6}
$$

The death-adjusted mean infective period is $D = D _ { I }$ with $D _ { I }$ denoting the deathadjusted mean infectious period $1 / \sigma _ { I }$ of the I class. The use of the dimensionless ratio, $\mathcal { R } _ { 0 } = \lambda C ( A / \mu ) D$ leads to the following result [35]: 

Theorem 8.1 If $\mathcal { R } _ { 0 } ~ < ~ 1$ then the equilibrium $( \varLambda / \mu , 0 , 0 )$ of the system (8.1) is globally asymptotically stable. 

That is, every solution of (8.1) $( S ( t ) , I ( t ) , A ( t ) )$ with $S ( 0 ) ~ \geq ~ 0 , ~ I ( 0 ) ~ \geq ~ 0 .$ , $A ( 0 ) ~ \geq ~ 0$ tends to $( \varLambda / \mu , 0 , 0 )$ as $t ~  ~ + \infty$ . That is, the condition $\mathcal { R } _ { 0 } ~ \leq ~ 1$ is sufficient to guarantee that the disease will eventually die out in this population. 

An endemic equilibrium $( S ^ { * } , I ^ { * } , A ^ { * } )$ of (8.1) satisfies 

$$
\varLambda = \left[ \frac {\varLambda - \mu S ^ {*}}{\sigma_ {I}} - \mu \right] S ^ {*}, \quad I ^ {*} = \frac {\varLambda - \mu S ^ {*}}{\alpha_ {I} + \mu}, \quad A ^ {*} = \frac {\alpha_ {I}}{\alpha_ {I} + \mu} I ^ {*}.
$$

In [35] it has also been established (following some of the same arguments used in other chapters) that: 

Theorem 8.2 If $\mathcal { R } _ { 0 } ~ > ~ 1$ , there is a unique endemic equilibrium $( S ^ { * } , I ^ { * } , A ^ { * } )$ , which is locally asymptotically stable, and the disease-free state $( \varLambda / \mu , 0 , 0 )$ is unstable. 

We can summarize the situation (full details of all proofs are in [35]) as follows: The disease-free state of system (8.1) is globally asymptotically stable when $\mathcal { R } _ { 0 } > 1$ and unstable if $\mathcal { R } _ { 0 } ~ > ~ 1$ . When $\mathcal { R } _ { 0 } \ > \ 1$ , this system has a unique locally asymptotically stable endemic equilibrium. There is a transfer of stability to the endemic state as $\mathcal { R } _ { 0 }$ crosses one. Further, when $\mathcal { R } _ { 0 } > 1$ it was shown, as one would expect, that the endemic equilibrium is also globally asymptotically stable. 

The reproduction number $( \mathcal { R } _ { 0 } )$ increases proportionately with the transmission probability and the average number of sexual partners; it may also increase in proportion to the rate of recruitment of individuals to the susceptible class through $C ( T ) . { \mathcal { R } } _ { 0 }$ is an increasing function of the mean infective period D and may be a decreasing function of the mortality rate (depending on the functional expression for $C ( T ) ,$ . 

## 8.3 An HIV Model with Arbitrary Incubation Period Distributions

The use of exponential waiting distributions in the I class corresponds to the requirement that the per-capita removal rate from the I class (by the development of full-blown AIDS symptoms) into the A class is constant. It would be clearly an improvement in the model of Sect. 8.2 if we were to move from constant to variable removal rates and this is what we do in this section (the ideas follow those in [19, 35]). Hence, it is still assumed that individuals become immediately infective (that is, we continue to neglect the latent period) and continue to divide the at risk population into the three classes: S, I , and A. The parameters $\lambda = i \phi$ , Λ, $\mu , d ,$ , and $p$ have the same meaning as in Sect. 8.2; however, the removal rates are modified through the introduction of the function $P _ { I } ( s )$ representing the proportion of individuals who become I −infective at time t and that, if alive, are still infective at time $t + s$ (survive as infective). The survivorship function $P _ { I }$ is non-negative and non-increasing, and $P _ { I } ( 0 ) = 1$ . It is further assumed that 

$$
\int_ {0} ^ {\infty} P _ {I} (s) d s <   \infty ,
$$

and thus, $- \dot { P } _ { I } ( x )$ is the rate of removal of individuals from the class I into the class $A , x$ time units after infection. 

The number of new infections occurring at time x is $\lambda C ( T ( x ) S ( x ) I ( x ) / T ( x )$ where we have kept the meaning of $C ( T )$ , I , and T as in Sect. 8.2. The rate of change in the susceptible class is given now by the expression: 

$$
\frac {d S (t)}{d t} = \Lambda - \lambda C (T (t)) S (t) \frac {I (t)}{T (t)} - \mu S (t), \tag {8.7}
$$

with 

$$
\int_ {0} ^ {t} \lambda C (T (x)) S (x) \frac {I (x)}{T (x)} e ^ {- \mu (t - x)} P _ {I} (t - x) d x
$$

representing the number of individuals who have been infected from time 0 to t and are still in class I . The discount factor exp $( - \mu ( t - x ) )$ takes into account removals due to deaths by natural causes (not HIV). Hence, if $I _ { 0 } ( t )$ denotes individuals in class I at time $t ~ = ~ 0$ that are still infective at time t then the total number of infectives at time t is given by 

$$
I (t) = I _ {0} (t) + \int_ {0} ^ {t} \lambda C (T (x)) S (x) \frac {I (x)}{T (x)} e ^ {- \mu (t - x)} P _ {I} (t - x) d x, \tag {8.8}
$$

where $I _ { 0 } ( t )$ is assumed (for biological and mathematical reasons) to have compact support (vanishing for large enough t). 

The expression for $A ( t )$ turns out to be the sum of three terms: $A _ { 0 } e ^ { - ( \mu + d ) t }$ , where $A _ { 0 } = A ( 0 )$ , representing individuals who had full-blown AIDS at time zero and are still alive; $A _ { 0 } ( t )$ representing individuals initially in class I who moved into class A and are still alive at time t; and those who joined the I class after time $t = 0$ (see below). We assume that $A _ { 0 } ( t )$ approaches zero as t approaches infinity. The term representing infected individuals “born” after time $t = 0$ is given by 

$$
\int_ {0} ^ {\tau} \left\{\int_ {0} ^ {t} \lambda C (T (x)) S (x) \frac {I (x)}{T (x)} e ^ {- \mu (\tau - x)} [ - \dot {P} _ {I} (\tau - x) e ^ {- (\mu + d) (t - \tau)} ] d x \right\} d \tau ,
$$

where $- { \dot { P } } _ { I } ( \tau - x )$ , denotes the rate of removal from the class I at time τ or $( \tau - x )$ units after infection. Therefore 

$$
\begin{array}{l} A (t) = p \int_ {0} ^ {\tau} \left\{\int_ {0} ^ {t} \lambda C (T (x)) S (x) \frac {I (x)}{T (x)} e ^ {- \mu (t - x)} [ - \dot {P} _ {A} (\tau - x) e ^ {- (t - \tau)} ] d x \right\} d \tau \\ + A _ {0} e ^ {- (\mu + d) t} + A _ {0} (t). \tag {8.9} \\ \end{array}
$$

The model given by equations (8.7) is a system of nonlinear integral equations. The standard results on well-posedness for these systems, as found in [82] guarantee the existence and uniqueness of solutions and their continuous dependence on parameters. The proof of positivity is given in [32]. 

The basic reproduction number $\mathcal { R } _ { 0 } )$ of the system (8.7) is given by 

$$
\mathcal {R} _ {0} = \lambda C \left(\frac {\Lambda}{\mu}\right) \int_ {0} ^ {\infty} P _ {I} (x) e ^ {- \mu x} d x, \tag {8.10}
$$

where 

$$
\int_ {0} ^ {\infty} P _ {I} (x) e ^ {- \mu x} d x,
$$

is the death-adjusted mean infective period, D. If $P _ { I } ( x ) = e ^ { - \alpha _ { I } x }$ then (8.10) reduces to (8.5). We also observe that as before 

$$
D _ {I} = \int_ {0} ^ {\infty} P _ {I} (s) e ^ {- \mu s} d s
$$

denotes the mean infective periods of the class I . 

System (8.7) with $I _ { 0 } ( t ) = 0$ always has the equilibrium 

$$
(S, I) = \left(\frac {\Lambda}{\mu}, 0\right), \tag {8.11}
$$

but no other constant solutions. However, since $I _ { 0 } ( t )$ must be zero for large t , one would expect, under appropriate assumptions, that $( \varLambda / \mu , 0 )$ will be an attractor or “asymptotic equilibrium” as $t \to + \infty$ . The following results have been shown in [32, 35]. 

Theorem 8.3 The infection-free state $( \varLambda / \mu , 0 )$ of the limiting system (8.7) is a global attractor; that is, $\mathrm { l i m } _ { t  + \infty } ( S ( t ) , I ( t ) ) = ( \Lambda / \mu , 0 )$ for any positive solution of system (8.7) as long as $\mathcal { R } _ { 0 } \leq 1$ . 

Theorem 8.4 The infection-free state of system (8.7) is unstable when $\mathcal { R } _ { 0 } > 1$ and there exists a constant $W ^ { * } > 0 ,$ , such that, any positive solution $( S ( t ) , I ( t ) ) o f ( 8 . 7 )$ satisfies lim $\operatorname* { s u p } _ { t \to + \infty } I ( t ) \geq W ^ { * }$ . 

In other words, if $\mathcal { R } _ { 0 } > 1$ the disease-free state (8.4) cannot be an attractor of any positive solution. That is, every solution has at least approximately $W ^ { * }$ infectives (this $W ^ { * }$ is the same as that in the statement of Theorem 8.5 below) for a sequence of times t tending to and if $S ( t ) , I ( t )$ approach nonzero constants as $t \to + \infty$ , when $\mathcal { R } _ { 0 } > 1$ then the results in [82] guarantee that these constants must satisfy the limiting system associated with (8.7), which is given by the following set of equations: 

$$
\frac {d S}{d t} = \Lambda - \lambda C (T (t)) S (t) \frac {I (t)}{T (t)} - \mu S (t) \tag {8.12}
$$

$$
I (t) = \int_ {0} ^ {t} \lambda C (T (x)) S (x) \frac {I (x)}{T (x)} e ^ {- \mu (t - x)} P _ {I} (t - x) d x.
$$

The limiting system (8.12) is an autonomous system for which we have established the following result: 

Theorem 8.5 If $\mathcal { R } _ { 0 } > 1$ the limiting system (8.12) has a unique positive equilibrium $S ^ { * } , I ^ { * }$ . If in addition $( d / d T ) ( C ( T ) / T ) \leq 0 $ , then this endemic equilibrium is locally asymptotic. 

Theorem 8.5 indicates that there is a switch of stability from $( \varLambda / \mu , 0 )$ to $( S ^ { * } , I ^ { * } )$ as $\mathcal { R } _ { 0 }$ crosses 1. We also conjecture but have not proved that the asymptotic dynamics of system (8.7) and the limiting system (8.12) agree. An alternative approach can be found in [61]. The proofs of these results can be found in [35]. 

## 8.4 An Age of Infection Model

The model presented here is developed in [103]. We consider a homogeneouslymixing male homosexual population with infected members stratified by infection age (time since having been infected). We divide the population into three compartments: S (uninfected, but susceptible), I (HIV infected but with minimal or no symptoms), and A (fully developed AIDS). We assume members of the class A are no longer sexually active, and we let $T = S + I$ be the size of the sexually active population. 

We let t denote time and τ denote age of infection, and we stratify the infected population by writing 

$$
I (t) = \int_ {0} ^ {\infty} i (t, \tau) d \tau ,
$$

where $i ( t , \tau )$ denotes the infection age density at time t. We assume: 

• the mean number of sexual contacts per individual in unit time is $a ,$ , 

• there is a mean transmission rate $\lambda ( \tau )$ at which a typical susceptible individual contracts the infection by contact with an infected individual of infection age τ , 

• there is a rate $\alpha ( \tau )$ of leaving the sexually active population (because of progression to AIDS) that depends on the age of infection, 

• there is a constant rate of recruitment Λ into the sexually active population, 

• there is a constant rate $\mu$ of departure of uninfected members from the sexually active population, 

• there is a constant death rate ν from full-blown AIDS. 

Under these assumptions, the fraction of members remaining in the class I τ time units after having been infected is 

$$
P (\tau) = e ^ {- \mu \tau - \int_ {0} ^ {\tau} \alpha (\sigma) d \sigma}.
$$

Then 

$$
i (t, \tau) = i (t - \tau , 0) P (\tau).
$$

We define the total infectivity at time t , 

$$
W (t) = W _ {0} (t) + \int_ {0} ^ {t} \lambda (\tau) i (t, \tau) d \tau = W _ {0} (t) + \int_ {0} ^ {t} \lambda (\tau) i (t - \tau , 0) P (\tau) d \tau ,
$$

where $W _ { 0 } ( t )$ is the infectivity at time t of those individuals who were infected at time t 0. Then the rate of new infections in unit time is 

$$
B (t) = i (t, 0) = a \frac {S (t)}{T (t)} W (t),
$$

and 

$$
W (t) = W _ {0} (t) + \int_ {0} ^ {t} \lambda (\tau) P (\tau) B (t - \tau) d \tau .
$$

We will take a to be constant, but one could assume more generally that a is a function of the total sexually active population size T . 

These assumptions lead to the model 

$$
\begin{array}{l} S ^ {\prime} (t) = \Lambda - B (t) - \mu S (t) \\ W (t) = W _ {0} (t) + \int_ {0} ^ {t} \lambda (\tau) P (\tau) B (t - \tau) d \tau \tag {8.13} \\ \end{array}
$$

$$
B (t) = a \frac {S (t)}{T (t)} W (t)
$$

$$
I (t) = I _ {0} (t) + \int_ {0} ^ {t} B (t - \tau) P (\tau) d \tau .
$$

Since we wish to study equilibria and their stability, we consider the limit system of (8.13), namely 

$$
S ^ {\prime} (t) = \varLambda - B (t) - \mu S (t)
$$

$$
W (t) = \int_ {0} ^ {\infty} \lambda (\tau) P (\tau) B (t - \tau) d \tau \tag {8.14}
$$

$$
B (t) = a \frac {S (t)}{T (t)} W (t)
$$

$$
I (t) = \int_ {0} ^ {\infty} B (t - \tau) P (\tau) d \tau .
$$

In order to obtain an expression for the number of active AIDS cases, not part of the model since individuals in the class A are assumed not to have any further sexual contacts, but included because it provides a relation that may be compared with data, we differentiate the equation 

$$
I (t) = \int_ {0} ^ {t} B (s) P (t - s) d s
$$

of (8.14), using 

$$
P ^ {\prime} (u) = - [ \mu + \alpha (u) ] P (u).
$$

We obtain 

$$
I ^ {\prime} (t) = B (t) - \mu I (t) - \int_ {0} ^ {t} B (s) \alpha (t - s) P (t - s) d s.
$$

The input to the AIDS class A is 

$$
\int_ {0} ^ {t} B (s) \alpha (t - s) P (t - s) d s.
$$

Thus the number of active AIDS cases is given by 

$$
A ^ {\prime} (t) = \int_ {0} ^ {\infty} \alpha (t - s) P (t - s) B (s) d s - \nu A (t).
$$

Analysis of the model (8.14) would be considerably simpler if we had assumed mass action incidence rather than standard incidence, because use of standard incidence brings $T ( t ) = S ( t ) + I ( t )$ into the model. However, mass action incidence is much less plausible for sexual transmission models than standard incidence. For the model it is not difficult to show that the basic reproduction number is given by 

$$
\mathcal {R} _ {0} = a \int_ {0} ^ {\infty} \lambda (\tau) P (\tau) d \tau ,
$$

and that there is a disease-free equilibrium $S = A / \mu , I + B = W = 0$ which is asymptotically stable if $\mathcal { R } _ { 0 } ~ < ~ 1$ . Calculation of the endemic equilibrium is more difficult, but it is possible to show that there is an endemic equilibrium that is asymptotically stable at least for values of $\mathcal { R } _ { 0 }$ larger than 1 but close to 1. For larger values of $\mathcal { R } _ { 0 }$ the endemic equilibrium may be unstable, and there may be a Hopf bifurcation [64] and sustained oscillatory solutions of the model. 

## 8.5 *HIV and Tuberculosis: Dynamics of Coinfections

HIV diminishes the ability of the immune system to respond to invasions by infectious agents such as M. tuberculosis. Furthermore, as HIV infection progresses, immunity often declines with patients becoming more susceptible to typical or rare infections. In wealthier societies HIV and TB treatments are common; these drugs have altered significantly the joint dynamics of TB and HIV. 

The modeling literature on the independent dynamics of HIV or TB is quite extensive. TB efforts include, for example, [9, 18, 40, 42, 43, 50, 51, 89] while HIV/AIDS include [31, 63, 80, 103] to name a few more. TB/HIV coinfection modeling efforts have also been published. Kirschner [73] developed an immunological model describing HIV-1 and TB coinfections within a host. Naresh et al. [86] introduced a model involving a population sub-divided into four epidemiological classes: susceptible, TB infective, HIV infective, and those with AIDS; a model focusing on the transmission dynamics of HIV and treatable TB in variable size populations. Schulzer et al. [101] looked at HIV/TB joint dynamics using actuarial methods. West and Thompson [105] introduced models for the joint dynamics of HIV and TB that were explored via numerical simulations; their main goal was to estimate parameters and use their estimates to forecast the future transmission of TB in the United States. Porco et al. [90] looked, using a discrete event simulation model, at the impact of HIV on the probability and expected severity of TB outbreaks. Additional efforts include those in [91, 98]. 

A system of differential equations is used in [92] to model the joint dynamics of TB and HIV. The total population is divided into the following epidemiological subgroups: S, susceptible; $L ,$ latent with TB; I , infectious with TB; $T .$ , successfully treated with TB; $J _ { 1 }$ , HIV infectious; $J _ { 2 }$ , HIV infectious and TB latent; $J _ { 3 }$ , infectious with both TB and HIV; and A, “full-blown” AIDS. The compartmental diagram in Fig. 8.2 illustrates the flow of individuals as they face the possibility of acquiring specific-disease infections or even coinfections. 

The TB/HIV model is given by the following systems of eight ordinary differential equations: 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/4ac4c31fda6e755f80634a7447c2ae7d1a7b627040fa648c01bb2894e01f314e.jpg)



Fig. 8.2 Transition diagram between classes for the dynamics of TB and HIV coinfections. The force of infection for TB is $\lambda _ { T } = c ( I + J _ { 3 } ) / N$ , and the force of infection for HIV is $\lambda _ { H } = \sigma J ^ { * } / R$ , where $J ^ { * } = J _ { 1 } + J _ { 2 } + J _ { 3 }$


$$
\begin{array}{l} \frac {d S}{d t} = \Lambda - c S \frac {I + J _ {3}}{N} - \sigma S \frac {J ^ {*}}{R} - \mu S \\ \frac {d L}{d t} = c (S + T) \frac {I + J _ {3}}{N} - \sigma L \frac {J ^ {*}}{R} - (\mu + k + r _ {1}) L \\ \end{array}
$$

$\frac { d I } { d t } = k L - ( \mu + d + r _ { 2 } ) I$ 

$$
\frac {d T}{d t} = r _ {1} L + r _ {2} I - c T \frac {I + J _ {3}}{N} - \sigma T \frac {J ^ {*}}{R} - \mu T,
$$

$$
\frac {d J _ {1}}{d t} = \sigma (S + T) \frac {J ^ {*}}{R} - c J _ {1} \frac {I + J _ {3}}{N} - (\alpha_ {1} + \mu) J _ {1} + r ^ {*} J _ {2}
$$

$\frac { d J _ { 2 } } { d t } = \sigma L \frac { J ^ { * } } { R } + c J _ { 1 } \frac { I + J _ { 3 } } { N } - ( \alpha _ { 2 } + \mu + k ^ { * } + r ^ { * } ) J _ { 2 }$ HIV (8.15b) 

$$
\frac {d J _ {3}}{d t} = k ^ {*} J _ {2} - (\alpha_ {3} + \mu + d ^ {*}) J _ {3}
$$

$$
\frac {d A}{d t} = \alpha_ {1} J _ {1} + \alpha_ {2} J _ {2} + \alpha_ {3} J _ {3} - (\mu + f) A,
$$


Table 8.1 Definition of parameters and state variables used in the TB/HIV model (8.15)


<table><tr><td>Symbol</td><td>Definition</td></tr><tr><td>N</td><td>Total population</td></tr><tr><td>R</td><td>Total active population (<eq>= N - I - J_3 - A = S + L + T + J_1 + J_2</eq>)</td></tr><tr><td><eq>J^*</eq></td><td>Individuals with HIV who have not developed AIDS (<eq>= J_1 + J_2 + J_3</eq>)</td></tr><tr><td><eq>\Lambda</eq></td><td>Constant recruitment rate</td></tr><tr><td>c</td><td>Transmission rate of TB</td></tr><tr><td><eq>\sigma</eq></td><td>Transmission rate of HIV</td></tr><tr><td><eq>\mu</eq></td><td>Per-capita natural death rate</td></tr><tr><td>k</td><td>Per-capita TB progression rate for individuals not infected with HIV</td></tr><tr><td><eq>k^*</eq></td><td>Per-capita TB progression rate for individuals infected also with HIV</td></tr><tr><td>d</td><td>Per-capita TB-induced death rate</td></tr><tr><td><eq>d^*</eq></td><td>Per-capita HIV-induced death rate</td></tr><tr><td>f</td><td>Per-capita AIDS-induced death rate</td></tr><tr><td><eq>r_1</eq></td><td>Per-capita latent TB treatment rate for individuals with no HIV</td></tr><tr><td><eq>r_2</eq></td><td>Per-capita active TB treatment rate for individuals with no HIV</td></tr><tr><td><eq>r^*</eq></td><td>Per-capita latent TB treatment rate for individuals with also HIV</td></tr><tr><td><eq>\alpha_i</eq></td><td>Per-capita AIDS progression rate for individuals in the <eq>J_i</eq> (<eq>i = 1, 2, 3</eq>)</td></tr></table>

where 

$$
N = S + L + I + T + J _ {1} + J _ {2} + J _ {3} + A,
$$

$$
R = N - I - J _ {3} - A = S + L + T + J _ {1} + J _ {2}, \tag {8.16}
$$

$$
J ^ {*} = J _ {1} + J _ {2} + J _ {3}.
$$

The variable R here collects non-infectious “circulating” individuals, that is, those who do not have active TB or AIDS. Definitions of model parameters are collected in Table 8.1. 

The modeling assumptions include: homogenous mixing; HIV positive and TB infective $\left( J _ { 3 } \right)$ showing severe HIV symptoms cannot be effectively treated for active TB; TB infections are only acquired through contacts with TB infectious individuals (I and $J _ { 3 } )$ ; and individuals may acquire HIV infections only through contacts with HIV infectious individuals $( J ^ { * }$ group). Further, the “probability” of infection per contact is assumed to be the same for T and S classes $( \beta$ and λ). Furthermore, I (TB infectious), $J _ { 3 }$ (TB and HIV infectious), and A (AIDS) individuals are too ill to remain sexually active and, consequently, they do not transmit HIV through sexual activity. Hence, $R \equiv N - I - J _ { 3 } - A$ and the HIV incidence is modeled by $\sigma J ^ { * } / R$ (see [29, 74, 108]). 

The probability of having a contact with HIV infectious individuals is modeled as $J ^ { * } / R$ and the number of new HIV infections in a unit time is therefore $\sigma S J ^ { * } / R$ [IV drug injections, vertically-transmitted HIV (children of birth), or HIV transmission via breast feeding, forms of HIV transmission are ignored]. The most drastic in this model comes from the incorporation of sexual transmission as an indirect risk factor, a function of HIV prevalence. Further, demographic changes are ignored or alternatively, it is assumed that the time scale under consideration is such that changes in population size are not too significant. 

The TB control reproduction number (under treatment) is given by the expression 

$$
\mathcal {R} _ {1} = \frac {c k}{(\mu + k + r _ {1}) (\mu + d + r _ {2})} \tag {8.17}
$$

while the HIV reproduction number is 

$$
\mathcal {R} _ {2} = \frac {\sigma}{\alpha_ {1} + \mu}. \tag {8.18}
$$

$\mathcal { R } _ { 1 }$ is the product of the average number of susceptible infected by one TB infective individual over its effective infective period, $c / ( \mu + d + r _ { 2 } )$ , and the fraction of the population that survives the TB latent period, $k / ( \mu + k + r _ { 1 } )$ . $\mathcal { R } _ { 1 }$ denotes the number of secondary TB infectious cases generated by a typical TB infective individual during its effective infective period if introduced in a population of mostly TB-susceptible individuals, in a population where TB treatment is accessible. $\mathcal { R } _ { 2 }$ is the HIV reproduction number in a TB-free society, the number of secondary HIV infections produced by an HIV infectious (but not TB-infected) individual during its infectious period if introduced in a population of HIV-susceptible individuals (in a TB-free world). The reproduction numbers do not involve the parameters tied in to the dynamics of TB-HIV coinfection, that is, $k ^ { * }$ and $\alpha _ { 3 }$ . 

Consequently, the reproduction number for system (8.15) under TB treatment is given by 

$$
\mathcal {R} = \max \{\mathcal {R} _ {1}, \mathcal {R} _ {2} \}.
$$

We have shown in [92] that TB and HIV will die out if $\mathcal { R } < 1$ while either or both diseases may become endemic if $\mathcal { R } > 1$ . 

In [92], it was shown that system (8.15) is well-posed, that is, solutions that start in this octant where all the variables are non-negative stay there. It was also shown that system (8.15) has three possible non-negative boundary equilibria: the diseasefree equilibrium (DFE) or $E _ { 0 }$ , the TB-only (HIV-free) equilibrium or $E _ { T }$ , and the HIV-only (TB-free) equilibrium or $E _ { H }$ . The components of $E _ { 0 }$ are 

$$
S _ {0} = \frac {\Lambda}{\mu}, L _ {0} = I _ {0} = T _ {0} = J _ {0 1} = J _ {0 2} = J _ {0 3} = A _ {0} = 0.
$$

The $E _ { T }$ components are 

$$
S _ {T} = \frac {\Lambda}{\mu + c I _ {T} / N _ {T}}, \quad L _ {T} = \frac {I _ {T}}{R _ {1 b}}, \quad I _ {T} = \frac {N _ {T} (\mathcal {R} _ {1} - 1)}{\mathcal {R} _ {1} + \mathcal {R} _ {1 a}}, \quad T _ {T} = \frac {(r _ {1} L + r _ {2} I _ {T}) S _ {T}}{\Lambda},
$$

$$
J _ {1 T} = J _ {2 T} = J _ {3 T} = A _ {T} = 0,
$$

where 

$$
N _ {T} = \frac {\varLambda}{\mu + d (\mathcal {R} _ {1} - 1) / (\mathcal {R} _ {1} + \mathcal {R} _ {1 a})},
$$

with 

$$
\mathcal {R} _ {1 a} = \frac {c}{\mu + k + r _ {1}}, \mathcal {R} _ {1 b} = \frac {k}{\mu + d + r _ {2}}. \tag {8.19}
$$

The $E _ { H }$ components are 

$$
S _ {H} = \frac {\Lambda}{\mu \mathcal {R} _ {2} + \alpha_ {1} (\mathcal {R} _ {2} - 1)}, \quad L _ {H} = I _ {H} = T _ {H} = 0,
$$

$$
J _ {1 H} = (\mathcal {R} _ {2} - 1) S _ {H}, \quad J _ {2 H} = J _ {3 H} = 0, \quad A _ {H} = \frac {\alpha_ {1} J _ {1 H}}{\mu + f}.
$$

The following results were established in [92]: 

Theorem 8.6 The disease-free equilibrium $E _ { 0 }$ is locally asymptotically stable if $\mathcal { R } < 1$ , and it is unstable if $\mathcal { R } > 1$ . 

Theorem 8.7 The HIV-free equilibrium $E _ { T }$ is locally asymptotically stable $i f \mathcal { R } _ { 1 } >$ 1 and $\mathcal { R } _ { 2 } < 1$ . 

We observe that $E _ { H }$ may not be locally asymptotically stable under the conditions $\mathcal { R } _ { 1 } ~ < ~ 1$ and $\mathcal { R } _ { 2 } ~ > ~ 1$ . Our numerical studies show that when $\mathcal { R } _ { 1 } ~ < ~ 1$ and $\mathcal { R } _ { 2 } > $ 1 it is possible that the equilibrium $E _ { H }$ is unstable and TB can coexist with HIV [92]. Further, whenever both reproduction numbers are greater than 1, that is, $\mathcal { R } _ { 1 } ~ > ~ 1$ and $\mathcal { R } _ { 2 } ~ > ~ 1$ , $E _ { T }$ and $E _ { H }$ both exist and $E _ { 0 }$ is unstable. Our numerical studies show that all three boundary equilibria are unstable and solutions converge to an interior equilibrium point. Furthermore, partial analytical results and numerical simulations support the existence of an interior equilibrium $\hat { E }$ when both reproduction numbers, $\mathcal { R } _ { 1 }$ and $\mathcal { R } _ { 2 }$ , are greater than 1. The numerical simulations of the system further suggest that the interior equilibrium is LAS in most cases although the possibility of stable periodic solutions seems likely [92]. 

When both reproduction numbers are greater than 1, i.e., $\mathcal { R } _ { 1 } > 1$ and $\mathcal { R } _ { 2 } > 1$ , $E _ { T }$ and $E _ { H }$ both exist and $E _ { 0 }$ is unstable. In this case, the numerical simulations of the model show that it is possible that all three boundary equilibria are unstable and solutions converge to an interior equilibrium point. Although explicit expressions for an interior equilibrium are very difficult to compute analytically, we have managed to obtain some relationships that can be used to determine the existence of an interior equilibrium. 

Let $\hat { E } = ( \hat { S } , \hat { L } , \hat { I } , \hat { J _ { 1 } } , \hat { J _ { 2 } } , \hat { J _ { 3 } } , \hat { A } )$ denote an interior equilibrium with all components positive, and let x and y denote the fractions: 

$$
x = \frac {\hat {I} + \hat {J} _ {3}}{\hat {N}} > 0 \quad \text { and } \quad y = \frac {\hat {J} ^ {*}}{\hat {R}} > 0. \tag {8.20}
$$

Note that x and y correspond to the levels of disease prevalence for TB and HIV, respectively. 

By setting the right-hand-side of the system (8.15) equal to zero we can obtain the following two equations for x and y: 

$$
x = x F (x, y), \tag {8.21}
$$

$$
y = y G (x, y),
$$

where 

$$
F (x, y) = \frac {c}{\hat {N}} \left[ \frac {k \hat {S}}{(\mu + d + r _ {2}) B _ {1}} + \frac {k ^ {*}}{\Delta_ {2} \Delta_ {3}} \left(\frac {\hat {S} \sigma y}{B _ {1}} + \hat {J} _ {1}\right) \right],
$$

$$
G (x, y) = \frac {\sigma}{\hat {R}} \left\{\frac {1}{B _ {2}} \left(\hat {S} + \hat {T} + \frac {r ^ {*} \hat {L}}{\Delta_ {2}}\right) \left(1 + \frac {c x}{\Delta_ {2}} \left[ 1 + \frac {k ^ {*}}{\Delta_ {3}} \right]\right) + \frac {\hat {L}}{\Delta_ {2}} \left[ 1 + \frac {k ^ {*}}{\Delta_ {3}} \right] \right\}, \tag {8.22}
$$

in which 

$$
\hat {S} = \frac {\varLambda}{\mu + c x + \sigma y}, \quad \hat {L} = \frac {c \varLambda}{B _ {1} (\mu + c x + \sigma y)} x, \quad \hat {I} = \frac {k}{\mu + d + r _ {2}} \hat {L},
$$

$$
\hat {T} = \frac {r _ {1} + \frac {r _ {2} k}{\mu + d + r _ {2}}}{c x + \sigma y + \mu} \hat {L}, \quad \hat {J} _ {1} = \frac {\left(\hat {S} + \hat {T} + \frac {r ^ {*} \hat {L}}{\Delta_ {2}}\right) \sigma y}{B _ {2}}, \hat {J} _ {2} = \frac {\hat {L} \sigma y + \hat {J} _ {1} c x}{\Delta_ {2}}, \tag {8.23}
$$

$$
\hat {J} _ {3} = \frac {k ^ {*} (\hat {L} \sigma y + \hat {J} _ {1} c x)}{\varDelta_ {2} \varDelta_ {3}}, \quad \hat {A} = \frac {1}{\mu + f} \big (\alpha_ {1} \hat {J} _ {1} + \alpha_ {2} \hat {J} _ {2} + \alpha_ {3} \hat {J} _ {3} \big),
$$

and 

$$
\Delta_ {2} = \alpha_ {2} + \mu + k ^ {*} + r ^ {*},
$$

$$
\Delta_ {3} = \alpha_ {3} + \mu + d,
$$

$$
B _ {1} = \sigma y + \mu + k + r _ {1} - \frac {c x \left(r _ {1} + \frac {r _ {2} k}{\mu + d + r _ {2}}\right)}{c x + \sigma y + \mu} \tag {8.24}
$$

$$
\geq \sigma y + \mu + k + r _ {1} - (r _ {1} + k)
$$

$$
> 0,
$$

$$
B _ {2} = \frac {c x (\alpha_ {1} + \mu + k ^ {*})}{\varDelta_ {2}} + \alpha_ {1} + \mu .
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/14e38529a0e6f4fb8b934a786d164b9506852c0d3931e82c60013ab0d76f84bb.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/88ef7c8870045a116c5e7d347b5a33c5baaf4f8506104fb8c96bb58071c8c0b5.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/aabd51158e204e3b3254bfe60fc1c48255f0215e9691ca416c85c8e65a738405.jpg)



Fig. 8.3 Contour plots showing the intersection points of the curves $F ( x , y ) = 1$ (dashed curve) and $G ( x , y ) = 1$ (solid curve) for various values of $\mathcal { R } _ { 2 }$ with $\mathcal { R } _ { 1 }$ being fixed at $1 . 5 ( c = 1 2 )$ . The values of $\mathcal { R } _ { 2 }$ in $( \mathbf { A } ) { - } ( \mathbf { C } )$ are 3.6, 4.6, and 7, respectively (corresponding to $\lambda \sigma \ = \ 0 . 4 1 , 0 . 5 2$ , and 0.8). The axes are $x ~ = ~ ( I + J _ { 3 } ) / N$ and $\begin{array} { r } { \mathrm { ~  ~ y ~ } = \mathrm { ~  ~ J ~ } ^ { * } / R } \end{array}$ , representing the factors in the incidence functions for TB and HIV, respectively. The intersection $\begin{array} { r } { ( \hat { x } , \hat { y } ) = ( \frac { \hat { I } + \hat { J } _ { 3 } } { \hat { N } } , \frac { \hat { J } ^ { * } } { \hat { R } } ) } \end{array}$ determines components of the interior equilibrium $\hat { E }$ if $0 < \hat { x } < 1$ and $\hat { y } > 0$


Note that $x > 0$ and $y > 0$ , Eq. (8.21) reduces to 

$$
F (x, y) = 1, \quad G (x, y) = 1, \tag {8.25}
$$

and an intersection of the two curves determined by Eq. (8.25), denoted by x and $\hat { y } _ { \ast }$ , corresponds to a coexistence equilibrium of TB and HIV. We can consider $\hat { x }$ as a measure for the TB prevalence. The intersection property of the two curves given by $F ( x , y ) = 1$ and $G ( x , y ) = 1$ are illustrated in Fig. 8.3. 

Figure 8.3 plots the intersection point $( \hat { x } , \hat { y } )$ of the contour plots of $F ( x , y ) = 1$ (dashed curve) and $G ( x , y ) = 1$ (solid curve) for several values of $\mathcal { R } _ { 2 }$ with $\mathcal { R } _ { 1 }$ being fixed $( \mathcal { R } _ { 1 } = 1 . 5 $ corresponding to $c = 1 2 )$ . Again, an interior equilibrium $\hat { E }$ can be determined by x and $\hat { y } \ \mathrm { i f } \ 0 < \hat { x } < 1$ and $\hat { y } > 0$ . This figure illustrates how $\hat { x }$ changes with increasing $\mathcal { R } _ { 2 }$ . We have chosen $k ^ { * } = 5 k$ (i.e., the progression rate to active TB in individuals with both latent TB and HIV is five times higher than that in individuals with latent TB only), $\alpha _ { 3 } ~ = ~ 5 \alpha _ { 1 }$ (i.e., the progression to AIDS in individuals with active TB is five times higher than that in individuals without TB). For this set of parameter values, the values of $\mathcal { R } _ { 2 }$ in Fig. 8.3A–C are 3.6, 4.6, and 7, respectively. It shows that when $\mathcal { R } _ { 2 }$ increases from 3.8 to 4.6, the $F ( x , y ) \ = \ 1$ curve does not change much while the right-end of the $G ( x , y ) ~ = ~ 1$ curve moves to the right of the $F ~ = ~ 1$ curve. This leads to an intersection point of the two curves (see (A) and (B)), which corresponds to an interior equilibrium $\hat { E }$ . When $\mathcal { R } _ { 2 }$ is further increased to 7, the $G ( x , y ) = 1$ curve changes from decreasing to increasing (see (C)). Although there is still a unique intersection point, the $y \overset { \cdot } { = } \hat { J } ^ { * } / \hat { R }$ component may become greater than 1. This is still biologically feasible as $J / R$ can exceed 1 (see (C)). The intersection points in (A)- $\begin{array} { r } { ( \hat { x } , \hat { y } ) = ( \frac { \hat { I } + \hat { J } _ { 3 } } { \hat { N } } , \frac { \hat { J } ^ { * } } { \hat { R } } ) = ( 0 . 1 5 , 0 . 0 7 ) } \end{array}$ N We observe that $\hat { x }$ increases with $\mathcal { R } _ { 2 }$ from 0.15 to 0.33. This implies that the prevalence of HIV may have significant impact on the infection level of TB. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/f8b6db64893cb375f32dcb558e00f246373781cdf5fefa191bc3cf4ae4b4a4dd.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/9a2a3e89de2a97d99b1c9c0cca5bc043caf7f58dae6fcec7ad97dce7cb2eb701.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/5b987798f44990c99cd0c872f02ff9eb033be2cbb2af96e861d8e8792e6f4834.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/81cf5dacada71b6b791476b5babc88d3256149a7de0933a19701dfed6a699281.jpg)



Fig. 8.4 Time plots of prevalence of TB and HIV. The TB curves (solid) represent the fraction of active TB $( ( I + J _ { 3 } ) / N )$ , and the HIV curve (dashed) represents the activity-adjusted fraction of HIV $( J ^ { * } / R )$


Figure 8.4 examines changes in infection levels over time. It plots the time series of $[ I ( t ) + J _ { 3 } ( t ) ] / N ( t )$ (fraction of active TB) and $J ^ { * } ( t ) / R ( t )$ (activity-adjusted fraction of HIV infectious) for fixed $\mathcal { R } _ { 1 }$ and various $\mathcal { R } _ { 2 }$ . The top two figures are for the case when the reproduction number for TB is less than 1 $( \mathcal { R } _ { 1 } = 0 . 9 6 < 1$ or $c = 7 . 5 )$ , and the reproduction number for HIV is $\mathcal { R } _ { 2 } = 0 . 9 < 1$ (or $\sigma = 0 . 1 0 5 )$ in (a) and $\mathcal { R } _ { 2 } = 1 . 3 > 1 ( \mathrm { o r } \sigma = 0 . 1 5 )$ in (a). It illustrates in Fig. 8.4a that TB cannot persist if $\mathcal { R } _ { 2 } ~ < ~ 1$ . However, if $\mathcal { R } _ { 2 } ~ > ~ 1$ then it is possible that TB can become prevalent even if $\mathcal { R } _ { 1 } ~ < ~ 1$ (see Fig. 8.4b). The bottom two figures are for the case when the reproduction number of TB is greater than 1 $( \mathcal { R } _ { 1 } = 1 . 2 , \mathrm { o r } c = 9 . 1 )$ ), and $\mathcal { R } _ { 2 } = 2 \left( \mathrm { o r } \sigma = 0 . 2 3 \right)$ in (c) and $\mathcal { R } _ { 2 } = 3 ( \mathrm { o r } \sigma = 0 . 3 4 )$ in (d). It demonstrates that an increase in $\mathcal { R } _ { 2 }$ will lead to an increase in the level of TB prevalence as well. All other parameters are the same as in Fig. 8.3 except that $k ^ { * } = 3 k$ . 

Another way to look at the role of HIV on TB dynamics is to compare the outcomes between the cases where HIV is absent or present (instead of varying the value of $\mathcal { R } _ { 2 } )$ . This result is presented in Fig. 8.5. The reproduction numbers are identical in Fig. 8.5A, B: $\mathcal { R } _ { 1 } = 0 . 9 8 < 1 ( c = 7 . 7 )$ and $\mathcal { R } _ { 2 } = 1 . 2 > 1 ( \sigma = 0 . 1 3 7 )$ . Other parameter values are the same as in Fig. 8.4 except that $k ^ { * } = k$ . The variables plotted are $( I + J _ { 2 } ) / N$ and $J ^ { * } / N$ . Figure 8.5A is for the case when HIV is absent by letting $J ^ { * } ( 0 ) = 0$ . It shows that TB cannot persist. In Fig. 8.5B, the initial value of HIV is positive $( \mathrm { i . e . , } J ^ { \ast } ( 0 ) > 0 )$ . It shows that both TB and HIV coexist. 

Examples of other mathematical models on dynamics of TB/HIV coinfections include [73, 86, 90, 91, 101]. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/bb93c92687301417814a2d29405657fe81a55d83cd793832393dc508ef7fbcb8.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/c8d2e02ec39a0b868c88333c5120e8d84de1fac7984c509c548a95e78a6ff9e2.jpg)



Fig. 8.5 For the plot in (A), HIV is absent by letting $J ^ { * } ( 0 ) = 0 .$ . It shows that TB cannot persist. In (B), the initial value of HIV is positive (i.e., $J ^ { * } ( 0 ) > 0 )$ . It shows that both TB and HIV will coexist


## 8.6 *Modeling the Synergy Between HIV and HSV-2

The example presented in this section considers the synergy between HIV and HSV-2. One of the questions that is of interest for public health officials is how treatment of HSV-2 may influence the prevalence and control of HIV. 

Several mathematical models have been developed to investigate the transmission dynamics of HSV-2 (e.g., [17, 53, 87, 100] and references therein) and HIV (e.g., [12–14, 44, 84, 85] and references therein). To our knowledge, however, there have only been a few modeling studies of the epidemiological synergy between HSV-2 and HIV. Using the individual-based model STDSIM, White et al. [106] studied the population-level effect of HSV-2 therapy on the incidence of HIV in sub-Saharan Africa. Foss et al. [54] developed a dynamic HSV/HIV model to estimate the contribution of HSV-2 to HIV transmission from clients to female sex workers in southern India and the maximum potential impact of “perfect” HSV-2 suppressive therapy on HIV incidence. Blower and Ma [16] used a transmission model that specifies the dynamics of HIV and HSV-2 to predict the effect of a highprevalence HSV-2 epidemic on HIV incidence. Abu-Raddad et al. [1] constructed a deterministic compartmental model to describe HIV and HSV-2 transmission dynamics and their interaction. However, the model studied in [16] does not include heterogeneity in sexual activity and assumes that individuals mix randomly, whereupon each infective individual is equally likely to spread the disease to all others. Also, gender is not incorporated into the models studied by either [16] or [1]. The models in [54, 106] incorporate various heterogeneities, including gender and/or age, but not sexual activity, and only numerical simulations are conducted. 

Gender may be an important factor in modeling the epidemiological synergy between HSV-2 and HIV as shown in the meta-analysis of several studies that male parameters differ from the corresponding female parameters. For example, the male-to-female HSV-2 transmission probability is greater than the female-to-male transmission probability [45, 104], and thus the risk of female-to-male transmission per sex act is less than the risk of male-to-female transmission [84, 85]. Thus, to fully understand the epidemiological synergy between HSV-2 and HIV and to investigate measures for controlling these sexually transmitted diseases, it is important to analyze models that consider heterogeneities in sexual activity, mixing within and between different activity groups and genders. 

In [2, 52], a model incorporating both HIV and HSV-2 infections was analyzed. The model considers one male population and multiple female populations based on their activity levels with variable male preferences to different female groups. Results from the model demonstrate that the heterogeneity in activity levels and male preference in mixing may play an important role in model outcomes. More details of the model analysis are presented below. 

Consider a population consisting of sexually active female and male individuals. Consider the case in which the female population is divided into subgroups based on levels of sexual activity (e.g., number of partners) with a low-risk group (e.g., members of the general population) and a high-risk group (e.g., sex workers), while all individuals in the male population have the same activity level. These subpopulations are labeled by the subscripts $f _ { 1 } , f _ { 2 } , m$ , which denote low- and high-risk females and males, respectively. Let $N _ { i }$ denote the population sizes of groups i, where $i = m , f _ { 1 } , f _ { 2 }$ . The population in each group is assumed to be homogeneous in the sense that individuals have the same infectious period, duration of immunity, contact rate, and so on. We divide the progression of HIV into two stages, acute infection and AIDS. Similarly, HSV-2 is represented by acute and latent infection stages. Because individuals infected with HIV alone or HSV-2 alone can become coinfected with both HIV and HSV-2, each group i $( i = m , f _ { 1 } , f _ { 2 } )$ is further divided into seven epidemiological classes or subgroups: susceptible, infected with acute HSV-2 only $( A _ { i } )$ , infected with latent HSV-2 only $( L _ { i } )$ , infected with HIV only $( H _ { i } )$ , infected with HIV and acute ${ \mathrm { H S V } } { - } 2 \left( P _ { i } \right)$ , infected with HIV and latent HSV-2 $( Q _ { i } )$ and AIDS $( D _ { i } )$ . A transition diagram between these epidemiological classes within group i is depicted in Fig. 8.6. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/5ba80ee6e2249b3206ab9d8b98c0e3db918384c4aab6236e5534c929a496aa55.jpg)



Fig. 8.6 Transition diagram of the coupled dynamics between HIV and HSV-2. The top row includes classes infected with HSV-2 only, and the bottom row includes classes infected with either HIV only or coinfected with HIV and HSV-2


For each sub-population i $( i = f _ { 1 } , f _ { 2 } , m )$ there is a per-capita recruitment rate $\mu _ { i }$ into the susceptible group. For all classes there is a constant per-capita rate $\mu _ { i }$ of exiting the sexually active population. Thus, the total population $N _ { i }$ in group i remains constant for all time. Susceptible people in group i acquire infection with HSV-2 or HIV at the rate $\lambda _ { i } ^ { A } ( t )$ or $\lambda _ { i } ^ { H } ( t )$ , respectively. Upon being infected with HSV-2, people in group i enter the class $A _ { i }$ (infected with acute HSV-2 only). These individuals become latent $L _ { i }$ at the constant rate $\omega _ { i } ^ { A }$ (an average duration in $A _ { i }$ is $1 / \omega _ { i } ^ { A } )$ . Following an appropriate stimulus in individuals with latent HSV-2, reactivation may occur [17]. We assume that people with latent HSV-2 only reactivate at the rate $\gamma _ { i } ^ { L }$ . Individuals with HIV are assumed to develop AIDS at the rate $d _ { i } ^ { H }$ . Let $\delta _ { i } ^ { A }$ and $\delta _ { i } ^ { L }$ denote the enhanced susceptibility to HIV infection for individuals in group i with acute or latent HSV-2 infection. Classes $P _ { i }$ and $Q _ { i }$ are similar to $A _ { i }$ and $L _ { i }$ , respectively, except that $A _ { i }$ and $L _ { i }$ denote individuals with HSV-2 only whereas $P _ { i }$ and $Q _ { i }$ denote individuals with coinfections. The difference in stage durations is indicated by the superscripts (e.g., $1 / \gamma _ { i } ^ { L }$ for the $L$ class and $1 / { \gamma _ { i } } ^ { Q }$ for the $Q$ class). Finally, the antiviral treatment rates for the $A _ { i }$ and $P _ { i }$ individuals are denoted by $\theta _ { i } ^ { A }$ and $\theta _ { i } ^ { \mathcal { Q } }$ , respectively. Because antiviral medications will also suppress reactivation of latent HSV-2, we assume that the reactivation rate of people with latent HSV-2 $\gamma _ { i } ^ { L }$ (or $\gamma _ { i } ^ { \mathcal { Q } } )$ is a decreasing function of $\theta _ { i } ^ { A } ( \mathrm { o r } \theta _ { i } ^ { P } )$ , denoted by $\gamma _ { i } ^ { L } ( \theta _ { i } ^ { A } )$ (or $\gamma _ { i } ^ { Q } ( \theta _ { i } ^ { P } ) )$ . The sources for most of the parameter values are from [1, 53] (see [52] for more details). 

Based on Fig. 8.6, Alvey et al. [2] studied the following model: 

$$
\begin{array}{l} \frac {d S _ {i}}{d t} = \mu_ {i} N _ {i} - (\lambda_ {i} ^ {A} (t) + \lambda_ {i} ^ {H} (t)) S _ {i} - \mu_ {i} S _ {i}, \\ \frac {d A _ {i}}{d t} = \lambda_ {i} ^ {A} (t) S _ {i} + \gamma_ {i} ^ {L} (\theta_ {i} ^ {A}) L _ {i} - \delta_ {i} ^ {A} \lambda_ {i} ^ {H} (t) A _ {i} - (\omega_ {i} ^ {A} + \theta_ {i} ^ {A} + \mu_ {i}) A _ {i}, \\ \frac {d L _ {i}}{d t} = (\omega_ {i} ^ {A} + \theta_ {i} ^ {A}) A _ {i} - \delta_ {i} ^ {L} \lambda_ {i} ^ {H} (t) L _ {i} - (\gamma_ {i} ^ {L} (\theta_ {i} ^ {A}) + \mu_ {i}) L _ {i}, \\ \frac {d H _ {i}}{d t} = \lambda_ {i} ^ {H} (t) S _ {i} - \delta_ {i} ^ {H} \lambda_ {i} ^ {A} (t) H _ {i} - (\mu_ {i} + d _ {i} ^ {H}) H _ {i}, \\ \frac {d P _ {i}}{d t} = \delta_ {i} ^ {A} \lambda_ {i} ^ {H} (t) A _ {i} + \delta_ {i} ^ {H} \lambda_ {i} ^ {A} (t) H _ {i} + \gamma_ {i} ^ {Q} (\theta_ {i} ^ {P}) Q _ {i} - (\omega_ {i} ^ {P} + \theta_ {i} ^ {P} + \mu_ {i} + d _ {i} ^ {P}) P _ {i}, \\ \frac {d Q _ {i}}{d t} = \delta_ {i} ^ {L} \lambda_ {i} ^ {H} (t) L _ {i} + (\omega_ {i} ^ {P} + \theta_ {i} ^ {P}) P _ {i} - (\gamma_ {i} ^ {Q} (\theta_ {i} ^ {P}) + \mu_ {i} + d _ {i} ^ {Q}) Q _ {i}, i = m, f _ {1}, f _ {2}, \tag {8.26} \\ \end{array}
$$

where the functions $\lambda _ { i } ^ { j } ( t )$ represent the forces of infection given below. Let $b _ { i }$ $( i \ = \ m , f _ { 1 } , f _ { 2 } )$ be the rate at which individuals in group i acquire new sexual partners (also referred to as contact rates), and let $c _ { j }$ denote the probability that a male chooses a female partner in group $j ~ ( j = f _ { 1 } , f _ { 2 } )$ . Then $c _ { 1 } + c _ { 2 } = 1$ . For ease of notation, let 

$$
c _ {1} = c, \quad c _ {2} = 1 - c.
$$

Overall, the number of female partners in groups $j ~ ( j ~ = ~ f _ { 1 } , f _ { 2 } )$ that males acquire should be equal to the number of male partners that females in groups j acquire. These observations lead to the following balance conditions: 

$$
b _ {m} c N _ {m} = b _ {f _ {1}} N _ {f _ {1}}, \quad b _ {m} (1 - c) N _ {m} = b _ {f _ {2}} N _ {f _ {2}}. \tag {8.27}
$$

To ensure that constraints in (8.27) are satisfied, we assume in numerical simulations that $b _ { m }$ and c are fixed constants with $b _ { f _ { 1 } }$ and $b _ { f _ { 2 } }$ being varied according to $N _ { m } , N _ { f _ { 1 } }$ , and $N _ { f _ { 2 } }$ . 

The force of infection functions can be expressed as 

$$
\begin{array}{l} \lambda_ {m} ^ {H} (t) = \sum_ {i = 1} ^ {2} b _ {m} c _ {i} \beta_ {f _ {i} m} ^ {H} \frac {H _ {f _ {i}} + \delta_ {f _ {i}} ^ {P} P _ {f _ {i}} + \delta_ {f _ {i}} ^ {Q} Q _ {f _ {i}}}{N _ {f _ {i}}}, \\ \lambda_ {f _ {j}} ^ {H} (t) = b _ {f _ {j}} \beta_ {m f _ {j}} ^ {H} \frac {H _ {m} + \delta_ {m} ^ {P} P _ {m} + \delta_ {m} ^ {Q} Q _ {m}}{N _ {m}}, \quad j = 1, 2, \tag {8.28} \\ \end{array}
$$

$$
\lambda_ {m} ^ {A} (t) = \sum_ {i = 1} ^ {2} b _ {m} c _ {i} \beta_ {f _ {i} m} ^ {A} \frac {A _ {f _ {i}} + \sigma_ {f _ {i}} ^ {P} P _ {f _ {i}}}{N _ {f _ {i}}},
$$

$$
\lambda_ {f _ {j}} ^ {A} (t) = b _ {f _ {j}} \beta_ {m f _ {j}} ^ {A} \frac {A _ {m} + \sigma_ {m} ^ {P} P _ {m}}{N _ {m}}, \quad j = 1, 2,
$$

where 

$$
N _ {i} = S _ {i} + A _ {i} + L _ {i} + H _ {i} + P _ {i} + Q _ {i}, i = m, f _ {1}, f _ {2}
$$

$\beta _ { i m } ^ { H } ~ ( \beta _ { m i } ^ { H } ) , i = f _ { 1 } , f _ { 2 }$ are the HIV transmission probabilities per partner between females infected with HIV in group i and susceptible males (between males infected with HIV and susceptible $\beta _ { i m } ^ { A } ~ ( \beta _ { m i } ^ { A } ) , i = f _ { 1 } , f _ { 2 }$ per partner between females infected with acute HSV-2 in group i and susceptible males (between males infected with acute HSV-2 and susceptible females in group $i ) ; \delta _ { i } ^ { P }$ and $\delta _ { i } ^ { Q } ~ ( i = m , f _ { 1 } , f _ { 2 } )$ are the enhanced HIV infectiousness of coinfected individuals, and $\sigma _ { i } ^ { P } ~ ( i ~ = ~ m , ~ f _ { 1 } , ~ f _ { 2 } )$ are the enhanced HSV-2 infectiousness of coinfected individuals. 

## 8.6.1 Reproduction Numbers for Individual Diseases

For each of the two diseases, we can compute the reproduction number in the absence of the other disease. Let $\mathcal { R } _ { 0 } ^ { A }$ and $\mathcal { R } _ { 0 } ^ { \mathbf { \hat { H } } }$ denote these reproduction numbers for HSV-2 and HIV, respectively. Due to the loop between the symptomatic and asymptomatic stages of HSV-2, the derivation of analytical expression for $\mathcal { R } _ { 0 } ^ { A }$ for model (8.26) is not straightforward. A detailed derivation of the following formula for $\mathcal { R } _ { 0 } ^ { A }$ can be found in [2, 52]: 

$$
\mathcal {R} _ {0} ^ {A} = \sqrt {\left(\mathcal {R} _ {m f _ {1} m} ^ {A}\right) ^ {2} + \left(\mathcal {R} _ {m f _ {2} m} ^ {A}\right) ^ {2}}, \tag {8.29}
$$

where 

$$
\mathcal {R} _ {m f _ {j} m} ^ {A} = \sqrt {\frac {b _ {f _ {j}} \beta_ {m f _ {j}} ^ {A}}{\omega_ {m} ^ {A} + \theta_ {m} ^ {A} + \mu_ {m}} \cdot P _ {m} ^ {A} \cdot \frac {b _ {m} c _ {j} \beta_ {f _ {j} m} ^ {A}}{\omega_ {f _ {j}} ^ {A} + \theta_ {f _ {j}} ^ {A} + \mu_ {f _ {j}}} \cdot P _ {f _ {j}} ^ {A}}, \quad j = 1, 2
$$

with $P _ { i } ^ { A } \left( i = m , f _ { 1 } , f _ { 2 } \right)$ representing the probability that an individual of group i is in the acute stage (A), which is given by 

$$
P _ {i} ^ {A} = \frac {\left(\omega_ {i} ^ {A} + \theta_ {i} ^ {A} + \mu_ {i}\right) \left(\gamma_ {i} ^ {L} (\theta_ {i} ^ {A}) + \mu_ {i}\right)}{\left[ \gamma_ {i} ^ {L} (\theta_ {i} ^ {A}) + \omega_ {i} ^ {A} + \theta_ {i} ^ {A} + \mu_ {i} \right] \mu_ {i}}, \quad i = m, f _ {1}, f _ {2}. \tag {8.30}
$$

The formulas for $P _ { i } ^ { A }$ in (8.30) can be explained as follows. Let 

$$
p = \frac {\omega_ {i} ^ {A} + \theta_ {i} ^ {A}}{\omega_ {i} ^ {A} + \theta_ {i} ^ {A} + \mu_ {i}}, q = \frac {\gamma_ {i} ^ {L}}{\gamma_ {i} ^ {L} + \mu_ {i}},
$$

where p represents the probability that an individual moves from the acute stage $( A )$ to the latent stage $( L )$ , and $q$ represents the probability that an individual moves from L to A. Thus, the probability that an individual is in the acute stage within the $A  L$ loop is 

$$
\sum_ {k = 1} ^ {\infty} (p q) ^ {k} = \frac {\big (\omega_ {i} ^ {A} + \theta_ {i} ^ {A} + \mu_ {i} \big) \big (\gamma_ {i} ^ {L} + \mu_ {i} \big)}{\big (\gamma_ {i} ^ {L} + \omega_ {i} ^ {A} + \theta_ {i} ^ {A} + \mu_ {i} \big) \mu_ {i}} = P _ {i} ^ {A}.
$$

Notice that in the formula for $\mathcal { R } _ { 0 } ^ { A }$ the balance conditions in (8.27) have been used. $\mathcal { R } _ { m f _ { i } m } ^ { A } \left( i = 1 , 2 \right)$ 

• $b _ { f _ { j } } \beta _ { m f _ { i } } ^ { A }$ is the number of new infections that a male will cause in females of group $\dot { j } ( j = 1 , 2 )$ per unit of time; 

• $b _ { m } c _ { j } \beta _ { f _ { j } m } ^ { A }$ is the number of new infections that a female in group $j \ ( j = 1 , 2 )$ will cause in males per unit of time; 

$\frac { 1 } { \omega _ { i } ^ { A } + \theta _ { i } ^ { A } + \mu _ { i } } \ ( i = m , \ : f _ { 1 } , \ : f _ { 2 } )$ represents the mean time that an individual in group i remains infected (i.e., in either A or $L )$ . 

Thus, $\sqrt { \mathcal { R } _ { m f _ { j } m } ^ { A } }$ represents the average secondary HSV-2 male infections by one male individual through females in group $j ( j = 1 , 2 )$ while in the infectious stage $( A )$ in a completely susceptible population. The square root is associated with the fact that we need to consider both the male-to-female and female-to-male processes to obtain the number of secondary infections. The overall reproduction number $\mathcal { R } _ { 0 } ^ { A }$ is an average of $\mathcal { R } _ { m f _ { i } m } ^ { A } \left( i = 1 , 2 \right)$ . 

Let $\mathcal { R } _ { 0 } ^ { H }$ denote the basic reproduction number for HIV in the absence of HSV-2. Then 

$$
\mathcal {R} _ {0} ^ {H} = \sqrt {\left(\mathcal {R} _ {m f _ {1} m} ^ {H}\right) ^ {2} + \left(\mathcal {R} _ {m f _ {2} m} ^ {H}\right) ^ {2}},
$$

where 

$$
\mathcal {R} _ {m f _ {j} m} ^ {H} = \sqrt {\frac {b _ {f _ {j}} \beta_ {m f _ {j}} ^ {H}}{d _ {m} ^ {H} + \mu_ {m}} \cdot \frac {b _ {m} c _ {j} \beta_ {f _ {j} m} ^ {H}}{d _ {f _ {j}} ^ {H} + \mu_ {f _ {j}}}}, \quad j = 1, 2.
$$

The biological meanings of $\mathcal { R } _ { m f _ { 1 } m } ^ { H }$ m and RHmf $\mathcal { R } _ { m f _ { 2 } m } ^ { H }$ can be explained in the similar way as those of RA $\mathcal { R } _ { m f _ { 1 } m } ^ { A }$ m and RAmf $\mathcal { R } _ { m f _ { 2 } m } ^ { A }$ $\mathcal { R } _ { 0 } ^ { H }$ HIV male infections by one male individual (through both female groups) during the whole HIV infective period in a completely susceptible population. 

## 8.6.2 Invasion Reproduction Numbers

Let $\mathcal { R } _ { A } ^ { H }$ denote the invasion reproduction number for HIV in a population where the HSV-2 infection is already established at the endemic equilibrium, which is denoted by $E _ { \partial } ^ { A }$ . The nonzero components of $E _ { \partial } ^ { A }$ are $S _ { i } ^ { 0 } , A _ { i } ^ { 0 }$ , and $L _ { i } ^ { 0 }$ , representing the density of susceptible, acute HSV-2, and HSV-2 latent, respectively, in group i. Let $N _ { i } ^ { 0 } = \stackrel { \cdot } { S } _ { i } ^ { 0 } + A _ { i } ^ { 0 } \stackrel { \cdot } { + } L _ { i } ^ { 0 }$ . For ease of notation, let 

$$
\lambda_ {m} ^ {A 0} = b _ {m} \sum_ {i = 1} ^ {2} c _ {i} \beta_ {f _ {j} m} ^ {A} \frac {A _ {f _ {j}} ^ {0}}{N _ {f _ {j}} ^ {0}}, \qquad \lambda_ {f _ {j}} ^ {A 0} = b _ {f _ {j}} \beta_ {m f _ {j}} ^ {A} \frac {A _ {m} ^ {0}}{N _ {m} ^ {0}}, \quad j = 1, 2
$$

and 

$$
\mathbf {d} _ {i} = \left(1, \delta_ {i} ^ {P}, \delta_ {i} ^ {Q}\right), \qquad \mathbf {x} _ {i} ^ {0} = \left(S _ {i} ^ {0}, \delta_ {i} ^ {A} A _ {i} ^ {0}, \delta_ {i} ^ {L} L _ {i} ^ {0}\right) ^ {T}, \quad i = m, f _ {1}, f _ {2}.
$$

Note that the system (8.26) has 9 infected variables with HIV $( H _ { i } , P _ { i } , Q _ { i } , i =$ $m , f _ { 1 } , f _ { 2 } )$ . Consider the HIV-free equilibrium $E _ { \partial } ^ { A }$ of system (8.26). The matrices ${ \mathcal { F } } ^ { H }$ and $\mathcal V ^ { H }$ (corresponding to the new infection and remaining transfer terms, respectively) are given by 

$$
\mathcal {F} ^ {H} = \left( \begin{array}{c c c} 0 & F _ {f _ {1} m} ^ {H} & F _ {f _ {2} m} ^ {H} \\ F _ {m f _ {1}} ^ {H} & 0 & 0 \\ F _ {m f _ {2}} ^ {H} & 0 & 0 \end{array} \right), \quad \mathcal {V} ^ {H} = \left( \begin{array}{c c c} V _ {m} ^ {H} & 0 & 0 \\ 0 & V _ {f _ {1}} ^ {H} & 0 \\ 0 & 0 & V _ {f _ {2}} ^ {H} \end{array} \right), \tag {8.31}
$$

where 

$$
F _ {f _ {j} m} ^ {H} = b _ {m} c _ {j} \beta_ {f _ {j} m} ^ {H} \frac {\mathbf {x} _ {m} ^ {0}}{N _ {m} ^ {0}} \mathbf {d} _ {f _ {j}}, F _ {m f _ {j}} ^ {H} = b _ {f _ {j}} \beta_ {m f _ {j}} ^ {H} \frac {\mathbf {x} _ {f _ {j}} ^ {0}}{N _ {f _ {j}} ^ {0}} \mathbf {d} _ {m}, j = 1, 2
$$

and 

$$
V _ {i} ^ {H} = \left( \begin{array}{c c c} \left(\mu_ {i} + d _ {i} ^ {H} + \delta_ {i} ^ {H} \lambda_ {i} ^ {A 0}\right) & 0 & 0 \\ - \delta_ {i} ^ {H} \lambda_ {i} ^ {A 0} & \omega_ {i} ^ {P} + \theta_ {i} ^ {P} + \mu_ {i} + d _ {i} ^ {P} & - \gamma_ {i} ^ {Q} \left(\theta_ {i} ^ {P}\right) \\ 0 & - \left(\omega_ {i} ^ {P} + \theta_ {i} ^ {P}\right) & \gamma_ {i} ^ {Q} \left(\theta_ {i} ^ {P}\right) + \mu_ {i} + d _ {i} ^ {Q} \end{array} \right), \tag {8.32}
$$

for $i = m , f _ { 1 } , f _ { 2 }$ . Then, the next generation matrix for HIV, denoted by $K _ { H }$ , can be expressed by 

$$
\begin{array}{l} K _ {H} = \mathcal {F} ^ {H} (\mathcal {V} ^ {H}) ^ {- 1} \\ = \left( \begin{array}{c c c} 0 & F _ {f _ {1} m} ^ {H} (V _ {f _ {1}} ^ {H}) ^ {- 1} & F _ {f _ {2} m} ^ {H} (V _ {f _ {2}} ^ {H}) ^ {- 1} \\ F _ {m f _ {1}} ^ {H} (V _ {m} ^ {H}) ^ {- 1} & 0 & 0 \\ F _ {m f _ {2}} ^ {H} (V _ {m} ^ {H}) ^ {- 1} & 0 & 0 \end{array} \right) := \big (k _ {i j} \big) _ {9 \times 9}, \tag {8.33} \\ \end{array}
$$

where the entries $k _ { i j }$ of the matrix $K _ { H }$ can be found in the Appendix A of [52]. 

Noting that Rank $( K _ { H } ) = 2$ and that the sum of the diagonal elements in matrix $K _ { H }$ is zero, it follows from Vieta’s formulas that if the numbers of susceptible $S _ { i } ^ { 0 } , A _ { i } ^ { 0 } , L _ { i } ^ { 0 }$ the reproduction number for HIV infection is given by 

$$
\begin{array}{l} \mathcal {R} _ {A} ^ {H} = R _ {A} ^ {H} (S _ {i} ^ {0}, A _ {i} ^ {0}, L _ {i} ^ {0}, 0, 0, 0) := \rho (K _ {H}) = \sqrt {- E _ {2} (K _ {H})} \\ = \sqrt {\sum_ {i = 1} ^ {3} \sum_ {j = 4} ^ {9} k _ {i j} k _ {j i}}, \tag {8.34} \\ \end{array}
$$


Fig. 8.7 Numerical solutions of the system (8.26) for the case when $\mathcal { R } _ { 0 } ^ { A } > 1 , \mathcal { R } _ { 0 } ^ { H } < 1$ , and $\mathcal { R } _ { A } ^ { H } > 1$ . The dashed and solid curves represent levels of HIV infections with and without HSV-2 present, respectively. It shows that even when the basic reproduction number for HIV $\mathcal { \dot { R } } _ { 0 } ^ { H }$ is less than 1, HIV can still persist if the invasion reproduction number $\mathcal { R } _ { A } ^ { H }$ is greater than 1


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/cfddbf9768f32a98f9252aceced061770da67a9360eb0de4d07ce2e69bb0634d.jpg)


where $\rho ( K _ { H } )$ represents the spectral radius of the matrix $K _ { H }$ and $E _ { 2 } ( K _ { H } )$ is the sum of all the $2 \times 2$ principal minors of matrix $K _ { H }$ . It is shown in [52] that invasion is possible if and only if $\mathcal { R } _ { A } ^ { H } > 1$ . 

Similarly, an invasion reproduction number $\mathcal { R } _ { H } ^ { A }$ for HSV-2 to invade a population in which HIV is present (see [52]). Detailed results on the existence and local stability of the boundary equilibria can also be found in [52]. 

## 8.6.3 Influence of HSV-2 on the Dynamics of HIV

Figure 8.7 illustrates the result of numerical simulations showing how the joint disease dynamics of HIV and HSV-2 may depend on the basic and invasion reproduction numbers. It is for the case when enhancement of HIV by HSV-2 is relatively strong with $\mathcal { R } _ { 0 } ^ { A } > 1 , \mathcal { R } _ { 0 } ^ { H } < 1$ , and $\mathcal { R } _ { A } ^ { H } > 1$ . It shows that while HIV can invade and persist in the presence of HSV-2 (the dashed curve), it dies out in the absence of HSV-2 (the solid curve), suggesting that HSV-2 infection can favor the invasion of HIV. 

## 8.7 An HIV Model with Vaccination

Blower et al. [15] studied model for HIV with live attenuated HIV vaccines (LAHVs). Consider two viral strains, one wild strain and one vaccine strain. Divide the total population into the following epidemiological classes: susceptible individuals (S), unvaccinated individuals infected with the wild-type HIV $( I _ { w } )$ or the vaccine strain (either by vaccination or by transmission) $( I _ { v } )$ or dually infected with both strains $( I _ { v w } )$ , and individuals with AIDS (A). The model consists of the following ordinary differential equations: 

$$
S ^ {\prime} = (1 - p) \pi - (c \lambda_ {v} + c \lambda_ {W} + \mu) S,
$$

$$
I _ {v} ^ {\prime} = p \pi + c \lambda_ {v} S - (1 - \psi) c \lambda_ {w} I _ {v} - (\nu_ {v} + \mu) I _ {v},
$$

$$
I _ {w} ^ {\prime} = c \lambda_ {w} S - (\nu_ {w} + \mu) I _ {w}, \tag {8.35}
$$

$$
I _ {v w} ^ {\prime} = (1 - \psi) c \lambda_ {w} I _ {v} - (\nu_ {v w} + \mu) I _ {v w},
$$

$$
A ^ {\prime} = \nu_ {w} I _ {w} + \nu_ {v} I _ {v} + \nu_ {v w} I _ {v w} - (\mu_ {A} + \mu) A,
$$

where $\lambda _ { v }$ and $\lambda _ { w }$ are per-capita risks of infection with the vaccine and wild-type strains, respectively, given by 

$$
\lambda_ {v} = \beta_ {v} \frac {I _ {v}}{N _ {S A}}, \quad \lambda_ {w} = \beta_ {w} \frac {I _ {w} + g I _ {v w}}{N _ {S A}},
$$

and $N _ { S A } = X + I _ { v } + I _ { w } + I _ { v w }$ denotes the number of sexually active population. Other parameters include: $\beta _ { v }$ and $\beta _ { w }$ are infection rates for vaccine and wildtype strains, respectively, $p$ is the fraction of new susceptibles vaccinated, $\pi$ is the number of new susceptibles that join the sexually active population per unit time, c is the average rate of acquiring new sex partners, $1 / \mu$ is the average period of acquisition of new sex partners, $1 / \mu _ { A }$ is the average survival time with AIDS, $\psi$ denotes the degree of protection that the vaccine provides against infection with the wild-type strain, ν is the progression rate to AIDS in individuals infected with the LAHV strain $( \nu _ { v } )$ , the wild-type strain $( \nu _ { w } )$ , or both strains $( \nu _ { v w } ) , 1 / \mu _ { A }$ is the average survival time from AIDS to death. The disease progression rates are related by the expression $\nu _ { v w } ~ = ~ \delta \nu _ { w }$ , where δ specifies the vaccine-induced degree of reduction in the wild-type disease progression rate. 

A time-dependent uncertainty analysis of model (8.35) can be used [15] to predict the potential impact of LAHVs on the annual AIDS death rate, as illustrated in Fig. 8.8. It shows the result of infection with the wild-type strain of HIV for Zimbabwe (A) and Thailand (B), and the result of the LAHV strain for Zimbabwe (C) and Thailand (D). Parameter values used include the following probability density functions (pdfs): $1 / \mu _ { A }$ (pdf: 9 months to 1 year to 18 months), $\beta _ { w }$ (pdf: 0.05 to 0.1 to 0.2), $\beta _ { v } = \alpha \beta _ { w }$ where α (range of pdf: (0.001, 0.1)), $\nu _ { w }$ (pdf: range from 50% progression to AIDS in 7.5 years to 50% progression in 10 years). Consider a mass vaccination campaign (with follow-up programs) that would vaccinate anywhere from 80% to 95% of susceptibles with $p$ (range of pdf: (0.8, 0.95)), ψ (range of pdf: (0.5, 0.95)), δ (range of pdf: (0.1, 1)). The population size of sexually active adults are chosen to be 5,560,000 (Zimbabwe), 34,433,00 (Thailand). 


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/fb35542e5974b3e2b2e9e9ea1b13255c21dfee73845f2cf84c9ef6e2f4e18fc4.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/333e576848ebc022fce0c24f3d9fb2bc2f37e601464a7b69e886a8578693edea.jpg)



C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/d3c56bcf887434df591670eab80e71e940cb17f0d236a2ffd74d03252f9341eb.jpg)



D


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/761345f166ee921cb0f11429638a06b278395a871c3228ae27f31c051c90298d.jpg)



Fig. 8.8 Simulation results of model (8.35). It plots annual AIDS deaths (per 100,000 individuals) for Zimbabwe (A), Thailand (B), Zimbabwe (C), and Thailand (D). Source: [15]


## 8.8 A Model with Antiretroviral Therapy (ART)

A mathematical model with antiretroviral therapy (ART) is considered in [25] to study the effect of ART on risk behaviors and sexually transmitted infections (STI). Individuals are divided into two risk groups $i = 1 , 2$ , with $s \ = \ 1$ for STI+ and $s = 0$ for STI-. The population size for fix i and s is divided into the following epidemiological classes: susceptible to HIV $( S _ { i s } )$ , untreated $\mathrm { H I V } + ( I _ { i s } ^ { u } )$ , untreated with AIDS $( A _ { i s } ^ { u } )$ , treated $\mathrm { H I V } + ( I _ { i s } ^ { \tau } )$ , treated with AIDS $( A _ { i s } ^ { \tau } )$ . The group sizes are 

$$
N _ {i s} = S _ {i s} + I _ {i s} ^ {u} + I _ {i s} ^ {\tau} + A _ {i s} ^ {\tau}, i = 1, 2, s = 0, 1.
$$

The per-capita rates of STI and HIV infection of a susceptible individual in risk group i are denoted by $\xi _ { i } ( t )$ and $\lambda _ { i s } ( t )$ , respectively, and are given by 

$$
\xi_ {i} (t) = \theta_ {i} \sum_ {j} \rho_ {i j} \frac {N _ {j 1}}{\sum_ {s} N _ {j s}}, \quad i = 1, 2, \tag {8.36}
$$

$$
\lambda_ {i 0} (t) = \beta_ {i} \sum_ {j = 1} ^ {2} \rho_ {i j} \frac {\sum_ {s} \left(I _ {j s} ^ {u} + (1 - \eta) (I _ {j s} ^ {\tau} + A _ {j s} ^ {\tau})\right)}{\sum_ {s} N _ {j s}}, \quad \lambda_ {i 1} = 3 \lambda_ {i 0}, \qquad i = 1, 2, \tag {8.37}
$$

where $\theta _ { i }$ and $\beta _ { i }$ are transmission rates of STI and HIV, respectively, for susceptibles of risk level $i , \rho _ { i j }$ represents the sexual mixing between types i and $j$ individual (e.g., proportionate mixing), $\eta _ { 1 }$ represents the reduction in HIV infectiousness due to treatment with ART. 

The following model is a simplified version of the model considered in [25]: 

$$
\frac {d S _ {i s}}{d t} = \varLambda_ {i} - (\lambda_ {i s} (t) + \mu) S _ {i s} + (1 - s) \big [ - \xi_ {i} (t) S _ {i 0} + \delta S _ {i 1} \big ] + s \big [ \xi_ {i} (t) S _ {i 0} - \delta S _ {i 1} \big ],
$$

$$
\begin{array}{l} \frac {d I _ {i s} ^ {u}}{d t} = \lambda_ {i s} (t) S _ {i s} - (\gamma^ {u} + \mu + r ^ {h}) I _ {i s} ^ {u} \\ + \omega I _ {i s} ^ {\tau} + (1 - s) \big [ - \xi_ {i} (t) I _ {i 0} ^ {u} + \delta I _ {i 1} ^ {u} \big ] + s \big [ \xi_ {i} (t) I _ {i 0} ^ {u} - \delta I _ {i 1} ^ {u} \big ] \\ \end{array}
$$

$$
\frac {d I _ {i s} ^ {\tau}}{d t} = r ^ {h} I _ {i s} ^ {u} - (\gamma^ {\tau} + \mu + \omega) I _ {i s} ^ {\tau}
$$

$$
+ (1 - s) \left[ - \xi_ {i} (t) I _ {i 0} ^ {\tau} + \delta I _ {i 1} ^ {\tau} \right] + s \left[ \xi_ {i} (t) I _ {i 0} ^ {\tau} - \delta I _ {i 1} ^ {\tau} \right] \tag {8.38}
$$

$$
\frac {d A _ {i s} ^ {u}}{d t} = \gamma^ {u} I _ {i s} ^ {u} - (\alpha^ {u} + \mu + r ^ {a}) A _ {i s} ^ {u} + \omega A _ {i s} ^ {\tau} + (1 - s) \delta A _ {i 1} ^ {u} - s \delta A _ {i 1} ^ {u}
$$

$$
\begin{array}{l} \frac {d A _ {i s} ^ {\tau}}{d t} = \gamma^ {\tau} I _ {i s} ^ {\tau} - (\alpha^ {\tau} + \mu + \omega) A _ {i s} ^ {\tau} \\ + r ^ {a} A _ {i s} ^ {u} + (1 - s) \big [ - \xi_ {i} (t) A _ {i 0} ^ {\tau} + \delta A _ {i 1} ^ {\tau} \big ] + s \big [ \xi_ {i} (t) A _ {i 0} ^ {\tau} - \delta A _ {i 1} ^ {\tau} \big ], \\ \end{array}
$$

where $i \ = \ 1 , 2 , s \ = \ 0 , 1 , A _ { i }$ is the recruitment rate to group $i ~ ( i { \mathrm { \bf ~ = ~ } } 1 , 2 ) , \gamma ^ { u }$ and $\gamma ^ { \tau }$ are the rates of progression to AIDS for untreated and treated individuals, respectively, $\alpha ^ { u }$ and $\alpha ^ { \tau }$ are the rates of AIDS mortality for untreated and treated individuals, respectively, δ is the recovery rate from the STI infection, η represents the reduction in HIV infectiousness as a result of ART, w is the withdraw rate from treatment, $r ^ { a }$ and $r ^ { h }$ are treatment coverage rates of AIDS and HIV-positive individuals, respectively, $1 / \mu$ represents the average duration of sexually active life. 

A more general model is studied in [25], in which a detailed model analysis is presented to demonstrated the impact of the wide-scale use of ART on HIV transmission. 

## 8.9 Project: What If Not All Infectives Progress to AIDS?

In the model (8.1) it is assumed that all HIV-infected individuals eventually progress to full-blown AIDS, as this appears to be the case. Suppose, however, that only a fraction $p , 0 < p < 1$ progress to AIDS while the remaining infectives remain in this class until they are no longer sexually active. In addition to the classes S, I , and $A .$ , a model must now also include a class Y of infective individuals that will not develop full-blown AIDS and a class $Z$ of former Y -individuals who are no longer sexually active. The corresponding model is 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/73549316501788244f4ce2bf0c4a7a1c38d9bf4d959f1dd03df32aaf3ee49487.jpg)



Fig. 8.9 Flow diagram; single group model for the case when only a fraction of infected people will progress to AIDS


$$
\begin{array}{l} \frac {d S (t)}{d t} = \Lambda - \lambda C (T (t)) \frac {S (t) W (t)}{T (t)} - \mu S (t) \\ \frac {d I (t)}{d t} = \lambda p C (T (t)) \frac {S (t) W (t)}{T (t)} - (\alpha_ {I} + \mu) I (t) \\ \frac {d Y (t)}{d t} = \lambda (1 - p) C (T (t)) \frac {S (t) W (t)}{T (t)} - (\alpha_ {Y} + \mu) Y (t) \tag {8.39} \\ \frac {d A (t)}{d t} = \alpha_ {I} I (t) - (d + \mu) A (t) \\ \frac {d Z (t)}{d t} = \alpha_ {Y} Y (t) - \mu Z (t) \\ \end{array}
$$

where 

$$
W = I + Y \quad \text { and } \quad T = W + S. \tag {8.40}
$$

A flow diagram is shown in Fig. 8.9. 

It is further assumed that individuals who develop full-blown AIDS are no longer actively infective, that is, that they have no sexual contacts; it is also assumed that infected individuals become immediately infective. Finally, it is assumed that individuals in this population become sexually inactive or acquire AIDS at the constant rates $\alpha _ { Y }$ and $\alpha _ { I }$ (respectively) per unit time. Therefore, $1 / ( \mu + \alpha _ { I } )$ gives the average or mean incubation period with the fraction $1 / ( \mu + \alpha _ { Y } )$ denoting the average or mean sexual life expectancy. For simplicity, we assume $\alpha _ { I } = \alpha _ { Y }$ , but it is possible to extend the model to the case $\alpha _ { i } \neq \alpha _ { Y }$ . 

As before, the function $C ( T )$ models the mean number of sexual partners an average individual has per unit time when the population density is $T ; \lambda$ (a constant) denotes the average sexual risk per infected partner; λ is often thought as the product $i \phi$ [68], where $\phi$ is the average number of contacts per sexual partner and i the conditional probability of infection from a sexual contact when the latter is infected. Kingsley et al. [72] had presented (not surprising) evidence that the probability of seroconversion (infection) increases with the number of infected sexual partners. Hence, $\lambda C ( T )$ models the transmission rate per unit time per infected partner when the size of the sexually active population is $T$ . We continue to assume 

$$
C (T) > 0, \quad C ^ {\prime} (T) \geq 0, \tag {8.41}
$$

Question 4 Show that for the model (8.39) the basic reproduction number is given by 

$$
\mathcal {R} _ {0} = \lambda \left(\frac {p}{\sigma_ {I}} + \frac {1 - p}{\sigma_ {Y}}\right) C \left(\frac {\Lambda}{\mu}\right), \tag {8.42}
$$

where $\sigma _ { I } = \alpha _ { I } + \mu , \sigma _ { Y } = \alpha _ { Y } + \mu .$ 

$\mathcal { R } _ { 0 }$ is given by the product of the three factors (epidemiological parameters): λ (the probability of transmission per partner), $C ( \varLambda / \mu )$ (the mean number of sexual partners that an average susceptible individual has per unit time when everybody in the population is susceptible), and 

$$
D = \left(\frac {p}{\sigma_ {I}} + \frac {1 - p}{\sigma_ {Y}}\right). \tag {8.43}
$$

The death-adjusted mean infective period is $D = p D _ { I } + ( 1 - p ) D _ { Y }$ with $D _ { I }$ and $D _ { Y }$ denoting the death-adjusted mean infective periods, $1 / \sigma _ { I }$ and $1 / \sigma _ { Y }$ of the I and Y classes, respectively. 

Question 5 Show that if $\mathcal { R } _ { 0 } < 1$ , the disease-free equilibrium $( \varLambda / \mu , 0 , 0 )$ of the system (8.39) is asymptotically stable, and if $\mathcal { R } _ { 0 } > 1$ there is a unique endemic equilibrium $( S ^ { * } , I ^ { * } , Y ^ { * } )$ ), which is locally asymptotically stable, and the diseasefree state $( \varLambda / \mu , 0 , 0 )$ is unstable. 

Next, we allow arbitrary incubation period distributions by introducing two functions $P _ { I } ( s )$ and $P _ { Y } ( s )$ representing the proportion of individuals who become I - or Y -infective at time t and that, if alive, are still infective at time $t + s$ (survive as infectious). $P _ { I }$ and $P _ { Y }$ , survivorship functions, are non-negative and non-increasing, and $P _ { I } ( 0 ) = P _ { Y } ( 0 ) = 1$ . It is further assumed that 

$$
\int_ {0} ^ {\infty} P _ {I} (s) d s <   \infty , \quad \int_ {0} ^ {\infty} P _ {Y} (s) d s <   \infty ,
$$

and thus, $- { \dot { P } } ( x )$ and $- \dot { P } _ { Y } ( x )$ are the rates of removal of individuals from classes I and Y into classes A and Z, x time units after infection. 

Question 6 Derive the corresponding model and determine its basic reproduction number. 



17. Blower, S.M., T.C. Porco, and G. Darby (1998) Predicting and preventing the emergence of antiviral drug resistance in HSV-2. Nature medicine, 4(6): 673. 





36. Castillo-Chavez, C. and S. Busenberg (1990) On the solution of the two-Sex mixing problem, Proceedings of the International Conference on Differential Equations and Applications to Biology and Population Dynamics, S. Busenberg and M. Martelli (eds.), Lecture Notes in Biomathematics Springer-Verlag, Berlin-Heidelberg-New York 92: 80–98. 





57. Gupta S., R.M. Anderson, and R.M. May (1989) Networks of sexual contacts: implications for the pattern of spread of HIV, AIDS 3: 1–11. 





78. Luo, X., and C. Castillo-Chavez. (1991) Limit behavior of pair formation for a large dissolution rate. J. Mathematical Systems, Estimation, and Control, 3: 247–264. 





99. Schwager, S., C. Castillo-Chavez, and H.W. Hethcote (1989) Statistical and mathematical approaches to AIDS epidemiology: A review, In: C. Castillo-Chávez (ed.), Mathematical and Statistical Approaches to AIDS Epidemiology, pp. 2–35. Lecture Notes in Biomathematics, Vol. 83, Springer-Verlag: Berlin. 



## References



18. Blower S., P. Small, and P. Hopewell (1996) Control strategies for tuberculosis epidemics: new models for old problems, Science, 273: 497–500. 





37. Castillo-Chavez, C., S. Busenberg and K. Gerow (1990) Pair formation in structured populations, Differential Equations with Applications in Biology, Physics and Engineering, J. Goldstein, F. Kappel, W. Schappacher (eds.), Marcel Dekker, New York. pp. 4765. 





58. Francis, D.P., P.M. Feorino, J.R. Broderson, H.M. Mcclure, J.P. Getchell, C.R. Mcgrath, B. Swenson, J.S. Mcdougal, E.L. Palmer, and A.K. Harrison (1984) Infection of chimpanzees with lymphadenopathy-associated virus, Lancet 2: 1276–1277. 





79. May, R.M. and R.M. Anderson (1989) Possible demographic consequence of HIV/AIDS epidemics: II, assuming HIV infection does not necessarily lead to AIDS, in: Mathematical Approaches to Problems in Resource Management and Epidemiology, C. Castillo-Chávez, S.A. Levin, and C.A. Shoemaker (Eds.) Lecture Notes in Biomathematics 81, Springer-Verlag, Berlin-Heidelberg, New York, London, Paris, Tokyo, Hong Kong. pp. 220–248. 





100. Schinazi, R. B. (1999) Strategies to control the genital herpes epidemic. Math. Biosci. 159(2): 113–121. 





19. Blythe, S.P. and R.M. Anderson (1988) Distributed incubation and infectious periods in models of the transmission dynamics of the human immunodeficiency virus (HIV), IMA J. Math. Med. Bio. 5: 1–19. 





38. Castillo-Chavez, C., J.X. Velasco-Hernandez, and S. Fridman (1993) Modeling contact structures in biology,(Lect. Notes Biomath. 100, Springer-Varlag. 





59. Hadeler, K.P. (1989) Modeling AIDS in structured populations, 47th Session of the International Statistical Institute, Paris, August/September. Conf. Proc., C1-2: 83–99. 





80. May, R.M. and R.M. Anderson (1989) The transmission dynamics of human immunodeficiency virus (HIV), in Applied Mathematical Ecology, (ed. S. Levin), Biomathematics Texts, 18, Springer-Verlag, New York. 





101. Schulzer, M., M.P. Radhamani, S. Grybowski, E. Mak, and J.M. Fitzgerald (1994) A mathematical model for the prediction of the impact of HIV infection on tuberculosis, Int. J. Epidemiol., 23: 400–407. 





1. Abu-Raddad, L.J., A.S. Magaret, C., Celum, A. Wald, I.M. Longini Jr, S.G. Self, and L. Corey (2008) Genital herpes has played a more important role than any other sexually transmitted infection in driving HIV prevalence in Africa. PloS one, 3(5): e2230. 





20. Blythe, S.P. and C. Castillo-Chavez (1989) Like-with-like preference and sexual mixing models, Math. Biosci. 96: 221–238. 





39. Castillo-Chavez, C., W. Huang and J. Li (1996) On the existence of stable pair distributions, J. Math. Biol. 34: 413–441. 





60. Hadeler, K.P. and C. Castillo-Chavez (1995) A core group model for disease transmission, Math. Biosc. 128: 41–55. 





81. Medley, G.F., R.M. Anderson, D.R. Cox, and L. Billiard (1987) Incubation period of AIDS in patients infected via blood transfusions, Nature 328: 719–721. 





102. Thieme, H. and C. Castillo-Chavez (1989) On the role of variable infectivity in the dynamics of the human immunodeficiency virus epidemic, Mathematical and statistical approaches to AIDS epidemiology, C. Castillo-Chavez, (ed.), pp. 157–176. Lecture Notes in Biomathematics 83, Springer-Verlag, Berlin, Heidelberg, New York, London, Paris, Tokyo, Hong Kong. 





2. Alvey, C., Z. Feng, and J.W. Glasser (2015) A model for the coupled disease dynamics of HIV and HSV-2 with mixing among and between genders. Math. Biosci. 265: 82–100. 





21. Blythe, S.P., C. Castillo-Chavez, J. Palmer, and M. Cheng (1991) Towards a unified theory of mixing and pair formation, Math. Biosc. 107: 379–405. 





40. Castillo-Chavez, C. and Z. Feng (1998) Mathematical models for the disease dynamics of tuberculosis, in Advances in mathematical population dynamics-molecules, cells and man (eds. M.A. Horn, G. Simonett, and G. Webb), Vanderbilt University Press, 117–128. 





61. Hethcote, H.W., H.W. Stech, P. van den Driessche (1981) Nonlinear oscillations in epidemic models, SIAM J. Appl. Math. 40: 1–9. 





82. Miller, R.K. (1971) The implications and necessity of affinity, J. Biol. Dyn. 4: 456–477. 





103. Thieme, H.R. and C. Castillo-Chavez (1993) How may infection-age dependent infectivity affect the dynamics of HIV/AIDS?, SIAM J. Appl. Math., 53: 1447–1479. 





3. Anderson, R.M., R.M. May, G.F. Medley, and A. Johnson (1986) A preliminary study of the transmission dynamics of the human immunodeficiency virus (HIV), the causative agent of AIDS, IMA J. Math. Med. Bio. 3: 229–263. 





22. Blythe S.P., K. Cooke, C. Castillo-Chavez (1991 Autonomous risk-behavior change, and nonlinear incidence rate, in models of sexually transmitted diseases, Biometrics Unit Technical Report B-1048-M. 





41. Castillo-Chavez, C. and S-F Hsu Schmitz (1997) The evolution of age-structured marriage functions: It takes two to tango, In, Structured-Population Models Marine, Terrestrial, and Freshwater Systems. S. Tuljapurkar and H. Caswell, (eds.), Chapman & Hall, New York, pages 533–550. 





62. Hethcote, H.W., J.W. van Ark (1987) Epidemiological methods for heterogeneous populations: proportional mixing, parameter estimation, and immunization programs. Math. Biosc. 84: 85–118. 





83. Morin, B., Castillo-Chavez, C. Hsu Schmitz, S-F, Mubayi, A., and X. Wang. Notes From the Heterogeneous: A Few Observations on the Implications and Necessity of Affinity. Journal of Biological Dynamics, Vol. 4, No. 5, 2010, 456–477. 





104. Wald, A., A.G. Langenberg, K. Link, A.E. Izu, R. Ashley, T. Warren, . . . and L. Corey (2001) Effect of condoms on reducing the transmission of herpes simplex virus type 2 from men to women. JAMA, 285(24): 3100–3106. 





4. Anderson, R.M. and R.M. May (1987) Transmission dynamics of HIV infection, Nature 326: 137–142. 





23. Blythe, S.P., C. Castillo-Chavez and G. Casella (1992) Empirical methods for the estimation of the mixing probabilities for socially structured populations from a single survey sample, Math. Pop. Studies. 3: 199–225. 





42. Castillo-Chavez, C. and Z. Feng (1997) To treat or not to treat: The case of tuberculosis, J. Math. Biol., 35: 629–656. 





63. Hethcote, H.W., and J.W. Van Ark (1992) Modeling HIV Transmission and AIDS in the United States, Lecture Notes in Biomathematics 95, Springer-Verlag, Berlin-Heidelberg-New York. 





84. Mukandavire, Z., and W. Garira (2007) Age and sex structured model for assessing the demographic impact of mother-to-child transmission of HIV/AIDS. Bull. Math. Biol. 69: 2061–2092. 





105. West R. and J. Thompson (1996) Modeling the impact of HIV on the spread of tuberculosis in the United States, Math. Biosci., 143: 35–60. 





5. Anderson, R.M. (1988) The epidemiology of HIV infection: variable incubation plus infectious periods and heterogeneity in sexual activity, J. Roy. Statistical Society A. 151: 66–93. 





24. Blythe, S.P., S. Busenberg and C. Castillo-Chavez (1995) Affinity and paired-event probability, Math. Biosc. 128: 265–284. 





43. Castillo-Chavez, C. and Z. Feng (1998) Global stability of an age-structure model for TB and its applications to optimal vaccination, Math. Biosc. 151: 135–154. 





64. Hopf, E. (1942) Abzweigung einer periodischen Lösungen von einer stationaren Lösung eines Differentialsystems,Berlin Math-Phys. Sachsiche Akademie der Wissenschaften, Leipzig, 94: 1–22. 





85. Mukandavire, Z., and W. Garira (2007) Sex-structured HIV/AIDS model to analyse the effects of condom use with application to Zimbabwe. J. Math. Biol. 54(5): 669–699. 





106. White, R.G., E.E.Freeman, K.K. Orroth, R. Bakker, H.A. Weiss, N. O’farrell, . . . and J.R. Glynn (2008) Population-level effect of HSV-2 therapy on the incidence of HIV in sub-Saharan Africa. Sexually transmitted infections, 84(Suppl 2): ii12–ii18. 





6. Anderson, R.M., D.R. Cox, and H.C. Hillier (1989) Epidemiological and statistical aspects of the AIDS epidemic: introduction, Phil. Trans. Roy. Soc. Lond. B 325: 39–44. 





25. Boily, M.C., F.I. Bastos, K. Desai, and B. Masse (2004) Changes in the transmission dynamics of the HIV epidemic after the wide-scale use of antiretroviral therapy could explain increases in sexually transmitted infections: results from mathematical models, Sexually transmitted diseases, 31(2): 100–113. 





44. Cohen, M.S., N. Hellmann, J.A. Levy, K. DeCock, and J. Lange (2008) The spread, treatment, and prevention of HIV-1: evolution of a global pandemic. The Journal of clinical investigation, 118(4): 1244–1254. 





65. Hsu Schmitz, S.F. (1993) Some theories, estimation methods and applications of marriage functions and two-sex mixing functions in demography and epidemiology. Unpublished doctoral dissertation, Cornell University, Ithaca, New York, U.S.A. 





86. Naresh, R. and A. Tripathi (2005) Modelling and analysis of HIV-TB Co-infection in a variable size population, Mathematical Modelling and Analysis, 10: 275–286. 





107. Wong-Staal, F., R.C. Gallo (1985) Human T-lymphotropic retroviruses. Nature 317: 395–403. 





7. Anderson, R. M., S.P. Blythe, S. Gupta, and E. Konings (1989) The transmission dynamics of the human immunodeficiency virus type 1 in the male homosexual community in the United Kingdom: the influence of changes in sexual behavior, Phil. Trans. R. Soc. Lond. B 325: 145–198. 





26. Brookmeyer, R. and M. H. Gail (1988) A method for obtaining short-term projections and lower bounds on the size of the AIDS epidemic, J. Am. Stat. Assoc., 83:301–308. 





45. Corey, L., A. Wald, R. Patel, S.L. Sacks, S.K. Tyring, T. Warren, T., . . . and L.S. Stratchounsky (2004) Once-daily valacyclovir to reduce the risk of transmission of genital herpes. New England Journal of Medicine, 350(1): 11–20. 





66. Hsu Schmitz S.F. and C. Castillo-Chavez (1994) Parameter estimation. Brit. Med. J. 293: 1459–1462. 





87. Newton, E. A., and J.M. Kuder (2000) A model of the transmission and control of genital herpes. Sexually transmitted diseases, 27: 363–370. 





108. Wu L.-I., and Z. Feng (2000) Homoclinic bifurcation in an SIQR model for childhood diseases, J. Diff. Equ. 168: 150–167. 





8. Anderson, R.M. and R.M. May (1991) Infectious Diseases of Humans, Oxford Science Publications, Oxford. 





27. Busenberg, S., and C. Castillo-Chavez (1989) Interaction, Pair Formation and Force of Infection Terms in Sexually Transmitted Diseases, Lect. Notes Biomath. 83, Springer-Verlag, New York. 





46. Cox, D.R. and G.F. Medley (1989) A process of events with notification delay and the forecasting of AIDS, Phil. Trans. Roy. Soc. Lond. B 325: 135–145. 





67. Huang, W., K.L.Cooke, and C. Castillo-Chavez, (1992) Stability and bifurcation for a multiple-group model for the dynamics of HIV/AIDS transmission, SIAM J. Appl. Math. |textbf52: 835–854. 





88. Pickering, J., J.A. Wiley, N.S. Padian, et al. (1986) Modeling the incidence of acquired immunodeficiency syndrome (AIDS) in San Francisco, Los Angeles, and New York, Math. Modelling 7: 661–688. 





9. Aparicio J.P., A.F. Capurro, and C. Castillo-Chávez (2002) Markers of disease evolution: the case of tuberculosis, J. Theor. Biol. 215: 227–237. 





28. Busenberg, S., and C. Castillo-Chavez (1991) A general solution of the problem of mixing subpopulations, and its application to risk- and age-structured epidemic models for the spread of AIDS. IMA J. Math. Applied in Med. and Biol. 8: 1–29. 





47. Crawford, C.M., S.J. Schwager, and C. Castillo-Chavez (1990) A methodology for asking sensitive questions among college undergraduates, Technical Report #BU-1105-M in the Biometrics Unit series, Cornell University, Ithaca, NY. 





68. Hyman, J.M., E.A. Stanley (1988) . Math. Biosciences 90 415–473. 





89. Porco T. and S. Blower (1998) Quantifying the intrinsic transmission dynamics of tuberculosis, Theor. Pop. Biol., 54: 117–132. 





10. Bailey, N.T.J. (1988) Statistical problems in the modeling and prediction of HIV/AIDS, Aust. J. Stat. 3OA: 41–55. 





29. Castillo-Chavez, C., H.W. Hethcote, V. Andreasen, S.A. Levin, S.A. and W-M, Liu (1988) Cross-immunity in the dynamics of homogeneous and heterogeneous populations, Mathematical Ecology, T. G. Hallam, L. G. Gross, and S. A. Levin (eds.), World Scientific Publishing Co., Singapore, pp. 303–316. 





48. Dietz, K. (1988) On the transmission dynamics of HIV, Math. Biosc. 90: 397–414. 





69. Hyman, J.M. and E.A. Stanley (1989) , Mathematical Approaches to Problems in Resource Management and Epidemiology,(Ithaca, NY, 1987), 190–219, Lecture Notes in Biomathematics, 81, C. Castillo-Chávez, S. A. Levin, and C. A. Shoemaker (Eds.), Springer, Berlin. 





90. Porco, T., P. Small, and S. Blower (2001) Amplification dynamics: predicting the effect of HIV on tuberculosis outbreaks, Journal of AIDS, 28: 437–444. 





11. Barré-Sinoussi, F., J.C. Chermann, F. Rey, M.T. Nugeyre, S. Chamaret, J. Gruest, C. Dauguet, C. Axler-Blin, F. Vézinet-Brun, C. Rouzioux, et al (1983) Isolation of a T-lymphotropic retrovirus from a patient at risk for acquired immune deficiency syndrome (AIDS), Science 220: 868–870. 





30. Castillo-Chavez, C., ed. (1989) Mathematical and Statistical Approaches to AIDS Epidemiology, Lect. Notes Biomath. 83, Springer-Verlag, Berlin-Heidelberg-New York. 





49. Dietz, K. and K.P. Hadeler (1988) Epidemiological models for sexually transmitted diseases, J. Math. Biol. 26: 1–25. 





70. Isham, V. (1989) Estimation of the incidence of HIV infection, Phil. Trans. Roy. Soc. Lond. B, 325: 113–121. 





91. Raimundo, S.M., A.B. Engel, H.M. Yang, and R.C. Bassanezi (2003) An approach to estimating the transmission coefficients for AIDS and for tuberculosis using mathematical models, Systems Analysis Modelling Simulation, 43: 423–442. 





12. Blower, S.M., A.N. Aschenbach, H.B. Gershengorn, and J.O. Kahn (2001) Predicting the unpredictable: transmission of drug-resistant HIV. Nature medicine, 7(9): 1016. 





31. Castillo-Chavez, C. (1989) Review of recent models of HIV/AIDS transmission, in Applied Mathematical Ecology (ed. S. Levin), Biomathematics Texts, Springer-Verlag, 18: 253–262. 





50. Feng, Z. and C. Castillo-Chavez (2000) A model for Tuberculosis with exogenous reinfection, Theor. Pop. Biol., 57: 235–247. 





71. Kaplan, E.H. What Are the Risks of Risky Sex?, Operations Research, 1989. 





92. Roeger, L.-I.W., Z. Feng and C. Castillo-Chavez (2009) The impact of HIV infection on tuberculosis, Math. Biosc. Eng. 6: 815–837. 





13. Blower, S.M. and H. Dowlatabadi (1994) Sensitivity and uncertainty analysis of complex models of disease transmission: an HIV model, as an example. International Statistical Review/Revue Internationale de Statistique, 229–243. 





32. Castillo-Chavez, C., K. Cooke, W. Huang, S.A. Levin (1989) The role of long periods of infectiousness in the dynamics of acquired immunodeficiency syndrome. In: Castillo-Chavez, C., S.A. Levin, C. Shoemaker (eds.) Mathematical Approaches to Resource Management and Epidemiology, (Lecture Notes Biomathematics, 81, Springer-Verlag, Berlin, Heidelberg. New York. London, Paris, Tokyo, Hong Kong, pp. 177–189. 





51. Feng, Z., W. Huang, and C. Castillo-Chavez (2001) On the role of variable latent periods in mathematical models for tuberculosis, J. Dyn. Differential Equations, 13: 425–452. 





72. Kingsley, R. A., R. Kaslow, C.R. Jr Rinaldo, K. Detre, N. Odaka, M. VanRaden, R. Detels, B.F. Polk, J. Chimel, S.F. Kersey, D. Ostrow, B. Visscher (1987) , Lancet 1, 345– 348. 





93. Rubin, G., D. Umbauch, D., S.-F. Shyu and C. Castillo-Chavez (1992) Application of capturerecapture methodology to estimation of size of population at risk of AIDS and/or Other sexually-transmitted diseases, Statistics in Medicine 11: 1533–49. 





14. Blower, S.M., H.B. Gershengorn, and R.M. Grant (2000) A tale of two futures: HIV and antiretroviral therapy in San Francisco. Science, 287(5453): 650–654. 





33. Castillo-Chavez, C., K.L. Cooke, W. Huang, and S.A. Levin (1989) Results on the dynamics for models for the sexual transmission of the human immunodeficiency virus, Applied Math. Letters, 2: 327–331. 





52. Feng, Z., Z. Qiu, Z. Sang, C. Lorenzo, and J.W. Glasser (2013) Modeling the synergy between HSV-2 and HIV and potential impact of HSV-2 therapy. Math. Biosci. 245(2): 171–187. 





73. Kirschner, D. (1999) Dynamics of co-infection with M. tuberculosis and HIV-1, Theor. Pop. Biol., 55: 94–109. 





94. Salahuddin, S.Z., J.E. Groopman, P.D. Markham, M.G. Sarngaharan, R.R. Redfield, M.F. McLane, M. Essex, A. Sliski, R.C. Gallo (1984) HTLV-III in symptom-free seronegative persons, Lancet 2: 1418–1420. 





15. Blower, S. M., K. Koelle, D.E. Kirschner, and J. Mills (2001) Live attenuated HIV vaccines: predicting the tradeoff between efficacy and safety. Proc. Natl. Acad. Sci. 98(6): 3618–3623. 





34. Castillo-Chavez, C., K. Cooke, W. Huang, and S.A. Levin (1989) On the role of long incubation periods in the dynamics of HIV/AIDS. Part 2: Multiple group models, Mathematical and Statistical Approaches to AIDS Epidemiology, C. Castillo-Chávez, (ed.), Lecture notes in Biomathematics 83, Springer-Verlag, Berlin-Heidelberg-New York, pp. 200–217. 





53. Foss, A.M., P.T. Vickerman, Z. Chalabi, P. Mayaud, M. Alary, and C.H. Watts (2009) Dynamic modeling of herpes simplex virus type-2 (HSV-2) transmission: issues in structural uncertainty. Bull Math. Biol. 71(3): 720–749. 





74. Koelle, K., S. Cobey, B. Grenfell, M. Pascual (2006) Epochal evolution shapes the phylodynamics of interpandemic influenza A (H3N2) in Humans Science 314: 1898–1903. 





95. Sattenspiel, L. (1989) The structure and context of social interactions and the spread of HIV. In Mathematical and Statistical Approaches to AIDS Epidemiology, Castillo-Chavez, C. (ed.) Lecture Notes in Biomathematics 83. Berlin: Springer-Verlag, pp. 242–259. 





16. Blower, S., and L. Ma (2004) Calculating the contribution of herpes simplex virus type 2 epidemics to increasing HIV incidence: treatment implications. Clinical Infectious Diseases, 39(Supplement 5), S240–S247. 





35. Castillo-Chavez, C., K. Cooke, W. Huang, and S.A. Levin (1989) The role of long incubation periods in the dynamics of HIV/AIDS. Part 1: Single populations models, J. Math. Biol. 27: 373–398. 





54. Foss, A.M., P.T. Vickerman, P. Mayaud, H.A. Weiss, B.M. Ramesh, S. Reza-Paul, S., . . . and M. Alary (2011) Modelling the interactions between herpes simplex virus type 2 and HIV: implications for the HIV epidemic in southern India. Sexually transmitted infections, 87(1): 22–27. 





75. Koopman, J, C.P. Simon, J.A. Jacquez, J. Joseph, L. Sattenspiel and T Park (1988) Sexual partner selectiveness effects on homosexual HIV transmission dynamics. Journal of AIDS 1: 486–504. 





96. Sattenspiel, L., J. Koopman, C.P. Simon, and J.A. Jacquez (1990) The effects of population subdivision on the spread of the HIV infection, Am. J. Physical Anthropology 82: 421–429. 





55. Gallo, R.C., S.Z. Salahuddin, M. Popovic, G.M. Shearer, M. Kaplan, B.F. Haynes, T. Palker, R. Redfield, J. Oleske, B. Safai, G. White, P. Foster, P.D., Markhamet (1984) Frequent detection and isolation of sytopathic retroviruses (HTLV-III) from patients with AIDS and at risk for AIDS, Science 224: 500–503. 





76. Lagakos, S.W., L. M. Barraj, and V. de Gruttola (1988) Nonparametric analysis of truncated survival data, with applications to AIDS, Biometrika, 75: 515–523. 





97. Sattenspiel, L. and C. Castillo-Chavez (1990) Environmental context, social interactions, and the spread of HIV, Am. J. Human Biology 2: 397–417. 





56. Gallo, R.C. (1986) The first human retrovirus, Scientific American 255: 88–98. 





77. Lange, J. M. A., Paul, D. A., Huisman, H. G., De Wolf, F., Van den Berg, H., Roe!, C. A., Danner, S. A., Van der Noordaa, J., Goudsmit, J. . Brit. Med. J. 293, 1459–1462 (1986). 





98. Schinazi, R.B. (2003) Can HIV invade a population which is already sick? Bull. Braz. Math. Soc. (N.S.), 34: 479–488. 



# Chapter 9 Models for Influenza

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/cce6c3f7855a51a1558a35041939cf07a9360c4b4ff9966b1ced6fdcd9a9ef61.jpg)


## 9.1 Introduction to Influenza Models

Influenza causes more morbidity and more mortality than all other respiratory diseases together. There are annual seasonal epidemics that cause about 500, 000 deaths worldwide each year. During the twentieth century there were three influenza pandemics. The World Health Organization estimates that there were 40, 000, 000– 50, 000, 000 deaths worldwide in the 1918 pandemic, 2, 000, 000 deaths worldwide in the 1957 pandemic, and 1, 000, 000 deaths worldwide in the 1968 pandemic. There has been concern since 2005 that the H5N1 strain of avian influenza could develop into a strain that can be transmitted readily from human to human and develop into another pandemic, together with a widely held belief that even if this does not occur there is likely to be an influenza pandemic in the near future. More recently, the H1N1 strain of influenza did develop into a pandemic in 2009, but fortunately its case mortality rate was low and this pandemic turned out to be much less serious than had been feared. There were 18,500 confirmed deaths, but the actual number of deaths caused by the H1N1 influenza may have been as many as 200,000. This history has aroused considerable interest in modeling both the spread of influenza and comparison of the results of possible management strategies. 

Vaccines are available for annual seasonal epidemics. Influenza strains mutate rapidly, and each year a judgment is made of which strains of influenza are most likely to invade. A vaccine is distributed that protects against the three strains considered most dangerous. However, if a strain radically different from previously known strains arrives, vaccine provides little or no protection and there is danger of a pandemic. As it would take at least 6 months to develop a vaccine to protect against such a new strain, it would not be possible to have a vaccine ready to protect against the initial onslaught of a new pandemic strain. Attempts are underway to try to develop a more universal vaccine. 

Antiviral drugs are available to treat pandemic influenza, and they may have some preventive benefits as well, but such benefits are present only while antiviral treatment is continued. 

Various kinds of models have been used to describe influenza outbreaks. Many public health policy decisions on coping with a possible influenza pandemic are based on construction of a contact network for a population and analysis of disease spread through this network. This analysis consists of multiple stochastic simulations requiring a substantial amount of computer time. In advance of an epidemic it is not possible to know its severity, and it would be necessary to make estimates for a range of reproduction numbers. Also, model parameters for the H1N1 influenza pandemic of 2009, especially the susceptibility to infection for different age groups, were significantly different from those for seasonal epidemics. In advance of an anticipated pandemic it may be more appropriate to use simpler models until enough data are acquired to facilitate parameter estimation. Early estimation of model parameters is extremely important for coping with a serious epidemic, and one of the outcomes of the H1N1 influenza pandemic of 2009 was development of new methods, mainly based on network models, to achieve this. 

Our approach is to begin with simple models and to add more structure later as more information is obtained. When an epidemic does begin, plans for management strategies need to be very detailed, and use of the simple models we describe here should be restricted to advance planning and broad understanding. 

We begin this chapter by developing a simple compartmental influenza transmission model and then augmenting it to include both pre-epidemic vaccination and treatment during an epidemic. We will also describe some ways in which the model can be modified to be more realistic, though more complicated. The development follows the treatment in [6, 7]. We will describe the models and the results of their analyses, but omit proofs in order to focus attention on the applications of the models. Many of the results may be found in earlier chapters. 

## 9.2 A Basic Influenza Model

Since influenza epidemics usually come and go in a time period of several months, we do not include demographic effects (births and natural deaths) in our model. Our starting point is the simple SI R model. Two aspects of influenza that are easily added are that there is an incubation period between infection and the appearance of symptoms, and that a significant fraction of people who are infected never develop symptoms but go through an asymptomatic period, during which they have some infectivity, and then recover and go to the removed compartment [35]. Thus a model should contain the compartments S (susceptible), L (latent), I (infective), A (asymptomatic), and R (removed). Specifically, we make the following assumptions: 

1. There is a small number $I _ { 0 }$ of initial infectives in a population of constant total size N. 

2. The number of contacts in unit time per individual is a constant multiple $\beta$ of total population size N. 

3. Latent members (L) are not infective. 

4. A fraction $p$ of latent members proceed to the infective compartment at rate $\kappa ,$ , while the remainder goes directly to an asymptomatic infective compartment (A), also at rate $\kappa$ . 

5. There are no disease deaths; infectives (I ) recover and leave the infective compartment at rate α, and go to the removed compartment (R). 

6. Asymptomatics have infectivity reduced by a factor δ, and go to the removed compartment at rate η. 

These assumptions lead to the model 

$$
S ^ {\prime} = - S \beta (I + \delta A)
$$

$$
L ^ {\prime} = S \beta (I + \delta A) - \kappa L
$$

$$
I ^ {\prime} = p \kappa L - \alpha I \tag {9.1}
$$

$$
A ^ {\prime} = (1 - p) \kappa L - \eta A
$$

$$
R ^ {\prime} = \alpha I + \eta A
$$

with initial conditions 

$$
S (0) = S _ {0}, \quad L (0) = 0, \quad I (0) = I _ {0}, \quad A (0) = 0, \quad R (0) = 0, \quad N = S _ {0} + I _ {0}.
$$

In analyzing this model we may remove one variable since $N = S + L + I + A + R$ is constant. It is usually convenient to remove the variable R. It is possible to show that the model (9.1) is properly posed in the sense that all variables remain non-negative for $0 \leq t < \infty$ . A flow diagram for the model (9.1) is shown in Fig. 9.1. The model (9.1) is the simplest possible description for influenza having the property that there are asymptomatic infections. The question that should be in the back of our minds is whether it is a sufficiently accurate description for its predictions to be useful. 

The model (9.1), like the other models that we will introduce later, consists of a system of ordinary differential equations. The number of susceptibles in the population tends to a limit $S _ { \infty }$ as $t  \infty$ and the final size relation may be used to find this limit without the need to solve the system of differential equations. It is more realistic to assume saturation of contacts and that $\beta$ is a function of the total population size N . In general, the final size relation is an inequality. If there are no disease deaths, N is constant and $\beta$ is constant even with saturation of contacts. If the disease death rate is small, it appears that the final size relation is very close to an equality and it is reasonable to assume that $\beta$ is constant and use the final size relation as an equation to solve for $S _ { \infty }$ . 

We may use the next generation matrix approach of [48] to calculate the basic reproduction number 

$$
\mathcal {R} _ {0} = \beta N \left[ \frac {p}{\alpha} + \frac {\delta (1 - p)}{\eta} \right]. \tag {9.2}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/3d14d7d29a24e3cddf7dcf202d22b1756428737c8739fd1f701e4ced7a022cc8.jpg)



Fig. 9.1 Diagram for the basic influenza model (9.1)


A biological interpretation of this basic reproduction number is that a latent member introduced into a population of N susceptibles becomes infective with probability $p ,$ , in which case he or she causes $\beta N / \alpha$ infections during an infective period of length $1 / \alpha .$ , or becomes asymptomatic with probability $1 - p _ { : }$ , in which case he or she causes $\delta \beta N / \eta$ infections during an asymptomatic period of length $1 / \eta$ . 

The final size relation is given by 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {0} \left[ 1 - \frac {S _ {0}}{N} \right]. \tag {9.3}
$$

A very general form of the final size relation that is applicable to each of the models in this chapter is derived in Sect. 4.5. The final size relation shows that $S _ { \infty } > 0$ . This means that some members of the population are not infected during the epidemic. The size of the epidemic, the number of (clinical) cases of influenza during the epidemic, is 

$$
I _ {0} + S _ {0} - S _ {\infty} = N - S _ {\infty},
$$

and the number of symptomatic cases is 

$$
I _ {0} + p (S _ {0} - S _ {\infty}).
$$

If there are disease deaths, with a disease survival rate $f$ and a disease death rate $( 1 -$ $f )$ among infectives (assuming no disease deaths of asymptomatics), the number of disease deaths is 

$$
I _ {0} + (1 - f) p \left(S _ {0} - S _ {\infty}\right).
$$

While mathematicians view the basic reproduction number as central in studying epidemiological models, epidemiologists may be more concerned with the attack rate, as this may be measured directly. For influenza, where there are asymptomatic cases, there are two attack rates. One is the clinical attack rate, which is the fraction of the population that becomes infected, defined as 

$$
1 - \frac {S _ {\infty}}{N}.
$$

There is also the symptomatic attack rate, defined as the fraction of the population that develops disease symptoms, defined as 

$$
p \left[ 1 - \frac {S _ {\infty}}{N} \right].
$$

The attack rates and the basic reproduction number are connected through the final size relation (9.3). If we know the parameters of the model we can calculate $\mathcal { R } _ { 0 }$ from (9.2) and then solve for $S _ { \infty }$ from (9.3). 

We apply the model (9.1) using parameters appropriate for the 1957 influenza pandemic as suggested by [35]. The latent period is approximately 1.9 days and the infective period is approximately 4.1 days, so that 

$$
\kappa = \frac {1}{1 . 9} = 0. 5 2 6, \quad \alpha = \eta = \frac {1}{4 . 1} = 0. 2 4 4.
$$

We also take 

$$
p = 2 / 3, \quad \delta = 0. 5, \quad f = 0. 9 8.
$$

As in [35] we consider a population of 2000 members, of whom 12 are infective initially. In [35] a symptomatic attack rate was assumed for each of the four age groups, and the average symptomatic attack rate for the entire population was 0.326. This implies $S _ { \infty } = 1 0 2 2$ . Then we obtain 

$$
\mathcal {R} _ {0} = 1. 3 7
$$

from (9.3). Now, we use this in (9.2) to calculate 

$$
\beta N = 0. 4 0 2.
$$

We will use these data as baseline values to estimate the effect that control measures might have had. The number of clinical cases is 978 (including the initial 12), the number of symptomatic cases is 664, again including the original 12, and the number of disease deaths is approximately 13. 

The model (9.1) can be adapted to describe management strategies for both annual seasonal epidemics and pandemics. 

## 9.2.1 Vaccination

To cope with annual seasonal influenza epidemics, there is a program of vaccination before the “flu” season begins. Each year a vaccine is produced aimed at protecting against the three influenza strains considered most dangerous for the coming season. We formulate a model to add vaccination to the model described by (9.1) under the assumption that vaccination reduces susceptibility (the probability of infection if a contact with an infected member of the population is made). In addition, if we assume that vaccinated members who develop infection are less likely to transmit infection, more likely not to develop symptoms, and are likely to recover more rapidly than unvaccinated members. 

These assumptions require us to introduce additional compartments into the model to follow treated members of the population through the stages of infection. We use the classes S, L, I, A, R as before and introduce $S _ { T }$ , the class of treated susceptibles, $L _ { T }$ , the class of treated latent members, $I _ { T }$ , the class of treated infectives, and $A _ { T }$ , the class of treated asymptomatics. In addition to the assumptions made in formulating the model (9.1) we also assume 

• A fraction $\gamma$ of the population is vaccinated before a disease outbreak and vaccinated members have susceptibility to infection reduced by a factor $\sigma _ { S }$ . 

• There are decreases $\sigma _ { I }$ and $\sigma _ { A }$ , respectively, in infectivity in $I _ { T }$ , and $A _ { T } ;$ it is reasonable to assume 

$$
\sigma_ {I} <   1, \quad \sigma_ {A} <   1.
$$

• The rates of departure from $L _ { T } , I _ { T }$ , and $A _ { T }$ are $\kappa _ { T } , \alpha _ { T }$ , and $\eta _ { T }$ , respectively. It is reasonable to assume 

$$
\kappa \leq \kappa_ {T}, \quad \alpha \leq \alpha_ {T}, \quad \eta \leq \eta_ {T}.
$$

• The fractions of members recovering from disease when they leave I and $I _ { T }$ are $f$ and $f _ { T }$ , respectively. It is reasonable to assume $f \ \leq \ f _ { T }$ . In our analysis we will take $f = f _ { T } = 1$ (no disease deaths). 

• Vaccination decreases the fraction of latent members who will develop symptoms by a factor τ , with $0 \leq \tau \leq 1$ . 

For convenience we introduce the notation 

$$
Q = I + \delta A + \sigma_ {I} I _ {T} + \delta \sigma_ {A} A _ {T}. \tag {9.4}
$$

The resulting model is 

$$
\begin{array}{l} S ^ {\prime} = - S \beta Q \\ S _ {T} ^ {\prime} = - \sigma_ {S} S _ {T} \beta Q \\ L ^ {\prime} = S \beta Q - \kappa L \\ \end{array}
$$


Fig. 9.2 Transition diagram corresponding to the vaccination model (9.5)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/bd23ee9b2ab2bc7957a27db08eae051de8936cf8a8d6cd530d9041e2bb5a3a8b.jpg)


$$
L _ {T} ^ {\prime} = \sigma_ {S} S _ {T} \beta Q - \kappa_ {T} L _ {T}
$$

$$
I ^ {\prime} = p \kappa L - \alpha I \tag {9.5}
$$

$$
I _ {T} ^ {\prime} = \tau p \kappa_ {T} L _ {T} - \alpha_ {T} I _ {T}
$$

$$
A ^ {\prime} = (1 - p) \kappa L - \eta A
$$

$$
A _ {T} ^ {\prime} = (1 - p \tau) \kappa_ {T} L _ {T} - \eta_ {T} A _ {T}
$$

$$
R ^ {\prime} = \alpha I + \alpha_ {T} I _ {T} + \eta A + \eta_ {T} A _ {T}.
$$

The initial conditions are 

$$
S (0) = (1 - \gamma) S _ {0}, \quad S _ {T} (0) = \gamma S _ {0}, \quad I (0) = I _ {0}, \quad N = S _ {0} + I _ {0},
$$

$$
L (0) = L _ {T} (0) = I _ {T} (0) = A (0) = A _ {T} (0) = 0
$$

corresponding to pre-epidemic treatment of a fraction $\gamma$ of the population. A flow diagram for the model (9.5) is shown in Fig. 9.2. 

Since the infection now is beginning in a population which is not fully susceptible, we speak of the control reproduction number $\mathcal { R } _ { c }$ rather than the basic reproduction number. A computation using the next generation matrix leads to the control reproduction number 

$$
\mathcal {R} _ {c} = (1 - \gamma) \mathcal {R} _ {u} + \gamma \mathcal {R} _ {v},
$$

with 

$$
\mathcal {R} _ {u} = N \beta \left[ \frac {p}{\alpha} + \frac {\delta (1 - p)}{\eta} \right] = \mathcal {R} _ {0}, \tag {9.6}
$$

$$
\mathcal {R} _ {v} = \sigma_ {S} N \beta \big [ \frac {p \tau \sigma_ {I}}{\alpha_ {T}} + \frac {\delta (1 - p \tau) \sigma_ {A}}{\eta_ {T}} \big ].
$$

Then $\mathcal { R } _ { u }$ is a reproduction number for unvaccinated people and $\mathcal { R } _ { v }$ is a reproduction number for vaccinated people. There is a pair of final size relations for the two final sizes $S ( \infty )$ and $S _ { T } ( \infty )$ in terms of the group sizes $N _ { u } = ( 1 - \gamma ) N , N _ { v } = \gamma N$ , namely 

$$
\log \frac {(1 - \gamma) S _ {0}}{S _ {\infty}} = \mathcal {R} _ {u} \left[ 1 - \frac {S _ {\infty}}{N _ {u}} \right] + \mathcal {R} _ {v} \left[ 1 - \frac {S _ {T} (\infty)}{N _ {v}} \right], \tag {9.7}
$$

$$
\log \frac {\gamma S _ {0}}{S _ {T} (\infty)} = \sigma_ {S} \mathcal {R} _ {u} \left[ 1 - \frac {S _ {\infty}}{N _ {u}} \right] + \mathcal {R} _ {v} \left[ 1 - \frac {S _ {T} (\infty)}{N _ {v}} \right].
$$

The number of symptomatic disease cases is 

$$
I _ {0} + p [ (1 - \gamma) S _ {0} - S (\infty) ] + p \tau [ \gamma S _ {0} - S _ {T} (\infty) ],
$$

and the number of disease deaths is 

$$
(1 - f) [ I _ {0} + p (1 - \gamma) S _ {0} - S (\infty) ] + (1 - f _ {T}) p \tau [ \gamma S _ {0} - S _ {T} (\infty) ].
$$

These may be calculated with the aid of (9.7). By control of the epidemic we mean vaccinating enough people (i.e., taking $\gamma$ large enough) to make $\mathcal { R } _ { c } ~ < ~ 1$ . We use the following parameters, suggested in [35] and [22], 

$$
\sigma_ {S} = 0. 3, \quad \sigma_ {I} = \sigma_ {A} = 0. 2, \quad \kappa_ {T} = 0. 5 2 6, \quad \alpha_ {T} = \eta_ {T} = 0. 3 2 3, \quad \tau = 0. 4.
$$

With these parameter values, 

$$
\mathcal {R} _ {u} = 1. 3 7 3, \quad \mathcal {R} _ {v} = 0. 0 4 7.
$$

In order to make $\mathcal { R } _ { c } = 1$ , we need to take $\gamma = 0 . 2 8$ . This is the fraction of the population that needs to be vaccinated to head off an epidemic. 

We may solve the pair of final size equations with $S ( 0 ) = ( 1 - \gamma ) S _ { 0 } , S _ { T } ( 0 ) =$ $\gamma S _ { 0 }$ for $S ( \infty ) , S _ { T } ( \infty )$ for different values of $\gamma$ . We do this for the parameter values suggested above and we obtain the results shown in Table 9.1, giving the treatment fraction $\gamma$ , the number of untreated susceptibles $S ( \infty )$ at the end of the epidemic, the number of treated susceptibles $S _ { T } ( \infty )$ at the end of the epidemic, the number of treated cases of influenza $I _ { 0 } + p [ ( 1 - \gamma ) S _ { 0 } - S ( \infty ) ]$ , and the number of untreated cases $( \gamma S _ { 0 } - S _ { T } ( \infty ) ]$ . The results indicate the benefits of pre-epidemic vaccination of even a small fraction of the population in reducing the number of influenza cases. They also demonstrate the advantage of vaccination to an individual. The attack rate in the vaccinated portion of the population is much less than the attack rate in the unvaccinated portion of the population. 


Table 9.1 Effect of vaccination


<table><tr><td>Fraction treated</td><td><eq>S_{\infty}</eq></td><td><eq>S_T(\infty)</eq></td><td>Untreated cases</td><td>Treated cases</td></tr><tr><td>0</td><td>1015</td><td>0</td><td>660</td><td>0</td></tr><tr><td>0.05</td><td>1079</td><td>84</td><td>552</td><td>4</td></tr><tr><td>0.1</td><td>1149</td><td>174</td><td>439</td><td>7</td></tr><tr><td>0.15</td><td>1224</td><td>271</td><td>323</td><td>7</td></tr><tr><td>0.2</td><td>1305</td><td>375</td><td>201</td><td>6</td></tr><tr><td>0.25</td><td>1395</td><td>487</td><td>76</td><td>3</td></tr><tr><td>0.3</td><td>1391</td><td>596</td><td>13</td><td>0</td></tr></table>

## 9.3 Antiviral Treatment

If no vaccine is available for a strain of influenza it would be possible to use an antiviral treatment. However, antiviral treatment affords protection only while the treatment is continued and is more expensive. In addition, antivirals are in short supply and expensive, and treatment of enough of the population to control an anticipated epidemic may not be feasible. A policy of treatment aimed particularly at people who have been infected or who have been in contact with infectives once a disease outbreak has begun may be a more appropriate approach. This requires a model with treatment rates for latent, infective, and asymptomatically infected members of the population that we construct building on the structure used for vaccination in (9.5). 

Antiviral drugs have effects similar to vaccines in decreasing susceptibility to infection and decreasing infectivity, likelihood of developing symptoms, and length of infective period in case of infection. However, they are likely to be less effective than a well-matched vaccine, especially in the reduction of susceptibility. 

Treatment may be given to diagnosed infectives. In addition, one may treat contacts of infectives who are thought to have been infected. This is modeled by treating latent members. In practice, some of those identified by contact tracing and treated would actually be susceptibles, but we neglect this in the model. Although we have allowed treatment of asymptomatics in the model, this is unlikely to be done, and we will describe the results of the model under the assumption $\varphi _ { A } ~ = ~ \theta _ { A } ~ = ~ 0$ . However, for generality we retain the possibility of antiviral treatment of asymptomatics in the model. If treatment is given only to infectives, the compartments $L _ { T } , A _ { T }$ are empty and may be omitted from the model. 

We add to the model (9.5) antiviral treatment of latent, infective, and asymptomatically infected members of the population, but we do not assume an initial treated class. In addition to the assumptions made earlier we also assume 

• There is a treatment rate $\varphi _ { L }$ in L and a rate $\theta _ { L }$ of relapse from $L _ { T }$ to $L$ , a treatment rate $\varphi _ { I }$ in I and a rate $\theta _ { I }$ of relapse from $I _ { T }$ to I , and a treatment rate $\varphi _ { A }$ in A and a rate $\theta _ { A }$ of relapse from $A _ { T }$ to $A$ . 

The resulting model is 

$$
\begin{array}{l} S ^ {\prime} = - \beta S Q \\ L ^ {\prime} = \beta S Q - \kappa L - \varphi_ {L} L + \theta_ {L} L _ {T} \\ L _ {T} ^ {\prime} = - \kappa_ {T} L _ {T} + \varphi_ {L} L - \theta_ {L} L _ {T} \\ \begin{array}{l} I ^ {\prime} = p \kappa L - \alpha I - \varphi_ {I} I + \theta_ {I} I _ {T} \\ I ^ {\prime} = \dots = I, \quad I + \dots = I, \quad 0, I \end{array} \tag {9.8} \\ I _ {T} ^ {\prime} = p \tau \kappa_ {T} L _ {T} - \alpha_ {T} I _ {T} + \varphi_ {I} I - \theta_ {I} I _ {T} \\ A ^ {\prime} = (1 - p) \kappa L - \eta A - \varphi_ {A} A + \theta_ {A} A _ {T} \\ A _ {T} ^ {\prime} = (1 - p \tau) \kappa_ {T} L _ {T} - \eta_ {T} A _ {T} + \varphi_ {A} A - \theta_ {A} A _ {T} \\ N ^ {\prime} = - (1 - f) \alpha I - (1 - f _ {T}) \alpha_ {T} I _ {T}, \\ \end{array}
$$

with Q as in (9.4). The initial conditions are 

$$
S (0) = S _ {0}, \quad I (0) = I _ {0}, \quad L (0) = L _ {T} (0) = I _ {T} (0) = A (0) = A _ {T} (0) = 0, N = S _ {0} + I _ {0}.
$$

A flow diagram for the model (9.8) is shown in Fig. 9.3. 

The calculation of $\mathcal { R } _ { c }$ for the antiviral treatment model (9.8) is more complicated than for models considered previously, but it is possible to show that $\mathcal { R } _ { c } = \mathcal { R } _ { I } + \mathcal { R } _ { A }$ with 

$$
\mathcal {R} _ {I} = \frac {N \beta}{\Delta_ {I} \Delta_ {L}} \bigg [ (\alpha_ {T} + \theta_ {I} + \sigma_ {I} \varphi_ {I}) p \kappa (\kappa_ {T} + \theta_ {L}) + (\theta_ {I} + \sigma_ {I} (\alpha + \varphi_ {I})) p \tau \kappa_ {T} \phi_ {L} \bigg ]
$$

$$
\mathcal {R} _ {A} = \frac {\delta N \beta}{\Delta_ {L}} \left[ \frac {(1 - p) \kappa (\kappa_ {T} + \theta_ {L})}{\eta} + \frac {\sigma_ {A} (1 - p \tau) \kappa_ {T} \varphi_ {L}}{\eta_ {T}} \right], \tag {9.9}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/4dc2184286f4de571a2c5e79f50d9cb36984883b3f442788ee91ba15651e83af.jpg)



Fig. 9.3 Treatment model (9.8)


## 9.3 Antiviral Treatment

where 

$$
\varDelta_ {I} = (\alpha + \varphi_ {I}) (\alpha_ {T} + \theta_ {I}) - \theta_ {I} \varphi_ {I}
$$

$$
\varDelta_ {L} = (\kappa + \varphi_ {L}) (\kappa_ {T} + \theta_ {L}) - \theta_ {L} \varphi_ {L}.
$$

The final size equation is 

$$
\log \frac {S _ {0}}{S _ {\infty}} = \mathcal {R} _ {c} \left[ 1 - \frac {S _ {\infty}}{S _ {0}} \right] + \frac {\beta I _ {0} (\alpha_ {T} + \theta_ {I} + \sigma_ {I} \varphi_ {I})}{\Delta_ {I}}. \tag {9.10}
$$

The number of people treated is 

$$
\int_ {0} ^ {\infty} [ \varphi_ {L} L (t) + \varphi_ {I} I (t) ] d t
$$

and the number of disease cases is 

$$
I _ {0} + \int_ {0} ^ {\infty} [ p \kappa L (t) + p \tau \kappa_ {T} L _ {T} ] d t
$$

which can be evaluated in terms of the parameters of the model. The number of people treated and the number of disease cases are constant multiples of $S _ { 0 } - S _ { \infty }$ plus constant multiples of the (presumably small) number of initial infectives. Since the expressions in terms of $S _ { 0 } - S _ { \infty }$ and $I _ { 0 }$ are more complicated than in the cases of no treatment or vaccination, we have chosen to give these numbers in terms of integrals. 

There is an important consequence of the calculation of the number of disease cases and treatments that is not at all obvious. If $\mathcal { R } _ { c }$ is close to 1 $\mathrm { o r } \leq 1 , S _ { 0 } - S _ { \infty }$ depends very sensitively on changes in $I _ { 0 }$ . For example, in a population of 2000 with $\mathcal { R } _ { 0 } ~ = ~ 1 . 5$ , a change in $I _ { 0 }$ from 1 to 2 multiplies $S _ { 0 } - S _ { \infty }$ and therefore treatments and cases by 1.4 and a change in $I _ { 0 }$ from 1 to 5 multiplies $S _ { 0 } - S _ { \infty }$ and therefore treatments and cases by 3. Thus, numerical predictions in themselves are of little value. However, comparison of different strategies is valid, and the model indicates the importance of early action while the number of infectives is small. 

In the special case that treatment is applied only to infectives, $\mathcal { R } _ { c }$ is given by the simpler expression 

$$
\mathcal {R} _ {c} = N \beta \bigg [ \frac {p (\alpha_ {T} + \theta_ {I} + \sigma_ {I} \varphi_ {I})}{\varDelta_ {I}} + \frac {\delta (1 - p)}{\eta} \bigg ].
$$

The number of disease cases is $I _ { 0 } + p ( S _ { 0 } - S _ { \infty } )$ , and the number of people treated is 

$$
\frac {\varphi_ {I} (\alpha_ {T} + \theta_ {I})}{\Delta_ {I}} [ I _ {0} + p (S _ {0} - S _ {\infty}) ].
$$

Since the infective period is short, antiviral treatment would normally be applied as long as the patient remains infective. Thus we assume $\theta _ { I } = 0$ , and these relations become even simpler. The control reproduction number is 

$$
\mathcal {R} _ {c} = N \beta \left[ \frac {p (\alpha_ {T} + \sigma_ {I} \varphi_ {I})}{\alpha_ {T} (\alpha + \varphi_ {I})} + \frac {\delta (1 - p)}{\eta} \right], \tag {9.11}
$$

and the number of people treated is 

$$
\frac {\varphi_ {I}}{\alpha + \varphi_ {I}} [ I _ {0} + p (S _ {0} - S _ {\infty}) ]. \tag {9.12}
$$

Since the basic reproduction number of a future pandemic cannot be known in advance, it is necessary to take a range of contact rates in order to make predictions. In particular, we could compare the effectiveness in controlling the number of infections or the number of disease deaths of different strategies such as treating only infectives, treating only latent members, or treating a combination of both infective and latent members. In making such comparisons, it is important to take into account that treatment of latent members must be supplied for a longer period than for infectives. In case of a pandemic, there are also questions of whether the supply of antiviral drugs will be sufficient to carry out a given strategy. For this reason, we must calculate the number of treatments corresponding to a given treatment rate. It is possible to do this from the model; the result is a constant multiple of $I _ { 0 }$ plus a multiple of $S _ { 0 } - S _ { \infty }$ . 

The results of such calculations appear to indicate that treatment of diagnosed infectives is the most effective strategy [6, 7]. However, there are other considerations that would go into any policy decision. For example, a pandemic would threaten to disrupt essential services and it could be decided to use antiviral drugs prophylactically in an attempt to protect health care workers and public safety personnel. A study including this aspect based on the antiviral treatment model given here is reported in [26]. 

For simulations, we use the initial values 

$$
S _ {0} = 1 9 8 8, \quad I _ {0} = 1 2,
$$

the parameters of Sect. 9.1, and for antiviral efficacy we assume 

$$
\sigma_ {S} = 0. 7, \quad \sigma_ {I} = \sigma_ {A} = 0. 2,
$$

based on data reported in [50]. 

We simulate the model (9.8) with $\theta _ { I } = 0$ , assuming that treatment continues for the duration of the infection. We assume that 80% of diagnosed infectives are treated within 1 day. Since the assumption of treatment at a constant rate $\varphi _ { I }$ implies treatment of a fraction $1 - e x p ( - \varphi _ { I } t )$ after a time t , we take $\varphi _ { I }$ to satisfy 

$$
1 - e ^ {- \varphi_ {I}} = 0. 8,
$$


Table 9.2 Control by antiviral treatment


<table><tr><td><eq>\beta N</eq></td><td><eq>\mathcal{R}_0</eq></td><td><eq>\mathcal{R}_c</eq></td><td>Disease cases</td><td>Treatments</td></tr><tr><td>0.402</td><td>1.37</td><td>0.92</td><td>64</td><td>56</td></tr><tr><td>0.435</td><td>1.49</td><td>1.00</td><td>130</td><td>113</td></tr><tr><td>0.5</td><td>1.71</td><td>1.15</td><td>373</td><td>314</td></tr><tr><td>0.7</td><td>2.39</td><td>1.61</td><td>865</td><td>751</td></tr></table>

or $\varphi _ { I } = 1 . 6 1$ . We use different values of $\beta N$ , corresponding to different values of $\mathcal { R } _ { 0 }$ , and use (9.10) and (9.11), obtaining the results shown in Table 9.2. 

We calculate from (9.11) that $\mathcal { R } _ { c } ~ = ~ 1$ for an attack rate of 39%. This is the critical attack rate beyond which treatment at the rate specified cannot control the pandemic. 

## 9.4 Seasonal Influenza Epidemics

There are annual influenza outbreaks, usually in the fall and winter. Currently, the annual influenza outbreak is the subtype H3N2, coexisting with the subtype H1N1. Influenza A viruses are divided into subtypes identified by two proteins on the surface of the virus, namely hemagglutinin (HA) and neuraminidase (NA). The designation H3N2 means an influenza A virus that has an HA3 protein and an NA2 protein. An influenza virus undergoes antigenic drift, rapid minor genetic variation in a currently circulating subtype. Recovery from an influenza virus confers immunity against reinfection, but antigenic drift means that a later contact with an influenza virus of the same subtype will mean only partial immunity against infection. Until now, we have studied influenza epidemics in isolation, but if there is a seasonal outbreak of a strain that has been occurring for several seasons part of the population will have some cross-immunity protecting against another infection. Models for recurring seasonal outbreaks taking this into account have been analyzed by Andreasen et al. [3, 4]. Thus we now assume that at the beginning of a seasonal influenza outbreak individuals have a level of cross-immunity depending on the most recent outbreak, up to a maximum of n seasons. 

We assume that cross-immunity reduces both susceptibility to infection and infectivity in case of infection. At the beginning of a seasonal outbreak, we assume that all hosts are susceptible and we let $N _ { i }$ denote the number of hosts whose last infection occurred i seasons ago and we include in $N _ { n }$ all who have never been infected. We are dividing the total population into n sub-populations $( N _ { 1 } , N _ { 2 } , \cdots , N _ { n } )$ representing the distribution of cross immunities at the start of a seasonal epidemic. The (constant) total population size is 

$$
N = \sum_ {i = 1} ^ {n} N _ {i}.
$$

For simplicity, we assume that during a seasonal epidemic the model is a simple SI R model, ignoring the latent period and the existence of asymptomatic cases. 

Thus for each class i we have $I _ { i }$ infectious and $R _ { i }$ recovered individuals. The transmission dynamics are given by the system 

$$
S _ {i} ^ {\prime} = - \sigma_ {i} S _ {i} \beta \sum_ {j = 1} ^ {n} \tau_ {j} I _ {j}
$$

$$
I _ {i} ^ {\prime} = \sigma_ {i} S _ {i} \beta \sum_ {j = 1} ^ {n} \tau_ {j} I _ {j} - \alpha I _ {i} \tag {9.13}
$$

$$
R _ {i} ^ {\prime} = \alpha I _ {i}.
$$

Here $\alpha$ is the recovery rate, $\beta$ is the transmission coefficient in the absence of cross-immunity, $\sigma _ { i }$ is the relative susceptibility of individuals whose last infection occurred i seasons ago, and $\tau _ { i }$ is the relative infectivity of individuals whose last infection occurred i seasons ago. It is reasonable to assume that cross-immunity fades with time, so that 

$$
0 \leq \sigma_ {1} \leq \sigma_ {2} \leq \dots \leq \sigma_ {n} = 1, \quad 0 \leq \tau_ {1} \leq \tau_ {2} \leq \dots \leq \tau_ {n} = 1.
$$

If we define the total infectivity 

$$
\varphi (t) = \sum_ {j = 1} ^ {n} \tau_ {j} I _ {j},
$$

we may rewrite the model (9.13) as 

$$
\begin{array}{l} S _ {i} ^ {\prime} = - \sigma_ {i} \beta S _ {i} \varphi \\ I ^ {\prime} = - \sigma_ {i} S _ {i} \end{array} \tag {9.14}
$$

$$
I _ {i} ^ {\prime} = \sigma_ {i} \beta S _ {i} \varphi - \alpha I _ {i}.
$$

There is a disease-free equilibrium $S _ { i } = N _ { i } , I _ { i } = 0 ( i = 1 , 2 , \cdot \cdot \cdot , n )$ . 

The next generation matrix is 

$$
K = \frac {\beta}{\alpha} \left[ \begin{array}{c c c c} \sigma_ {1} N _ {1} \tau_ {1} & \sigma_ {2} N _ {1} \tau_ {1} & \dots & \sigma_ {n} N _ {1} \tau_ {1} \\ \sigma_ {2} N _ {2} \tau_ {1} & \sigma_ {2} N _ {2} \tau_ {2} & \dots & \sigma_ {n} N _ {2} \tau_ {2} \\ \vdots & \vdots & \ddots & \vdots \\ \sigma_ {n} N _ {n} \tau_ {1} & \sigma_ {n} N _ {n} \tau_ {2} & \dots & \sigma_ {n} N _ {n} \tau_ {n} \end{array} \right].
$$

Now, if P is the diagonal matrix with diagonal entries $\sigma _ { i } N _ { i } , 1 ~ \le ~ i ~ \le ~ n .$ , the matrix $P ^ { - 1 } K P$ similar to K has every row $\beta / \alpha$ multiplied by $( \sigma _ { 1 } \tau _ { 1 } N _ { 1 } , \sigma _ { 2 } \tau _ { 2 } N _ { 2 }$ , $\cdots , \sigma _ { n } \tau _ { n } N _ { n } )$ and therefore has rank 1. This implies that all but one of the eigenvalues of K are zero, and the remaining eigenvalue is equal to the trace of K. From this we conclude that the spectral radius of K is equal to the trace of K and the control reproduction number of the cross-immunity model (9.14) is 

$$
\mathcal {R} _ {S} = \frac {\beta}{\alpha} \sum_ {i = 1} ^ {n} \sigma_ {1} \tau_ {1} N _ {i}. \tag {9.15}
$$

If there were no cross-immunity, the basic reproduction number would be 

$$
\mathcal {R} _ {0} = \frac {\beta N}{\alpha}.
$$

Because $( S _ { i } + I _ { i } ) ^ { \prime } = - \alpha I _ { i }$ , we can deduce as in Sect. 2.4 that 

$$
\lim _ {t \to \infty} I _ {i} (t) = 0, \quad \lim _ {t \to \infty} S _ {i} (t) = S _ {i} (\infty),
$$

and 

$$
\alpha \int_ {0} ^ {\infty} I _ {i} (t) d t = N _ {i} - S _ {i} (\infty),
$$

using $S _ { i } ( 0 ) + I _ { i } ( 0 ) = N _ { i }$ . Integration of the first equation of (9.14) gives 

$$
\begin{array}{l} \log \frac {N _ {i}}{S _ {i} (\infty)} = \beta \sigma_ {i} \int_ {0} ^ {\infty} \varphi (t) d t \\ = \beta \sigma_ {i} \sum_ {j = 1} ^ {n} \tau_ {j} \int_ {0} ^ {\infty} I _ {j} (t) d t \tag {9.16} \\ = \frac {\beta}{\alpha} \sigma_ {i} \sum_ {j = 1} ^ {n} \tau_ {j} [ N _ {j} - S _ {j} (\infty) ] \\ = \sigma_ {i} \sum_ {j = 1} ^ {n} \tau_ {j} \frac {\beta N _ {j}}{\alpha} \left[ 1 - \frac {S _ {j} (\infty)}{N _ {j}} \right]. \\ \end{array}
$$

We can write this final size relation in terms of the single unknown $S _ { n } ( \infty )$ because from (9.14) and $\sigma _ { n } = 1$ we have 

$$
\frac {S _ {i} ^ {\prime}}{S _ {i}} = \sigma_ {i} \frac {S _ {n} ^ {\prime}}{S _ {n}},
$$

and integration gives 

$$
\frac {S _ {i} (\infty)}{N _ {i}} = \left[ \frac {S _ {n} (\infty)}{N _ {n}} \right] ^ {\sigma_ {i}}. \tag {9.17}
$$

Substitution of (9.17) into (9.16) gives a relation for $S _ { n } ( \infty )$ , namely 

$$
\log \frac {N _ {n}}{S _ {n} (\infty)} = \sigma_ {n} \sum_ {j = 1} ^ {n} \tau_ {j} \frac {\beta N _ {j}}{\alpha} \left[ 1 - \left(\frac {S _ {n} (\infty)}{N _ {n}}\right) ^ {\sigma_ {j}} \right].
$$

Then (9.17) gives solutions for $S _ { i } ( \infty ) , i = 1 , \ldots , n - 1$ . 

## 9.4.1 Season to Season Transition

The above analysis traces the development of a seasonal epidemic. We assume that at the beginning of the next season’s epidemic, the final compartment sizes give the separation of the population into new cross-immunity groups $( N _ { 1 } ^ { * } , N _ { 2 } ^ { * } , \ldots , N _ { n } ^ { * } )$ . The individuals who were infected during the previous season’s epidemic form the $N _ { 1 } ^ { * }$ $N _ { i }$ $N _ { i + 1 } ^ { * }$ 

$$
\begin{array}{l} N _ {1} ^ {*} = N - \sum_ {i = 1} ^ {n} S _ {i} (\infty) \\ N _ {j} ^ {*} = S _ {j - 1} (\infty), \quad j = 2, \dots , n - 1 \\ N _ {n} ^ {*} = S _ {n - 1} (\infty) + S _ {n} (\infty). \\ \end{array}
$$

This relation describes the transition from one seasonal epidemic to the next. The severity of one season’s epidemic affects the cross-immunity for the next season’s epidemic. If the seasonal epidemic 1 year is severe, then because there is more crossimmunity the next year it is reasonable to expect a less severe epidemic the next year. 

## 9.5 Pandemic Influenza

In some years, there is an immunological change that produces a new subtype. Such a change is called an antigenic shift, and is usually a result of recombination of gene segments from viruses circulating in humans with virus segments from avian viruses. Since this subtype is new, humans have little or no immunity against it, and the result often is a pandemic. For example, the H1N1 subtype emerged in the pandemic influenza of 1918 and circulated until 1957. In the pandemic of 1957 a new subtype, H2N2, emerged and replaced H1N1. In the pandemic of 1968, H3N2 replaced the prevailing subtype H2N2. In 1977, H1N1 was reintroduced and has been circulating along with H3N2 since then. A natural question is whether a new pandemic strain will replace the currently circulating subtype or coexist with it. To study this question, we must model a pandemic following a seasonal influenza outbreak and then model the next seasonal outbreak. This is necessary because there may be some cross-immunity between the seasonal and pandemic subtypes. The interplay between seasonal and pandemic influenza has been studied by Asaduzzaman et al. [8]. 

## 9.5 Pandemic Influenza

## 9.5.1 A Pandemic Outbreak

We begin by assuming that there has been a seasonal influenza epidemic and that at the end of this epidemic the population of total size N is divided into cross-immunity sub-populations with respect to the seasonal epidemics of sizes $( N _ { 1 } , N _ { 2 } , \cdots , N _ { n } )$ . We assume that there is a cross-immunity between the pandemic strain and the seasonal strain, for individuals in the population who have recovered from the seasonal strain in the previous n seasonal outbreaks reducing susceptibility by a factor $\rho , ( 0 \leq \rho \leq 1 )$ . Thus $\rho = 0$ corresponds to full cross-immunity and $\rho = 1$ corresponds to no cross-immunity. Then the model for pandemic influenza is 

$$
S _ {i} ^ {\prime} = - \rho \tilde {\beta} S _ {i} I, \quad i = 1, 2, \dots , n - 1
$$

$$
S _ {n} ^ {\prime} = - \tilde {\beta} S _ {n} I \tag {9.18}
$$

$$
I ^ {\prime} = \tilde {\beta} \Big [ \rho (S _ {1} + S _ {2} + \dots + S _ {n - 1}) + S _ {n} \Big ] I - \alpha I.
$$

If there were no cross-immunity, the basic reproduction number would be 

$$
\tilde {\mathcal {R}} _ {0} = \frac {\tilde {\beta} N}{\alpha}, \tag {9.19}
$$

where $\tilde { \beta }$ is the pandemic contact rate. 

An analysis very similar to that of Sect. 9.5 shows that the pandemic reproduction number is 

$$
\mathcal {R} _ {P} = \frac {\tilde {\beta}}{\alpha} \Big [ \rho (N _ {1} + N _ {2} + \dots + N _ {n - 1}) + N _ {n} \Big ] = \frac {\rho \tilde {\beta} N}{\alpha} + \frac {(1 - \rho) \tilde {\beta} N _ {n}}{\alpha},
$$

an increasing function of $\rho$ . If $\mathcal { R } _ { P } > 1$ , there will be a pandemic. 

We assume that the pandemic would invade if there were no cross-immunity, that is, 

$$
\tilde {\mathcal {R}} _ {0} > 1.
$$

Also, again much as in Sect. 9.5, we obtain a final size relation 

$$
\log \frac {N _ {n}}{S _ {n} (\infty)} = \frac {\tilde {\beta} N}{\alpha} \left[ 1 - \frac {\sum_ {i = 1} ^ {n} S _ {i} (\infty)}{N} \right] \tag {9.20}
$$

$$
\frac {S _ {i} (\infty)}{N _ {i}} = \left[ \frac {S _ {n} (\infty)}{N _ {n}} \right] ^ {\rho}, i = 1, \dots , n - 1.
$$

This relation gives the cross-immunity distribution for the pandemic. When we model the seasonal epidemic following the pandemic, we will need this result in order to distinguish between individuals susceptible to the seasonal influenza virus having cross-immunity to the pandemic strain and individuals without crossimmunity. 

## 9.5.2 Seasonal Outbreaks Following a Pandemic

In order to model a seasonal outbreak following a pandemic, because of crossimmunity between the seasonal and pandemic viruses, we must divide each of the subgroups $( N _ { 1 } , N _ { 2 } , \cdots , N _ { n } )$ into two parts, depending on whether the members of the group were infected by the pandemic. Now, we let $M _ { i }$ denote the individuals whose most recent seasonal infection was i seasons ago and who escaped the pandemic, and let $\tilde { M } _ { i }$ denote the individuals whose most recent seasonal infection was i seasons ago and who were infected in the pandemic. Then $N _ { i } = M _ { i } + \tilde { M } _ { i }$ . We denote by $S _ { i }$ the number of individuals in $M _ { i }$ susceptible to the seasonal influenza (who escaped the pandemic influenza) and by $\tilde { S } _ { i }$ the number of individuals in $M _ { i }$ susceptible to the seasonal influenza (infected by the pandemic). Taking into account the cross-immunity of individuals in $M _ { i }$ and again defining the total infectivity 

$$
\varphi (t) = \sum_ {j = 1} ^ {n} \tau_ {j} I _ {j},
$$

we obtain the model 

$$
S _ {i} ^ {\prime} = - \sigma_ {i} \beta S _ {i} \varphi
$$

$$
\tilde {S} ^ {\prime} = - \rho \sigma_ {i} \tilde {S} _ {i} \varphi \tag {9.21}
$$

$$
I _ {i} ^ {\prime} = \sigma_ {i} \beta (S _ {i} + \rho \tilde {S} _ {i}) \varphi - \alpha I _ {i}.
$$

The calculation of the reproduction number is again much the same as in Sect. 9.4, and yields the result 

$$
\mathcal {R} = \frac {\beta}{\alpha} \sum_ {i = 1} ^ {n} \sigma_ {i} \tau_ {i} (M _ {i} + \rho \tilde {M} _ {i}).
$$

In order to evaluate this, we need to determine $M _ { i }$ and $\tilde { M } _ { i }$ from the final size relation (9.20). We have $M _ { i } = S _ { i } ( \infty ) , \tilde { M } _ { i } = N _ { i } - S _ { i } ( \infty )$ , so that 

$$
M _ {i} + \rho \tilde {M} _ {i} = M _ {i} (1 - \rho) + \rho N _ {i},
$$

with $S _ { i } ( \infty )$ given by (9.20). If we let $\begin{array} { r } { x = \frac { S _ { n } ( \infty ) } { N _ { n } } } \end{array}$ Sn(∞) , then (9.20) gives 

## 9.5 Pandemic Influenza

$$
- \log x = \frac {\tilde {\beta}}{\alpha} [ N - \sum_ {i = 1} ^ {n} S _ {i} (\infty) ] \tag {9.22}
$$

$$
= \frac {\tilde {\beta} N}{\alpha} \left[ 1 - \frac {N _ {1} S _ {n} ^ {\rho} + N _ {2} S _ {n} ^ {\rho} + \cdots + N _ {n} S _ {n} ^ {\rho}}{N N _ {n} ^ {\rho}} \right]
$$

$$
= \frac {\tilde {\beta} N}{\alpha} [ 1 - x ^ {\rho} ].
$$

Consider the function 

$$
f (x) = \log x + \frac {\tilde {\beta} N}{\alpha} [ 1 - x ^ {\rho} ] = \log x + \tilde {\mathcal {R}} _ {0} [ 1 - x ^ {\rho} ],
$$

where $\mathcal { \tilde { R } } _ { 0 }$ is given by (9.19). A solution x of (9.22) is epidemiologically meaningful only if $x < 1 ;$ ; otherwise, the pandemic does not invade. The value $x = 1$ is always a root of (9.22); the pandemic invades if and only if there is a second root less than 1. The function $f ( x )$ is negative for x close to 0. If $\rho \tilde { \mathcal { R } } < 1 , f ( x )$ is monotone increasing for $0 < x \le 1$ and therefore there is no second root of (9.22) less than 1. Thus, if $\rho \tilde { \mathcal { R } } _ { 0 } < 1$ , the pandemic does not invade. On the other hand, if $\rho \tilde { \mathcal { R } } _ { 0 } >$ $1 , f ^ { \prime } ( 1 ) < 0 $ , and there must be a second root of (9.22). The pandemic invades if and only if $\rho \tilde { \mathcal { R } } _ { 0 } > 1$ . 

Now, the reproduction number is 

$$
\mathcal {R} = \frac {\beta}{\alpha} \sum_ {i = 1)} ^ {n} \sigma_ {i} \tau_ {i} [ (1 - \rho) N _ {i} x ^ {\rho} + \rho N _ {i} ] \tag {9.23}
$$

$$
= \frac {\beta}{\alpha} (1 - \rho) \sum_ {i = 1} ^ {n} \sigma_ {i} \tau_ {i} N _ {i} x ^ {\rho} + \frac {\beta}{\alpha} \rho \sum_ {i = 1} ^ {n} \sigma_ {i} \tau_ {i} N _ {i}.
$$

If ${ \mathcal { R } } .$ , with x given as a function of $\rho$ by (9.22), is greater than 1, then the pandemic and seasonal strains will coexist, but $\mathrm { i f ~ } \mathcal { R } < 1$ , then the pandemic strain will replace the seasonal strain. 

We assume that the seasonal epidemic would take place if there were no pandemic strain present, that is, 

$$
\mathcal {R} _ {S} > 1.
$$

For $\rho = 1$ (no cross-immunity) we have 

$$
\mathcal {R} = \mathcal {R} _ {S} > 1,
$$

and this means that the pandemic and seasonal strains coexist. For $\rho ~ = ~ 1 / \tilde { \mathcal { R } } _ { 0 }$ , $x = 1$ , and 

$$
\mathcal {R} = \frac {\beta}{\alpha} \sum_ {i = 1} ^ {n} \sigma_ {i} \tau_ {i} N _ {i} = \mathcal {R} _ {S} > 1,
$$

and the pandemic and seasonal strains coexist. 

Numerical simulations indicate that $\mathcal { R } < 1$ for some values of $\rho$ between $1 / \tilde { \mathcal { R } } _ { 0 }$ and 1, which implies that for some values of $\rho$ the pandemic strain will replace the seasonal strain. 

## 9.6 The Influenza Pandemic of 2009

In the spring of 2009 a new strain (H1N1) of influenza A was developed, apparently first in Mexico, and spread rapidly through much of the world. Initially, it was thought that there was no resistance to this strain, although it developed later that people who were old enough to have been exposed to similar strains in the 1950s appeared to be less susceptible than younger people. It also appeared initially that this strain had a high case fatality rate, but it was learned later that since many cases were mild enough not to be reported the early data were weighted towards severe cases. The case fatality rate was actually lower than for most seasonal influenza strains. 

Management of the H1N1 influenza pandemic of 2009 made use of mathematical models and the experience gained from previous epidemics, but also exposed some gaps between a well-developed mathematical theory of epidemics and reallife epidemics, notably in the acquisition of reliable data early in the pandemic, understanding of spatial spread of a pandemic, and the development of multiple epidemic waves. 

There are important differences in the kinds of models of value to different types of scientists. There are strategic disease transmission models aimed at the understanding of broad general principles, and tactical models with the goal of helping make decisions in specific and detailed situations on short-term policies. A model that predicts how many people will become ill in an anticipated epidemic is quite different from a model that helps to identify which subgroups of a population should have highest priority for preventive vaccination with an uncertain prediction of how much vaccine will be available in a given time frame. 

## 9.6.1 A Tactical Influenza Model

There was a second wave of infections in the 2009 H1N1 influenza pandemic, just as in several previous influenza pandemics. As soon as possible, during the first wave, work began on the development of a vaccine matched to the virus to be used to combat the expected second wave [41]. Since a vaccine requires at least 6 months for development, and the second wave could begin within 6 months of the first wave, there was an urgent need to prepare a vaccine distribution strategy. 

In this section, we describe the model of [18] as an example of a tactical model. This model was used by the BC Center for Disease Control in making planning decisions for vaccination distribution during the second wave of the 2009 H1N1 influenza pandemic. Because of the need to make such decisions rapidly, the development and application of the model was more urgent than the writing of the paper that described the work, and use of the results preceded the write-up. In a pandemic, there is still much to be done after the model has been developed and applied, and frequently there is no time to explore basic theoretical questions that may arise in the study. Ideally, these questions can be studied in more depth after the urgency of coping with a pandemic has passed, and this is an opportunity to return to more general strategic models. 

Infection rates in an influenza epidemic depend strongly on the (demographic) age of the individuals in contact. This dependence of transmission and infection rates on age (the age profile) may vary significantly between locations and from year to year for seasonal epidemics. Also, the age profile in a pandemic is probably unlike that for seasonal epidemics. For this reason, real-time planning during an epidemic must make use of surveillance data obtained as soon as possible after the epidemic has begun. The data gathered during the first wave in the spring of 2009 were used to project the age profile to be expected in the second wave. A compartmental model with 6 compartments in each of the 40 population subgroups, covering 8 age classes and 5 activity levels using this age profile and existing estimates of the Vancouver contact network structure, was developed to project the results of different vaccination strategies. 

The analysis of the model was carried out using numerical simulations, because comparisons of different strategies, including numerical estimates of disease cases and vaccine quantities required, were needed quickly and because general theoretical analysis of this high-dimensional system would have been too complicated. The numerical simulations indicated that a good estimate of the epidemic peak would be essential for making policy decisions on vaccination strategies. In a pandemic situation, delays in vaccine production may mean that vaccination cannot be started until an epidemic is already underway, and the model suggested that an early start to vaccine distribution makes a big difference in the effectiveness of the vaccination program. This raises a general theoretical question of the relation between the starting time of vaccination and the effectiveness of the vaccination program. Future theoretical study of models of this type would be very useful for planning vaccination strategies for epidemics in the future. 

## 9.6.2 Multiple Epidemic Waves

During the 1918 “Spanish flu” pandemic, North America and much of Western Europe experienced two waves of infection with the second wave more severe than the first [20, 21]. Unlike seasonal influenza epidemics, which occur at predictable times each year, influenza pandemics are often shifted slightly from the usual “influenza season” and have multiple waves of varying severity. This suggests a modeling question that does not arise with seasonal influenza. During a first wave of a pandemic it should be possible to isolate virus samples and begin development of a vaccine matched to the virus in time to allow vaccination against the virus that could help to manage a second wave. One question that arises is prediction of the timing of a second wave. This is not yet possible because there is not yet a satisfactory explanation of the causes of a second wave. One suggestion that has been made is that transmissibility of virus varies seasonally, and this has been used to try to predict whether an endemic disease will exhibit seasonal outbreaks [44, 45]. The same approach can be used to formulate an SI R epidemic model with a periodic contact rate that can exhibit two epidemic waves [12]. However, the behavior of such a model depends strongly on the timing of the epidemic. If we assume that the contact rate is highest in the winter, lowest in the summer, and varies sinusoidally with a period of 1 year, we could use a simple SI R model with a variable contact rate. With N as the (constant) total population size, this suggests a model 

$$
S ^ {\prime} = - \beta (t) \frac {S I}{s I ^ {N}} \tag {9.24}
$$

$$
I ^ {\prime} = \beta (t) \frac {S I ^ {N}}{N} - \alpha I,
$$

where 

$$
\beta (t) = \beta \left[ 1 + c \cos \left(\frac {\pi (t + t _ {0})}{1 8 0}\right) \right],
$$

with parameter values 

$$
\alpha = 0. 2 5, \quad \beta = 0. 4 5, \quad c = 0. 4 5,
$$

$$
N = 1 0 0 0, \quad S _ {0} = 9 9 9, \quad I _ {0} = 1, \quad t _ {0} = 8 5, 9 0, 9 5.
$$

The choice of $t _ { 0 }$ determines where in the oscillation of $\beta ( t )$ the epidemic begins, because at the start of the epidemic $( t = 0 )$ 

$$
\beta (0) = \beta \left[ 1 + c \cos \left(\frac {\pi t _ {0}}{1 8 0}\right) \right].
$$

Thus $t _ { 0 }$ is the number of days after the maximum transmissibility that the epidemic begins. By numerical integration of (9.24), we obtain the following three epidemic curves (giving the number of infective individuals as a function of time), with the same parameters except that by varying $t _ { 0 }$ the starting date of the epidemic is moved 5 days later from one curve to the next. 


Fig. 9.4 Top: A one-wave epidemic curve, $t _ { 0 } = 8 5 .$ Middle: A two-wave epidemic curve, first wave more severe, $t _ { 0 } = 9 0 .$ . Bottom: A two-wave epidemic curve, second wave more severe, $t _ { 0 } = 9 5$


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/0b9bebc8011989c43fe8ab7e5a9d5d0490f23f478297720fe1d1aa06a8d04069.jpg)


An interpretation of these curves is that if the epidemic begins when the contact rate is decreasing and is close to its minimum value and the contact rate is relatively small over the course of the epidemic, the wave may end while there are still enough susceptibles to support a second wave when the contact rate increases, as in Fig. 9.4 (middle and bottom plots). However, if the epidemic begins earlier it may continue until enough individuals are infected that a second wave cannot be supported even when the contact rate becomes large, as in the top plot of Fig. 9.4. 

Simulations indicate that for the model (9.24) with the parameter values used here there is a small window of starting times corresponding to the interval $9 0 ~ \leq$ $t _ { 0 } \le 1 1 0$ for which a second wave is possible. The nature of the epidemic curves indicates that the behavior depends critically on timing and this means that such a model is not suitable for precise predictions. Note that there may be a single wave or two waves, and if there are two waves either one may be more severe. Not only does the prediction depend on the timing of the introduction of infection, but this timing is stochastic, and by its very nature unpredictable. It depends on mutations of the virus and importations of new cases. 

We have here a strategic model that predicts the possibility of a second wave, but this is not sufficient to be confident about using it to advise policy, because we do not have enough evidence to be sure about the cause of a second wave. Before we could make predictions we need more evidence about factors that could cause a second wave and more detailed tactical models, including sensitivity analysis. Another factor that has been suggested as a possible explanation for a second epidemic wave is coinfection with other respiratory infections that might increase susceptibility, and some experimental data would be needed that might confirm or deny that either seasonal variation in transmission or coinfection, or both, could explain multiple pandemic waves. In the H1N1 influenza pandemic of 2009, there were some concerns about the development of drug resistance as a consequence of antiviral treatment. While this did not appear to have widespread consequences, in a more severe disease outbreak in which more patients receive antiviral treatment there could be major effects. The modeling of drug resistance effects in an influenza pandemic has begun [1, 5, 36, 42, 43], but much more needs to be understood. A full analysis of the development of drug resistance will require nested models including immunological in-host aspects as well as effects on the population level. 

Data from the 1918 pandemic indicate clearly that behavioral response, both individual and public health measures, had significant effects on the outcome of the epidemic [9]. Incorporating behavioral responses is a new aspect of epidemic modeling, and there is much to be learned about the factors that influence behavioral responses when a disease outbreak begins. 

## 9.6.3 Parameter Estimation and Forecast of the Fall Wave

The model predictions included in this section are presented in [47]. With the recognition of a new, potentially pandemic strain of influenza A(H1N1) in April 2009, the laboratories at the US CDC and the World Health Organization (WHO) dramatically increased their testing activity from week 17 onwards (week ending 2 May 2009), as can be seen in Fig. 9.5. In this analysis, we use the extrapolation of a model fitted to the confirmed influenza A(H1N1)v case counts during summer 2009 to predict the behavior of the pandemic during autumn 2009. 

The following model with seasonally forced transmission is used: 

$$
S ^ {\prime} = - \beta (t) \frac {S I}{S I ^ {N}} \tag {9.25}
$$

$$
I ^ {\prime} = \beta (t) \frac {S I}{N} - \alpha I,
$$

where $N = 3 0 5 , 0 0 0 , 0 0 0$ denote the total population in the United States (US). The R equation is omitted as it can be determined by $R = N - S - I$ . The transmission rate is chosen to be 

$$
\beta (t) = \beta_ {0} + \beta_ {1} \cos (\pi t / 1 8 0), \tag {9.26}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/488ed54cd5c026ae4564a7fd96e3a087891046ce6f865a3672489f218d20ea1c.jpg)



US CDC:United States Centers for Disease Control and Prevention;NREVSS: National Respiratory and Enteric Virus Surveillance System;WHO:World HealthOrganization.


Fig. 9.5 Influenza-positive tests reported to the US CDC by US WHO/NERVSS-collaborating laboratories, national summary, United States, 2009 until 26 September 

where $\beta _ { 0 }$ and $\beta _ { 1 }$ are constants to be estimated from data. Assume that $I ( t _ { 0 } ) = 1$ , where $t _ { 0 }$ is the initial time, which is another parameter to be estimated from data. The parameter α is chosen so that the infective period is $1 / \alpha = 3 ~ \mathrm { d a y s } .$ . 

The three parameters $( \beta _ { 0 } , \beta _ { 1 } , \ t _ { 0 } )$ were estimated using the data shown in Fig. 9.5 on influenza-positive tests reported to the US CDC by US WHO/NREVSScollaborating laboratories, national summary, United States, 2009 until 26 September. To avoid bias due to increased testing for H1N1 around week 16, only data from week 21 to 33 (from 24 May to 22 August 2009) were used. From the past experience with influenza, the lower and upper bounds were chosen to be $\beta _ { 0 } \in ( 0 . 9 2 \alpha , 2 . 5 2 \alpha )$ and $\beta _ { 1 } ~ \in ~ ( 0 . 0 5 \alpha , 0 . 8 \alpha )$ , and $t _ { 0 } ~ \in ~ ( - 8 , 1 0 )$ (weeks relative to the beginning of 2009). The best estimates were determined by fitting the model to data, and the parameter values that provided the best Pearson chi-square statistics are listed in Table 9.3. 

Using the estimated parameter values, forecast of the time and size of the fall wave was produced by simulating the model under two scenarios: one is without vaccination and the other included the planned CDC vaccination program, which would begin with six to seven million doses being delivered by the end of the first full week in October (week 40), with 10–20 million doses being delivered weekly thereafter. It is assumed that for healthy adults, full immunity to H1N1 influenza is achieved about 2 weeks after vaccination with one dose of vaccine [30, 37]. For simulations of the model when vaccinations are incorporated, the number of susceptible individuals in the simulations was decreased according to the appropriate proportion of immune due to vaccination. The simulation outcomes are presented in Fig. 9.6. 


Table 9.3 Estimates of parameters for the 2009 H1N1 model


<table><tr><td>Parameter</td><td>Value</td><td>95% confidence interval</td></tr><tr><td><eq>\beta_0</eq></td><td>1.56</td><td>(1.43, 1.77)</td></tr><tr><td><eq>\beta_1</eq></td><td>0.54</td><td>(0.39, 0.54)</td></tr><tr><td><eq>t_0</eq></td><td>24 February</td><td>(8 February, 7 March)</td></tr></table>

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/6b2efc9006ea2acc4c75ce5e1b43cc0b85065a22044b192768801bd0b6bce5f9.jpg)



Fig. 9.6 Prediction for the 2009 H1N1 pandemic in the US using model (9.25)


In Fig. 9.6, the curves associated with the darker and lighter areas correspond to the cases of with and without vaccination. The model predicts that in the absence of vaccine, the peak wave of infection will occur near the end of October in week 42 (95% CI: week 39, 43). By the end of 2009, the model predicts that a total of 63% of the population will have been infected (95% CI: 57%, 70%). For the case when the planned vaccination program is considered, the model results suggest that a relative reduction of about 6% in the total number of people infected with influenza A(H1N1)v virus by the end of the year 2009 (95% CI: 1%, 17%). 

The most striking feature of the model is that it accurately predicted the peak time of the pandemic. According to CDC 2009 H1N1 confirmed case count data (see [17]), the peak of the fall wave was reached at the end of October (which is between weeks 42 and 43, see the left-hand plot in Fig. 9.7), which is consistent with our model result. It is worth noting that the model used in the analysis is a simple SIR model with a seasonally forced infection rate. Although further examinations are certainly needed to study the applicability of the modeling approach to general scenarios, the model results in this analysis demonstrated clearly the advantage and capability of mathematical models in understanding disease dynamics. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/53b5c0dea14f37898f35eab64d7c11219a723737ca4efb3e762e5af754d7a04f.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/ec28b0dd3432514c04c4c2766658fda5ef2ba73dcfd90ca41f879d816380e9a4.jpg)



Fig. 9.7 The left figure illustrates the CDC 2009 confirmed H1N1 count data (the error bars represent variations calculated by the proposers that account for US regional variability in the timing of the pandemic). The right figure shows predictions by our model in [47]


## 9.7 *An SIQR Model with Multiple Strains with Cross-Immunity

It was during the Black Death in the twentieth century in Venice that a system of quarantine was first put in operation. It demanded ships to lay at anchor for “40 days” (in Latin “quaranti giorni”) before sailors and guests could come on land. Quarantine is often thought of as a policy that separates individuals who may have been exposed to a contagious agent regardless of symptoms. Isolation is, generally speaking, considered a severe form of quarantine, often put in place in response to high morbidity and mortality. Quarantine was used extensively in the treatment and control of tuberculosis in Europe first and later, at end of the nineteenth century, in the USA. The emergence of SARS in 2003 re-instated the world’s interests in the concepts of Isolation and Quarantine (Q & I), the only initial methods available of disease control [11, 19]. 

The concepts of Q & I have multiple working meanings and uses. Hence, selecting a definition depends on the disease, the suspected level of risk that it poses to others, the means and modes of transmission, and the system’s knowledge and experience with the infectious agent. Regardless of the definition used, one of the challenges associated with Q & I strategies is that there is hardly any reliable assessments of their population level efficacy. There are no effective quantitative frameworks that account for direct and indirect economic losses and/or the costs associated with the implementation of Q & I strategies (but see [14, 27– 29, 33, 34, 38, 40]). 

Critical to any method of assessment comes from the fact that dynamic models that include the Q & I classes disease must be prepared to account for their sometimes destabilizing impact on the disease dynamics (sustained oscillations). The introduction of Q & I classes can generate the kind of dynamics where assessing the effectiveness of interventions may be difficult. Feng et al. showed in [24, 25], for example, that the incorporation of a quarantine or isolation class (Q) was enough to destabilize the unique disease endemic equilibrium in a susceptible–infected– recovered (SIR) model. These results were confirmed by Hethcote and collaborators [31] using alternative SIQR modeling frameworks. 

Tracing exposed individuals, assuming that a test exists that determines if an individual is infected or not, and their contacts, would make it possible to quarantine or isolate diagnosed infectives, a first step towards assessing the impact of Q & I [15]. Models are used to address questions like: What impact will placing a fixed proportion of individuals living in the “neighborhood” of an index case in quarantine have on disease control? We observe that when large numbers are involved, the costs and challenges become immense. Should isolated individuals be kept at their homes or moved to designated quarantine facilities? 

In [39] a two-strain influenza model is studied to investigate competitive outcomes (mediated by cross-immunity) that result from the interactions between two strains of influenza A in a population where sick individuals may be quarantined or isolated. The inclusion of a quarantined class makes the model analysis much more challenging due to the presence of sustained oscillations and possible other bifurcations. To make the analysis more transparent, an SIQR model with a single strain is presented first. 

## 9.7.1 *An SIQR Model with a Single Infectious Class

In this section, results in [24] and [25] are revisited in order to highlight the impact of the inclusion of quarantine and/or isolation classes in generating sustained periodic solutions from SIQR epidemic models. 

Let $S ( t ) , I ( t ) , Q ( t )$ , and $R ( t )$ denote the susceptible, infective, quarantined, and recovered classes, respectively, and let $N = S { + } I { + } Q { + } R$ denote the total population size. Model parameters are: $\mu ,$ , the per-capita rates for birth and death; $\gamma$ , the rate at which infected individuals are isolated (quarantined); δ, recovery rate; and $\beta _ { ; }$ , the transmission rate. The SIQR model can be formulated as follows: 

$$
\begin{array}{l} \frac {d S}{d t} = \mu N - \beta S \frac {I}{N - Q} - \mu S, \\ \frac {d I}{d t} = \beta S \frac {I}{N - Q} - (\mu + \gamma) I, \tag {9.27} \\ \frac {d Q}{d t} = \gamma I - (\mu + \delta) Q, \\ \frac {d R}{d t} = \delta Q - \mu R \\ \end{array}
$$

with appropriate initial conditions. 

What makes the above model “distinct” is that the incidence rate now accounts for the possibility that a large number of individuals (those in the $Q$ class) do not participate (by request, mandate, or personal decision) in the transmission process. Hence, the “random mixing” of infected proportion with other individuals is IN Q $\frac { I } { N - Q }$ rather than $\frac { I } { N }$ . 

The basic reproduction number for the above SIQR model is 

$$
\mathcal {R} _ {0} = \frac {\beta}{\mu + \gamma}. \tag {9.28}
$$

It was shown in [25] that the disease-free equilibrium is globally asymptotically stable when $\mathcal { R } _ { 0 } < 1$ . However, for $\mathcal { R } _ { 0 } > 1$ , the behavior of model solutions is very different from the standard SIR model. That is, the unique endemic equilibrium, denoted by $E ^ { * }$ , can become unstable due to the appearance of stable periodic solution via a Hopf bifurcation [32]. Notice from (9.28) that $\mathcal { R } _ { 0 }$ is independent of the isolation period $1 / \delta$ . A bifurcation analysis using δ as the bifurcation parameter shows that $E ^ { * }$ is asymptotically stable when the quarantine period is either very large or very small. 

To facilitate the analysis, consider the following equivalent system with re-scaled parameters: 

$$
\begin{array}{l} \frac {d I}{d \tau} = \left(1 - \frac {I + R}{N - Q}\right) I - (\nu + \theta) I, \\ \frac {d Q}{d \tau} = \theta I - (\nu + \alpha) Q, \tag {9.29} \\ \frac {d R}{d \tau} = \alpha Q - \nu R, \\ \end{array}
$$

where $\tau = \beta t$ and 

$$
\nu = \frac {\mu}{\beta}, \quad \theta = \frac {\gamma}{\beta}, \quad \alpha = \frac {\delta}{\beta}.
$$

The S equation has been eliminated as N is constant and $S = N - I - Q - R$ . Note that the scaled parameter representing the isolation period is α. Based on the system (9.29), the following result on the possibility of periodic solutions via Hopf bifurcation was established in [25]: 

Theorem 9.1 There is a function, $\alpha _ { c } ( \nu )$ , defined for small $\nu > 0 ,$ , 

$$
\alpha_ {c} (\nu) = \theta^ {2} (1 - \theta) + O (\nu^ {1 / 2}),
$$

such that there are two critical values $\alpha _ { c 1 }$ and $\alpha _ { c 2 }$ with the following properties: 

(a) The endemic equilibrium is locally asymptotically stable if $1 / \alpha < 1 / \alpha _ { c 1 } ( \nu )$ or $1 / \alpha > 1 / \alpha _ { c 2 } ( \nu )$ and unstable if $1 / \alpha _ { c 1 } ( \nu ) < 1 / \alpha < 1 / \alpha _ { c 2 } ( \nu )$ , as long as $1 / \alpha$ is close to the critical values. 

(b) Hopf bifurcations occur at $\alpha = \alpha _ { c i } ( \nu ) ( i = 1 , 2 )$ , leading to stable periodic solutions near the bifurcation points. 

Further, at the bifurcation point corresponding to $\alpha _ { c 1 }$ , the length of periods can be approximated by the formula 

$$
T \approx \frac {2 \pi}{(1 - \theta) ^ {1 / 2} \nu^ {1 / 2}} \approx \frac {2 \pi}{(\theta y ^ {*}) ^ {1 / 2}},
$$

where $y ^ { * } = I ^ { * } / ( N - Q ^ { * } )$ is the proportion of infectious individuals at the endemic equilibrium scaled by the active population, $N - Q$ . 

With parameter values relevant to scarlet fever, numerical simulations of the model confirm the occurrence of two Hopf bifurcation points, which are illustrated in Fig. 9.8. The right plot in Fig. 9.8 shows two Hopf bifurcation points (labeled by HB) occurring for values of the average quarantine periods in two distinct ranges near $1 / \alpha _ { c i } ( i = 1 , 2 )$ . The plot on the left shows the enlarged portion near the lower bifurcation point $1 / \alpha _ { c 1 }$ , with the curves labeled with SP representing the maximum and minimum of the stable periodic solutions. The solid and dashed curves labeled by SSS and USS represent stable steady state and unstable steady state (showing the $I ^ { * }$ component of the endemic equilibrium $E ^ { * } )$ , respectively. 

It was pointed out in [24, 25] that only the region near the lower critical point $1 / \alpha _ { c 1 }$ is relevant for childhood diseases, and that the data on the length of reported isolation periods during the 1897–1978 scarlet fever epidemics in England and Wales [2] were very close to the range that supports periodic solutions for model (9.29) near $1 / \alpha _ { c 1 }$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/4dd85862a9bbc9ccae60386edda27d1d3278aba49e47f9cf9ccba480904891cb.jpg)



Fig. 9.8 The plot on the right is a bifurcation diagram based on numerical simulations of the system (9.29) with parameter values relevant to scarlet fever. The solid and dashed curves (labeled by SSS and USS) represent the fraction of the I components when the endemic equilibrium $E ^ { * }$ is stable and unstable, respectively, depending on the value of the isolation period $1 / \alpha .$ . The right plot shows two Hopf bifurcation points, $\alpha _ { c 1 }$ and $\alpha _ { c 2 } .$ , labeled by HB. An enlarged version of the right HB is shown on the left. The solid curves labeled with sp illustrate the maximum and minimum of the stable periodic solutions


Several extensions of the model (9.27) have been considered including [23, 31, 49]. For example, the model in [23] reads 

$$
\begin{array}{l} \frac {d S}{d t} = \mu N - \beta S \frac {I}{N - \sigma Q} - \hat {\beta} S \frac {(1 - \sigma) Q}{N - \sigma Q} - \mu S, \\ \frac {d I}{d t} = \beta S \frac {I}{N - \sigma Q} + \hat {\beta} S \frac {(1 - \sigma) Q}{N - \sigma Q} - (\gamma + \kappa + \mu) I, \tag {9.30} \\ \end{array}
$$

$$
\frac {d Q}{d t} = \gamma I - (\delta + \mu) Q,
$$

$$
\frac {d R}{d t} = \kappa I + \delta Q - \mu R.
$$

In (9.30), individuals in the I class can recover without going through the Q class. In addition, the degree of effectiveness (i.e., reducing the movement of quarantined individuals) is considered through the use of the parameter $\sigma$ with $\sigma = 1$ and 0 corresponding to a perfect and ineffective quarantine/isolation, respectively. It is shown in [23] that the likelihood for the existence of sustained oscillations depends on σ . 

Because Hopf bifurcations are local properties, and because the bifurcation diagram generated by numerical simulations in Fig. 9.8 seems to suggest that the periods of the periodic solutions for parameters away from the Hopf bifurcation points become very large, it indicates the possibility for a homoclinic bifurcation. This is explored in [51]. It was shown in [51] that a center manifold reduction of the system (9.27) at a bifurcation point has the normal form $x ^ { \prime } = y , y ^ { \prime } =$ $a x y + b x ^ { 2 } y + O ( 4 )$ , indicating a bifurcation of codimension greater than two. Here, x and y are variables after several changes of variables from the system (9.29). By considering an unfolding of the normal form, it was shown that a perturbed system can indeed generate a homoclinic bifurcation. This is illustrated in Fig. 9.9. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/3571ff4c2021b977e7c5d650d0f2a7498599eddf96403ff89f49fc1232382c2b.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/3323e37e8f7d6ebb7d470d78cdf196f3a9dc3846ebe37638a1b649d0d0826411.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/47583570b80e18f78b908ed695bfca7449518cb0c1bc4ce9d7f2dfa329369cfb.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/f939c6ea11de9507c24d29b2012130c523ae0affe97dc4ed163cffd0ba20a455.jpg)



Fig. 9.9 Numerical simulations of a perturbed system of the normal form reduction from the system (9.29). The four plots correspond to four sets of parameter values near the homoclinic bifurcation. As the parameter values change, the interior equilibrium $E ^ { * }$ changes from stable to unstable leading to the appearance of a stable periodic solution (see plots (a) and (b)), and that a homoclinic bifurcation occurs as parameter values change from (b) to (d), in which case, a homoclinic solution exists (see (c))


The four sub-figures a–d in Fig. 9.9 demonstrate trajectories of the perturbed system for four sets of parameter values. It shows first that the stability of $E ^ { * }$ switches from stable to unstable with the appearance of a stable periodic solution (see a and b). As parameter values continue to change from b to c, the system undergoes a homoclinic bifurcation, in which case, the stable periodic solution expends its magnitude and eventually disappears after reaching the saddle point (see b–d) and a homoclinic orbit appears (see c). 

## 9.7.2 *The Case of Two Strains with Cross-Immunity

The SIQR model (9.27) can be extended to include two pathogen strains. The description of the two-strain model requires the division of the population into ten different classes: susceptibles (S), infected with strain i (Ii , primary infection), isolated with strain $i ~ \left( Q _ { i } \right)$ , recovered from strain $\textit { i } \left( R _ { i } \right.$ , as a result of primary infection), infected with strain $i ~ ( V _ { i }$ , secondary infection), given that the population had recovered from strains $j \neq i$ , and recovered from both strains (W ). The population is assumed to mix randomly, except that the mixing is impacted by the process of quarantine/isolation [15, 25, 31]. Using the flow diagram in Fig. 9.10, we arrive at the model 

$$
\begin{array}{l} \frac {d S}{d t} = \Lambda - \sum_ {i = 1} ^ {2} \beta_ {i} S \frac {\left(I _ {i} + V _ {i}\right)}{A} - \mu S, \\ \frac {d I _ {i}}{d t} = \beta_ {i} S \frac {(I _ {i} + V _ {i})}{A} - (\mu + \gamma_ {i} + \delta_ {i}) I _ {i}, \\ \frac {d Q _ {i}}{d t} = \delta_ {i} I _ {i} - (\mu + \alpha_ {i}) Q _ {i}, \\ \frac {d R _ {i}}{d t} = \gamma_ {i} I _ {i} + \alpha_ {i} Q _ {i} - \beta_ {j} \sigma_ {i j} R _ {i} \frac {\left(I _ {j} + V _ {j}\right)}{A} - \mu R _ {i}, \quad j \neq i \tag {9.31} \\ \frac {d V _ {i}}{d t} = \beta_ {i} \sigma_ {i j} R _ {j} \frac {(I _ {i} + V _ {i})}{A} - (\mu + \gamma_ {i}) V _ {i}, \quad j \neq i, i, j = 1, 2 \\ \frac {d W}{d t} = \sum_ {i = 1} ^ {2} \gamma_ {i} V _ {i} - \mu W, \\ A = S + W + \sum_ {i = 1} ^ {2} (I _ {i} + V _ {i} + R _ {i}), \\ \end{array}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/4fe825d23dea56e4f22d5a54d29894b509c77265f06689b15548322fadd5be50.jpg)



Fig. 9.10 Schematic diagram of the dynamics in host exposed to two co-circulating influenza strains. Λ is the rate at which individuals are born into the population, $\beta _ { i }$ denotes the transmission coefficient for strain $i , \mu$ is the per-capita mortality rate, $\delta _ { i }$ is the per-capita isolation rate for strain $i , \gamma _ { i }$ denotes the per-capita recovery rate from strain $i , \alpha _ { i }$ is the per-capita rate at which individuals leave the isolated class as a result of infection with strain i, and $\sigma _ { i j }$ is the relative susceptibility to strain $j$ for an individual that has been infected with and recovered from strain $i ( i \neq j ) . \sigma _ { i j } = 0$ corresponds to total cross-immunity, while $\sigma _ { i j } = 1$ indicates no cross-immunity between strains. The protection is said to be strong if $0 \leq \sigma _ { i j } \ll 1$ , and weak if $0 \ll \sigma _ { i j } \le 1$


where A denotes the population of non-isolated individuals and βiS(Ii+Vi) $\frac { \beta _ { i } S ( I _ { i } + V _ { i } ) } { A }$ models the rate at which susceptibles become infected with strain i. That is, the ith $( i \neq j )$ incidence rate is assumed to be proportional to both the number of susceptibles and the available modified proportion of i-infectious individuals, (Ii+Vi) . The parameter $\frac { ( I _ { i } + V _ { i } ) } { A }$ $\sigma _ { i j }$ is a measure of the cross-immunity provided by a prior infection with strain i to exposure with strain $j ~ ( i ~ \neq ~ j )$ . It is assumed that $\sigma _ { i j } \in [ 0 , 1 ]$ . Model (1) includes the models in [13, 16]. The omission of the Q classes in earlier work precludes the possibility of sustained oscillations (see [13, 16]) in the absence of population (age) structure. 

System (9.31) has at least four equilibria. Analysis of the local stability of the trivial equilibrium (absence of disease) helps identify conditions under which the $\mathrm { \Delta } ^ { 6 6 } \mathrm { \ f l u } ^ { \prime \ }$ can invade. Hence, we first focus on establishing the conditions that make it impossible (at least locally) for both strains to invade a disease-free population, simultaneously. In the analytical results obtained here it is assumed that $\sigma _ { 1 2 } =$ $\sigma _ { 2 1 } = \sigma$ . 

The basic reproduction number for the two strains is 

$$
\mathcal {R} _ {i} = \frac {\beta_ {i}}{\mu + \gamma_ {i} + \delta_ {i}}.
$$

Using the perturbation technique based on the fact that $\mu$ is a much smaller parameter than other parameters, we can identify two curves in the $( \mathcal { R } _ { 1 } , \mathcal { R } _ { 2 } )$ plane that determine the stability of the non-trivial equilibria. Let $f ( \mathcal { R } _ { 1 } )$ and $g ( \mathcal { R } _ { 2 } )$ be two functions defined by 

$$
f (\mathcal {R} _ {1}) = \frac {\mathcal {R} _ {1}}{1 + \sigma (\mathcal {R} _ {1} - 1) \left(1 + \frac {\delta_ {2}}{\mu + \gamma_ {2}}\right) \left(1 - \frac {\mu (\mu + \alpha_ {1})}{(\mu + \gamma_ {1}) (\mu + \alpha_ {1}) + \alpha_ {1} \delta_ {1}}\right)} \tag {9.32}
$$

and 

$$
g (\mathcal {R} _ {2}) = \frac {\mathcal {R} _ {2}}{1 + \sigma (\mathcal {R} _ {2} - 1) \left(1 + \frac {\delta_ {1}}{\mu + \gamma_ {1}}\right) \left(1 - \frac {\mu (\mu + \alpha_ {2})}{(\mu + \gamma_ {2}) (\mu + \alpha_ {1}) + \alpha_ {2} \delta_ {2}}\right)}. \tag {9.33}
$$

Let $\mathcal { R } _ { i } ^ { * } = \mathcal { R } _ { i } \left( i = 1 , 2 \right)$ evaluated at $\mu = 0$ . Then the following result holds. 

Theorem 9.2 There exists a function $\alpha _ { 1 c } ( \mu )$ defined for small $\mu > 0$ by 

$$
\alpha_ {1 c} (\mu) = \frac {\delta_ {1}}{\mathcal {R} _ {1} ^ {*}} (1 - \frac {1}{\mathcal {R} _ {1} ^ {*}}) + O (\mu^ {1 / 2}),
$$

with the following properties: (i) The boundary endemic equilibrium $E _ { 1 }$ is locally asymptotically stable if $\mathscr { R } _ { 2 } ~ < ~ f ( \mathscr { R } _ { 1 } )$ and $\alpha _ { 1 } ~ < ~ \alpha _ { 1 c } ( \mu )$ , and unstable if $\mathcal { R } _ { 2 } ~ >$ $f ( \mathcal { R } _ { 1 } )$ or $\alpha _ { 1 } ~ > ~ \alpha _ { 1 c } ( \mu )$ . (ii) When $\mathcal { R } _ { 2 } ~ < ~ f ( \mathcal { R } _ { 1 } )$ , periodic solutions arise at $\alpha _ { 1 } = \alpha _ { 1 c } ( \mu )$ via Hopf bifurcation for small enough $\mu > 0$ . The period can be approximated by 

$$
T = \frac {2 \pi}{| \Im \omega_ {2 , 3} |} \approx \frac {2 \pi}{\left((\gamma_ {1} + \delta_ {1}) (\mathcal {R} _ {1} ^ {*} - 1)\right) ^ {\frac {1}{2}} \mu^ {1 / 2}}.
$$

Because we have focused on the symmetric case, an analogous result for the second boundary equilibrium $E _ { 2 }$ can be stated immediately. That is, the boundary endemic equilibrium $E _ { 2 }$ is locally asymptotically stable if $\mathscr { R } _ { 1 } < g ( \mathscr { R } _ { 2 } )$ and $\alpha _ { 2 } \ <$ < $\alpha _ { 2 c } ( \mu )$ . It becomes unstable if $\mathcal { R } _ { 1 } > g ( \mathcal { R } _ { 2 } )$ or $\alpha _ { 2 } > \alpha _ { 2 c } ( \mu )$ . A summary of the stability results as presented in Theorem 9.2 for strain 1 is obtained for strain 2 by replacing the parameter indices 1’s with $2 \mathrm { { : } } \mathrm { { s } }$ and replacing $f ( \mathcal { R } _ { 1 } )$ with $g ( \mathcal { R } _ { 2 } )$ . Functions $f ( \mathcal { R } _ { 1 } )$ and $g ( \mathcal { R } _ { 2 } )$ help determine the stability and coexistence regions for strains 1 and 2. In fact, changes in the regions of stability for a single and both strains can be illustrated by varying the coefficient of cross-immunity. For instance, from (9.32) we can compute the value of σ at which 

$$
f ^ {\prime} (\mathcal {R} _ {1}) \equiv \frac {\partial f (\mathcal {R} _ {1} , \sigma)}{\partial \mathcal {R} _ {1}} \Big | _ {\sigma_ {1} ^ {*}} = 0, \tag {9.34}
$$

namely 

$$
\sigma_ {1} ^ {*} = \frac {1}{\left(1 + \frac {\delta_ {2}}{\mu + \gamma_ {2}}\right) \left(1 - \frac {\mu (\mu + \alpha_ {1})}{(\mu + \gamma_ {1}) (\mu + \alpha_ {1}) + \alpha_ {1} \delta_ {1}}\right)}.
$$

Hence, for all $\mathcal { R } _ { 1 } > 1$ , 

$$
f ^ {\prime} \left(\mathcal {R} _ {1}\right) > (<   \text {or} =) 0, \quad f \left(\mathcal {R} _ {1}\right) > (<   \text {or} =) 1 \quad \text {if} \sigma <   (> \text {or} =) \sigma_ {1} ^ {*}.
$$

These properties can be easily checked by noticing from (9.32) that 

$$
f (\mathcal {R} _ {1}) = \frac {\mathcal {R} _ {1}}{1 + \frac {\sigma}{\sigma_ {1} ^ {*}} (\mathcal {R} _ {1} - 1)} \quad \text { and } \quad f ^ {\prime} (\mathcal {R} _ {1}) = \frac {1 - \frac {\sigma}{\sigma_ {1} ^ {*}}}{\left(1 + \frac {\sigma}{\sigma_ {1} ^ {*}} (\mathcal {R} _ {1} - 1)\right) ^ {2}}.
$$

Using the symmetry between two strains, we can show that similar properties hold for another threshold value $\sigma _ { 2 } ^ { * }$ (interchanging the subscripts 1 and 2 in the expression of $\sigma _ { 1 } ^ { * } )$ and a function $\mathcal { R } _ { 1 } ~ = ~ g ( \mathcal { R } _ { 2 } )$ . The properties of $f$ and g are illustrated in Fig. 9.11. The first two plots in Fig. 9.11 are for the special case when the two strains have identical parameter values $( { \sigma } _ { 1 } ^ { * } = { \sigma } _ { 2 } ^ { * } = { \sigma } ^ { * } )$ , whereas the last two plots are for the case $\sigma _ { 1 } ^ { * } \neq \sigma _ { 2 } ^ { * } . \mathcal { R } _ { 2 } < \dot { f } ( \mathcal { R } _ { 1 } )$ is a necessary condition for the stability of strain 1 (either a stable boundary endemic equilibrium $E _ { 1 }$ or the equilibrium associated with strain 1 oscillations). Hence, $E _ { 2 }$ is unstable when $\mathcal { R } _ { 2 } > f ( \mathcal { R } _ { 1 } )$ . Similarly, $E _ { 1 }$ is unstable when $\mathcal { R } _ { 1 } > g ( \mathcal { R } _ { 2 } )$ . Hence, coexistence is expected when $\mathcal { R } _ { 2 } > f ( \mathcal { R } _ { 1 } )$ ) and $\mathcal { R } _ { 1 } > g ( \mathcal { R } _ { 2 } )$ . 

Figure 9.12 depicts the stability of the equilibria and periodic solutions when $( \mathcal { R } _ { 1 } , \mathcal { R } _ { 2 } )$ lies in Regions I and III. It illustrates how the stabilities of equilibria and periodic orbits change their stability when the parameters $\alpha _ { 1 }$ and $\alpha _ { 2 }$ change their values crossing the critical points $\alpha _ { i c } ( i = 1 , 2 )$ . 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/62bd5122ae0172252d1062844ac392213b1de65721e5749995358ca3d952bc7c.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/06e92d445bf97a1a7ba8e14e43afb89967b5a2fb3105c828ff14cfebec975527.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/6c72bbc33857b27825c27bac8cb4c05d79ad600a290fb1b13801209620c3c7b4.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/f854f29ae5b2045883c3048d9b2b07f05aa77ef1091ef895fbe88a28b81b96db.jpg)



Fig. 9.11 Bifurcation diagrams in the $( \mathcal { R } _ { 1 } , \mathcal { R } _ { 2 } )$ ) plane for various combination of $\sigma _ { 1 }$ and $\sigma _ { 2 }$ values in relation to the threshold levels of $\sigma _ { 1 } ^ { * }$ and $\sigma _ { 2 } ^ { * }$ (cross-immunity). Regions I –I I I denote the existence and stability of $E _ { 1 } , E _ { 2 }$ , and coexistence, respectively


<table><tr><td></td><td><eq>\alpha_{1}&lt;\alpha_{1c}, \alpha_{2}&lt;\alpha_{2c}</eq></td><td><eq>\alpha_{1}&gt;\alpha_{1c}, \alpha_{2}&lt;\alpha_{2c}</eq></td><td><eq>\alpha_{1}&lt;\alpha_{1c}, \alpha_{2}&gt;\alpha_{2c}</eq></td><td><eq>\alpha_{1}&gt;\alpha_{1c}, \alpha_{2}&gt;\alpha_{2c}</eq></td></tr><tr><td><eq>\mathcal{R}_{2}&lt;f(\mathcal{R}_{1})</eq><eq>\mathcal{R}_{1}&gt;g(\mathcal{R}_{2})</eq>Region I</td><td><img src="https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/96fe10f41b052a315289ae9ef5291f2b107c3edaa9a9db612670d472c52ba506.jpg"/></td><td><img src="https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/d6c31e6980efa41ac1a58e212a4c8f55eafb448d884fa9be8038ff7e52c39611.jpg"/></td><td><img src="https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/d54cdcace0f872e7229cfdee9e85f6ad0a7a0ae5cb02f26631f09843af131e2e.jpg"/></td><td><img src="https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/80e9e2b7ebeffed7b2022a7c974fd07c4a56ced549db491dff80d8b7a171b224.jpg"/></td></tr><tr><td><eq>\mathcal{R}_{2}&gt;f(\mathcal{R}_{1})</eq><eq>\mathcal{R}_{1}&gt;g(\mathcal{R}_{2})</eq>Region III</td><td></td><td></td><td></td><td></td></tr></table>


Fig. 9.12 Depiction of the stability properties of equilibria and periodic solutions for parameter values in different regions. A solid circle represents a stable boundary (strain 1 only) equilibrium. A solid square represents an unstable boundary (strain 2 only) equilibrium. A star represents a stable interior (coexistence of both strains) equilibrium. A solid (dashed) closed orbit represents a stable (unstable) period solution


The focus of this study is on the time evolution of influenza A in a non-fixed landscape driven by tight coevolutionary interactions (that is, interactions where the fate of the host and the parasite are intimately connected) between human hosts and competing strains. The process is mediated by intervention (behavioral changes) and cross-immunity. In other words, the nature of the invading landscape (susceptible host) changes dynamically from behavioral changes (isolation, short time scale) and past immunological experience (cross-immunity, long time scale). 

The “partial” herd immunity generated by past history of invasions on the host population can have a huge impact on the quantitative dynamics of the “flu” at the population level. The assumption that $\sigma _ { 1 2 } = \sigma _ { 2 1 } = \sigma$ for $i \neq j$ naturally results in a dynamic landscape that is not too different (in the oscillatory regime) than the one observed on single-strain models with isolation [25, 31]. That is, a lack of heterogeneity in cross-immunity results in a system “more or less” driven (in the oscillatory regime) by the process of isolation. 

The results show that multiple strain coexistence is highly likely for antigenically distinct (weak cross-immunity) strains and not for antigenically similar under symmetric cross-immunity (“competitive exclusion” principle [10]) . As the levels of cross-immunity weaken, the likelihood of sub-threshold coexistence increases. However, “full” understanding of the evolutionary implications that result from human host and influenza virus interactions may require the study of systems that incorporate additional mechanisms such as seasonality in transmission rates, age structure, individual differences in susceptibility or infectiousness, and the possibility of coinfections. Thacker [46] notes that the observed seasonality of influenza in temperate zones may be the key to observed patterns of recurrent epidemics. Superinfection may also be a mechanism worth consideration, even though studies in [46] show that it is only moderately possible for young individuals to become infected with two different strains in one “flu” season. 

## 9.8 Exercises

1. Write the basic influenza model of Sect. 9.2 as an age of infection model and calculate its basic reproduction number. 

2. Write the vaccination model of Sect. 9.2.1 as an age of infection model and calculate its reproduction number. [Warning: In order to do this, you will need to formulate a heterogeneous mixing age of infection model because vaccinated and unvaccinated individuals have different infectivities and susceptibilities.] 

In the analysis of seasonal and pandemic influenza in this chapter, we have used simple SI R models. However, influenza has a more complicated structure, with exposed periods and asymptomatics. The obvious way to include this more complicated structure would be to use age of infection models. 

3. Formulate an age of infection model analogous to the seasonal epidemic model (9.13), and calculate its reproduction number and final size relation. 

4. Formulate an age of infection model analogous to the pandemic influenza model (9.18), and calculate its reproduction number and final size relation. 

5. Formulate an age of infection model analogous to the combined seasonal/pandemic influenza model (9.21) and calculate its reproduction number. 

6. Consider the model (9.14) in Sect. 9.4. Choose parameters to make the basic reproduction number equal to 1.5, take $\sigma _ { i } = 1 - q ^ { i }$ , where $q = 0 . 7 5$ , and $\tau _ { i } = 1$ . Simulate the model and determine the final sizes. 

7. Use the final sizes obtained from Exercise 6 as initial sizes and repeat the simulation. Repeat this several times to see if the final sizes approach limits. 

8. Use the limiting final sizes obtained in Exercise 7 as initial sizes and simulate the model (9.18) of Sect. 9.5 with parameters giving a basic reproduction number of 2. Determine the final size of the pandemic. 

9. Simulate the model (9.21) of Sect. 9.5 for various values of $\rho$ between 0 and 1. For which values do seasonal and pandemic strains coexist and for which values does the pandemic strain replace the seasonal strain? (References: [3, 4, 8].) 



(2011) Vaccination against 2009 pandemic H1N1 in a population dynamic model of Vancouver, Canada: timing is everything, Biomed Central Public Health 11: 932. 





39. Nuno, M., Z. Feng, M. Martcheva, and C. Castillo-Chavez (2005) Dynamics of two-strain influenza with isolation and partial cross-immunity, SIAM J. Appl. Math. 65: 964–982. 





19. Chowell, G., P.W. Fenimore, M.A. Castillo-Garsow, and C. Castillo-Chavez (2003) SARS Outbreaks in Ontario, Hong Kong and Singapore: the role of diagnosis and isolation as a control mechanism, J. Theor. Biol. 24(1): 1–8. 





40. Prosper, O., O. Saucedo, D. Thompson, G. Torres-Garcia, X. Wang, and C. Castillo-Chavez (2011) Control strategies for concurrent epidemics of seasonal and H1N1 influenza, Math. Biosc. Eng. 8: 147–177. 



## References



20. Chowell, G., C.E. Ammon, N.W. Hengartner, & J.M. Hyman (2006) Transmission dynamics of the great influenza pandemic of 1918 in Geneva, Switzerland: Assessing the effects of hypothetical interventions, J. Theor. Biol. 241: 193–204. 





41. Public Health Agency of Canada, Vaccine Development Process, URL http://www.phac-aspc. gc.ca/influenza/pandemic-eng.php. 





21. Chowell, G., C.E. Ammon, N.W. Hengartner, & J.M. Hyman (2007) Estimating the reproduction number from the initial phase of the Spanish flu pandemic waves in Geneva, Switzerland, Math. Biosc. & Eng. 4: 457–479. 





42. Qiu, Z. & Z. Feng (2010) Transmission dynamics of an influenza model with vaccination and antiviral treatment, Bull. Math. Biol. 72: 1–33. 





1. Alexander, M.E., C.S. Bowman, Z. Feng, M. Gardam, S.M. Moghadas, G. Röst, J. Wu & P. Yan (2007) Emergence of drug resistance: implications for antiviral control of pandemic influenza, Proc. Roy. Soc. B 274: 1675–1684. 





22. Elveback, L.R., J.P. Fox, E. Ackerman, A. Langworthy, M. Boyd & L. Gatewood (1976) An influenza simulation model for immunization studies, Am. J. Epidem. 103: 152–165. 





43. Stillianakis, N.I., A.S. Perelson & F.G. Hayden (1998) Emergence of drug resistance during an influenza epidemic: insights from a mathematical model, J. Inf. Diseases, 177: 863–873. 





2. Anderson, G. W., R.N. Arnstein, and M.R. Lester (1962) Communicable Disease Control, Macmillan, New York. 





23. Erdem, M., M. Safan, and C. Castillo-Chavez (2017) Mathematical analysis of an SIQR influenza model with imperfect quarantine, Bull. Math. Biol, 79: 1612–1636. 





44. Olinsky, R., A. Huppert & L. Stone (2008) Seasonal dynamics and threshold governing recurrent epidemics, J. Math. Biol. 56: 827–839. 





3. Andreasen, V. (2003) Dynamics of annual influenza A epidemics with immuno-selection, J. Math. Biol. 46: 504–536. 





24. Feng, Z. (1994) Multi-annual outbreaks of childhood diseases revisited the impact of isolation, Ph.D. Thesis, Arizona State University. 





45. Stone, L., R. Olinsky & A. Huppert (2007) Seasonal dynamics of recurrent epidemics, Nature 446: 533–536. 





4. Andreasen, V., J. Lin, & S.A. Levin (1997) The dynamics of cocirculating influenza strains conferring partial cross-immunity, J. Math. Biol. 35: 825–842. 





25. Feng, Z. and H.R.Thieme (1995) Recurrent outbreaks of childhood diseases revisited: the impact of isolation, Math. Biosc. 128: 93–130. 





46. Thacker, S. B. (1986) The persistence of influenza A in human populations, Epidemiologic Reviews, 8: 129–142. 





5. Arino, J., C.S. Bowman &S.M. Moghadas (2009) Antiviral resistance during pandemic influenza: implications for stockpiling and drug use, BMC Infectious Diseases 9: 1–12. 





26. Gardam, M., D. Liang, S.M. Moghadas, J. Wu, Q. Zeng & H. Zhu (2007) The impact of prophylaxis of healthcare workers on influenza pandemic burden, J. Roy. Soc. Interface, 4: 727–734. 





47. Towers, S., and Z. Feng (2009) Pandemic H1N1 influenza: Predicting the course of pandemic and assessing the efficacy of the planned vaccination programme in the United States, Eurosurveillance, 14(41): Article 2. 





6. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2006) Simple models for containment of a pandemic, J. Roy. Soc. Interface 3: 453–457. 





27. Fenichel, E.P., C. Castillo-Chavez, M.G. Ceddia, G. Chowell, P.A Gonzalez Parra, G.J. Hickling, G. Holloway, R. Horan, B. Morin, C. Perrings, M. Springborn, L. Velazquez, and C. Villalobos (2011) Adaptive human behavior in epidemiological models, Proc. Nat. Acad. Sci. 108: 6306–6311. 





48. van den Driessche, P. & J. Watmough (2002) Reproduction numbers and subthreshold endemic equilibria for compartmental models of disease transmission, Math. Biosc. 180:29–48. 





7. Arino, J., F. Brauer, P. van den Driessche, J. Watmough & J. Wu (2008) A model for influenza with vaccination and antiviral treatment, Theor. Pop. Biol. 253: 118–130. 





28. Gonzalez-Parra, P., S. Lee, C. Castillo-Chavez, and L. Velazquez (2011) A note on the use of optimal control on a discrete time model of influenza dynamics, Math. Biosc. Eng. 8: 193–205. 





49. Vivas-Barber, A., C. Castillo-Chavez, and E. Barany (2014) Dynamics of an “SAIQR” influenza model, Biomath, 3: 1–13. 





8. Asaduzzaman, S.M., J. Ma, & P. van den Driessche (2015) The coexistence or replacement of two subtypes of influenza, Math. Biosc., 270:1–9. 





29. Gonzalez-Parra, P. A., L. Velazquez, M.C. Villalobos, and C. Castillo-Chavez (2010) Optimal control applied to a discrete influenza model. Conference Proceedings Book of the XXXVI International Operation Research Applied to Health Services, Book ISBN 13: 9788856825954 edited by Franco Angeli Edition. 





50. Welliver, R., A.S. Monto, O. Carewicz, E. Schatteman, M. Hassman J. Hedrick, H.C. Jackson, L. Huson, P. Ward & J.S. Oxford (2001) Effectiveness of oseltamivir in preventing influenza in household contacts: a randomized controlled trial, JAMA 285: 748–754. 





9. Bootsma, M.C.J. & N.M. Ferguson (2007) The effect of public health measures on the 1918 influenza pandemic in U.S. cities, Proc. Nat. Acad. Sci. 104: 7588–7593. 





30. Hannoun, C., F. Megas, and J. Piercy (2004) Immunogenicity and protective efficacy of influenza vaccination, Virus Research 103: 133–138. 





51. Wu, L. and Z. Feng (2000) Homoclinic bifurcation in an SIQR model for childhood disease, J. Differential Equations, 168: 150–167. 





10. Bremermann, H. J. and H.R. Thieme (1989) A competitive exclusion principle for pathogen virulence, J. Math. Biol. 27:179–190. 





31. Hethcote, H.W., Z. Ma, and S. Liao (2002) Effects of quarantine in six endemic models for infectious diseases, Math. Biosc., 180: 141–160. 





11. Brown, D. (2003) A Model of Epidemic Control, The Washington Post, Saturday, May 3, 2003; Page A 07. http://www.washingtonpost.com/ac2/. 





32. Hopf, E. (1942) Abzweigung einer periodischen Lösungen von einer stationaren Lösung eines Differentialsystems, Berlin Math-Phys. Sachsiche Akademie der Wissenschaften, Leipzig, 94: 1–22. 





12. Brauer, F., P. van den Driessche, & J. Watmough (2010) Seasonal and pandemic influenza: Strategic and tactical models, Can. Appl. Math. Q. 19: 139–150. 





33. Lee, S., G. Chowell, and C. Castillo-Chavez (2010) Optimal control of influenza pandemics: The role of antiviral treatment and isolation, J. Theor. Biol. 265: 136–150. 





13. Castillo-Chavez, C (1987) Cross-immunity in the dynamics of homogenous and heterogeneous populations, 87 (37), Mathematical Sciences Institute, Cornell University. 





34. Lee, S., R. Morales, and C. Castillo-Chavez (2011) A note on the use of influenza vaccination strategies when supply is limited, Math. Biosc. Eng. 8: 179–191. 





14. Castillo-Chavez, C. and G. Chowell (2011) Special Issue: Mathematical Models, Challenges, and Lessons Learned from the 2009 A/H1N1 Influenza Pandemic, Math. Biosc. Eng. 8(1): 246 pages, (http://aimsciences.org/journals/displayPapers1.jsp?pubID=411) 





35. Longini, I.M., M.E. Halloran, A. Nizam, & Y. Yang (2004) Containing pandemic influenza with antiviral agents, Am. J. Epidem. 159: 623–633. 





15. Castillo-Chavez, C., C. Castillo-Garsow, and A.A. Yakubu (2003) Mathematical models of isolation and quarantine. JAMA, 290: 2876–2877. 





36. Lipsitch, M., T. Cohen, M. Murray & B.R. Levin (2007) Antiviral resistance and the control of pandemic influenza PLoS Med. 4: e15. 





16. Castillo-Chavez, C., H.W. Hethcote, V. Andreasen, S.A. Levin, and W.M. Liu (1989) Epidemiological models with age structure, proportionate mixing, and cross-immunity, J. Math. Biol. 27: 233–258. 





37. Manuel, O., M Pascual, K. Hoschler, S. Giulieri, K. Ellefsen, P. Bart, J. Venetz, T. Calandra, and M. Cavassini (2011) Humoral response to the influenza A H1N1/09 monovalent AS03- adjuvanted vaccine in immunocompromised patients, Clinical Infectious Diseases 52: 248– 256. 





17. CDC (2011) Weekly Influenza Surveillance Report 2009-2010 Influenza Season, http://www. cdc.gov/flu/weekly/weeklyarchives2009-2010/weekly20.htm. 





38. Mubayi, A., C. Kribs-Zaleta, M. Martcheva, and C. Castillo-Chavez (2010) A cost-based comparison of quarantine strategies for new emerging diseases, Math. Biosc. Eng. 7: 687–717. 





18. Conway, J.M., A.R.Tuite, D.N. Fisman, N. Hupert, R. Meza, B. Davoudi, K. English, P. van den Driessche, F. Brauer, J. Ma, L.A. Meyers, M. Smieja, A. Greer, D.M. Skowronski, D.L. Buckeridge, J. Kwong, J. Wu, S.M. Moghadas, D. Coombs, R.C. Brunham, & B. Pourbohloul 



Another important infectious disease is Ebola virus disease (EVD). Ebola hemorrhagic fever is a very infectious disease with a case fatality rate of more than 70%. It was first identified in 1976 in the Democratic Republic of Congo and there have been more than a dozen serious outbreaks since then. The most serious outbreak to date occurred in 2014 in Guinea, Liberia, and Sierra Leone and caused more than 10,000 deaths. Response to this epidemic included the development of vaccines to combat the disease, currently being used to combat the most recent outbreak in the Democratic Republic of Congo. 

A distinctive feature of the Ebola virus is much disease transmission occurs through contact with bodily fluids at funerals of Ebola victims. Many mathematical models have been used to study its disease transmission dynamics. Most of these studies have focused on estimating the basic and effective reproduction numbers of EVD, assessing the rate of growth of an epidemic outbreak, evaluating the effect of control measures on the spread of EVD, and conducting more theoretical investigations on how model assumptions may affect model outcomes (see, for example, [1, 3, 7, 8, 11, 18, 23, 25–27, 29, 31, 35, 36, 40]). Although some of these models have provided useful information and better understanding of EVD dynamics and evaluation of control programs, most of these models failed to provide reasonable projections for the 2014 outbreak in West Africa. It is important to examine the reasons for this, including the underlying assumptions made in these models. In this chapter, we describe several models for Ebola. 

## 10.1 Estimation of Initial Growth and Reproduction Numbers

Estimation of the basic and effective reproduction numbers for EVD has been conducted for both the 2014 outbreaks in West Africa and some of the outbreaks in the past (see, for example, [1, 11, 23, 25, 36]). In [11], a standard SEI R model is used for estimating $\mathcal { R } _ { 0 }$ and exploring the effect of timing of the intervention on the epidemic final size. Let S(t), E(t), I (t), and $R ( t )$ denote the number of susceptible, exposed, infective, and removed individuals at time t (the dot denotes time derivatives), and let $C ( t )$ denote the cumulative number of Ebola cases from the time of onset of symptoms. Assume that exposed individuals undergo an average incubation period (asymptomatic and uninfectious) of $1 / k$ days before progressing to the infective class I . Infective individuals move to the R-class (death or recovered) at the per-capita rate $\gamma$ . The model reads 

$$
S ^ {\prime} = - \beta S (t) I (t) / N
$$

$$
E ^ {\prime} = \beta S (t) I (t) / N - k E (t)
$$

$$
I ^ {\prime} = k E (t) - \gamma I (t) \tag {10.1}
$$

$$
R ^ {\prime} = \gamma I (t)
$$

$$
C ^ {\prime} = k E (t).
$$

The model (10.1) predicts initial exponential growth of the number of infectives, but in fact the initial growth rate is less than exponential. One way to modify the model to allow this is to assume behavioral changes including education of hospital personnel and community members on the use of strict barrier nursing techniques (i.e., protective clothing and equipment, patient management), and the rapid burial or cremation of patients who die from the disease. It is assumed that the net effect is a reduced transmission rate $\beta$ from $\beta _ { 0 }$ to $\beta _ { 1 } < \beta _ { 0 }$ . To take into consideration that the impact of the intervention is not instantaneous, the transmission rate is assumed to decrease gradually from $\beta _ { 0 }$ to $\beta _ { 1 }$ according to 

$$
\beta (t) = \left\{ \begin{array}{l l} \beta_ {0} & t <   \tau \\ \beta_ {1} + (\beta_ {0} - \beta_ {1}) e ^ {- q (t - \tau)} & t \geq \tau \end{array} \right.
$$

where $\tau$ is the time at which interventions start and $q$ controls the rate of the transition from $\beta _ { 0 }$ to $\beta _ { 1 }$ . Another interpretation of the parameter $q$ can be given in terms of $\begin{array} { r } { t _ { h } = \frac { \log ( 2 ) } { q } } \end{array}$ , the time to achieve $\begin{array} { r } { \beta ( t ) = \frac { \beta _ { 0 } + \beta _ { 1 } } { 2 } } \end{array}$ . 

The basic reproduction number $\mathcal { R } _ { 0 }$ corresponds to $\beta _ { 0 }$ . If $\mathcal { R } _ { 0 }$ can be estimated from data, then $\beta _ { 0 }$ can be determined using the relation $\mathcal { R } _ { 0 } = \beta _ { 0 } / \gamma$ . For estimating $\mathcal { R } _ { 0 }$ , consider the $E$ and I equations in (10.1) and the corresponding Jacobian matrix $J$ at the disease-free equilibrium 

$$
J = \left( \begin{array}{c c} - k & \beta \\ k & - \gamma \end{array} \right).
$$

The characteristic equation is given by 

$$
r ^ {2} + (k + \gamma) r + (\gamma - \beta) k = 0, \tag {10.2}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/485b546c9f4aa6f77539e93113055b32b32125f0c4f479c5218f39e1e7c01cc1.jpg)



Fig. 10.1 (Top) Cumulative number of cases (log-lin scale) during the exponential growth phase of the Congo 1995 epidemic as identified by the date of start of interventions (09 May 1995 [24]). The model-free initial growth rate of the number of cases for Congo 1995 is 0.07 (linear regression); (bottom) estimated distribution of $\mathcal { R } _ { 0 }$ from our uncertainty analysis (see text). $\mathcal { R } _ { 0 }$ lies in the interquartile range (IQR) (1.66–2.28) with a median of 1.89. Notice that 100% of the weight lies above $\mathcal { R } _ { 0 } = 1$


and the dominant eigenvalue r represents the early-time and per-capita free growth of the outbreak. Replacing the $\beta$ in (10.2) by $\gamma \mathcal { R } _ { 0 }$ and solving for $\mathcal { R } _ { 0 }$ , we obtain 

$$
\mathcal {R} _ {0} = 1 + \frac {r ^ {2} + (k + \gamma) r}{k \gamma}.
$$

Using the time series $y ( t )$ (before intervention) of the cumulative number of cases and assuming exponential growth $( y ( t ) \propto e ^ { r t } )$ an estimate of r can be obtained, as shown in Fig. 10.1 (top). The estimate of the initial rate of growth r for the Congo 1995 epidemic is $r = 0 . 0 7 ~ \mathrm { d a y ^ { - 1 } }$ . Based on this fixed r and Monte Carlo sampling of size $1 0 ^ { 5 }$ from the distributed epidemic parameters $( 1 / k$ and $1 / \gamma )$ [5], a distribution of $\mathcal { R } _ { 0 }$ can be obtained as demonstrated in Fig. 10.1 (bottom), which shows that the distribution lies in the interquartile range (IQR) (1.66–2.28) with a median of 1.89. 

Similar estimates for Congo 1995 data can be obtained. The estimated parameter values are listed in Table 10.1. 


Table 10.1 Parameter definitions and baseline estimates obtained from the best fit of the model equations (10.1) to the epidemic-curve data of the Congo 1995 and Uganda 2000 outbreaks


<table><tr><td rowspan="2">Parameter</td><td rowspan="2">Definition</td><td colspan="2">Congo 1995</td><td colspan="2">Uganda 2000</td></tr><tr><td>Estim.</td><td>SD</td><td>Estim.</td><td>SD</td></tr><tr><td><eq>\beta_0</eq></td><td>Pre-interventions transmission rate (days<eq>^{-1}</eq>)</td><td>0.33</td><td>0.06</td><td>0.38</td><td>0.24</td></tr><tr><td><eq>\beta_1</eq></td><td>Post-interventions transmission rate (days<eq>^{-1}</eq>)</td><td>0.09</td><td>0.01</td><td>0.19</td><td>0.13</td></tr><tr><td><eq>t_h</eq></td><td>Time to achieve <eq>\frac{\beta_0 + \beta_1}{2}</eq> (days)</td><td>0.71</td><td>(0.02, 1.39)</td><td>0.11</td><td>(0, 0.87)</td></tr><tr><td>1/k</td><td>Mean incubation period (days)</td><td>5.30</td><td>0.23</td><td>3.35</td><td>0.49</td></tr><tr><td>1/γ</td><td>Mean infectious period (days)</td><td>5.61</td><td>0.19</td><td>3.50</td><td>0.67</td></tr></table>


$\mathrm { T h e ~ p a r a m e t e r s ~ a r e ~ } 0 < \beta < 1 , 0 < q < 1 0 0 , 1 < 1 / k < 2 1 , 3 . 5 < 1 / \gamma < 1 0 . 7$


We use the model (10.1) to evaluate intervention strategies, including surveillance and placement of suspected cases in quarantine for 3 weeks (the maximum estimated length of the incubation period). The effectiveness of interventions can be quantified in terms of the reproduction number ${ \mathcal R } _ { p }$ after interventions are implemented. For the case of Congo $\mathcal { R } _ { p } = 0 . 5 1 \ ( \mathrm { S D } \ 0 . 0 4 )$ and $\mathcal { R } _ { p } = 0 . 6 6$ (SD 0.02) for Uganda. Furthermore, the time to achieve a transmission rate of β0+β1 $\frac { \beta _ { 0 } + \beta _ { 1 } } { 2 } \left( t _ { h } \right)$ is 0.71 (95% CI (0.02, 1.39)) days and 0.11 (95% CI (0, 0.87)) days for the cases of Congo and Uganda, respectively, after the time at which interventions begin. 

Using the parameter values estimated from early growth, the model (10.1) can be used to simulate the Ebola outbreaks in Congo (1995) and Uganda (2000). Figure 10.2 illustrates results via Monte Carlo simulations of the stochastic model corresponding to (10.1) [33], which is constructed by considering three events: exposure, infection, and removal. The transition rates are defined as 

<table><tr><td>Event</td><td>Effect</td><td>Transition rate</td></tr><tr><td>Exposure</td><td><eq>(S, E, I, R) \rightarrow (S-1, E+1, I, R)</eq></td><td><eq>\beta(t)SI/N</eq></td></tr><tr><td>Infection</td><td><eq>(S, E, I, R) \rightarrow (S, E-1, I+1, R)</eq></td><td><eq>kE</eq></td></tr><tr><td>Removal</td><td><eq>(S, E, I, R) \rightarrow (S, E, I-1, R+1)</eq></td><td><eq>\gamma I</eq></td></tr></table>

Figure 10.2 illustrates that there is very good agreement between the mean of the stochastic simulations and the reported cases. The empirical distribution of the epidemic final sizes for the cases of Congo 1995 and Uganda 2000 is given in Fig. 10.3. 

The epidemic final size is sensitive to the start time of interventions τ . Numerical solutions (deterministic model) show that the epidemic final size grows exponentially fast with the initial time of interventions. For instance, for the case of Congo, the model predicts that there would have been 20 more cases if interventions had started 1 day later, as shown in Fig. 10.4. 

As for most outbreaks, the initial growth of the outbreaks in Congo 1995 and Uganda 2000 is exponential. However, it is discussed that for the 2014 outbreaks in West Africa there are significant differences in the growth patterns of EVD cases at the scale of the country, district, and other sub-national administrative divisions. It is illustrated that the cumulative number of EVD cases in a number of administrative areas of Guinea, Sierra Leone, and Liberia is best approximated by polynomial rather than exponential growth over several generations of EVD. It is also observed that, when data are aggregated nationally, or across the broader West Africa region, total case counts show periods of approximate exponential growth. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/ba9472472e8e92f3d8ff2a295e1709030d526585906ee67ef04b0f96d35fcf69.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/f59df4a170374fed9740ef387ce1629937a31f0555c0a6829c710390d5697148.jpg)



Fig. 10.2 Comparison of the cumulative number of Ebola cases during the Congo 1995 and Uganda 2000 Ebola outbreaks, as a function of the time of onset of symptoms. Circles are the data. The solid line is the average of 250 Monte Carlo replicates and the error bars represent the standard error around the mean from the simulation replicates using our parameter estimates (Table 10.1). For the case of Congo 1995, simulations were begun on 13 Mar 1995. A reduction in the transmission rate $\beta$ due to the implementation of interventions occurs on 09 May 1995 (day 56) [24]. For the case of Uganda 2000, simulations start on 27 August 2000 and interventions take place on 22 October 2000 (day 56) [41]


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/1042ac96bde38c74923a2aa321b2e8c3c577b9d307dc8fd56fc54236e1d53cd0.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/254ae03b63358e9c6425659445026affec82ffc567a894c4fd626691ea913f18.jpg)



Fig. 10.3 The epidemic final size distributions for the cases of Congo 1995 and Uganda 2000 obtained from 250 Monte Carlo replicas. Crosses (X) represent the epidemic final size from data


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/f1352f52abb43d327d36d05fac0845d999fbbb3c5aad7f768c48b76e1e76392b.jpg)



Fig. 10.4 Sensitivity of the final epidemic final size to the starting time of interventions. The negative numbers represent number of days before the actual reported intervention date and positive numbers represent a delay after the actual reported intervention date (τ = 0)


Temporal evolution of the effective reproduction number of Ebola is studied in [36]. In this study, a simple SEIR model with standard incidence is used in combination with the limited existing data to determine whether the transmission rate of Ebola has been changing over time in West Africa. To this end, piecewise exponential curves were fit to the time series of outbreak data to estimate the temporal evolution of the effective reproduction number of the disease. Instead of $\mathcal { R } _ { 0 }$ , the study focuses on assessing the time evolution of the effective reproduction number denoted by $\mathcal { R } _ { e f f }$ , which is a dynamic estimate of the average number of secondary cases per infectious case in a population composed of both susceptible and non-susceptible individuals during the course of an outbreak. The SEIR model and its linearization about this temporary “equilibrium” are used to determine the predicted local rate of exponential rise of the epidemic curve, $\rho _ { e f f }$ . For the SEIR model, this is related to $\mathcal { R } _ { e f f }$ by 

$$
\mathcal {R} _ {e f f} = \left(1 + \frac {\rho_ {e f f}}{\gamma}\right) \left(1 + \frac {\rho_ {e f f}}{\kappa}\right), \tag {10.3}
$$

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/596812ba6baa9fa47ab9a42017cbad72c4b482ed14ec23c979cf43b22f8c7da0.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/4696e0dc0caa016a03f5a77e8cede38f6ab87d405558b1766200d22fbf6af03d.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/e232d9f5495e88a563ea3231cd7e0152f5a2990d02ac1f697121b00e81a07b4d.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/d0018a8a1fb24860feb784c8b6fd616468185ac1aad4ca65209fa4cea6bd84a2.jpg)



Fig. 10.5 Time series of incidence of EVD cases in West Africa


where $1 / \kappa$ and $1 / \gamma$ are the average incubation and infective periods of the disease, respectively. With estimates of $\rho _ { e f f }$ from piecewise exponential rise fits to the incidence data from an outbreak (along with estimates of the incubation and infective periods of the disease), $\rho$ can be estimated (Fig. 10.5), and then Eq. (10.3) can be used to obtain estimates of the temporal behavior of $\mathcal { R } _ { e f f }$ (Fig. 10.6), in essence approximating the temporal behavior with a piece-wise step-function. 

Figure 10.5 shows time series of recorded average number of new EVD cases per day during the initial phase of the 2014 West African outbreak, for Guinea, Sierra Leone, and Liberia (dots). The green lines show a selection of the piecewise exponential fits to the data (not all fits are shown to clarify the presentation); a moving window of groups of ten contiguous points are taken at a time, and the rate of exponential rise estimated for those ten points. The results for the estimations of the exponential rise for the full set of piece-wise fits are shown in Fig. 10.6. Shown in red is the fitted exponential rise from July 1st onwards. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/32c1a82d05d540e1eccf617a74663cf92a7953e12f6ed0550f0ea163d56e686f.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/405ee94c58d2d68e6718cf3822f872dc090707ccc10a0c81504ab9fad956b4fc.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/e83d2f9691f6b4eb50898db5acde5fa1c7ab862ab00c3e9d0616d7bbf0f04311.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/56a8bac48f537046e19b48d37be5463326793c9cd416cf458bdb64197fe77176.jpg)



Fig. 10.6 Estimated rates of exponential rise from piece-wise exponential fits


In Fig. 10.6, estimated rates of exponential rise from piece-wise exponential fits to the average daily EVD incidence data, as shown in Fig. 10.5; a moving window of groups of ten contiguous incidence data time series points are taken at a time, and the rate of exponential rise estimated for those ten points. The dates shown on the x axis are the last date in each contiguous set of ten points, and the vertical error bars denote the 95% confidence interval. The horizontal black line shows the estimated rate of rise of an exponential fit to the incidence time series from July 1st to September 8th, with the black dotted lines indicating the 95% confidence interval. 

## 10.1.1 Early Detection

The effect of early detection on Ebola control is studied in [10]. The model considers six epidemiological classes: susceptible individuals (S), latent undetectable individuals $( E _ { 1 } )$ , latent detectable individuals $( E _ { 2 } )$ , infectious symptomatic individuals (I ), isolated individuals (J ), and individuals removed from isolation after recovery or disease-induced death $( P ) , P = R + D$ , where R is the recovered class and D is the death-induced class. Susceptible individuals become infected and latent through contact with an infectious individual at the per-capita rate $( I + l J ) = N$ , where $\beta$ is the mean transmission rate per day, l is defined as the relative transmissibility of isolated individuals, i.e., it is a measure of the effectiveness of isolation of infective individuals, and N is the total population size. Latent undetectable individuals $( E _ { 1 } )$ enter the latent detectable class $E _ { 2 }$ at a rate $k _ { 1 }$ , and become infectious symptomatic at a rate $k _ { 2 }$ . A fraction of the latent detectable individuals are diagnosed (i.e., by RT-PCR), $p _ { T } = f _ { T } = ( f _ { T } + k _ { 2 } )$ , and become isolated. We assume that the latent detectable class represents individuals with a viral load above the detection limit of the specific diagnostic test. Infective individuals are isolated at a rate $\alpha ,$ or they are removed after recovery or disease-induced death at a rate $\gamma .$ . Similarly, individuals are removed from isolation after recovery or disease-induced death, but at a rate $\gamma _ { r }$ . The model reads 

$$
S ^ {\prime} = - \beta S \frac {I + l J}{N}
$$

$$
E _ {1} ^ {\prime} = \beta S \frac {I + l J}{N} - k _ {1} E _ {1}
$$

$$
E _ {2} ^ {\prime} = k _ {1} E _ {1} - k _ {2} E _ {2} - f _ {T} E _ {2}
$$

$$
I ^ {\prime} = k _ {2} E _ {2} - (\alpha + \gamma) I \tag {10.4}
$$

$$
J ^ {\prime} = \alpha I + f _ {T} E _ {2} - \gamma_ {r} J
$$

$$
R ^ {\prime} = \gamma (1 - \delta) I + \gamma_ {r} (1 - \delta) J
$$

$$
D ^ {\prime} = \gamma \delta I + \gamma_ {r} \delta J
$$

$$
N = S + E _ {1} + E _ {2} + I + J + R.
$$

The analysis suggests that the impact of early diagnosis of pre-symptomatic infections is strongly dependent on the effectiveness of isolation of infective individuals in health-care settings. For instance, with an isolation effectiveness of 50% and with an average time of 3 days from the onset of symptoms to isolation, the attack rate (total number of Ebola cases/population size) remains essentially unchanged as the rate of pre-symptomatic case detection increases (Fig. 10.7). In contrast, early detection of pre-symptomatic individuals can have a significant impact on the transmission dynamics of Ebola if the effectiveness of isolating infective cases is at least 60%. Even at this level of isolation, at least 50% of pre-symptomatic cases would need to be detected in the community, a scenario difficult to achieve with limited resources. When the effectiveness of isolation is increased to 65%, detecting about 25% of pre-symptomatic cases is predicted to lead to epidemic control, i.e., the effective reproduction number is reduced below the epidemic threshold. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/5b2fba44de53d26a96197901aad7fa21f2c777bcd1996e09face7b5c40d8868a.jpg)



Fig. 10.7 Predictions of the effect of diagnosing pre-symptomatic individuals on the attack rate of the Ebola epidemic. The mean time from onset of symptoms to isolation was set at 3 days


## 10.2 Evaluations of Control Measures

One of the typical characteristics for EVD is that significant transmissions can occur by infectious individuals after death but before burial. Also, no effective drugs or vaccine were available for the outbreak in West Africa. The main control measures include isolation, hospitalization, contact tracing, and safe burial. Several mathematical models have been used to assess the effectiveness of these control measures (e.g., [3, 7, 26, 27, 35, 40]). Most of the models in these studies use SEIR type of models with various modifications. One of the EVD models on which many other models are based is the one considered in Legrand et al. [26], which will be discussed in more detail in the next section. 

A model considered in [7] has the following form (with modified notation): 

$$
S ^ {\prime} = - \beta S (I _ {h} + I _ {u}) / N
$$

$$
E ^ {\prime} = \beta S (I _ {h} + I _ {u}) / N - \alpha E
$$

$$
I _ {h} ^ {\prime} = p \alpha E - \delta_ {h} I _ {h} \tag {10.5}
$$

$$
I _ {u} ^ {\prime} = (1 - \rho) \alpha E - \delta_ {u} I _ {u}
$$

$$
H ^ {\prime} = \delta_ {h} I _ {h},
$$

where N is the total population size and is assumed to be constant. In this model, two separate compartments for infective individuals are considered, namely infective individuals which will be hospitalized/reported $\left( I _ { h } \right)$ and infectious individuals which will not be hospitalized and unreported $\left( { { I _ { u } } } \right)$ . The H compartment represents the cumulative hospitalized/reported cases (so it includes those who are recovered after being hospitalized). The model (10.5) also assumes that individuals in both $I _ { h }$ and $I _ { u }$ have the same transmission rate β, p is the fraction of hospitalized cases, $1 / \delta _ { h }$ is time from infectiousness (symptom) onset until hospitalization/isolation and reporting, and $1 / \delta _ { u }$ is the mean infective period for an unhospitalized case. A transition diagram of the model is depicted in Fig. 10.8. 


Fig. 10.8 A transition diagram for model (10.5)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/74c9964fb001640d7a4df01e10fdcf87c6042552d9b4e7621e77b19739b70b11.jpg)


For model (10.5), the reproduction number is given by 

$$
\mathcal {R} _ {e} = \mathcal {R} _ {0} \bigg (p \frac {\delta_ {u}}{\delta_ {h}} + 1 - p \bigg),
$$

where $\begin{array} { r l r } { { \mathcal R } _ { 0 } } & { { } = } & { \beta / \delta _ { u } } \end{array}$ is the basic reproduction number. An extension of the model (10.5) is also considered in [7] to take into consideration contact tracing. 

The following deterministic model is considered in [25]. 

$$
\begin{array}{l} S ^ {\prime} = - \mathcal {R} _ {0} \delta S I / N, \\ E _ {1} ^ {\prime} = \mathcal {R} _ {0} \delta S I / N - m \alpha E _ {1}, \\ E _ {i} ^ {\prime} = m \alpha (E _ {i - 1} - E _ {i}), \quad i = 2, \dots , m \tag {10.6} \\ I ^ {\prime} = m \alpha E _ {m} - \delta I, \\ R ^ {\prime} = \delta I. \\ \end{array}
$$

In model (10.6), the stage distribution of the latent stage is assumed to be gamma with the shape parameter equal to m, which leads to a division of the exposed class E into m sub-classes with mean duration 1/(mα). By examining the model fit to the weekly case reports in Guinea, Liberia, and Sierra Leone from the WHO situation report dated from 1 October 2014 (http://www.who.int/csr/disease/ebola/situationreports/en/), the authors pointed out that fitting of such deterministic models to cumulative incidence data can lead to bias and pronounced underestimation of the uncertainty associated with model parameters. 

The models (10.5) and (10.6) ignored the special characteristic associated with the fact that significant transmissions can occur by those who are dead but not yet buried. This is considered in the Legrand model, which is discussed in detail next. 

## 10.3 The Legrand Model and Underlying Assumptions

Many mathematical models have been used for the recent epidemics of Ebola in West Africa. However, the success of these models in the case of the 2014 Ebola outbreak in West Africa was very limited. As pointed out in [8], “mathematical models have failed to accurately project the outbreak’s course.” Although various reasons may explain why “on-the-ground data contradict the projections of published models,” including incomplete and unreliable data on Ebola epidemiology (especially in the hardest-hit areas) and lack of empirical data on how diseasecontrol measures quantitatively affect Ebola transmission, it is important to examine the appropriateness of assumptions made in the models on which the projections are based. This is the objective of this section. There have been various modeling approaches, including deterministic and stochastic models, or relatively simple models consisting of ordinary differential equations (ODEs) and more complicated agent-based models, among others. Many of the ODE models are variations of the model studied by the Legrand model (10.7). It has been pointed out that some of the assumptions made in the Legrand model may not have clear justifications (e.g., [35]). Thus, it is important to examine the critical assumptions made in this model and better understand their possible impact on model outcomes. 

## 10.3.1 The Legrand Model

The Legrand et al. model [26] consists of a system of ordinary differential equations with six compartments representing the epidemiological classes of susceptible (S), exposed (E), infective (I ), hospitalized (H ), dead but not yet buried (D), and removed (R). The transition diagram of the model is depicted in Fig. 10.9. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/791b53507b1b467ab12e0fa0292986cd584a6a14566bf904f2a48e7072fa5f40.jpg)



Fig. 10.9 A transition diagram for the model in Legrand et al. [26]


The model presented by Legrand et al. [26] reads 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D) \\ \frac {d E}{d t} = \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D) - \alpha E \\ \frac {d I}{d t} = \alpha E - \left(\gamma_ {h} \theta_ {1} + \gamma_ {i} \left(1 - \theta_ {1}\right) \left(1 - \delta_ {1}\right) + \gamma_ {d} \left(1 - \theta_ {1}\right) \delta_ {1}\right) I \tag {10.7} \\ \frac {d H}{d t} = \gamma_ {h} \theta_ {1} I - (\gamma_ {d h} \delta_ {2} + \gamma_ {i h} (1 - \delta_ {2})) H \\ \frac {d D}{d t} = \gamma_ {d} (1 - \theta_ {1}) \delta_ {1} I + \gamma_ {d h} \delta_ {2} H - \gamma_ {f} D \\ \frac {d R}{d t} = \gamma_ {i} (1 - \theta_ {1}) (1 - \delta_ {1}) I + \gamma_ {i h} (1 - \delta_ {2}) H + \gamma_ {f} D. \\ \end{array}
$$

The parameters $\beta _ { I } , \beta _ { H }$ , and $\beta _ { D }$ denote the transmission rates in the I , H , and D classes, respectively; let $1 / \alpha$ be the mean latent period; and let $1 / \gamma _ { f }$ be the mean time between death and burial. 

The three key parameters that are in the Legrand model (10.7), $\theta _ { 1 } , \delta _ { 1 }$ , and $\delta _ { 2 }$ , do not have direct biological meaning but are computed based on the probabilities of hospitalization and of disease-induced mortality with or without hospitalization. For example, the fraction of infective people hospitalized is 

$$
p = \frac {\gamma_ {h} \theta_ {1}}{\gamma_ {h} \theta_ {1} + \gamma_ {i} (1 - \theta_ {1}) (1 - \delta_ {1}) + \gamma_ {d} (1 - \theta_ {1}) \delta_ {1}}, \tag {10.8}
$$

and the probabilities of death with $\left( f _ { h } \right)$ and without hospitalization $( f _ { i } )$ are given by 

$$
f _ {h} = \frac {\gamma_ {d h} \delta_ {2}}{\gamma_ {d h} \delta_ {2} + \gamma_ {i h} (1 - \delta_ {2})} \tag {10.9}
$$

$$
f _ {i} = \frac {\gamma_ {d} \delta_ {1}}{\gamma_ {i} (1 - \delta_ {1}) + \gamma_ {d} \delta_ {1}}.
$$

If we assume $f _ { i } = f _ { h } = f$ , then $\theta _ { 1 } , \delta _ { 1 }$ , and $\delta _ { 2 }$ can be determined in terms of $p$ and $f$ using (10.8) and (10.9). 

In addition, the Legrand model imposes the following constraints: 

$$
\frac {1}{\gamma_ {i}} = \frac {1}{\gamma_ {h}} + \frac {1}{\gamma_ {i h}} \quad \text { and } \quad \frac {1}{\gamma_ {d}} = \frac {1}{\gamma_ {h}} + \frac {1}{\gamma_ {d h}}, \tag {10.10}
$$

and assumes that hospitalization does not affect the time from onset to recovery or from onset to death. Other assumptions made in model (10.7) are associated with exponential waiting times. It is assumed that, after entering the infective class I , individuals can leave due either to hospitalization (entering H ) or recovery without being hospitalized (entering R from I ) or death without being hospitalized (entering D from I ) with average waiting times $1 / \gamma _ { h } , 1 / \gamma _ { i } , 1 / \gamma _ { d }$ , respectively. Or equivalently, after onset, individuals enter the H , R, and D classes at constant rates $\gamma _ { h } , \gamma _ { i }$ , and $\gamma _ { d }$ , respectively. Their model assumes that the overall rate of leaving the I class, denoted by Δ, is a weighted average of the three rates $\gamma _ { h } , \gamma _ { i }$ , and $\gamma _ { d }$ as 

$$
\Delta = \theta_ {1} \gamma_ {h} + (1 - \theta_ {1}) \delta_ {1} \gamma_ {d} + (1 - \theta_ {1}) (1 - \delta_ {1}) \gamma_ {i}, \tag {10.11}
$$

where $\theta _ { 1 }$ is the proportion of cases hospitalized, and $\delta _ { 1 }$ is a coefficient that is determined such that 

$$
\frac {\delta_ {1} \gamma_ {d}}{\delta_ {1} \gamma_ {d} + (1 - \delta_ {1}) \gamma_ {i}}
$$

is equal to case fatality (i.e., the proportion of cases that die). 

## 10.3.2 A Simpler System Equivalent to the Legrand Model

It is shown in [18] that the Legrand model (10.7) is equivalent to the following model: 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D), \\ \frac {d E}{d t} = \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D) - \alpha E, \\ \frac {d I}{d t} = \alpha E - \gamma I, \tag {10.12} \\ \frac {d H}{d t} = p \gamma I - \omega H, \\ \frac {d D}{d t} = (1 - p) f \gamma I + f \omega H - \gamma_ {f} D, \\ \frac {d R}{d t} = (1 - p) (1 - f) \gamma I + (1 - f) \omega H, \\ \end{array}
$$

where 

$$
\frac {1}{\gamma} = p \frac {1}{\gamma_ {I H}} + (1 - p) f \frac {1}{\gamma_ {I D}} + (1 - p) (1 - f) \frac {1}{\gamma_ {I R}}, \tag {10.13}
$$

$$
\frac {1}{\omega} = f \frac {1}{\omega_ {H D}} + (1 - f) \frac {1}{\omega_ {H R}}.
$$

Using the following connections between parameters in (10.12) and the Legrand model (10.7): 

$$
\gamma_ {I R} = \gamma_ {i}, \quad \gamma_ {I H} = \gamma_ {h}, \quad \gamma_ {I D} = \gamma_ {d},
$$

the conditions in (10.13) can be written as 

$$
\frac {1}{\gamma_ {1}} = p \frac {1}{\gamma_ {h _ {1}}} + (1 - p) f _ {i} \frac {1}{\gamma_ {d _ {1}}} + (1 - p) (1 - f _ {i}) \frac {1}{\gamma_ {i}}, \tag {10.14}
$$

$$
\frac {1}{\omega} = f _ {h} \frac {1}{\gamma_ {d h}} + (1 - f _ {h}) \frac {1}{\gamma_ {i h}},
$$

and the constraints (10.10) becomes 

$$
\frac {1}{\gamma_ {I R}} = \frac {1}{\gamma_ {I H}} + \frac {1}{\omega_ {H R}}, \quad \frac {1}{\gamma_ {I D}} = \frac {1}{\gamma_ {I H}} + \frac {1}{\omega_ {H D}}. \tag {10.15}
$$

The only minor difference between the two models is where to move the buried (whether or not to R), which does not affect the dynamic behavior of the model. 

## 10.4 *Models with Various Assumptions on Stage Transition Times

In the Legrand model (10.7) or the equivalent model (10.12), it is not clear what underlying assumptions have been made regarding the distributions of waiting times for epidemiological processes including the time from onset to recovery (transition from I to R), to hospitalization (transition from I to H ), and to death (transition from I to D). For ease of reference, we refer to these three transitions as IR, IH, and ID, respectively. In addition, the two possible transitions for hospitalized individuals, recovery or death, are denoted by HR and HD. In this section, we derive three integro-differential equations models under different assumption on those transition times and compare the difference in the model outcomes. 

Let $T _ { P } , T _ { L }$ , and $T _ { M }$ denote random variables for the waiting times associated with IR, IH, and ID, and let the associated survival functions be denoted by $P ( t ) , \ L ( t )$ , and M(t), respectively. The mean duration of these transitions are, respectively, $\mathbb { E } [ T _ { P } ] , \mathbb { E } [ T _ { L } ]$ , and $\mathbb { E } [ T _ { D } ]$ . Similarly, let $\mathcal { D } _ { H R }$ and $\mathcal { D } _ { H D }$ denote the mean duration from hospitalization to recovery or death, respectively. For ease of comparison between models presented in this paper, we list in Table 10.2 some of the quantities that play common roles and have clear biological meaning in these models. Several of these quantities should have values that are independent of model assumptions, including the mean duration (absent intervention) from onset to recovery $\mathbb { E } [ T _ { P } ]$ , the probability of hospitalization $p _ { : }$ , and the probability of death $f$ . 


Table 10.2 Definition of symbols commonly used in the models in this section


<table><tr><td>Symbol</td><td>Definition</td></tr><tr><td><eq>T_P, T_L, T_M</eq></td><td>Random variables for the waiting times in <eq>I</eq> before moving to <eq>R, H, D</eq>, respectively</td></tr><tr><td><eq>X_I</eq></td><td>Random variable for the overall time spent in the <eq>I</eq> compartment</td></tr><tr><td><eq>X_H</eq></td><td>Random variable for the overall time spent in the <eq>H</eq> compartment</td></tr><tr><td><eq>P_i(s)</eq></td><td>Probability that a living individual remains infectious <eq>s</eq> units of time since onsetfor models I, II, III when <eq>i = 1, 2, 3</eq>, respectively. That is, <eq>\mathbb{P}[T_{P_i} &gt; s] = P_i(s)</eq></td></tr><tr><td><eq>L_i(s)</eq></td><td>Probability of a living individual not being hospitalized <eq>s</eq> units of time since onsetfor models I, II when <eq>i = 1, 2</eq>, respectively. That is, <eq>\mathbb{P}[T_{L_i} &gt; s] = L_i(s)</eq></td></tr><tr><td><eq>M_1(s)</eq></td><td>Probability of surviving the disease <eq>s</eq> units of time since onset for model I.That is,<eq>\mathbb{P}[T_{M_1} &gt; s] = M_1(s)</eq></td></tr><tr><td><eq>Q_3(s)</eq></td><td>Probability of not having recovered <eq>s</eq> time units after being hospitalized for model III</td></tr><tr><td><eq>\mathbb{E}[T_P]</eq></td><td>Mean duration from onset to recovery (absent intervention or death)</td></tr><tr><td><eq>\mathbb{E}[T_L]</eq></td><td>Mean duration from onset to hospitalization (given hospitalized and not dead)</td></tr><tr><td><eq>\mathbb{E}[T_M]</eq></td><td>Mean duration between onset and death (absent intervention or recovery)</td></tr><tr><td><eq>\mathbb{E}[X_I]</eq></td><td>Mean duration in the <eq>I</eq> compartment (hospitalization and death included)</td></tr><tr><td><eq>\mathbb{E}[X_H]</eq></td><td>Mean duration in the <eq>H</eq> compartment (death included)</td></tr><tr><td><eq>\mathcal{D}_{HR}</eq></td><td>Mean duration from hospitalization to recovery</td></tr><tr><td><eq>\mathcal{D}_{HD}</eq></td><td>Mean duration from hospitalization to death</td></tr><tr><td><eq>\gamma_{IR}</eq></td><td>= <eq>1/\mathbb{E}[T_P]</eq></td></tr><tr><td><eq>\gamma_{IH}</eq></td><td>= <eq>1/\mathbb{E}[T_L]</eq></td></tr><tr><td><eq>\gamma_{ID}</eq></td><td>= <eq>1/\mathbb{E}[T_M]</eq></td></tr><tr><td><eq>\omega_{HR}</eq></td><td>= <eq>1/\mathcal{D}_{HR}</eq>, per-capita rate of transition from <eq>H</eq> to <eq>R</eq> if the transition is exponential</td></tr><tr><td><eq>\omega_{HD}</eq></td><td>= <eq>1/\mathcal{D}_{HD}</eq>, per-capita rate of transition from <eq>H</eq> to <eq>D</eq> if the transition is exponential</td></tr><tr><td><eq>p</eq></td><td>Proportion hospitalized (dependent on control effort)</td></tr><tr><td><eq>f</eq></td><td>Probability of death (with or without hospitalization)</td></tr><tr><td><eq>\gamma</eq></td><td>= <eq>1/\mathbb{E}[X_I]</eq>, per-capita rate of exiting <eq>I</eq> if <eq>X_I</eq> is exponential</td></tr></table>

If the transitions IR, IH, and ID are assumed to be independent in the Legrand model and the waiting times are all exponentially distributed with mean durations $1 / \gamma _ { I R } , 1 / \gamma _ { I H }$ , and $1 / \gamma _ { I D }$ , respectively, then the mean overall time spent in the I compartment is 

$$
\mathbb {E} \left[ \min \left\{T _ {P}, T _ {L}, T _ {M} \right\} \right] = \int_ {0} ^ {\infty} P (t) L (t) M (t) d t = \frac {1}{\gamma_ {I R} + \gamma_ {I H} + \gamma_ {I D}}.
$$

Thus, the overall rate of exiting I is $\gamma _ { I R } + \gamma _ { I H } + \gamma _ { I D }$ , which is not a weighted average given by $\varDelta$ in (10.11) for the Legrand model. This implies that the Legrand model has made different assumptions on these transitions. 

In the formulation of the integro-differential equations models, we will adopt probabilistic terminology to facilitate the interpretation of these models, and focus on the following three scenarios: 

(I) Assume that the three transitions IR, IH, and ID are independent and the waiting times are described by the survival functions $P _ { 1 } ( s ) , L _ { 1 } ( s )$ , and $M _ { 1 } ( s )$ , respectively, where s represents the time-since-onset. It is also assumed that hospitalization does not affect the time from onset to recovery or death. 

(II) The two transitions IR and ID are combined and described by a single survival function $P _ { 2 } ( s )$ , with a fraction $1 - f$ of the exiting individuals recovering (and the fraction f dying). The transition IH is independent of IR and ID and the waiting time is described by the survival function $L _ { 2 } ( s )$ . Similar to model I, it is also assumed that hospitalization does not affect the time from onset to recovery or probability of death. 

(III) All three transitions (IH, IR, and ID) are combined and described by a single survival function $P _ { 3 } ( s )$ , with a fraction p of the exiting individuals being hospitalized and a fraction $1 - f$ (respectively, $f )$ of the non-hospitalized individuals recovering (respectively, dying). The two transitions HR and HD are combined and the waiting time is described by a single survival function $Q _ { 3 } ( s )$ with a fraction 1  f (or f ) of the exiting individuals recovering (or dying). $P _ { 3 }$ and $Q _ { 3 }$ are assumed to be independent. Unlike models I and II, in which the time from onset to hospitalization is tracked due to the independent stage distributions, in model III a constraint must be imposed so that the time between onset and hospitalization plus the time between hospitalization and recovery (or death) equals the time between onset and recovery (or death). 

To focus on the general waiting time for the infective stage and its influence on model formulation when hospitalization is considered, assume simpler distributions for other stages including the latent stage and the duration between death and burial. That is, the E and D stages are assumed to have exponential distributions with constant rates α and $\gamma _ { f }$ . As the models are derived under arbitrary distributions for the waiting times of key disease stages, they consist of systems of integrodifferential equations. It shows that these systems reduce to ODE systems when the arbitrary stage distributions are replaced by gamma or exponential distributions. Detailed derivations of the systems of integral equations are provided in Feng et al. (2016). 

The model I, which corresponds to the scenario (I) described above, assumes independent IR, IH, and ID processes. Let $T _ { P _ { 1 } } , \ T _ { L _ { 1 } }$ , and $T _ { M _ { 1 } }$ denote random variables for the independent waiting times of IR, IH, and ID, respectively, that are described by the following survival functions: 

• $P _ { 1 } ( s )$ : Probability that a living individual remains infectious s units of time since onset (governing both IR and HR). 

• $L _ { 1 } ( s )$ : Probability of a living individual not being hospitalized s units of time since onset (governing the IH transition). 

• $M _ { 1 } ( s )$ : Probability of surviving the disease s units of time since onset (governing both ID and HD). 

Figure 10.10 depicts the transitions between epidemiological classes for the model under scenario (I). All variables and parameters have the same meanings as before unless otherwise stated. The diagram in (a) depicts transitions between compartments when stage durations for the IR, IH, and ID transitions are arbitrarily described by the survival functions $P _ { 1 } ( t ) , L _ { 1 } ( t )$ , and $M _ { 1 } ( t )$ . The dotted rectangle around the I and H compartments indicates that individuals in these two compartments are being tracked for their time-since-onset using the same survival function $P _ { 1 } ( t )$ , i.e., the time elapsed in I before entering H is taken into account when determining the time between entering H and recovery. The diagram in (b) illustrates the effect of the “linear chain trick” when $P _ { 1 } ( t )$ follows a gamma distribution, and $L _ { 1 } ( t )$ and $M _ { 1 } ( t )$ follow exponential survival functions. 


(a) Arbitrary distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/c4b878658648959fa2cb098879333ef222b318e562a08ad7168a1461becaa5bf.jpg)



(b) Gamma distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/95c601a25f5a02c3d160d1848181a2f280873b978f384eac853be70c67430c71.jpg)



Fig. 10.10 Transition diagram for Model I when $T _ { P _ { 1 } } , \ T _ { L _ { 1 } }$ , and $T _ { M _ { 1 } }$ are arbitrary (a), or gamma/exponential (b). The corresponding survival functions are $P _ { 1 } ( t )$ (red), $L _ { 1 } ( t )$ (green), and $M _ { 1 } ( t )$ , respectively


The model with the general stage distributions $P _ { 1 } , L _ { 1 }$ , and $M _ { 1 }$ consists of the following system of integro-differential equations: 

$$
\frac {d S}{d t} = - \lambda (t) S, \quad \frac {d E}{d t} = \lambda (t) S - \alpha E,
$$

$$
I (t) = \int_ {0} ^ {t} \alpha E (s) P _ {1} (t - s) L _ {1} (t - s) M _ {1} (t - s) d s + I (0) P _ {1} (t) L _ {1} (t) M _ {1} (t),
$$

$$
\begin{array}{l} H (t) = \int_ {0} ^ {t} \alpha E (s) P _ {1} (t - s) M _ {1} (t - s) \left[ 1 - L _ {1} (t - s) \right] d s \\ + I (0) P _ {1} (t) M _ {1} (t) \big [ 1 - L _ {1} (t) \big ], \tag {10.16} \\ \end{array}
$$

$$
D (t) = \int_ {0} ^ {t} \left[ \int_ {0} ^ {\tau} \alpha E (s) P _ {1} (\tau - s) g _ {M _ {1}} (\tau - s) d s + I (0) P _ {1} (\tau) g _ {M _ {1}} (\tau) \right] e ^ {- \gamma_ {f} (t - \tau)} d \tau ,
$$

$$
R (t) = \int_ {0} ^ {t} \left[ \int_ {0} ^ {\tau} \alpha E (s) g _ {p _ {1}} (\tau - s) M _ {1} (\tau - s) d s + I (0) g _ {p _ {1}} (\tau) M _ {1} (\tau) \right] d \tau ,
$$

where λ(t) is given by 

$$
\lambda (t) = \frac {\beta_ {I} I + \beta_ {H} H + \beta_ {D} D}{N}, \tag {10.17}
$$

The initial condition is $( S ( 0 ) , E ( 0 ) , I ( 0 ) , H ( 0 ) , D ( 0 ) , R ( 0 ) ) \ = \ ( S _ { 0 } , E _ { 0 } , I _ { 0 } , 0 ,$ , $0 , 0 )$ , where $S _ { 0 }$ and $E _ { 0 }$ are positive constants. Notice that in system (10.16), the probability distributions for $T _ { P _ { 1 } } , T _ { L _ { 1 } }$ , and $T _ { M _ { 1 } }$ are arbitrary. 

Consider the case when $T _ { P _ { 1 } }$ follows a gamma distribution with shape and rate parameters $( n , n \gamma _ { 1 } )$ (where $n \geq 1$ is an integer), and $T _ { L _ { 1 } }$ and $T _ { M _ { 1 } }$ follow exponential distributions with parameters $\chi _ { 1 }$ and $\mu$ , respectively (which are gamma distributions with shape parameter 1). That is, 

$$
\begin{array}{l} P _ {1} (t) = G _ {n \gamma_ {1}} ^ {n} (t) = \sum_ {j = 1} ^ {n} \frac {(n \gamma_ {1} t) ^ {j - 1} e ^ {- n \gamma_ {1} t}}{(j - 1) !}, \\ L _ {1} (t) = G _ {\chi_ {1}} ^ {1} (t) = e ^ {- \chi_ {1} t}, \tag {10.18} \\ \end{array}
$$

$$
M _ {1} (t) = G _ {\mu} ^ {1} (t) = e ^ {- \mu t}.
$$

Then, it is shown in [18] that (10.16) is equivalent to the following system of ODEs: 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S \left(\beta_ {I} \sum_ {j = 1} ^ {n} I _ {j} + \beta_ {H} \sum_ {j = 1} ^ {n} H _ {j} + \beta_ {D} D\right), \\ \frac {d E}{d t} = \frac {1}{N} S \left(\beta_ {I} \sum_ {j = 1} ^ {n} I _ {j} + \beta_ {H} \sum_ {j = 1} ^ {n} H _ {j} + \beta_ {D} D\right) - \alpha E, \\ \frac {d I _ {1}}{d t} = \alpha E - (n \gamma_ {1} + \chi_ {1} + \mu) I _ {1}, \\ \frac {d I _ {j}}{d t} = n \gamma_ {1} I _ {j - 1} - (n \gamma_ {1} + \chi_ {1} + \mu) I _ {j}, \quad \text { for } j = 2, \dots n, \tag {10.19} \\ \frac {d H _ {1}}{d t} = \chi_ {1} I _ {1} - (n \gamma_ {1} + \mu) H _ {1}, \\ \frac {d H _ {j}}{d t} = \chi_ {1} I _ {j} + n \gamma_ {1} H _ {j - 1} - (n \gamma_ {1} + \mu) H _ {j}, \quad \text { for } j = 2, \dots n, \\ \frac {d D}{d t} = \mu \sum_ {j = 1} ^ {n} I _ {j} + \mu \sum_ {j = 1} ^ {n} H _ {j} - \gamma_ {f} D, \\ \frac {d R}{d t} = n \gamma_ {1} I _ {n} + n \gamma_ {1} H _ {n}. \\ \end{array}
$$

In the special case when $n = 1 ( \mathrm { i . e . , } P _ { 1 }$ is also an exponential distribution), the model (10.19) simplifies to 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D), \\ \frac {d E}{d t} = \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D) - \alpha E, \\ \frac {d I}{d t} = \alpha E - (\gamma_ {1} + \chi_ {1} + \mu) I, \tag {10.20} \\ \frac {d H}{d t} = \chi_ {1} I - (\gamma_ {1} + \mu) H, \\ \frac {d D}{d t} = \mu I + \mu H - \gamma_ {f} D, \\ \frac {d R}{d t} = \gamma_ {1} I + \gamma_ {1} H. \\ \end{array}
$$

Note that in model (10.20) the per-capita transition rates from I to R and from H to R are both equal to $\gamma _ { 1 }$ , from which we have $\gamma _ { I R } = \omega _ { H R }$ . This means that the constraints in (10.15) for model (10.12) cannot be satisfied. Thus, model I cannot be equivalent to the Legrand model. This suggests that Legrand et al. did not assume that the three transitions of IR, IH, and ID were described by independent exponential distributions and that the overall waiting time in the I compartment was the minimum of these three exponential waiting times. 

When $P _ { 1 } , L _ { 1 }$ , and $M _ { 1 }$ are exponential with the respective parameters $\gamma _ { 1 } , \chi _ { 1 }$ , and $\mu$ , because of the assumption in model I that the three transitions IR, IH, and ID are independent, the overall waiting time in the I compartment is also exponential with the rate constant $\gamma _ { 1 } + \chi _ { 1 } + \mu$ . From the definition of these parameters, we can link them to the general parameters (i.e., independent of model assumptions) in Table 10.2. There might be multiple ways of making the connections. One example is the following: For example, 

$$
\frac {1}{\gamma_ {1}} = \frac {1}{\gamma_ {I R}} = \mathbb {E} [ T _ {P _ {1}} ], \quad f = \frac {\mu}{\gamma_ {1} + \mu}, \quad p = \frac {\chi_ {1}}{\gamma_ {1} + \chi_ {1} + \mu}, \tag {10.21}
$$

where $\gamma _ { I R } , \ f$ , and $p$ are parameters that are independent of models. From the relations in (10.21) we can express the rates $\gamma _ { 1 } , \chi _ { 1 }$ , and $\mu$ in terms of only $\gamma _ { I R }$ , $p ,$ , and $f \colon$ : 

$$
\gamma_ {1} = \gamma_ {I R}, \quad \chi_ {1} = \gamma_ {I R} \frac {p}{(1 - f) (1 - p)}, \quad \mu = \gamma_ {I R} \frac {f}{1 - f}. \tag {10.22}
$$

## Reproduction Numbers for Models (10.16), (10.19), and (10.20)

Based on the biological meaning of $\mathcal { R } _ { C }$ , we obtain the following expression for $\mathcal { R } _ { C 1 } ^ { \mathrm { g e n e r a l } }$ for model (10.16) under general stage distributions: 

$$
\begin{array}{l} \mathcal {R} _ {C 1} ^ {\text { general }} = \beta_ {I} \mathbb {E} \left(\min \left\{T _ {P _ {1}}, T _ {L _ {1}}, T _ {M _ {1}} \right\}\right) \\ + \beta_ {H} \left[ \mathbb {E} \left(\min \left\{T _ {P _ {1}}, T _ {M _ {1}} \right\}\right) - \mathbb {E} \left(\min \left\{T _ {P _ {1}}, T _ {L _ {1}}, T _ {M _ {1}} \right\}\right) \right] + \beta_ {D} \frac {1}{\gamma_ {f}} p _ {M}, \tag {10.23} \\ \end{array}
$$

where 

$$
\mathbb {E} \left(\min \left\{T _ {P _ {1}}, T _ {L _ {1}}, T _ {M _ {1}} \right\}\right) = \int_ {0} ^ {\infty} P _ {1} (t) L _ {1} (t) M _ {1} (t) d t
$$

represents the average time spent in the I compartment, and 

$$
\mathbb {E} \left(\min \left\{T _ {P _ {1}}, T _ {M _ {1}} \right\}\right) = \int_ {0} ^ {\infty} P _ {1} (t) M _ {1} (t) d t
$$

represents the average total time spent in the I and H compartments. 

For the model (10.19) with gamma distribution, 

$$
\begin{array}{l} \mathcal {R} _ {C 1} ^ {\mathrm{Gamma}} = \frac {\beta_ {I}}{\chi_ {1} + \mu} \left[ 1 - \left(\frac {n \gamma_ {1}}{n \gamma_ {1} + \chi_ {1} + \mu}\right) ^ {n} \right] \\ + \frac {\beta_ {H}}{\mu} \left[ \frac {\chi_ {1}}{\chi_ {1} + \mu} + \frac {\mu}{\chi_ {1} + \mu} \left(\frac {n \gamma_ {1}}{n \gamma_ {1} + \chi_ {1} + \mu}\right) ^ {n} - \left(\frac {n \gamma_ {1}}{n \gamma_ {1} + \mu}\right) ^ {n} \right] \\ + \frac {\beta_ {D}}{\gamma_ {f}} \left[ 1 - \left(\frac {n \gamma_ {1}}{n \gamma_ {1} + \mu}\right) ^ {n} \right]. \tag {10.24} \\ \end{array}
$$

For the model (10.20) with exponential distribution, 

$$
\begin{array}{l} \mathcal {R} _ {C 1} ^ {\text {Exp}} = \frac {\beta_ {I}}{\gamma_ {1} + \chi_ {1} + \mu} + \frac {\beta_ {H}}{\gamma_ {1} + \mu} \frac {\chi_ {1}}{\gamma_ {1} + \chi_ {1} + \mu} + \frac {\beta_ {D}}{\gamma_ {f}} \frac {\mu}{\gamma_ {1} + \mu} \tag {10.25} \\ = \frac {\beta_ {I}}{\gamma_ {1} + \chi_ {1} + \mu} + \frac {\beta_ {H} p}{\gamma_ {1} + \mu} + \frac {\beta_ {D} f}{\gamma_ {f}}. \\ \end{array}
$$

Next, consider different assumptions on the transition processes. In model I, the three transitions IR, IH, and ID are assumed to be independent, in which case the three transitions “compete” for individuals in the I class. Another scenario is to consider only two independent transitions, one being hospitalization and the other combining recovery and death for those who are not hospitalized. In this case, we have two survival probability functions: 

• $P _ { 2 } ( s )$ : Probability of still being infectious and alive s time units after onset (governing all four transitions IR, ID, HR, and HD). 

• $L _ { 2 } ( s )$ : Probability of not being hospitalized s time units after onset (governing the IH transition). 

Assume that, for those who exit I without being hospitalized, a fixed fraction $1 - f$ (or f ) will recover (or die) an assumption of Legrand model. Assume also that individuals in I and H classes have the same probability of death $( f )$ , also as assumed in the Legrand model. The transition diagram is depicted in Fig. 10.11a. 


(a) Arbitrary distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/e4fceb95d7d709a6d7cc9f5f967e61c1b23b454f282f63402c83d1e8e16de756.jpg)



(b) Gamma distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/f1ab60b8258e8a7fe758adfa49c34114a360a3431cb003732e2aa5bcad5bd780.jpg)



Fig. 10.11 A transition diagram for model II when $T _ { P _ { 2 } }$ and $T _ { L _ { 2 } }$ are arbitrary distributions (a) and when they are gamma or exponential (b). In (a), the recovery/death (red) and hospitalization (green) transitions are governed by the survival functions $P _ { 2 }$ and $L _ { 2 }$ . In (b), the recovery/death (red) and hospitalization (green) transitions are indicated by the same colors as in (a)


Model II has the form 

$$
\frac {d S (t)}{d t} = - \lambda (t) S (t),
$$

$$
\frac {d E (t)}{d t} = \lambda (t) S (t) - \alpha E (t),
$$

$$
I (t) = \int_ {0} ^ {t} \alpha E (s) P _ {2} (t - s) L _ {2} (t - s) d s + I (0) P _ {2} (t) L _ {2} (t),
$$

$$
H (t) = \int_ {0} ^ {t} \alpha E (s) P _ {2} (t - s) \left[ 1 - L _ {2} (t - s) \right] + I (0) P _ {2} (t) \left[ 1 - L _ {2} (t) \right],
$$

$$
{ D ( t ) } { = f \int _ { 0 } ^ { t } \left[ \int _ { 0 } ^ { \tau } \alpha E ( s ) g _ { P _ { 2 } } ( \tau - s ) d s + I ( 0 ) g _ { P _ { 2 } } ( \tau ) \right] e ^ { - \gamma _ { f } ( t - \tau ) } d \tau , }
$$

$$
R (t) = (1 - f) \int_ {0} ^ {t} \left[ \int_ {0} ^ {\tau} \alpha E (s) g _ {P _ {2}} (\tau - s) d s + I (0) g _ {P _ {2}} (\tau) \right] d \tau . \tag {10.26}
$$

The function λ(t) is the same as in model I and given in (10.17). We can reduce the integral equations in (10.26) to the ODEs given below: 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S \left(\beta_ {I} \sum_ {j = 1} ^ {n} I _ {j} + \beta_ {H} \sum_ {j = 1} ^ {n} H _ {j} + \beta_ {D} D\right), \\ \frac {d E}{d t} = \frac {1}{N} S \left(\beta_ {I} \sum_ {j = 1} ^ {n} I _ {j} + \beta_ {H} \sum_ {j = 1} ^ {n} H _ {j} + \beta_ {D} D\right) - \alpha E, \\ \frac {d I _ {1}}{d t} = \alpha E - (n \gamma_ {2} + \chi_ {2}) I _ {1}, \\ \frac {d I _ {j}}{d t} = n \gamma_ {2} I _ {j - 1} (t) - (n \gamma_ {2} + \chi_ {2}) I _ {j}, \quad \text { for } j = 2, \dots n, \tag {10.27} \\ \frac {d H _ {1}}{d t} = \chi_ {2} I _ {1} - n \gamma_ {2} H _ {1}, \\ \frac {d H _ {j}}{d t} = \chi_ {2} I _ {j} + n \gamma_ {2} H _ {j - 1} - n \gamma_ {2} H _ {j}, \quad \text { for } j = 2, \dots n, \\ \frac {d D}{d t} = f n \gamma_ {2} I _ {n} + f n \gamma_ {2} H _ {n} - \gamma_ {f} D, \\ \frac {d R}{d t} = (1 - f) n \gamma_ {2} I _ {n} + (1 - f) n \gamma_ {2} H _ {n}. \\ \end{array}
$$

The reproduction numbers $\mathcal { R } _ { C 2 }$ for model II also have different forms than those for model I. In the case of general distributions, 

$$
\begin{array}{l} \mathscr {R} _ {C 2} ^ {\text { general }} = \beta_ {I} \mathbb {E} \left(\min \left\{T _ {P _ {2}}, T _ {L _ {2}} \right\}\right) + \beta_ {H} \left[ \mathbb {E} \left(T _ {P _ {2}}\right) - \mathbb {E} \left(\min \left\{T _ {P _ {2}}, T _ {L _ {2}} \right\}\right) \right] \\ + \beta_ {D} \frac {1}{\gamma_ {f}} \left[ f (1 - p _ {H 2}) + f p _ {H 2} \right]. \\ \end{array}
$$

When $P _ { 2 }$ is a gamma distribution, 

$$
\begin{array}{l} \mathcal {R} _ {C 2} ^ {\text { Gamma }} = \beta_ {I} \frac {1}{\chi_ {2}} \left[ 1 - \left(\frac {n \gamma_ {2}}{n \gamma_ {2} + \chi_ {2}}\right) ^ {n} \right] \\ \left. + \beta_ {H} \left[ \frac {1}{\gamma_ {2}} - \frac {1}{\chi_ {2}} \left[ 1 - \left(\frac {n \gamma_ {2}}{n \gamma_ {2} + \chi_ {2}}\right) ^ {n} \right] \right] + \beta_ {D} \frac {f}{\gamma_ {f}}. \right. \tag {10.29} \\ \end{array}
$$

When $P _ { 2 }$ is exponential, the model (10.27) becomes 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D), \\ \frac {d E}{d t} = \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D) - \alpha E, \\ \frac {d I}{d t} = \alpha E - \left(\gamma_ {2} + \chi_ {2}\right) I, \tag {10.30} \\ \end{array}
$$

$$
\frac {d H}{d t} = \chi_ {2} I - \gamma_ {2} H,
$$

$$
\frac {d D}{d t} = f \gamma_ {2} I + f \gamma_ {2} H (t) - \gamma_ {f} D (t),
$$

$$
\frac {d R}{d t} = (1 - f) \gamma_ {2} I + (1 - f) \gamma_ {2} H.
$$

The formula for $\mathcal { R } _ { C 2 }$ in (10.28) simplifies to 

$$
\mathcal {R} _ {C 2} ^ {\text { Exp }} = \frac {\beta_ {I}}{\gamma_ {2} + \chi_ {2}} + \frac {p \beta_ {H}}{\gamma_ {2}} + \frac {f \beta_ {D}}{\gamma_ {f}}. \tag {10.31}
$$

As in model I, there can be multiple choices for linking the parameter $\gamma _ { 2 }$ to the common parameters. For example, 

$$
\frac {1}{\gamma_ {2}} = (1 - f) \frac {1}{\gamma_ {I R}} + f \frac {1}{\gamma_ {I D}},
$$

where $1 / \gamma _ { I D }$ denotes the average time from onset to death. Also, $p = \chi _ { 2 } / ( \gamma _ { 2 } + \chi _ { 2 } )$ . Thus, 

$$
\gamma_ {2} = \frac {1}{(1 - f) / \gamma_ {I R} + f / \gamma_ {I D}}, \quad \chi_ {2} = \frac {\gamma_ {2} p}{1 - p}. \tag {10.32}
$$

Another set of possible assumptions that are different from models I and II is to consider two independent distributions for the waiting times in I and H compartments, denoted by $T _ { P _ { 3 } }$ and $T _ { Q _ { 3 } }$ , with survival functions 

• $P _ { 3 } ( s )$ : Probability of remaining in the I class s units of time since onset (governing the transitions IR, IH, and ID). 

$Q _ { 3 } ( s )$ : Probability remaining in the H class s units of time after being hospitalized (governing the HR and HD transitions). 

Let $p _ { 3 } ( t ) = - P _ { 3 } ^ { \prime } ( t )$ and $q _ { 3 } ( t ) = - Q _ { 3 } ^ { \prime } ( t )$ denote the probability density functions. $P _ { 3 }$ describes the waiting time for the combined transitions, IR, IH, and ID. Assume that among the individuals exiting the I class, fractions of $p , ( 1 - p ) f , ( 1 - p ) ( 1 - f )$ will be hospitalized, non-hospitalized and dead, and non-hospitalized and recovered, respectively $( 0 \leq p , f < 1 )$ . $Q _ { 3 }$ describes the waiting time for the combined two transitions, HR and HD, and we assume that fractions 1 f and f of the hospitalized individuals recover or die, respectively. A transition diagram is shown in Fig. 10.12. 


(a) Arbitrary distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/b76361e4852eab000de26f57a4fcd9f5b29a2fd496bfa0e8149be94877caee49.jpg)



(b) Gamma distributions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/c3dcb9615cd0828a6ac79544926f653e7e3f88aaa6ba83d6decd4abf0d8daa5f.jpg)



Fig. 10.12 A transition diagram for model III when $T _ { P _ { 3 } }$ and $T _ { Q _ { 3 } }$ are arbitrary distributions (a) and when they are gamma or exponential (b)


In this case, model III consists of the following system of integro-differential equations: 

$$
S ^ {\prime} (t) = - \lambda (t) S (t), \qquad E ^ {\prime} (t) = \lambda (t) S (t) - \alpha E (t),
$$

$$
I (t) = \int_ {0} ^ {t} \alpha E (s) P _ {3} (t - s) d s + I (0) P _ {3} (t),
$$

$$
H (t) = \int_ {0} ^ {t} p \left[ \int_ {0} ^ {s} \alpha E (\tau) p _ {3} (s - \tau) d \tau + I (0) p _ {3} (s) \right] Q _ {3} (t - s) d s
$$

$$
D ^ {\prime} (t) = (1 - p) f \left[ \int_ {0} ^ {t} \alpha E (s) p _ {3} (t - s) d s + I (0) p _ {3} (t) \right]
$$

$$
+ f \int_ {0} ^ {t} \left[ p \int_ {0} ^ {s} \alpha E (\tau) p _ {3} (s - \tau) d \tau + p I (0) p _ {3} (s) \right] q _ {3} (t - s) d s - \gamma_ {f} D (t),
$$

$$
R ^ {\prime} (t) = (1 - p) (1 - f) \left[ \int_ {0} ^ {t} \alpha E (s) p _ {3} (t - s)) d s + I (0) p _ {3} (t) \right]
$$

$$
+ (1 - f) \int_ {0} ^ {t} \left[ p \int_ {0} ^ {s} \alpha E (\tau) p _ {3} (s - \tau) d \tau + p I (0) p _ {3} (s) \right] q _ {3} (t - s) d s. \tag {10.33}
$$

Note that it is easier in this case to write equations for $D ^ { \prime }$ and $H ^ { \prime }$ than for $D$ and H . 

Assume that $T _ { P _ { 3 } }$ and $T _ { Q _ { 3 } }$ follow gamma distributions with shape parameters n and m respectively, i.e., the survival functions are given by 

$$
P _ {3} (t) = G _ {n \gamma_ {3}} ^ {n} (t) = \sum_ {j = 1} ^ {n} \frac {\left[ n \gamma_ {3} (t - s) \right] ^ {j - 1} e ^ {- n \gamma_ {3} (t - s)}}{(j - 1) !}, \tag {10.34}
$$

$$
Q _ {3} (t) = G _ {m \omega_ {3}} ^ {m} (t) = \sum_ {j = 1} ^ {m} \frac {[ m \omega_ {3} (t - s) ] ^ {j - 1} e ^ {- m \omega_ {3} (t - s)}}{(j - 1) !}.
$$

Then, the system (10.33) reduces to the following system of ODEs: 

$$
\begin{array}{l} \frac {d S}{d t} = - \frac {1}{N} S \left(\beta_ {I} \sum_ {j = 1} ^ {n} I _ {j} + \beta_ {H} \sum_ {j = 1} ^ {m} H _ {j} + \beta_ {D} D\right), \\ \frac {d E}{d t} = \frac {1}{N} S \left(\beta_ {I} \sum_ {j = 1} ^ {n} I _ {j} + \beta_ {H} \sum_ {j = 1} ^ {m} H _ {j} + \beta_ {D} D\right) - \alpha E, \\ \frac {d I _ {1}}{d t} = \alpha E - n \gamma_ {3} I _ {1}, \\ \frac {d I _ {k}}{d t} = n \gamma_ {3} I _ {k - 1} - n \gamma_ {3} I _ {k}, \quad k = 2, \dots , n \tag {10.35} \\ \frac {d H _ {1}}{d t} = p n \gamma_ {3} I _ {n} - m \omega_ {3} H _ {1}, \\ \frac {d H _ {k}}{d t} = m \omega_ {3} H _ {k - 1} - m \omega_ {3} H _ {k}, \quad k = 2, \dots , m \\ \frac {d D}{d t} = (1 - p) f n \gamma_ {3} I _ {n} + f m \omega_ {3} H _ {n} - \gamma_ {f} D, \\ \frac {d R}{d t} = (1 - p) (1 - f) n \gamma_ {3} I _ {n} + (1 - f) m \omega_ {3} H _ {m}. \\ \end{array}
$$

A transition diagram under the gamma distributions for $T _ { P _ { 3 } }$ and $T _ { Q _ { 3 } }$ , for the ODE model (10.35) is shown in Fig. 10.12b. We observe a major difference between this figure and Fig. 10.10b or Fig. 10.11b in the recovery rates from $I _ { n }$ and $H _ { m }$ , which have different values here. A similar difference exists in the transition rates from $I _ { j }$ to $I _ { j + 1 } \left( j = 1 , \cdot \cdot \cdot , n - 1 \right)$ ) and from $H _ { j }$ to $H _ { j + 1 } \left( j = 1 , \cdots , m - 1 \right)$ . 

In the special case when $n = m = 1 ( { \mathrm { i . e . , } } P _ { 3 }$ and $Q _ { 3 }$ are exponential), the ODE model (10.35) simplifies to 

$$
\frac {d S}{d t} = - \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D),
$$

$$
\frac {d E}{d t} = \frac {1}{N} S (\beta_ {I} I + \beta_ {H} H + \beta_ {D} D) - \alpha E,
$$

$$
\frac {d I}{d t} = \alpha E - \gamma_ {3} I, \tag {10.36}
$$

$$
\frac {d H}{d t} = p \gamma_ {3} I - \omega_ {3} H,
$$

$$
\frac {d D}{d t} = (1 - p) f \gamma_ {3} I + f \omega_ {3} H - \gamma_ {f} D,
$$

$$
\frac {d R}{d t} = (1 - p) (1 - f) \gamma_ {3} I + (1 - f) \omega_ {3} H.
$$

Notice that, if we ignore the last term in the R equation in the equivalent Legrand model (10.12) (this term indicates that the R class includes those buried), the model (10.36) is identical to the model (10.12) when the subscript $\mathbf { \ddot { \delta } } ^ { 6 } 3 ^ { \mathit { * } }$ is dropped; that is, when $\gamma _ { 3 }$ and ω3 are defined as follows: 

$$
\frac {1}{\gamma_ {3}} = \frac {p}{\gamma_ {I H}} + \frac {(1 - p) f}{\gamma_ {I D}} + \frac {(1 - p) (1 - f)}{\gamma_ {I R}}, \tag {10.37}
$$

$$
\frac {1}{\omega_ {3}} = \frac {f}{\omega_ {H D}} + \frac {1 - f}{\omega_ {H R}},
$$

together with the constraints 

$$
\frac {1}{\gamma_ {I R}} = \frac {1}{\gamma_ {I H}} + \frac {1}{\omega_ {H R}}, \quad \frac {1}{\gamma_ {I D}} = \frac {1}{\gamma_ {I H}} + \frac {1}{\omega_ {H D}}. \tag {10.38}
$$

The reproduction number $\mathcal { R } _ { C 3 }$ for model III can be derived using the same approach as for models I and II. Because the derivations are similar, we omit the details, and present the formula only for the special case when $P _ { 3 }$ and $Q _ { 3 }$ are both exponential, i.e., $P _ { 3 } = G _ { \gamma _ { 3 } } ^ { 1 }$ and $Q _ { 3 } = G _ { \omega _ { 3 } } ^ { 1 }$ (see (10.34)). In this case, the formula for $\mathcal { R } _ { C 3 }$ for the ODE model (10.35) is independent of m and $n _ { : }$ , and is given by 

$$
\mathcal {R} _ {C 3} ^ {\text { Exp }} = \frac {\beta_ {I}}{\gamma_ {3}} + p \frac {\beta_ {H}}{\omega_ {3}} + f \frac {\beta_ {D}}{\gamma_ {f}}, \tag {10.39}
$$

where $\gamma _ { 3 }$ and $\omega _ { 3 }$ are given in (10.37). 

Note that the main difference between models I, II, and III lies in the assumptions on the underlying biological processes, particularly the sojourn distributions for various stage transitions, which are described by functions $L ( t ) , P ( t ) , M ( t )$ , and $Q ( t )$ . The fact that the Legrand model can only be obtained from model III, not from models I and II, identifies the specific assumptions made in the Legrand model in terms of these sojourn distributions. For example, our analyses suggest the following assumptions made in the Legrand model: 

(a) The overall sojourn in the I stage is assumed to be exponentially distributed with the average duration $1 / \gamma$ , which is further assumed to be the specific weighted average of $1 / \gamma _ { I R } , 1 / \gamma _ { I H }$ , and $1 / \gamma _ { I D }$ as given in (10.13), where $1 / \gamma _ { I R }$ , $1 / \gamma _ { I H }$ , and $1 / \gamma _ { I D }$ are the respective average stage duration of the IR, IH, and ID transitions. However, from model I we see that if the IR, IH, and ID transitions follow independent exponential distributions with parameters $\gamma _ { I R } , \gamma _ { I H }$ , and $\gamma _ { I D }$ , then the overall sojourn in the I stage is exponentially distributed with the parameter $\gamma = \gamma _ { I R } + \gamma _ { I H } + \gamma _ { I D }$ with the average duration 

$$
\frac {1}{\gamma} = \frac {1}{\gamma_ {I R} + \gamma_ {I H} + \gamma_ {I D}},
$$

which differs from (10.13). 

(b) The distributions for the I and H stages are independent (see $P _ { 3 } ( t )$ and $Q _ { 3 } ( t ) )$ . This implies that the average time spent in the H stage before recovery or death $( 1 / \omega _ { 3 } )$ does not depend on the average time spent in the I stage before recovery or being hospitalized or dying $( 1 / \gamma _ { 3 } )$ . Under this assumption, the time spent in H before recovery $( 1 / \gamma _ { H R } )$ does not take into consideration the time spent in I before being hospitalized $( 1 / \gamma _ { I H } )$ . Because of this independence, the model needs to impose a constraint to link these two durations (see (10.10)). 

## Difference in Evaluations by Models I, II, and III

Among the three ODE models (10.20), (10.30), and (10.36), which are reduced from the models I, II, and III with general distributions, the only model that can match the Legrand model is (10.36), for which the assumptions include: (i) the waiting times of the three transitions IR, IH, and ID are not independent and (ii) the overall waiting time in the I compartment is a weighted average of the mean durations $( 1 / \gamma _ { I R } , 1 / \gamma _ { I H }$ , and $1 / \gamma _ { I D } )$ for the three transitions with weights determined by the probabilities of hospitalization $p$ and death $f ,$ as described in (10.14). By examining the ODE model (10.20), we found that, if the waiting times of the three transitions IR, IH, and ID are independent and exponentially distributed (with parameters $\gamma _ { 1 } , \chi _ { 1 }$ , and $\mu )$ , then the overall waiting time in I should be an exponential distribution with the parameter $\gamma _ { 1 } + \chi _ { 1 } + \mu$ . That is, the average overall waiting time should be $1 / ( \gamma _ { 1 } + \chi _ { 1 } + \mu )$ , not a weighted average such as the ones in (10.14). 

Formulas for the control reproduction numbers $\mathcal { R } _ { C i } \left( i = 1 , 2 , 3 \right)$ for the three general models provide a means of examining the influence of assumptions on model outcomes. For example, consider the three control reproduction numbers $\mathcal { R } _ { C i } \left( i = 1 , 2 , 3 \right)$ , which are given in (10.25), (10.31), and (10.39) corresponding to the three ODE models (10.20), (10.30), and (10.36), respectively. In the absence of hospitalization $( \mathrm { i } . \mathrm { e } . , \ p \ = \ 0 )$ , these $\mathcal { R } _ { C i }$ reduce to the corresponding basic reproduction numbers $\mathcal { R } _ { 0 i } ~ ( i ~ = ~ 1 , 2 , 3 )$ . Figure 10.13 illustrates the difference between the basic and control reproduction numbers of the three models for a given set of parameter values, mostly based on the Ebola outbreak in West Africa in 2014. We fix all parameters except $\beta _ { i } ~ ( i = I , H , D )$ and $f .$ . Then, for a fixed value of $f _ { 0 } = 0 . 7$ , we estimate $\beta _ { i } ~ ( i \ : = \ : I , H , D )$ from a given value of $\mathcal { R } _ { 0 }$ (assumed to be the same for all three models). If we further assume that $\beta _ { H } = \beta _ { D } = 0 . 3 \beta _ { I }$ , then we can get a unique value for $\beta _ { I }$ for fixed $\mathcal { R } _ { 0 }$ . Once we have the value of $\beta _ { i }$ , we have three functions of $f , \mathcal { R } _ { 0 i } ( f ) ( i = 1 , 2 , 3 )$ . For Fig. 10.13a, we used the common value of $\mathcal { R } _ { 0 } ( f _ { 0 } ) = 1 . 8$ . The three curves are for model I (the thin solid curve), model II (the dashed curve), and model III ( the think curve). For the selected set of parameter values, the $\mathcal { R } _ { 0 }$ curves for models II and III overlap. The decreasing property of these curves represents the fact that higher disease mortality decreases $\mathcal { R } _ { 0 i } ( f )$ , which is expected because the assumption that $\beta _ { D } ~ < ~ \beta _ { I }$ . An interesting observation is that the dependence of the basic reproduction number on disease death $f$ is more dramatic in model I than models II and III, particularly for smaller $f$ values. For smaller values of $f _ { \cdot }$ , model I tends to generate the highest $\mathcal { R } _ { 0 }$ , while for larger $f$ values, model III provides higher $\mathcal { R } _ { 0 }$ . Other parameter values used are (time in days): $1 / \gamma _ { I R } = 1 8 , 1 / \gamma _ { f } = 2 , 1 / \alpha = 9$ . Parameters such as $\mu$ , χi $( i = 1 , 2 )$ are calculated based on their relationships with the common parameters. For model III, additional parameter values include $1 / \gamma _ { I H } = 7 , 1 / \gamma _ { I D } = 8$ , which can be used to determine $\gamma _ { 3 }$ and $\omega _ { 3 }$ from (10.37). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/de94567aa67126dc3cf41e201e308f17591eaa3ac691e87b22918b9870ebcbd0.jpg)



Fig. 10.13 Plots of the basic reproduction numbers (a) and control reproduction numbers (b) for the three models. In $( \mathbf { a } ) , \mathcal { R } _ { 0 }$ is plotted as a function of f for model I (thin solid), model II (dashed), and model III (thick solid). The parameter values are chosen such that all three $\mathcal { R } _ { 0 i }$ have the same value 1.8 at $f = 0 . 7$ (note that $p = 0 )$ . In (b), $\mathcal { R } _ { C i }$ is plotted as a function of $p$ and $f$ for models I—III. Other parameter values are given in the text


When control is considered $( p \ > \ 0 )$ , the dependence of $\mathcal { R } _ { C i }$ on $p$ and $f$ is illustrated in Fig. 10.13b. We observe that, for the given set of parameter values, model I (the darker surface with mesh) generates higher $\mathcal { R } _ { C }$ values than models 

II (the lighter surface) and III (the darker surface with no mesh) for smaller $p$ and $f ,$ , while model III provides the higher values for larger values of $p$ and/or $f .$ . The differences in $\mathcal { R } _ { 0 }$ and $\mathcal { R } _ { C }$ between the three models indicate that model predictions about and evaluations of the effectiveness of control measures could be very different as well. Figure 10.14 shows numerical simulation results of the three ODE models (10.20), (10.30), and (10.36), which are reduced from the models I, II, and III, and presented in columns 1, 2, and 3, respectively. The A, B, and C panels correspond to three sets of $( p , f )$ values: $( p , f ) = ( 0 , 0 . 7 )$ (top panel), $( p , f ) = ( 0 . 3 , 0 . 5 )$ (middle panel), and $( p , f ) = ( 0 . 4 , 0 . 7 )$ (bottom panel). The top panel (A1–A3) is for the case of no hospitalization $( p = 0 )$ . We observe that models II and III generate similar epidemic curves (fractions of infected individuals $( E + I + H ) / N )$ , including peak sizes, times to peak, duration of epidemic (which lead to similar epidemic final sizes). Model I shows a higher peak size and an earlier time to peak. The middle panel (B1–B3) is for the case when the hospitalization is $p = 0 . 3$ , and we observe that model I has the highest peak size while model II has the lowest. This is in agreement with the relative magnitudes of the control reproduction numbers $\mathcal { R } _ { C i }$ , as the point $( p , f ) = ( 0 . 3 , 0 . 5 )$ lies in the region where $\mathcal { R } _ { C 1 } > \mathcal { R } _ { C 3 } > \mathcal { R } _ { C 2 }$ (see Fig. 10.13). For the bottom panel (C1–C3), because the point $( p , f ) = ( 0 . 4 , 0 . 7 )$ lies in the region where $\mathcal { R } _ { C 3 } > \mathcal { R } _ { C 1 } > \mathcal { R } _ { C 2 }$ , we observe that model III generates the highest peak size while model II again has the lowest. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-15/895bcc69-ea42-430b-9060-8688c7208019/850f85dc56cd43a1190b5b22f6e4345d238a8b021977a8e96d9c821b0956bc54.jpg)



Fig. 10.14 Numerical simulations of the three ODE models (10.20), (10.30), and (10.36), which are reduced from the models I, II, and III, respectively. The fractions of infected individuals $( E +$ $I + H ) / N$ and death $( D / N )$ are plotted over a time period of 1000 days. Three sets of $( p , f )$ values are used: $( p , f ) = ( 0 , 0 . 7 )$ (top row), $( p , f ) = ( 0 . 3 , 0 . 5 )$ (middle row), and $( p , f ) = ( 0 . 4 , 0 . 7 )$ (bottom row). Parameter values are the same as in Fig. 10.13


## 10.5 Slower than Exponential Growth

It has been standard practice in analyzing disease outbreaks to formulate a dynamical system as a deterministic compartmental model, then to use observed early outbreak data to fit parameters to the model, and finally to analyze the dynamical system to predict the course of the disease outbreak and to compare the effects of different management strategies. In general, such models predict an initial stochastic stage (while the number of infectious individuals is small), followed by a period of exponential growth. Measurement of this early exponential growth rate is an essential step in estimating contact rate parameters for the model. A thorough description of the analysis of compartmental models may be found in [21]. 

However, instances have been noted where the growth rate of an epidemic is clearly slower or faster than exponential. For example, [13], the 2013–2015 epidemic in West Africa has been viewed as a composition of locally asynchronous outbreaks at local levels displaying sub-exponential growth patterns during several generations. Specifically, if I (t) is the number of infectious individuals at time t, a graph of log I (t ) against t is a straight line if the growth rate is exponential, and for some disease outbreaks this has not been true. One of the earliest examples [16] concerns the growth of HIV/AIDS in the USA, and a possible explanation might be the mixture of short-term and long-term contacts. This could be a factor in other diseases where there are repeated contacts in family groups and less frequent contacts outside the home. 

During the 2013–2015 Ebola epidemic in West Africa, in the country of Liberia, which has a total population size of 4,300,000, there were 10,678 suspected, probable, and confirmed cases of disease as of September 3, 2015 [32]. An SIR model for the whole country would have predicted more than 1,500,000 cases. This discrepancy cannot be explained by the assumption of control measures. In order to make plausible predictions of the effects of large-scale epidemics, it is necessary to use a phenomenological model based on observations in the early stages of the epidemic rather than to try to fit a mechanistic model. Some phenomenological models that have been used to good effect have been the generalized Richards model, the “generalized growth model,” and the IDEA model. 

## 10.5.1 The Generalized Richards Model

Perhaps the first attempt to fit early epidemic data is the Richards model [34]. This is a modification of the logistic population growth model, described in [22] 

$$
I ^ {\prime} (t) = r I \left[ 1 - \left(\frac {I}{K}\right) ^ {a} \right].
$$

In this model, I represents the cumulative number of infected individuals at time t, K is the carrying capacity or total case number of the outbreak, r is the per-capita growth rate of the infected population, and a is an exponent of deviation from the standard logistic model. The basic premise of the model is that the incidence curve has a single turning point $t _ { m }$ . The analytic solution of the model is 

$$
I (t) = \frac {K}{\left[ 1 + e ^ {- r (t - t _ {m})} \right] ^ {1 / a}}.
$$

## 10.5.2 The Generalized Growth Model

It has been pointed out [12–15, 39] that a so-called general growth model of the form 

$$
C ^ {\prime} (t) = r C (t) ^ {p},
$$

where $C ( t )$ is the number of disease cases occurring up to time t, and $p , 0 \leq p \leq 1$ , is a “deceleration of growth” parameter, has exponential solutions if $p \ = \ 1$ but solutions with polynomial growth if $0 ~ < ~ p ~ < ~ 1$ . This is not and does not claim to be a mechanistic epidemic model, but it has proved to be remarkably successful for fitting epidemic growth and predicting the course of an epidemic. For example, it has provided much better estimates of epidemic final size than the exponential growth assumption for the Ebola epidemic of 2014. However, it assumes a sustained increase in the number of disease cases and cannot capture the later decline in the number of new infections. Such phenomenological models are particularly likely to be suitable in situations where it is difficult to construct a mechanistic approach because of multiple transmission routes, interactions of spatial influences, or other aspects of uncertainty. 

## 10.5.3 The IDEA Model

Another direction that would be well worth further exploration would be contact rates decreasing in time because of individual behavioral changes in response to a disease outbreak. A contact rate which is a decreasing function of time can certainly lead to early epidemic growth slower than exponential. A step in this direction has been initiated in a discrete model [19] that has been applied to an Ebola model in [20]. 

The IDEA model [19, 20, 37] is a discrete model that assumes damping of recruitment of new infections because of spontaneous or planned behavioral changes. It is assumed that the time interval in the model is equal to the duration of infection, so that the number of infective individuals at each stage is equal to the number of new infections. The resulting model is 

$$
I _ {t} = \left[ \frac {\mathcal {R} _ {0}}{(1 + d) ^ {t}} \right] ^ {t}.
$$

Here, d is a discount factor describing the recruitment damping. 

A variety of epidemiological situations in which slower than exponential epidemic growth might be possible have been described. Ultimately, the challenge for epidemiological modeling would be to determine which of these situations allow slower than exponential growth by deriving and analyzing mechanistic models to describe each of these situations. This is an important new direction for epidemic modeling. Some suggestions include metapopulation models with spatial structure including cross-coupling and mobility, clustering in spatial structure, dynamic contacts, agent-based models with differences in infectivity and susceptibility of individuals, and reactive behavioral changes early in a disease outbreak. It may well turn out that slower than exponential growth may be ruled out in some cases but is possible in others. For example, heterogeneity of mixing in a single location can be modeled by an autonomous dynamical system and the linearization theory of dynamical systems at an equilibrium shows that early epidemic growth for such a system is always exponential. On the other hand, metapopulation models may well allow many varieties of behaviors. 

An important broader question is the matter of what information influences the behavior of people during a disease outbreak, and how to include this in a model. A recent book [28] describes some studies in this direction. 

## 10.5.4 Models with Decreasing Contact Rates

There is anecdotal evidence that in an outbreak of a disease considered very serious there is early action to decrease the risk of being infected by decreasing contact rates. This early action may begin even before government efforts to combat the disease. 

Since Ebola is a very serious disease, with case fatality rates of 70% or more, it is reasonable to assume a decreasing contact rate. This has been suggested in [1, 2]. In [1], an SI R model is assumed with a contact rate that decreases exponentially in time, and observations are used to estimate the rate of decrease. In [6], such a model is used to estimate the final size of an Ebola epidemic over a country using early growth rate data and this yields early final size estimates that are much closer to the eventual outbreak data than estimates assuming a constant contact rate. For example, for the 2014-5 Ebola outbreak in Guinea, a country with a total population size of 10,589,000 the assumption of a constant contact rate corresponding to $\mathcal { R } _ { 0 } = 1 . 5$ led to an estimate of more than 9,000,000 cases over the whole country, while a decreasing contact rate assumption led to an estimate of about 27,000 disease cases. The actual number of Ebola cases in Guinea in this outbreak was fewer than 4,000. The models described here are for an entire country and are not intended to replace more detailed models needed for disease management describing the progress of the disease in individual villages. 

## 10.6 Project: Slower than Exponential Growth

We have suggested in Sect. 10.5.4 that slower than exponential growth of the number of infectious individuals may be explained by assuming a time-dependent decrease in the contact rate. The question of what modeling assumptions can lead to slower than exponential growth is a complex one [13]. Another possible explanation might be a decrease in contact rate depending on the current state of the system. If the model system remains autonomous, growth will remain exponential so long as the contact rate is a differentiable function of I so that the theory of linearization at a disease-free equilibrium remains valid. However, if the rate of new infections is $\begin{array} { r } { a \frac { S } { N } f ( I ) } \end{array}$ with f (I ) not differentiable at $I = 0$ , different behavior is possible. 

Consider an SI R model in which the equation for I is 

$$
I ^ {\prime} = \beta \frac {S}{N} I ^ {\alpha} - \gamma I,
$$

with $0 < \alpha < 1$ . Initially, so long as $S \approx N$ , we approximate this equation by 

$$
I ^ {\prime} = \beta I ^ {\alpha} - \gamma I. \tag {10.40}
$$

Question 7 Show that the basic reproduction number is 

$$
\mathcal {R} _ {0} = \frac {\beta}{\gamma}.
$$

Question 8 Make the change of dependent variable u log I and derive the differential equation satisfied by u. 

Exponential growth of I corresponds to linear growth of u. It is clear that if $\alpha = 1$ , u does grow linearly. 

Question 9 Determine whether the rate of growth of u is less than linear for $\alpha < 1$ , either by explicit solution of the equation for u or by simulations with $\beta > \gamma$ (so that $\mathcal { R } _ { 0 } > 1 )$ ) and a range of values of α. 

## 10.7 Project: Movement Restrictions as a Control Strategy

Cordons Sanitaire or “sanitary barriers” are designed to prevent the movement, in and out, of people and goods from particular areas. The effectiveness of the use of cordons sanitaire has been controversial. This policy was last implemented nearly 100 years ago [9]. In desperate attempts to control disease, Ebola-stricken countries enforced public health officials decided to use this medieval control strategy in the EVD hot-zone, that is, the region of confluence of Guinea, Liberia, and Sierra Leone [30]. In this project, a framework that allows, in the simplest possible setting, the possibility of assessing the potential impact of the use of a Cordon Sanitaire during a disease outbreak is introduced. We consider an SI R epidemic model in two patches, one of which has a significantly larger contact rate, with short-term travel between the two patches. The total population resident in each patch is constant. We follow a Lagrangian perspective, that is, we keep track of each individual’s place of residence at all times [4, 17]. This is in contrast to an Eulerian perspective, which describes migration between patches. 

Thus we consider two patches, with total resident population sizes $N _ { 1 }$ and $N _ { 2 }$ , respectively, each population being divided into susceptibles, infectives, and removed members. $S _ { i }$ and $I _ { i }$ denote the number of susceptibles and infectives, respectively, who are residents in Patch i, regardless of the patch in which they are present. 

Residents of Patch i spend a fraction $p _ { i j }$ of their time in Patch j , with 

$$
p _ {1 1} + p _ {1 2} = 1, \quad p _ {2 1} + p _ {2 2} = 1.
$$

The contact rate in Patch i is $\beta _ { i }$ , and we assume $\beta _ { 1 } > \beta _ { 2 }$ . 

Each of the $p _ { 1 1 } S _ { 1 }$ susceptibles from Group 1 present in Patch 1 can be infected by infectives from Group 1 and from Group 2 present in Patch 1. Similarly, each of the $p _ { 1 2 } S _ { 1 }$ susceptibles present in Patch 2 can be infected by infectives from Group 1 and from Group 2 present in Patch 2. 

Question 1 Show that the model equations are 

$$
S _ {i} ^ {\prime} = - p _ {i 1} S _ {i} \left[ p _ {1 1} \frac {I _ {1}}{N _ {1}} + p _ {1 2} \frac {I _ {2}}{N _ {2}} \right] - p _ {i 2} S _ {i} \left[ p _ {2 1} \frac {I _ {1}}{N _ {1}} + p _ {2 2} \frac {I _ {2}}{N _ {2}} \right]
$$

$$
I _ {i} ^ {\prime} = p _ {i 1} S _ {i} \left[ p _ {1 1} \frac {I _ {1}}{N _ {1}} + p _ {2 1} \frac {I _ {2}}{N _ {2}} \right] + p _ {i 2} S _ {i} \left[ p _ {2 1} \frac {I _ {1}}{N _ {1}} + p _ {2 2} \frac {I _ {2}}{N _ {2}} \right] - \gamma I _ {i}, \quad i = 1, 2.
$$

Question 2 Use the next generation matrix [38] to calculate the basic reproduction number. 

Question 3 Use the approach described in Chaps. 4 and 5 to determine the final size relations. 

Imposition of a Cordon Sanitaire amounts to replacing the fractions of normal travel between groups by 

$$
p _ {1 1} = p _ {2 2} = 1, \quad p _ {1 2} = p _ {2 1} = 0.
$$

Question 4 Compare the reproduction numbers and final sizes with and without a Cordon Sanitaire, using numerical simulations with various parameter value choices. 

The approach suggested here can be used with more detailed models for a specific disease, such as Ebola, in which transmission from one village to another through temporary visits is a factor [17]. 

## 10.8 Project: Effect of Early Detection

The following model for Ebola is considered in [10]: 

$$
\begin{array}{l} \frac {d S}{d t} = - \beta S \frac {I + l J}{N}, \\ \frac {d E _ {1}}{d t} = \beta S \frac {I + l J}{N} - k _ {1} E _ {1}, \\ \frac {d E _ {2}}{d t} = k _ {1} E _ {1} - k _ {2} E _ {2} - f _ {T} E _ {2}, \\ \frac {d I}{d t} = k _ {2} E _ {2} - (\alpha + \gamma) I, \tag {10.41} \\ \frac {d J}{d t} = \alpha I + f _ {T} E _ {2} - \gamma_ {r} J, \\ \frac {d R}{d t} = \gamma (1 - \delta) I + \gamma_ {r} (1 - \delta) J, \\ \frac {d D}{d t} = \gamma \delta I + \gamma_ {r} \delta J, \\ \end{array}
$$

where $N = S + E _ { 1 } + E _ { 2 } + I + J + R$ . The variables $E _ { 1 }$ and $E _ { 2 }$ denote the numbers of latent undetectable and detectable individuals, respectively, I is the number of infectious individuals, J is the number of isolated infective individuals, R and D are numbers of recovered and dead due to the disease. For the parameters, $\beta$ is the transmission rate, l is the relative transmissibility of isolated individuals, k is the rate of entering the detectable class, $k _ { 2 }$ is the rate of becoming infective, $f _ { T }$ is the rate of being diagnosed, α is the rate of isolation, $\gamma$ is the recovery rate, and $\gamma _ { r }$ is the rate at which individuals are removed from isolation after recovery or disease death. 

## References



1. Althaus, C.L. (2014) Estimating the reproduction number of Ebola Virus (EBOV) during the 2014 outbreak in West Africa, PLoS Currents: Edition 1. https://doi.org/10.1371/current. outbreaks.91afb5e0f279e7f29e7056095255b288. 





2. Barbarossa, M.V., A Denes, G. Kiss, Y. Nakata, G. Rost, & Z. Vizi (2015) Transmission dynamics and final epidemic size of Ebola virus disease dynamics with varying interventions, PLoS One 10(7): e0131398. https://doi.org/10.1371/journalpone.0131398. 





3. Bellan, S.E., J.R.C. Pulliam, J. Dushoff, and L.A. Meyers (2014) Ebola control: effect of asymptomatic infection and acquired immunity, The Lancet 384:1499–1500. 





4. Bichara, D., Y. Kang, C. Castillo-Chavez, R. Horan and C. Perringa (2015) SI S and SI R epidemic models under virtual dispersal, Bull. Math. Biol. 77: 2004–2034. 





5. Blower, S.M. and H. Dowlatabadi (1994) Sensitivity and uncertainty analysis of complex models of disease transmission: an HIV model, as an example. Int Stat Rev. 2: 229–243. 





6. Brauer, F. (2019) The final size of a serious epidemic, Bull. Math. Biol. https://doi.org/10.1017/ s11538-018-00549-x 





7. Browne, C.J., H. Gulbudak, and G. Webb (2015) Modeling contact tracing in outbreaks with application to Ebola, J. Theor. Biol. 384: 33–49. 





8. Butler, D. (2014) Models overestimate Ebola cases, Nature 515: 18. https://doi.org/10.1038/ 515018a. 





9. Byrne, J.P. (2008) Encyclopedia of Pestilence, Pandemics, and Plagues, 1 ABC-CLIO, 2008. 





10. Chowell, D., C. Castillo-Chavez, S. Krishna, X. Qiu, and K.S. Anderson (2015) Modelling the effect of early detection of Ebola, Lancet Infectious Diseases, February, DOI: http://dx.doi.org/ 10.1016/S1473-3099(14)71084-9. 





11. Chowell, G., N.W. Hengartnerb, C. Castillo-Chavez, P.W, Fenimore, and J.M. Hyman (2004) The basic reproductive number of Ebola and the effects of public health measures: the cases of Congo and Uganda, J. Theor. Biol. 229: 119–126. 





12. Chowell, G. and J. M. Hyman (2016) Mathematical and Statistical Modeling for Emerging and Re-emerging Infectious Diseases. Springer, 2016. 





13. Chowell G., C. Viboud, J.M. Hyman, L. Simonsen (2015) The Western Africa Ebola virus disease epidemic exhibits both global exponential and local polynomial growth rates. PLOS Current Outbreaks, January 21. 





14. Chowell, G. and C. Viboud (2016) Is it growing exponentially fast?–impact of assuming exponential growth for characterizing and forecasting epidemics with initial near-exponential growth dynamics Infectious Dis. Modelling 1: 71–78. 





15. Chowell, G., C. Viboud, L. Simonsen, & S. Moghadas (2016) Characterizing the reproduction number of epidemics with early sub-exponential growth dynamics, J. Roy. Soc. Interface: https://doi.org/10.1098/rsif.2016.0659. 

