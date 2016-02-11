name "dill"
default_version "0.2.5"

dependency "python"
dependency "pip"

source :url => "http://danse.cacr.caltech.edu/packages/dev_danse_us/dill-0.2.5.tgz",
       :md5 => "5B0C312F034914BE2E230457747D9B6C"

build do
  # license "http://trac.mystic.cacr.caltech.edu/project/pathos/wiki/License"
  ship_license "BSD"
  command "#{install_dir}/embedded/bin/pip install -I --install-option=\"--install-scripts=#{install_dir}/bin\" #{name}==#{version}"
end