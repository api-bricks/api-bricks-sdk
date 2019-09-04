#!/bin/bash
mvn clean javadoc:jar deploy -Dmaven.test.skip=true -P release-sign-artifacts
