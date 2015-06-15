# Puppet package provider for dnf, the replacement for yum 
# https://github.com/rpm-software-management/dnf

require 'puppet/provider/package/pip'

Puppet::Type.type(:package).provide :dnf,
  :parent => :yum do

  desc "RedHat packages via `dnf`.

  This should provide a native package manager for f22 and greater"

  def self.cmd
    "dnf"
  end
end
