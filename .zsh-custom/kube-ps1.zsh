function get_cluster_short() {
  echo "$1" | cut -d / -f2
}
