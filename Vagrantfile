# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "mavericks"

  config.vm.provider :vmware_fusion do |v, override|
    v.gui = true
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = "1"
    v.vmx["firmware"] = "efi"
    v.vmx["cpuid.coresPerSocket"] = "1"
    v.vmx["keyboardAndMouseProfile"] = "macProfile"
    v.vmx["smc.present"] = "TRUE"
    v.vmx["hpet0.present"] = "TRUE"
    v.vmx["ich7m.present"] = "TRUE"
    v.vmx["ehci.present"] = "TRUE"
    v.vmx["usb.present"] = "TRUE"
    v.vmx["scsi0.virtualDev"] = "lsilogic"
  end
end
