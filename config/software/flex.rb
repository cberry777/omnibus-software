name "flex"
default_version "2.6.0"

relative_path "flex-2.6.0"

source :url => "https://fossies.org/linux/misc/flex-2.6.0.tar.gz",
       :md5 => "5724bcffed4ebe39e9b55a9be80859ec"

# env = {
#   "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
#   "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
#   "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
# }

env = with_standard_compiler_flags()

build do
  command "./configure --prefix=#{install_dir}/embedded", :env => env
  command "make -j #{workers}", :env => env
  command "make -j #{workers} install", :env => env
end
