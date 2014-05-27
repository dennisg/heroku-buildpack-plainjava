#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetect()
{

  detect

  assertAppDetected "Java (using a jar)"
}

