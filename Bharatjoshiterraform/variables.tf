//number

variable "var-num" {
  type = number
  description = "this is for numbers"
  default = 1300
}

//string

variable "var-filename" {
  type = string
  description = "Enter filename"
   default = "newfile.txt"
}

// list(any)

variable "var-con2" {
  type = list(any)
  description = "Enter list"
  default = [ "owner is bharat joshi","this file is encrypted" ]
} 

//map

variable "var-con3" {
  type = map(any)
  description = "Enter content for file"
  default = {
    "filename" = "map.cpp"
    "content" = "int a = 10"
  }
}

//object

variable "var-con4" {
  type = object({
     filename = string,
     content = number
  })
  default = {
    content = 400000
    filename = "currentrate.js"
  }
}

// set  not using now
variable "var-con5" {
  type = set(any)
  description = "enter your set"
  default = [12,23,45]
}

// bool

variable "var-con6" {
  type = bool
  description ="Bool here"
  default = false
}