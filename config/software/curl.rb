#
# Copyright:: Copyright (c) 2012-2014 Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "curl"
default_version "7.50.0"

dependency "zlib"
dependency "openssl"
dependency "nghttp2"

source :url => "https://curl.haxx.se/download/curl-#{version}.tar.gz",
       :md5 => "03940d7d4fcea1521fbbf07c1cf16f5e"

relative_path "curl-#{version}"

build do
  ship_license "https://raw.githubusercontent.com/bagder/curl/master/COPYING"
  block do
    FileUtils.rm_rf(File.join(project_dir, 'src/tool_hugehelp.c'))
  end

  command ["./configure",
           "--prefix=#{install_dir}/embedded",
           "--disable-manual",
           "--disable-debug",
           "--enable-optimize",
           "--disable-ldap",
           "--disable-ldaps",
           "--disable-rtsp",
           "--enable-proxy",
           "--disable-dependency-tracking",
           "--enable-ipv6",
           "--without-libidn",
           "--without-gnutls",
           "--without-librtmp",
           "--without-libssh2",
           "--with-ssl=#{install_dir}/embedded",
           "--with-zlib=#{install_dir}/embedded",
           "--with-nghttp2=#{install_dir}/embedded"].join(" ")

  command "make -j #{workers}", :env => {"LD_RUN_PATH" => "#{install_dir}/embedded/lib"}
  command "make install"
end
