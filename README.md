# test

A description of this package.

How to build/run a Swift Project in Clion with CMake

Reference: http://reitzig.github.io/ramblings/2017/creating-swift-projects-in-clion

Notes:
Before step 7, you must cd into the project folder and `swift build`
That will generate the .build folder needed to put into the run configuration.
Note that every time you wish to run the application after a modification, you must `swift build`.

You can quickly build and run a file w/o xcode or cMake by cd'ing into the desired folder and running
`swiftc filename.swift` to create executable `filename`

You can enter the swift REPL by simply typing `swift` and hack away.