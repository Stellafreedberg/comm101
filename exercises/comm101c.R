library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!
ggplot(penguins, aes(x=island, y=body_mass_g, color=island)) +
  geom_boxplot() +
  scale_color_manual(values=okabe_ito) +
  labs(x="Island",
       y="Body Mass (g)")+
  theme_bw()
