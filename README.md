# QuadrumviratoApp

## Description
QuadrumviratoApp allows you to discover new recipes and save the ones you like the most through the use of Edamam API. All of this has been made by using the following technologies:
- **CoreData** to store the recipes 
- **API calls** to **Edamam API** gather the data of the recipes and to filter the result based on different parameters
- **SwiftLint** to improve the overall code quality
- **SwiftUI** to make the UX/UI of the app
- **MVVM design pattern** to accelerate the development process

## Usage
The whole application works through a tab bar that allows you to switch between the views which are:
- **Discover** where you can find the suggested recipes in a scrollView that allows you to preview them and open them with a single tap to see the related details and add them to the favourites
- **Search** where you can search songs based on different parameters like name of the recipe, ingredients, calories etc. Plus, you can also see a collection of different categories of recipes
- **Favourites** where you can see the collection of your favourite recipes

## Install SwiftLint

### 1) Installation

The simplest way to install SwiftLint is by downloading SwiftLint.pkg from the latest GitHub release and running it at:
  - https://github.com/realm/SwiftLint/releases
  - Alternatively, you can also install SwiftLint using Homebrew by running this command: 
```
brew install swiftlint
```
### 2) Integrate SwiftLint with Xcode

In order to integrate SwiftLint with Xcode project target to get warnings and errors displayed in the Xcode IDE, you just need to add a new “Run Script Phase” with following script:
```bash
if which swiftlint >/dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed!"
  echo "Download from https://github.com/realm/SwiftLint, or use brew install swiftlint"
fi
```
This script will run automatically whenever you build the project
To reach "Run Script Phase" you have to: Click on "Project" then go on the "Build Phases" section, then click the "+" button on the left and  add "Run Script". Finally paste the script in the box in that section.

### 3) .swiftlint.yml File

Take the .swiftlint.yml file of your choosing and save it in your project directory (parent), the one where the file .xcodeproj is located. For example you can use this one: 

  - https://gist.githubusercontent.com/milanpanchal/fb43eb32119c05f0f9770b450c2c3051/raw/c8b7ccb8f10902ccb1375c5a7103f7178f463d69/.swiftlint.yml
