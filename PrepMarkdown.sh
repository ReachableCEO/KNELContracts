#!/bin/bash

# Put together the KNEL IT/business ops contract

# Pull in contract variables
# source ./KNEL-Contract-Variables.env

# Run mustache to expand variables
# ....

# Render CSV to markdown table 

##services-cloudron-all.md

rm src/services-cloudron-all.md

echo "# Services hosted in KNEL Cloudron, offered to all TSYS Group components" >> src/services-cloudron-all.md

#Table heading
echo " " >> src/services-cloudron-all.md
echo "|Function|Vendor|Instance|" >> src/services-cloudron-all.md
echo "|---|---|---|" >> src/services-cloudron-all.md

#Table rows
IFS=$'\n\t'
for skill in \
$(cat "Cloudron-GroupServices.csv"); do
export FUNCTION="$(echo $skill|awk -F ',' '{print $1}')"
export VENDOR="$(echo $skill|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $skill|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> src/services-cloudron-all.md
done

##services-cloudron-lob.md

rm src/services-cloudron-lob.md

echo "# Services hosted in KNEL Cloudron, offered to certain TSYS Group components under bespoke arrangement" >> src/services-cloudron-lob.md

#Table heading
echo " " >> src/services-cloudron-lob.md
echo "|Function|Vendor|Instance|" >> src/services-cloudron-lob.md
echo "|---|---|---|" >> src/services-cloudron-lob.md

#Table rows
IFS=$'\n\t'
for skill in \
$(cat "Cloudron-LOBServices.csv"); do
export FUNCTION="$(echo $skill|awk -F ',' '{print $1}')"
export VENDOR="$(echo $skill|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $skill|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> src/services-cloudron-lob.md
done


##- [Coolify Techops All TSYS Group](./services-coolify-techops-all.md)

##- [Coolify Techops LOB Bespoke](./services-coolify-techops-lob.md)

##- [Coolify R&D All TSYS Group](./services-coolify-randd-all.md)

##- [Coolify R&D LOB Bespoke](./services-coolify-randd-lob.md)

##- [KNEL Datacenter All TSYS Group](./services-kneldc-all.md)

##- [KNEL Datacenter LOB Bespoke](./services-kneldc-lob.md)