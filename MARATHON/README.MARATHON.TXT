*****************************************************
CPE 365                                 Alex Dekhtyar
Cal Poly		  Computer Science Department
San Luis Obispo                College of Engineering 
California                   dekhtyar@csc.calpoly.edu   
*****************************************************
		 MARATHON DATASET
                   Version 1.0
                October 8, 2007
*****************************************************
Sources: this is a synthesized dataset

******************************************************

This file describes the contents of the MARATHON dataset
developed for the CPE 365, Introduction to Databases,
course at Cal Poly.

The dataset contains information about a large half-marathon
race that took place at some point somewhere in New England.
Each row represents information about one race participant,
and his/her achievements in the race.


General Conventions.

 1. All files in the dataset are CSV (comma-separated values) files.
 2. First line of each file provides the names of
    columns. Second line may be empty, or may contain
    the first row of the data.
 3. All string values are enclosed in single quotes (')


  The dataset contains one file:

     - marathon.csv     : results of the half-marathon

 Individual files have the following formats.

**************************************************************************

marathon.csv

     Place : overall place of the participant in the race
      Time : time the participant took to run the race (hh:mi:ss)
      Pace : participant's pace in the race (mi:ss)
GroupPlace : participant's place within his/her age and gender group 
     Group : participant's group
       Age : participant's age
       Sex : participant's sex
 BIBNumber : participant's bib number (note: not necessarily unique)
 FirstName : participant's first name
  LastName : participant's last name
      Town : participant's home town
     State : participant's state



**************************************************************************
**************************************************************************

Permission granted to use and distribute this dataset in its current form, 
provided this file  is kept unchanged and is distributed together with the 
data.

Permission granted to modify and expand this dataset, provided this
file is updated accordingly with new information.

**************************************************************************
**************************************************************************
