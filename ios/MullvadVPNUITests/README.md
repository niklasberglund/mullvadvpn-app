# Integration tests

## CI setup
1. Install Xcode
2. Sign in to Apple id in Xcode
3. Download manual provisioning profiles in Xcode
2. Install Xcode command line tools `xcode-select --install`
3. Install Homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
4. Install iOS app dependencies
  - `brew install swiftformat xcbeautify`
5. Install Ruby and gems
  - `\curl -sSL https://get.rvm.io | bash`
  - `bundle install` in `ios` directory
6. Install Rust and crates
  - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
7. Install Go [https://go.dev/dl/](https://go.dev/dl/)
  - `cargo build` in `ios` directory
6. Copy configuration templates `for file in ./ios/Configurations/*.template ; do cp $file ${file//.template/} ; done`
7. Edit the configuration file for UI tests `ios/Configurations/UITests.xcconfig`