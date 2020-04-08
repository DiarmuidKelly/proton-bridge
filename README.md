# ProtonMail Bridge
Copyright (c) 2020 Proton Technologies AG

This repository holds the ProtonMail Bridge application.
For a detailed build information see [BUILD](./BUILD.md).
For licensing information see [COPYING](./COPYING.md).
For contribution policy see [CONTRIBUTING](./CONTRIBUTING.md).

## Description
ProtonMail Desktop Bridge for e-mail clients.

When launched, the servers will be started and a GUI will show up. From this GUI,
the server can be started and stopped and configuration for e-mail clients can
be generated.

To configure an e-mail client, enter your ProtonMail credentials. Open your
e-mail client and add a new account with the settings which are displayed.
The client will be able to sync with your ProtonMail account only when the
bridge is started, so enabling it on startup is recommended.

When the main window is closed, the bridge will continue to run in the
background.

More details [on the public website](https://protonmail.com/bridge).


## Keychain
You need to have keychain in order to run the ProtonMail Bridge. On Mac or
Windows, Bridge uses native credential managers. On Linux, use
[Gnome keyring](https://wiki.gnome.org/Projects/GnomeKeyring/)
or
[pass](https://www.passwordstore.org/).

## Environment Variables

### Bridge application
- `BRIDGESTRICTMODE`: tells bridge to turn on `bbolt`'s "strict mode" which checks the database after every `Commit`. Set to `1` to enable.

### Dev build or run
- `PROTONMAIL_ENV`: when set to `dev` it is not using Sentry to report crashes
- `VERBOSITY`: set log level used during test time and by the makefile.
- `VERSION`: set the bridge app version used during testing or building.

### Integration testing
- `TEST_ENV`: set which env to use (fake or live)
- `TEST_ACCOUNTS`: set JSON file with configured accounts
- `TAGS`: set build tags for tests
- `FEATURES`: set feature dir, file or scenario to test




