# QuadrumviratoApp

#####################
## Install SwiftLint
#####################

1) Installation

The simplest way to install SwiftLint is by downloading SwiftLint.pkg from the latest GitHub release and running it at:
  - https://github.com/realm/SwiftLint/releases
  - You can also install SwiftLint using Homebrew by running this command: brew install swiftlint

2) Integrate SwiftLint with Xcode

In order to integrate SwiftLint with Xcode project target to get warnings and errors displayed in the Xcode IDE, you just need to add a new “Run Script Phase” with following script:

  if which swiftlint >/dev/null; then
    swiftlint
  else
    echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
  fi

This script will run automatically whenever you build the project

3) .swiftlint.yml File

Take the .swiftlint.yml file of your choosing and save it in your project directory (parent), the one where the file .xcodeproj is located. For example you can use this one: 

  - https://gist.githubusercontent.com/milanpanchal/fb43eb32119c05f0f9770b450c2c3051/raw/c8b7ccb8f10902ccb1375c5a7103f7178f463d69/.swiftlint.yml
