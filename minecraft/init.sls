packages:
  pkg.installed:
    - pkgs:
      - openjdk-17-jre-headless
      - ufw

/etc/ufw/user.rules:
  file.managed:
    - source: salt://minecraft/user.rules

/etc/ufw/user6.rules:
  file.managed:
    - source: salt://minecraft/user6.rules


/opt/server:
  file.recurse:
    - source: salt://minecraft/server


