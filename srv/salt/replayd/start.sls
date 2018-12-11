replayd_service:
  service.running:
    - name: replayd
    - enable: True

start_replayd:
  cmd.run:
    - name: service replayd start
    - user: replayd
    - group: replayd
