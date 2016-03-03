name "python-confluent-schemaregistry"
default_version "0.1.1"
dependency "python"

build do
  ship_license "https://github.com/verisign/python-confluent-schemaregistry/blob/master/LICENSE"

  command "git clone https://github.com/verisign/python-confluent-schemaregistry", :cwd => "/tmp/"
  command "#{install_dir}/embedded/bin/python setup.py install", :cwd => "/tmp/python-confluent-schemaregistry/"
end
