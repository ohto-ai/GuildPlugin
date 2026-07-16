#!/bin/sh
# Maven wrapper — uses local Maven installation with Aliyun mirror

BASEDIR="$(cd "$(dirname "$0")" && pwd)"
MVN_HOME="$BASEDIR/.maven/apache-maven-3.9.9"
MVN_CMD="$MVN_HOME/bin/mvn"

if [ ! -f "$MVN_CMD" ]; then
    echo "Maven not found at $MVN_CMD"
    echo "Please ensure .maven/apache-maven-3.9.9 exists"
    exit 1
fi

exec "$MVN_CMD" -s "$BASEDIR/.mvn/settings.xml" "$@"
