#!/bin/bash
DRILL_TEST_DATA_DIR=$1

set -x
set -e

if [ ! -d ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part ]
    then

        echo "Creating directory ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part"

        mkdir ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part

        echo "Creating directory ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/partsupp"

        mkdir ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/partsupp

        echo "Creating directory ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/json/empty"

        mkdir ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/empty

        echo "Creating source files"

        split -l 5000 ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part.tbl ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part/part

        split -l 20000 ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/partsupp.tbl ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/partsupp/partsupp

        find ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part/ -type f ! -name "*.*" -exec mv {} {}.tbl \;

        find ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/partsupp/ -type f ! -name "*.*" -exec mv {} {}.tbl \;

        echo "Creating empty files"

        touch ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/part/parta{f..h}.tbl

        touch ${DRILL_TEST_DATA_DIR}/Datasources/schema_change_empty_batch/data/psv/partsupp/partsuppa{f..h}.tbl

        touch ${DRILL_TEST_DATA_DIR}/Datasources/spsv/json_field/empty_json_field.tblchema_change_empty_batch/data/psv/empty/empty{a..d}.tbl

fi

set +x
