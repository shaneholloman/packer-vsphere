/*
    DESCRIPTION:
    VMware Photon OS 5 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating Systtem Metadata
vm_guest_os_family  = "linux"
vm_guest_os_name    = "photon"
vm_guest_os_version = "5.0"

// Virtual Machine Guest Operating Systtem Setting
vm_guest_os_type = "vmwarePhoton64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"
vm_cdrom_type            = "sata"
vm_cpu_count             = 2
vm_cpu_cores             = 1
vm_cpu_hot_add           = false
vm_mem_size              = 2048
vm_mem_hot_add           = false
vm_disk_size             = 40960
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"

// Removable Media Settings
iso_path           = "iso/linux/photon"
iso_file           = "photon-5.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "6A7A258399A258DA742032987C043AB25503698D35EDAFAF1AE000F12127DA1A161D8B84CAA17FD8F23D129E81E1FAA7AB087C20AB9229772A643F8F9475305F"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
