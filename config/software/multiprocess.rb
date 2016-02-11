name "multiprocess"
default_version "0.70.4"

dependency "python"
dependency "pip"
dependency "dill"

#source :url => "http://danse.cacr.caltech.edu/packages/dev_danse_us/multiprocess-0.70.4.tgz",
#       :md5 => "587596fff965e66a4f474a283a72f180"

build do
  # license "http://trac.mystic.cacr.caltech.edu/project/pathos/wiki/License"
  ship_license "http://trac.mystic.cacr.caltech.edu/project/pathos/wiki/License"
  # command "#{install_dir}/embedded/bin/pip install -I --install-option=\"--install-scripts=#{install_dir}/bin\" #{name}==#{version}"
  command "#{install_dir}/embedded/bin/pip install -I  #{name}==#{version}"
end