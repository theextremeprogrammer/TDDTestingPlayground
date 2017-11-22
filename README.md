# TDD Testing Playground

At the Tokyo iOS Meetup in Nov 2017 someone asked me if there was a way to have a quicker TDD cycle in Xcode and I couldn't provide a good answer. Afterwards someone suggested the idea of using an Xcode playground for this and recommended avoiding UIKit as they felt that this was the cause of much of the instability for Xcode Playgrounds. 

Recently I've been experimenting more with using [Quick](https://github.com/Quick/Quick) and [Nimble](https://github.com/Quick/Nimble) and I wanted to be able to TDD using these tools in an Xcode Playground. Getting these working in a Playground was much more complicated than I expected, but thanks to the ["Using 3rd party frameworks in Swift Playgrounds"](https://m.pardel.net/using-3rd-party-frameworks-in-swift-playgrounds-fd415f6dba10) and [Writing unit tests in Swift playgrounds](https://medium.com/@johnsundell/writing-unit-tests-in-swift-playgrounds-9f5b6cdeb5f7) blog posts on Medium.com plus referencing the Quick framework itself, I was finally able to get past the XCTest linker error and pull this together. 👍🏼

To get this Playground working locally:
1. Download or clone the repo
1. From the command line run `$ make bootstrap` (This grabs the latest version of [Quick](https://github.com/Quick/Quick) and [Nimble](https://github.com/Quick/Nimble) using [Carthage](https://github.com/Carthage/Carthage))
1. Open the `TestingFrameworksWrapper.xcodeproj` project in Xcode
1. Build the project (`⌘+B`)
1. Click on the `TDD Testing` playground file
1. Start TDD'ing!
