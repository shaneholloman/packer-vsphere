/*
    DESCRIPTION:
    Microsoft Windows 10 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Installation Operating System Metadata
vm_inst_os_language = "en-US"
vm_inst_os_keyboard = "en-US"
vm_inst_os_image    = "Windows 10 Pro"
vm_inst_os_kms_key  = "REDACTED"

// Guest Operating System Metadata
vm_guest_os_language = "en-US"
vm_guest_os_keyboard = "en-US"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "windows"
vm_guest_os_name     = "desktop"
vm_guest_os_version  = "10"
vm_guest_os_edition  = "pro"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "windows9_64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"
vm_cdrom_type            = "sata"
vm_cpu_count             = 2
vm_cpu_cores             = 1
vm_cpu_hot_add           = false
vm_mem_size              = 4096
vm_mem_hot_add           = false
vm_disk_size             = 102400
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"
vm_video_mem_size        = 131072
vm_video_displays        = 1

// Removable Media Settings
iso_path           = "iso/windows/desktop"
iso_file           = "windows-10.iso"
iso_checksum_type  = "sha512"
iso_checksum_value = "8C490AA3F3E53B2C9562CE13B5BA55BBF50721E4276C15F1B75E8EC833CED1C2D87CD8A2BED8175D3157FA917FCE6C605CA037A70F673E758C26908302CF2F25"

// Boot Settings
vm_boot_order       = "disk,cdrom"
vm_boot_wait        = "2s"
vm_boot_command     = ["<spacebar>"]
vm_shutdown_command = "shutdown /s /t 10 /f /d p:4:1 /c \"Shutdown by Packer\""

// Communicator Settings
communicator_port    = 5985
communicator_timeout = "12h"

// Provisioner Settings
scripts = ["scripts/windows/windows-prepare.ps1"]
inline = [
  "Get-EventLog -LogName * | ForEach { Clear-EventLog -LogName $_.Log }"
]
