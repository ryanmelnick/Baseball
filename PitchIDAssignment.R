library(readxl)
Pitch_Identification_Assignment_Data <- read_excel("Pitch Identification Assignment Data.xlsx")
summary(Pitch_Identification_Assignment_Data)
library(ggplot2)
hbvb <- ggplot(Pitch_Identification_Assignment_Data, aes(x=HorizontalBreak, y = InducedVertitalBreak, label = PitchNumber)) + geom_point(color="Gold") + labs(x = "Horizontal Break (Inches)", y = "Induced Vertical Break (Inches)") +
  ggtitle("Pitch Movement") +
  theme(plot.title = element_text(hjust = 0.5))
hbvb + geom_label(size = 3)
hbrs <- ggplot(Pitch_Identification_Assignment_Data, aes(x=HorizontalBreak, y = RelSpeed, label = PitchNumber)) + geom_point(color="Gold") + labs(x = "Horizontal Break (Inches)", y = "Release Speed (MPH)") +
  ggtitle("Pitch Speed by Horizontal Break") +
  theme(plot.title = element_text(hjust = 0.5))
hbrs + geom_label(size = 3)
rssr <- ggplot(Pitch_Identification_Assignment_Data, aes(x=RelSpeed, y = SpinRate, label = PitchNumber)) + geom_point(color="Gold") + labs(title="Spin Rate by Pitch Speed", x = "Release Speed (MPH)", y = "Spin Rate (RPM)") +
  ggtitle("Spin Rate by Pitch Speed") +
  theme(plot.title = element_text(hjust = 0.5))
rssr + geom_label(size = 3)
