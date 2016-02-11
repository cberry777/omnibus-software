name "multiprocess"
default_version "0.70.4"

dependency "python"
dependency "pip"
dependency "dill"

source :url => "http://danse.cacr.caltech.edu/packages/dev_danse_us/multiprocess-0.70.4.tgz"

build do
  # license "http://trac.mystic.cacr.caltech.edu/project/pathos/wiki/License"
  ship_license "BSD"
  command "#{install_dir}/embedded/bin/pip install -I --install-option=\"--install-scripts=#{install_dir}/bin\" #{name}==#{version}"
end