# JPACRUDProject

## Overview
On my full-stack website the user is able to log your workouts the user can include the date, exercise, repetitions, number of sets and the weight they used for that exercise. The user is able to view all the exercises in the database, look up a single exercise or search for all the exercises done on a specific date. Once viewing an exercise the user has the option to delete or edit an exercise. If the user searches for a date with no exercises or an ID that has not been assigned to an exercise then they will be shown a page telling them that no exercises match that criteria.
## Technology used
Git
Gradle
MySQL Workbench
JPQL
Java
JSP
CSS
Spring Boot
## Lessons Learned
##### Managing JSPs
I used two separate controllers to update an entry, one takes the user to the update page and the other applies the users update. This caused an error due to poor management of the name for my model attribute. They become increasingly difficult to keep track of as the number of controllers grow, to keep this from happening again I focused on one controller at a time vs trying to complete two at once and rush my work. I also used sticky notes and wrote down the names for every attribute under each controller I have.
##### SQL reserved words
In my database I had two columns named with a SQL reserved word, date and set. This was giving me an error in my SQL syntax. After Googling the error code I was able to find what I was doing wrong and fix it. I hope to gain more experience in writing SQL queries so this will not happen again.
##### Date formatting
When creating an exercise or searching for an exercise by the date I was encountering errors due to the way LocalDate in Java was being formatted as YYYY/MM/DD and the dates in my JSPs were formatted as MM/DD/YYYY. At first I changed everything to a String and the input as text on my JSPs, that worked but only if the user input the date exactly the way I wanted them to as MM-DD-YYYY, knowing this would most likely not be the case I kept the data type as a String in my Java code and I changed the input to "date" in my JSP and all was good. I plan on researching more about Java dates and formatting tips to keep this from happening again.
