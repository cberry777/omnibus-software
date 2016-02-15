name "signalfx"
default_version "0.3.7"

# pyformance-0.3.2 requests-2.9.1 signalfx-0.3.7

dependency "python"
dependency "pip"

build do
  ship_license "https://github.com/signalfx/signalfx-python/blob/master/LICENSE"
  command "#{install_dir}/embedded/bin/pip install -I  #{name}==#{version}"
end