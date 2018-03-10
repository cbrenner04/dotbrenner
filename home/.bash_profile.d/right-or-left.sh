rightOrLeft() {
  RAND_INDEX=$((RANDOM % 2))
  ARRAY=("left" "right")
  echo ${ARRAY[$RAND_INDEX]}
}
