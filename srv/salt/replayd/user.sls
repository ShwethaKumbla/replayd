replayd:
  group:
    - present
  user:
    - present
    - shell: /bin/bash
    - groups:
      - replayd
      - sudo
    - require:
      - group: replayd
