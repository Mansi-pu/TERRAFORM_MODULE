locals {
  timestamp = "${replace("${timestamp()}", "-", "")}"
}
