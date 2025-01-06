#!/bin/bash

set -euo pipefail

# Put together the KNEL IT/business ops contract

# Pull in contract variables
# source ./KNEL-Contract-Variables.env

# Run mustache to expand variables
# ....

# Render CSV to markdown table 

COOLIFY_TO_ALL="src/services-coolify-techops-all.md"

rm $COOLIFY_TO_ALL || true
echo "# Services hosted in KNEL Coolify Techops Instance, offered to all TSYS Group components" >> $COOLIFY_TO_ALL
#Table heading
echo " " >> $COOLIFY_TO_ALL
echo "|Function|Vendor|Instance|" >> $COOLIFY_TO_ALL
echo "|---|---|---|" >> $COOLIFY_TO_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-coolify-techops-all.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $COOLIFY_TO_ALL
done

COOLIFY_TO_LOB="src/services-coolify-techops-lob.md"

rm $COOLIFY_TO_LOB || true
echo "# Services hosted in KNEL Coolify Techops Instance, offered to certain TSYS Group components under bespoke arrangement" >> $COOLIFY_TO_LOB
#Table heading
echo " " >> $COOLIFY_TO_LOB
echo "|Function|Vendor|Instance|" >> $COOLIFY_TO_LOB
echo "|---|---|---|" >> $COOLIFY_TO_LOB
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-coolify-techops-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $COOLIFY_TO_LOB
done

COOLIFY_RD_ALL="src/services-coolify-randd-all.md"

rm $COOLIFY_RD_ALL || true
echo "# Services hosted in KNEL Coolify R&D Instance, offered to all TSYS Group components" >> $COOLIFY_RD_ALL
#Table heading
echo " " >> $COOLIFY_RD_ALL
echo "|Function|Vendor|Instance|" >> $COOLIFY_RD_ALL
echo "|---|---|---|" >> $COOLIFY_RD_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-coolify-randd-all.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $COOLIFY_RD_ALL
done

COOLIFY_RD_LOB="src/services-coolify-randd-lob.md"

rm $COOLIFY_RD_LOB || true
echo "# Services hosted in KNEL Coolify R&D Instance, offered to certain TSYS Group components under bespoke arrangement" >> $COOLIFY_RD_LOB
#Table heading
echo " " >> $COOLIFY_RD_LOB
echo "|Function|Vendor|Instance|" >> $COOLIFY_RD_LOB
echo "|---|---|---|" >> $COOLIFY_RD_LOB
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-coolify-randd-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $COOLIFY_RD_LOB
done


KNELDC_ALL="src/services-kneldc-all.md"

rm $KNELDC_ALL || true
echo "# Services hosted in KNEL Datacenter, offered to all TSYS Group components" >> $KNELDC_ALL
#Table heading
echo " " >> $KNELDC_ALL
echo "|Function|Vendor|Instance|" >> $KNELDC_ALL
echo "|---|---|---|" >> $KNELDC_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-kneldc-all.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $KNELDC_ALL
done

KNELDC_LOB="src/services-kneldc-lob.md"

rm $KNELDC_LOB || true
echo "# Services hosted in KNEL Datacenter, offered to certain TSYS Group components under bespoke arrangement" >> $KNELDC_LOB
#Table heading
echo " " >> $KNELDC_LOB
echo "|Function|Vendor|Instance|" >> $KNELDC_LOB
echo "|---|---|---|" >> $KNELDC_LOB
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-kneldc-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $KNELDC_LOB
done

CLOUDRON_ALL="src/services-cloudron-all.md"

rm $CLOUDRON_ALL || true
echo "# Services hosted in KNEL Cloudron, offered to all TSYS Group components" >> $CLOUDRON_ALL
#Table heading
echo " " >> $CLOUDRON_ALL
echo "|Function|Vendor|Instance|" >> $CLOUDRON_ALL
echo "|---|---|---|" >> $CLOUDRON_ALL
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-cloudron-all.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $CLOUDRON_ALL
done

CLOUDRON_LOB="src/services-cloudron-lob.md"

rm $CLOUDRON_LOB || true
echo "# Services hosted in KNEL Cloudron, offered to certain TSYS Group components under bespoke arrangement" >> $CLOUDRON_LOB
#Table heading
echo " " >>  $CLOUDRON_LOB
echo "|Function|Vendor|Instance|" >> $CLOUDRON_LOB
echo "|---|---|---|" >> $CLOUDRON_LOB
#Table rows
IFS=$'\n\t'
for service in \
$(cat "service-csv/services-cloudron-lob.csv"); do
export FUNCTION="$(echo $service|awk -F ',' '{print $1}')"
export VENDOR="$(echo $service|awk -F ',' '{print $2}')"
export INSTANCE="$(echo $service|awk -F ',' '{print $3}')"
echo "|$FUNCTION|$VENDOR|$INSTANCE|" >> $CLOUDRON_LOB
done