/*
    DESCRIPTION:
    Debian 12 (Bookworm) build variables.
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "debian"
vm_guest_os_version  = "12.0"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "other5xLinux64Guest"

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
iso_path           = "iso/linux/debian"
iso_file           = "debian-12.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "9DA6AE5B63A72161D0FD4480D0F090B250C4F6BF421474E4776E82EEA5CB3143BF8936BF43244E438E74D581797FE87C7193BBEFFF19414E33932FE787B1400F"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "5s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
