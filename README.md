# HW10DHSGroup2
#Group 2
#Members: Xiaoya, Jia, Alberto 

Research Question: Is there relationship between the number of people receiving mental health service and frequency of closing time?

Why is it important: This is usefule because it will allow DHS to know the realtionship between receiving mental health services and the number of times they open/closed a case. For example, if someone in the family is getting mental health services they may be more likely to have more visits with DHS.

Main function: #Xiaoya
Goal: reads in ShortenClientMerged.txt, then construct a "time-series" graph where the x axis is ratio of people who received mental health in one famile (each CaseID) (for now assume the case # is assigned chronologically) and the y axis is the number of open and closing times of each case. Will do so by calling AggregateByCase and send its output to PlotByTime for a scatter plot. 

Data cleaning functions:  #Jia Yang
Goal: Create functions for x,y,z
x: ratio of number of people receiving Mental Health Service in each family (# of mental health service/# of family members)
y: number of case close time in each family
z: number of people in each family (which is the # of clients in each case)

Graphing functions: #Alberto
Goal: Generate a scatterplot that also applied a smoothing function.
It takes in x, y, and z: this will be used to adjust the dot size
Need to make sure to create a dataframe inside the fucntion to feed into ggplot
The graphing function is generic enough where it can be used by the other teams.

#######
Paragraph interpreting what your graph finds and why it is useful for your client:

The graph produced shows that their is a linear relationship between the number of mental health services recieved
and the number of cases that closed. The more mental healths services received by a family the more likely they are to have to 
have more than one contact with DHS. This seems to make sense in that mental health problems likely to not go away relatively quickly 
and may have a lasting impact that leads to more contacts with DHS. This graphs also shows no relationship between mental health services 
and family size in that family size seems to be randomly distributed. 

