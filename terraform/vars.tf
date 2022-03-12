variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_B2s" # 4 GB, 2 CPU 
}

#variable usada para crear máquinas virtuales en bucle y para diferenciar cual es el master .Con esto conseguimos también asociar distintos security rules dependiendo
# del tipo de vm que sea
variable "vms" {
    type =  list(string)
    description = "Propositos de las vm"
    default = ["master","worker","nfs"]
}