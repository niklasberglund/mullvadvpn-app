# Integration tests

## CI setup
1. Install Xcode
2. Sign in with Apple id in Xcode
3. Download manual provisioning profiles in Xcode
4. Install Xcode command line tools `xcode-select --install`
5. Install yeetd
 - `wget https://github.com/biscuitehh/yeetd/releases/download/1.0/yeetd-normal.pkg`
 - `sudo installer -pkg yeetd-normal.pkg -target yeetd`
6. Install Homebrew and dependencies
  - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - `brew install xcbeautify wget swiftlint`
7. Install Ruby
  - `\curl -sSL https://get.rvm.io | bash`
8. Install Rust and configure it
  - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
  - `rustup target add aarch64-apple-ios-sim`
9. Install Go 1.19 [https://go.dev/dl/](https://go.dev/dl/)
10. Make sure parameters are correctly configured under [GitHub actions secrets](https://github.com/mullvad/mullvadvpn-app/settings/secrets/actions)
