copy_ replayd:
  file.managed:
    - name: /home/salt/start.sh
    - source: salt://replayd/files/start.sh
    - user: replayd
    - group: replayd
    - mode: 755
    - if_missing: /home/salt/start.sh

start_replayd:
  cmd.run:
    - name: service replayd.service start
    - user: replayd
    - group: replayd
