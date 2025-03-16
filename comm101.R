library(marinecs100b)
library(woa_sal)
data("woa_sal")

# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
#histogram

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
#boxplot

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.
library(ggplot2)
ggplot(woa_sal, aes(x=salinity))+
  geom_histogram()

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.
ggplot(woa_sal, aes(x=salinity,y=ocean))+
  geom_boxplot()

# P5 Interpret your figures from P3 and P4. What patterns do you notice?
#I noticed in part 3's figure that most salinities lie between 30 and 40 ppt with
#there being an outlier with a salinity of around 17 ppt. In part 4's figure
#I noticed that the mediterranean region has the overall highest salinity while
#the atlantic ocean has the largest range of salinities.

# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.
#making the background white instead of grey as well as making each ocean basin
#its own color could help to differentiate the differences in salinity
#throughout each ocean.

# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(x=latitude,y=salinity,color=ocean))+
  geom_point()+
  theme_bw() +
  theme(legend.position="inside",
        legend.position.inside = c(0.50,0.01),
        legend.justification = c(0.5,0.01))


# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.
