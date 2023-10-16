/*
    DESCRIPTION:
    Red Hat Enterprise Linux 7 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "rhel"
vm_guest_os_version  = "7.9"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "rhel7_64Guest"

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
iso_path           = "iso/linux/rhel"
iso_file           = "rhel-7.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "CA58DDB263818B864D99A8D1D3149CD1AB57B43D515A0CF85680D21401573E8CBBB277D1E4AF59113E83E1BEE068692FF8FC2FFBDBB95F4DF9EBCAF809F03C31"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
