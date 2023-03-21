resource "local_file" "file1" {
  filename = local.filename // locals
  content = var.var-num // we can also use var-num
}

#hello here

resource "local_file" "file2" {
  filename = var.var-filename       //form tfvars file
  content = random_id.alphanumeric.hex     // random number
}

resource "local_file" "file3" {
  filename = var.var-con3["filename"]  // using map here
  content = var.var-con3["content"]
}

resource "local_file" "file4" {
  filename = var.var-con4["filename"]   // lists
  content = var.var-con4["content"]
}


resource "local_file" "file5" {
  filename = "bool.py"
  content = var.var-con6
}


locals {
  l = "hello user welcome to this file"
  filename = "file.txt"

}

resource "random_id" "alphanumeric" {
  byte_length = 4
}


// fmt 
// validate
// plan
// apply
// -auto-approve
