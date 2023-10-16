/*
    DESCRIPTION:
    CentOS Linux 7 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "centos"
vm_guest_os_version  = "7"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "centos7_64Guest"

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
iso_path           = "iso/linux/centos"
iso_file           = "centos-7.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "7061FA737086370716885439353B50DA47D239AD81B971A0427EBB69B0CA65BCD7309BF211827ECFCCD8A725B10FF5CC2A2CE395AF5BCC559D08D7CE8B56FFE7"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
