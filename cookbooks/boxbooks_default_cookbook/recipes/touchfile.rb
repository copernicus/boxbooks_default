touchfile = "#{ENV['HOME']}/.tmp_boxbuilder_default_cookbook.touchfile"

file touchfile do
  owner "#{ENV['SUDO_USER'] || ENV['USER']}"
  group ENV['SUDO_GID'] if ENV['SUDO_GID']
  mode "0644"
  action :create
end

bash "Write property value to file" do
  example_value = "Boxbooks the defaulr"
  code "echo '#{example_value}' > #{touchfile}"
end
