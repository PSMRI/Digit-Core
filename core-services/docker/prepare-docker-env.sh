#!/bin/bash

# Source the .env file to load variables
source .env

# Alternatively, you can use the shorthand dot command
# . .env

# Now, you can access the environment variables defined in the .env file
echo "Services list is: $SERVICES"

echo "JDK is: $JDK_IMAGE"
echo "Maven is: $MAVEN_INSTALL"

# Set the Internal Field Separator (IFS) to a comma
# IFS=','

# Iterate over each value
# for service in $SERVICES; do
#     echo "Service : $service"
#     current_dir=$(pwd)
#     cd $service
#     echo "Changed to directory: $(pwd)"
#     # do work
#     mvn clean dependency:copy-dependencies -DoutputDirectory=target/libs
#     # do work ends
#     cd "$current_dir"
#     echo "Returned to directory: $(pwd)"
# done

# Optionally, reset IFS back to default (space, tab, newline)
# unset IFS