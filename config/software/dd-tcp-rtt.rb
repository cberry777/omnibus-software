name "dd-tcp-rtt"
default_version "last-stable"

env = {
  "GOROOT" => "/usr/local/go",
  "GOPATH" => "/var/cache/omnibus/src/dd-tcp-rtt"
}

if ohai['platform_family'] == 'mac_os_x'
  env.delete "GOROOT"
  gobin = "/usr/local/bin/go"
else
  gobin = "/usr/local/go/bin/go"
end

build do
   ship_license "https://raw.githubusercontent.com/DataDog/dd-tcp-rtt/master/LICENSE"
   command "#{gobin} get -d -u github.com/DataDog/dd-tcp-rtt", :env => env
   command "git checkout #{default_version} && git pull", :env => env, :cwd => "/var/cache/omnibus/src/dd-tcp-rtt/src/github.com/DataDog/dd-tcp-rtt"
   command "#{gobin} build -o #{install_dir}/bin/dd-tcp-rtt $GOPATH/src/github.com/DataDog/dd-tcp-rtt", :env => env
end
