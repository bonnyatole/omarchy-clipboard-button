# Security

## Design boundary

Clipboard Button does not read clipboard data. It sends one local IPC command
to the already-running Omarchy shell, which owns the built-in clipboard
history overlay. The plugin has no network access, helper executable,
installer, service, package dependency, privilege escalation, or persistent
state.

## Reporting

Please report suspected vulnerabilities in this fork privately through
GitHub's security advisory feature for `bonnyatole/omarchy-clipboard-button`.
Do not include secrets or clipboard contents in a public issue.

This project is a fork of
[majesticio/omarchy-clipboard-button](https://github.com/majesticio/omarchy-clipboard-button).
Issues that also affect the original code may be worth reporting there too.
