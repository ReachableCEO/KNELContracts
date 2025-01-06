#!/bin/bash

set -euo pipefail

# Put together the KNEL IT/business ops contract

# Pull in contract variables
# source ./KNEL-Contract-Variables.env

# Run mustache to expand variables
# ....

# Render CSV to markdown table 

COOLIFY_TO_ALL="src/services-coolify-techops-all.md"

rm $COOLIFY_TO_ALL
echo "# Services hosted in KNEL Coolify Techops Instance, offered to all TSYS Group components" >> $COOLIFY_TO_ALL
#Table heading
echo " " >> $COOLIFY_TO_ALL
echo "|Function|Vendor|Instance|" >> $COOLIFY_TO_ALL
echo "|---|---|---|" >> $COOLIFY_TO_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "Coolify-Techops-AllServices.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $COOLIFY_TO_ALL
done

rm src/services-coolify-techops-lob.md
echo "# Services hosted in KNEL Coolify Techops Instance, offered to all TSYS Group components" >> src/services-coolify-lob.md
#Table heading
echo " " >> src/services-coolify-techops-lob.md
echo "|Function|Vendor|Instance|" >> src/services-coolify-techops-lob.md
echo "|---|---|---|" >> src/services-coolify-techops-lob.md
#Table rows
IFS=$'\n\t'
for service in \
$(cat "Coolify-Techops-LOBServices.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> src/services-coolify-techops-lob.md
done

COOLIFY_RD_ALL="src/services-coolify-rand-all.md"

rm $COOLIFY_RD_ALL
echo "# Services hosted in KNEL Coolify R&D Instance, offered to all TSYS Group components" >> $COOLIFY_RD_ALL
#Table heading
echo " " >> $COOLIFY_RD_ALL
echo "|Function|Vendor|Instance|" >> $COOLIFY_RD_ALL
echo "|---|---|---|" >> $COOLIFY_RD_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "Coolify-Techops-LOBServices.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $COOLIFY_RD_ALL
done

COOLIFY_RD_LOB="src/services-coolify-rand-lob.md"

rm src/services-coolify-randd-lob.md
echo "# Services hosted in KNEL Coolify R&D Instance, offered to certain TSYS Group components under bespoke arrangement" >> src/services-coolify-randd-lob.md
#Table heading
echo " " >> src/services-coolify-randd-lob.md
echo "|Function|Vendor|Instance|" >> src/services-coolify-randd-lob.md
echo "|---|---|---|" >> src/services-coolify-randd-lob.md
#Table rows
IFS=$'\n\t'
for service in \
$(cat "services-coolify-rand-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> src/services-coolify-randd-lob.md
done

KNELDC_ALL="src/services-kneldc-all.md"

rm $KNELDC_ALL
echo "# Services hosted in KNEL Datacenter, offered to all TSYS Group components" >> $KNELDC_ALL
#Table heading
echo " " >> $KNELDC_ALL
echo "|Function|Vendor|Instance|" >> $KNELDC_ALL
echo "|---|---|---|" >> $KNELDC_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "services-kneldc-all.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $KNELDC_ALL
done

KNELDC_LOB="src/services-kneldc-lob.md"

rm $KNELDC_LOB
echo "# Services hosted in KNEL Datacenter, offered to certain TSYS Group components under bespoke arrangement" >> $KNELDC_LOB
#Table heading
echo " " >> $KNELDC_LOB
echo "|Function|Vendor|Instance|" >> $KNELDC_LOB
echo "|---|---|---|" >> $KNELDC_LOB
#Table rows
IFS=$'\n\t'
for service in \
$(cat "services-kneldc-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $KNELDC_LOB
done

CLOUDRON_ALL="src/services-cloudron-all.md"

rm $CLOUDRON_ALL
echo "# Services hosted in KNEL Cloudron, offered to all TSYS Group components" >> $CLOUDRON_ALL
#Table heading
echo " " >> $CLOUDRON_ALL
echo "|Function|Vendor|Instance|" >> $CLOUDRON_ALL
echo "|---|---|---|" >> $CLOUDRON_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "services-cloudron-all.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $CLOUDRON_ALL
done

CLOUDRON_LOB="src/services-cloudron-lob.md"

rm $CLOUDRON_LOB
echo "# Services hosted in KNEL Cloudron, offered to certain TSYS Group components under bespoke arrangement" >> $CLOUDRON_LOB
#Table heading
echo " " >>  $CLOUDRON_LOB
echo "|Function|Vendor|Instance|" >> $CLOUDRON_LOB
echo "|---|---|---|" >> $CLOUDRON_LOB
#Table rows
IFS=$'\n\t'
for service in \
$(cat "services-cloudron-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $CLOUDRON_LOB
done