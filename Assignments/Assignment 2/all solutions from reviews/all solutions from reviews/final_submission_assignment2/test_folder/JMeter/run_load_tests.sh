#!/bin/bash

# Logfiles for jmeter load-test
FILE_EASY=log_load_easy.csv
FILE_MEDIUM=log_load_medium.csv
FILE_HARD=log_load_hard.csv
FILE_EXTREME=log_load_extreme.csv

# ======================
# Execute easy load test
# ======================

# Create file to log data to from jmeter script
if [ -f "$FILE_EASY" ]; then
	rm $FILE_EASY
	touch $FILE_EASY
else
	touch $FILE_EASY

fi

# If file have been creted excute jmeter script
if [ -f "$FILE_EASY" ]; then
	jmeter -n -t load_easy.jmx
else
	echo "Something went no log to $FILE_EASY"
fi

# ======================
# Execute medium load test
# ======================

# Create file to log data to from jmeter script
if [ -f "$FILE_MEDIUM" ]; then
        rm $FILE_MEDIUM
        touch $FILE_MEDIUM
else
        touch $FILE_MEDIUM

fi

# If file have been creted excute jmeter script
if [ -f "$FILE_MEDIUM" ]; then
        jmeter -n -t load_medium.jmx
else
        echo "Something went no log to $FILE_MEDIUM"
fi

# ======================
# Execute hard load test
# ======================

# Create file to log data to from jmeter script
if [ -f "$FILE_HARD" ]; then
        rm $FILE_HARD
        touch $FILE_HARD
else
        touch $FILE_HARD

fi

# If file have been creted excute jmeter script
if [ -f "$FILE_HARD" ]; then
        jmeter -n -t load_hard.jmx
else
        echo "Something went no log to $FILE_HARD"
fi

# ======================
# Execute extreme load test
# ======================

# Create file to log data to from jmeter script
if [ -f "$FILE_EXTREME" ]; then
        rm $FILE_EXTREME
        touch $FILE_EXTREME
else
        touch $FILE_EXTREME

fi

# If file have been creted excute jmeter script
if [ -f "$FILE_EXTREME" ]; then
        jmeter -n -t load_extreme.jmx
else
        echo "Something went no log to $FILE_EXTREME"
fi

