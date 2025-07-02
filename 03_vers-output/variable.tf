variable "filename_1" {
  description = "this is the name fof file 1"
  default     = "example1"
  type = string
}

variable "filename_2" {
  description = "this is the name fof file 2"
  default     = "example2"
  type = string
}

variable "filename_3" {
  description = "this is the name fof file 3"
  default     = "example3"
  type = string
}

variable "filename_4" {
  description = "this is the name fof file 4"
  default     = "example4.txt"
  type = string
}

variable "count_number" {
  description = "this is the number of files to be created"
  default     = 3
  type        = number
}