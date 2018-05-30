docker gpg:
  cmd.run:
  - name: curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  - unless: apt-key list | grep 0EBFCD88

docker repo:
  pkgrepo.managed:
  - humanname: downloaddocker
  - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable
  - file: /etc/apt/sources.list.d/downloaddocker.list

docker pkg:
  pkg.installed:
    - name: docker-ce
