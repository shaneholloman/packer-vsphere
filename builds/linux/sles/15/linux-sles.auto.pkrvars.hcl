/*
    DESCRIPTION:
    SUSE Linux Enterprise Server 15 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "sles"
vm_guest_os_version  = "15.4"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "sles15_64Guest"

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
iso_path           = "iso/linux/suse"
iso_file           = "sle-15.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "88A21AC07B673BD60FD8733E6DD5D93444651FD4E806C9922904B431D75B90AA1BAC7DA4553FFFF3A8BADC64B0BE44E41F5155961FCC565AA2B0F5045862A367"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
