IP_NETWORK="192.168.56."
WORKSTATION_IP=10

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.define "webserver" do |webserver|
    webserver.vm.box = "ubuntu/jammy64"
    webserver.vm.hostname = "webserver"
    webserver.vm.network "private_network", ip: IP_NETWORK + "#{WORKSTATION_IP}"
    webserver.vm.provider :virtualbox do |v|
      v.name = "webserver"
      v.memory = 2048
      v.cpus = 2
      # v.gui = true
    end
    webserver.vm.provision "setup_system", type: "shell", run: "never" do |s|
      s.path = "scripts/setup_system.sh"
    end
    webserver.vm.provision "copy_html_file", type: "file", source: "web/index.html", destination: "/tmp/index.html", run: "never"
    webserver.vm.provision "setup_webserver", type: "shell", run: "never" do |s|
      s.path = "scripts/setup_webserver.sh"
    end
  end
  config.ssh.insert_key = false
end
