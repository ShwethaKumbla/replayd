/etc/replayd/:
  file.directory:
    - name: /etc/replayd/ 
    - user: replayd
    - group: replayd
    - mode: 755
    - if_missing: /etc/replayd/

/etc/replayd/config.json:
  file.managed:
    - name: /etc/replayd/config.json
    - source: salt://replayd/files/config.json
    - user: replayd
    - group: replayd
    - mode: 644
    - template: jinja
    - defaults:
        ip: {{ grains['ip_interfaces']['eth0'][0] }}
        port: {{ salt['pillar.get']('replayd:port') }}
    - if_missing: /etc/replayd/config.json

/home/replayd/replayd.log:
  file.managed:
    - name: /home/replayd/replayd.log
    - user: replayd
    - group: replayd
    - mode: 644
    - if_missing: /home/replayd/replayd.log

/usr/local/bin/:
  file.managed:
    - name: /usr/local/bin/replayd
    - source: salt://replayd/files/replayd
    - user: replayd
    - group: replayd
    - mode: 755
    - if_missing: /usr/local/bin/replayd

/etc/systemd/system/:
  file.managed:
    - name: /etc/systemd/system/replayd.service
    - source: salt://replayd/files/replayd.service
    - user: replayd
    - group: replayd
    - mode: 644
    - if_missing: /etc/systemd/system/replayd.service  


