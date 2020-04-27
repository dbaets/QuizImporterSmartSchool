# QuizImporterSmartSchool

This little bit of code makes it easy to import the results from students who submitted a task on Smartschool to a general Excel format with a list of all the students.
This script made use of the tidyverse suite and readxl toghetter with openxlsx and was only put togheter for specific needs and is not robust in any way. If needed I can still make it more robust.
Feel free to modify the code in any way to suit your needs.

## Setup of folder structure
The script looks for a master .xlsx file with all the name of the students and their group ID in the **klassen** folder. If the folder does not exist in your repository please create this folder. the .xlsx file const out of tho columns: *NAAM* and *KLAS*.

Your *score.csv* file that you retrieved from Smartschool is best placed in a folder called **input**, located in the script repository.

The last folder you need to create is the folder called **output**. This folder will serve as a repostitory for all score outputs you can use in the general .xlsx file.

## Script usage
* When downloading the student scores from Smartschool place the *score.csv* file in the **input** folder.
* Before running the script adjust the klasID in the *klas* variable and your good to go.
* Run the script and use the output as needed.