# Computational-Science-Project
Link to the network data can be found in the respective file.

**Survival_rate_with_AIDS_after_t_years.R**  
Survival rate x years after AIDS diagnosis, was reported by (Poorolajal et al., 2016) for x = 2,4,6 for AIDS patients that did not receive ART. To calculate the survival rate for any x >= 0,
the survival rate as function of time was fitted assuming it follows exponential decay.

**plots.py**  
Generating the data for the plot for one mode (e.g. "targeted_m_homo") takes ~35 min. on a medium-high 2016 PC build, totalling to a runtime of roughly 7 hours to generate all plots. 




**Parameters of the HIV model and description.**
condom_usage, proportion of sexual interactions that involve the use of condoms out of all interactions between two gender types.
condom_efficiency, proportion of sexual interactions that do not result in the transmission of HIV out of all interactions that involve the use of condoms between two genders.


**References**   
Poorolajal, J., Hooshmand, E., Mahjub, H., Esmailnasab, N., & Jenabi, E. (2016). Survival rate of AIDS disease and mortality in HIV-infected patients: a meta-analysis. Public health, 139, 3-12.
