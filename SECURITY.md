# Security

## Design boundary

Clipboard Button does not read clipboard data. It sends one local IPC command
to the already-running Omarchy shell, which owns the built-in clipboard
history overlay. The plugin has no network access, helper executable,
installer, service, package dependency, privilege escalation, or persistent
state.

## Reporting

Please report suspected vulnerabilities privately through GitHub's security
advisory feature for `majesticio/omarchy-clipboard-button`. Do not include
secrets or clipboard contents in a public issue.
