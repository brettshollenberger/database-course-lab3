*****************************************************
CPE 365                                 Alex Dekhtyar
Cal Poly		  Computer Science Department
San Luis Obispo                College of Engineering 
California                   dekhtyar@csc.calpoly.edu   
*****************************************************
		   CSU DATASET
                   Version 1.0
                September 25, 2007
*****************************************************
Sources:
        California State University 
        Statistical Abstract 2004-2005
        http://www.calstate.edu/AS/abstract.shtml

        California State University 
        Statistical Reports
        http://www.calstate.edu/as/stats.shtml
******************************************************

This file describes the CSU dataset used in the CPE 365,
Introduction to Databases Class.

The dataset describes various information about the
California State University 23 campus system of higher
education.

General Conventions.

 1. All files in the dataset are CSV (comma-separated values) files.
 2. First line of each file provides the names of
    columns. Second line may be empty, or may contain
    the first row of the data
 3. All string values are enclosed in single quotes (')

The dataset consists of the following files:

 - Campuses.csv   - list of CSU campuses with some general information
 - csu-fees.csv   - historic information about student fees charged
                    by different campuses
 - degrees.csv    - historic information about the number of undergraduate
                    degrees conferred by campuses
 - discipline-enrollments.csv - information about enrollments by 
	            discipline at each campus in 2004-2005 AY.
 - disciplines.csv - list of disciplines taught at CSU
 - enrollments.csv - historic information about the number of students
                     enrolled at each campus
 - faculty.csv     - historic information about the number of full-time
                     faculty equivalents at each campus

Detailed descriptions of each file format are given below.

************************************************************************

Campuses.csv 

   Id, Campus, Location, County, Year

       Id : unique identifier for each campus
   Campus : the name of each campus (e.g., "Sonoma State University")
 Location : city/town where the campus is located
   County : county where the campus is located
     Year : year the campus opened (not necessarily as part of CSU)

************************************************************************
 
csu-fees.csv

    Campus, Year, CampusFee

   Campus  : unique identifier of campus (see Campuses.Id)
     Year  : academic year
 CampusFee : student fee assessed by campus (not full tuition)


************************************************************************
 
degrees.csv
 
     Year, Campus, Degrees
        
      Year : academic year
    Campus : unique identifier of campus (see Campuses.Id)
   Degrees : number of undergraduate degrees conferred


************************************************************************
 
discipline-enrollments.csv

      Campus, Discipline, Year, Undergraduate, Graduate

       Campus : unique identifier of campus (see Campuses.Id)  
   Discipline : unique identifier of the academic discipline
               (see disciplines.Id)
         Year : academic year
Undergraduate : undergraduate enrollment
     Graduate : graduate enrollment

************************************************************************

disciplines.csv

    Id, Name

         Id : unique identifier of the academic discipline
       Name : name of the discipline (e.g., "Engineering")


************************************************************************

enrollments.csv

      Campus, Year, TotalEnrollment_AY, FTE_AY

    
            Campus : unique identifier of campus (see Campuses.Id) 
              Year : academic year
TotalEnrollment_AY : total number of students enrolled during given 
                     academic year
            FTE_AY : number of full-time equivalent students enrolled
                     during academic year

*************************************************************************


faculty.csv

       Campus, Year, Faculty

        
	 Campus : unique identifier of campus (see Campuses.Id)              
           Year : academic year
        Faculty : number of full-time equivalent faculty lines


**************************************************************************
**************************************************************************

Permission granted to use and distribute this dataset in its current form, 
provided this file  is kept unchanged and is distributed together with the 
data.

Permission granted to modify and expand this dataset, provided this
file is updated accordingly with new information.

**************************************************************************
**************************************************************************
  

