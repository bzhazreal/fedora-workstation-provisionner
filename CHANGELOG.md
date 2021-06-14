# Changelog

## Version 34.0
- Delete  : Remove Vagrant support.
- Update  : Fedora testing container 33 => 34.
- Delete  : Remove horizontal-workspaces gnome-shell because of gnome 40.
- Feature : Replace vscoss.vscode-ansible by zbr.vscode-ansible (redhat).

## Version 33.0
- Rework  : Merge all roles in workstation role.
- Rework  : Manage tasks by tags.
- Feature : Support moby engine.
- Feature : Support ansible libvirt.
- Feature : Perform gnome configuration.
- Feature : Support codium.

## Version 32.0
- Feature : Remove docker-ce, use podman man.
- Feature : Add new default package.
- Feature : Remove some default package (git is already installed, remove tmux keepassx), add tig.
- Feature : Remove telegram native app installer.
- Feature : Remove traefik configuration.
- Feature : Update docker repo file from 30 => 31.
- Fix     : Fix tap to click gsettings.
- Doc	  : Update install instructions.

## Version 31.0
- Feature : Remove vagrant as dev support, use gnome-boxes instead.

## Version 30.0
