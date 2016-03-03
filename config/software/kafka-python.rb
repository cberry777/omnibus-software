name "kafka-python"
default_version "1.0.1"


dependency "python"
dependency "pip"

build do
  ship_license "Apachev2"
  command "#{install_dir}/embedded/bin/pip install -I --install-option=\"--install-scripts=#{install_dir}/bin\" #{name}==#{version}"
end