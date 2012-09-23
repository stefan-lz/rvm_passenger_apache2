include_attribute "rvm"

default[:passenger][:rvm_path] = "#{rvm[:root_path]}"
default[:passenger][:rvm_ruby_version] = "1.9.3-p194"
default[:passenger][:rvm_gemset] = "global"

default[:passenger][:version]     = "3.0.17"
default[:passenger][:max_pool_size] = "6"
default[:passenger][:root_path]   = "#{passenger[:rvm_path]}/gems/#{passenger[:rvm_ruby_version]}@#{passenger[:rvm_gemset]}/gems/passenger-#{passenger[:version]}"
default[:passenger][:module_path] = "#{passenger[:root_path]}/ext/apache2/mod_passenger.so"
