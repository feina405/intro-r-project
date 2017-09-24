#------Indexing-------

x <- c(1,2,3,4)
# [] -----indexing
# () -----function arguments
# {} -----control flow

# Exercise for shell

# 1. creat a directory-------
  #mkdir some_directory
# 2. creat a file in that directory-----
  #touch some_directory/some_file.txt
  # or
  #cd some_directory
  # touch some_directory
# 3. edit the file with nano----
  # nano some_directory/some_file.txt
  # or (if you did cd some_directory first)
  # nano

  # ctrl O to save
  # ctrl X to quit

# 4. navigate back out of that directory
  # cd ..
# 5. delete the directory
  # rm -r some_directory


# wc *.csv
# wc -l inflammwc  inflammation-01.csv
# wc inflammation-01.csv
# wc inflammation*.csv
# wc inflammation*.csv > inf_lengths.txt
# wc -l inf_lengths.txt
# less inf_lengths.txt
# 
# mv inf_lengths2.txt inf_lenghs.txt
# wc -l *.csv > inf_lengths3.txt
# sort -n inf_lengths3.txt
#sort -n inf_lengths3.txt > sorted_lengths.txt
# head sorted_lengths.txt
# tail sorted_lengths.txt
# sort -n inf_lengths3.txt | head -n 3
# wc -l *.csv | sort -n | head -n 3
#  sort -n < inf_lengths3.txt
# wc -l *.csv | sort -n | head -n 5 >> inf_lengths3.txt ^C
# wc -l *.csv | sort -n | head >> inf_lengths3.txt
# wc -l inf_lengths3.txt
# less inf_lengths3.txt
# 

# Exercise
# provide a shell command that finds the 3 files that have the "least" number of lines in a directory
# write the same shell command to find the 3 files with most lines....
  
# pwd
  # wc -l *.* |sort -n | head -n 3
  # wc -l * |sort -n | head -n 3
  # wc -l * |sort -n | tail -n 3
  # wc -l * |sort -n | head -n -1 | tail -n 3
  # wc -l * |sort -n | tail -n 4 | head -n 3



# touch haiku
# nano haiku.txt
# cat haiku.txt

# grep not haiku.txt
# grep "The " haiku.txt
# grep -w The haiku.txt
# grep not haiku.txt
# grep -n not haiku.txt
# grep -n -i "The" haiku.txt
# grep --help
# grep "^.o" haiku.txt

# find .
# mkdir thesis
# mkdir committee_meeting
# touch thesis/chapter_one.txt
# touch thesis/chapter_two.txt
# touch thesis/chapter_three.txt
# touch committee_meeting/pres_notes.md
# touch committee_meeting/possible_pitfalls.md
# touch committee_meeting/future_directions.md
# find .

# find . -type d                   (directory)

# mkdir committee_meeting/spring17
# find. -type d

# find . -type f         (find all the files)
# find . -name  *.md     (find all the files end with .md)
# find . -name  *.txt     
# find . -name  "*.txt"   (??)
 
# find *.txt
# find "*.txt"

# nano thesis/chapter_one.txt 
# nano committee_meetings.md
# ls
# wc -l $(find . -name '*.md')
# wc -l $(find . -name '*.txt')
#

#
# nano thesis/chapter_two.txt
# nano thesis/chapter_three.txt
#

# grep "not" $(find . -name '*.txt')
# grep "carpentry" $(find thesis/ -name '*.txt')


# nano haiku.txt
# 

# exercise
# 1. find the number of lines for each .csv .txt .md . file in data
  # cd /Users/feina405/intro-r-project/data
  # wc -l $(find . -name '*.csv') > tolal_lengths.txt
  # wc -l $(find . -name '*.txt') >> total_lengths.txt
  # wc -l $(find . -name '*.md') >> total_lengths.txt
  # less total_lengths.txt

# 2. find the .csv .txt .md with the least number of the lines
  # sort -n total_lengths.txt | head -n 3

# 3. find the .csv .txt .md with the most number of the lines
  # sort -n total_lengths.txt | tail -n 3
 