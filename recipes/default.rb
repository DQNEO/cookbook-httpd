%w{httpd mod_ssl}.each do |pkg|
  package pkg do
    action :install
  end
end

service "httpd" do
  action [ :enable, :start ]
  supports :status => true, :restart => true, :reload => true
end

