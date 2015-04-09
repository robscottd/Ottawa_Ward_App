# Ottawa_Ward_App
Simple shiny app for visualizing how frequent occupations occur in Ottawa, by Wards

App displays a word cloud for occupations in a ward, the occupation word size weighted by 
the frequency of the occupation relative to other occupations in the ward.

A dropdown allows you to select a specific Ottawa ward, including a default selection for an Ottawa-wide total.

A Minimum Occupation Frequency slider control allows you to control the minimum occupation frequency for the
current ward.

A Maximum Number of Occupations slider control allows you to control the number of words in the word cloud.

I have included in this repository the three shiny R script files(ui,server,global) used to produce this app 
as well as the occupations.RData file which contains the occupation freqencies by ward data extracted from 
the 2006 Census data (based on North American industry classification) found at:

http://data.ottawa.ca/en/dataset/2006-and-2011-ward-data-from-the-census-and-2011-national-household-survey-nhs

if you are interested, info about the industry classification can be found at StatsCan at:

http://www23.statcan.gc.ca/imdb/p3VD.pl?Function=getVDPage1&db=imdb&dis=2&adm=8&TVD=118464

The occupations.RData file contains dataframe oCounts containing the occupation frequency by ward and
character vector wards containing ward names.

