runPriorityTests() {
  pip3 install -e ../automation-base -U
  pip3 install . -U
  python3 -u suites/Priority.py -env "$1" -brow "$2" -test "$3" 2>&1 | tee Results/output$(date +%s).txt
}

runFunctionalityTests() {
  TEST_ENV="$1"
  TEST_BROWSER="$2"
  TEST_SUITE="$3"
  shift 3
  pip3 install -e ../automation-base -U
  pip3 install . -U
  python3 -u suites/Functionality.py -env "$TEST_ENV" -brow "$TEST_BROWSER" -test "$TEST_SUITE" -case "$@" 2>&1 | tee Results/output$(date +%s).txt
}

runPrioritySauce() {
  pip3 install -e ../automation-base -U
  pip3 install . -U
  python3 -u suites/Priority.py -env "$1" -brow sauce -sb "$2" -test "$3" 2>&1 | tee Results/output$(date +%s).txt
}

runFunctionalitySauce() {
  TEST_ENV="$1"
  TEST_BROWSER="$2"
  TEST_SUITE="$3"
  shift 3
  pip3 install -e ../automation-base -U
  pip3 install . -U
  python3 -u suites/Functionality.py -env "$TEST_ENV" -brow sauce -sb "$TEST_BROWSER" -test "$TEST_SUITE" -case "$@" 2>&1 | tee Results/output$(date +%s).txt
}

runFailures() {
  pip3 install -e ../automation-base -U
  pip3 install . -U
  python3 -u suites/Functionality.py -env "$1" -brow "$2" -test failures | tee Results/output$(date +%s).txt
}
