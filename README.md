# WeCodePropertiesSwift ![Build Status](https://travis-ci.org/delr3ves/WeCodePropertiesSwift.svg?branch=master)

Welcome to the Kotlin implementation of WeCodeFest's property based testing workshop.

## Working with the project

The most important thing you'll want to do with this project is just running the tests. To do so, open the xcode and run them :)
        
## Libraries
To implement this project, we'll use:
* [XCTest](https://developer.apple.com/documentation/xctest) as the runner
* [SwiftCheck](https://github.com/typelift/SwiftCheck/) for properties.


## Branches:

This project contains a few branches in order to help you with irrelevant implementation details that could be time consuming but don't add any value to this Workshop.  

### Project scafolding:
Just a simple scafolding of a Kotlin project in order to run the tests 

```
git checkout scafolding
```

### Sum properties (15'):
In this branch, you'll find the definition of each test we'll need to implement in order to test a sum. 
Just find the test in [WeCodePlaygroundSpec.kt](src/test/kotlin/com/emaginalabs/wecodeproperties/WeCodePlaygroundSpec.kt)

```
git checkout sum-properties
```
In case you want solved exercises:
```
git checkout sum-properties-solved
```

### Know your tooling (15')
It's time to know about the internals of the library, so we'll just play with the tool.
Just find the test in [PlayingWithLibrarySpec.kt](src/test/kotlin/com/emaginalabs/wecodeproperties/PlayingWithLibrarySpec.kt)

```
git checkout playing-with-library
```

```
git checkout playing-with-library-solved
```

### Fibonacci properties (5'):
What do you think is the main property fibonacci should keep? 
Find the test in [FibonacciSpec.kt](src/test/kotlin/com/emaginalabs/wecodeproperties/FibonacciSpec.kt)

```
git checkout fibonacci-properties
```
```
git checkout fibonacci-properties-solved
```

### Collection properties (20'):
Lets find the main properties every collection should keep  
Find the test in [CollectionsSpec.kt](src/test/kotlin/com/emaginalabs/wecodeproperties/CollectionsSpec.kt)

```
git checkout collection-properties
```
```
git checkout collection-properties-solved
```

