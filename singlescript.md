# how to delete pattern with sed
```
sed 's/<pattern>//g' file > output_file
```
# How to delete double slash // and pattern text with sed
```
sed 's/\/.<pattern>//g' file > output_file
```
# How to decypt password/secret at jenkins
```
open the jenkins script at <jenkins_url>/script
copy paste this code *println( hudson.util.Secret.decrypt("${ENCRYPTED_PASSPHRASE_OR_PASSWORD}") )*
check the value of our secret or password with open page source code and search our secret
check the size and total file in the bucket s3 *aws s3 ls s3://mybucket --recursive --human-readable --summarize*
```
# How to get a list of installed Jenkins plugins with name and version pair
```
 Jenkins.instance.pluginManager.plugins.sort { it.getDisplayName() }.each{
  plugin -> 
    println ("${plugin.getDisplayName()} (${plugin.getShortName()}): ${plugin.getVersion()}")
}
```

# How to import header from csv to table database at postgresql
COPY <table_name>(<row_header>)
from '<csv_path>' DELIMITER ',' CSV HEADER;

# How to import header from csv to table database at mysql (for input bulk)
LOAD DATA INFILE '<csv_path>' INTO table <table_name> Fields terminated by ',' ENclosed by '"' Lines terminated by '\n' Ignore 1 ROWS;
