# VSCode Common
In the top level of vscode, we introduce some common configurations that are not related to code or projects, which can be saved as user settings.

## Prerequisite
- VS Code
- VSCode Extensions:
  - Vim
  - GitLens
  - Remote - SSH
  - Remote Explorer

## Remote Development
VSCode provides seamless remote development support through extensions. For SSH connections, you only need to:
1. Configure the host (physical machine or container) in `~/.ssh/config`.
2. Install `curl` on the remote host to automatically download the vscode-server.
