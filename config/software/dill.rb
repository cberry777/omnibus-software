name "dill"
default_version "0.2.5"

dependency "python"
dependency "pip"

source :url => "http://danse.cacr.caltech.edu/packages/dev_danse_us/dill-0.2.5.tgz",
       :md5 => "5b0c312f034914be2e230457747d9b6c"

build do
  # license "http://trac.mystic.cacr.caltech.edu/project/pathos/wiki/License"
  ship_license "http://trac.mystic.cacr.caltech.edu/project/pathos/wiki/License"
  command "#{install_dir}/embedded/bin/pip install -I --install-option=\"--install-scripts=#{install_dir}/bin\" #{name}==#{version}"
end