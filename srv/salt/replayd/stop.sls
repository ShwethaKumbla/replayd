stop_replayd:
  cmd.run:
    - name: service replayd.service stop
    - user: replayd
    - group: replayd