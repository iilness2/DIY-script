#how to delete pattern with sed
sed 's/<pattern>//g' file > output_file

#How to delete double slash // and pattern text with sed
sed 's/\/.<pattern>//g' file > output_file
