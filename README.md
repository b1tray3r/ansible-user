# ansible-user
Dieses Repository legt mittels Ansible Playbook einen Benuzter "ansible" an und erlaubt den SSH Zugriff mit dem gegebenen Öffentlichen SSH-Schlüssel.

Das Skript "setup.sh" kann mittels dem unten stehenden Befehl heruntergeladen und ausgeführt werden:

```bash
wget -O setup.sh https://raw.githubusercontent.com/b1tray3r/ansible-user/master/setup.sh
bash setup.sh
```

Das Skript erwartet eine Umgebungsvariable "ANSIBLE_USER_PASSWORD", falls diese nicht gesetzt ist wird danach gefragt.


