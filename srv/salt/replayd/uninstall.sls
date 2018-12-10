uninstall_json:
  cmd.run:
    - name: rm -f /etc/replayd/config.json
    - user: replayd
    - group: replayd

uninstall_replayd:
  cmd.run:
    - name: rm -f /usr/local/bin/replayd
    - user: replayd
    - group: replayd    