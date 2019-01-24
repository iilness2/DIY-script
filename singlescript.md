#how to delete pattern with sed
sed 's/<pattern>//g' file > output_file

#How to delete double slash // and pattern text with sed
sed 's/\/.<pattern>//g' file > output_file

#How to decypt password/secret at jenkins
##open the jenkins script at <jenkins_url>/script
##copy paste this code println( hudson.util.Secret.decrypt("${ENCRYPTED_PASSPHRASE_OR_PASSWORD}") )
##check the value of our secret or password with open page source code and search our secret
