stop-firewalld:
  service.dead:
    - name: firewalld
    - enable: false

copy-selinux:
  file.managed:
    - /etc/selinux/config:
      - source: salt://init/firewall/files/config
