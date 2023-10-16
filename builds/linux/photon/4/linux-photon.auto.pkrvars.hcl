/*
    DESCRIPTION:
    VMware Photon OS 4 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating Systtem Metadata
vm_guest_os_family  = "linux"
vm_guest_os_name    = "photon"
vm_guest_os_version = "4.0"

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
iso_file           = "photon-4.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "9F0AA1A266D9AE29140AB9F1394F509BAFC651E3ACEE437766B67DAB485A704494D968B5810D0060F04BAE014CE4AD2611DBFEDE4E5F06BA3572492B2ACDDF40"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
