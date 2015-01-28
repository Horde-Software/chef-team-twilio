#
# Cookbook Name:: packages
# Recipe:: default
#

node[:packages].each do |package|

  ey_cloud_report "package-install" do
    message "Installing #{package[:name]}-#{package[:version]}"
  end
  
  enable_package package[:name] do
    version package[:version]
  end
    
  package package[:name] do 
    version package[:version]
    action :install 
  end

end

Chef::Log.info "Installing appropriate version of Node"
package "net-libs/nodejs" do
  version "0.10.28"
  action :upgrade
end


