<img src="https://github.com/jwd-ali/TidalTestProject/blob/master/images/header/header.png">
<img align="right" src="https://github.com/jwd-ali/RingPieChart/blob/master/images/demo.png" width="480" />
<p><h1 align="left">RingPieChart</h1></p>

[![CI Status](https://travis-ci.org/honghaoz/Ji.svg?branch=master)](https://travis-ci.org/jwd-ali/RingPieChart)
[![CocoaPods Version](https://img.shields.io/badge/pod-v1.0.0-yellowgreen)](https://cocoapods.org/pods/RingPieChart)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-0473B3.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/Ji.svg?style=flat)](https://cocoapods.org/pods/RingPieChart)
[![Platform](https://img.shields.io/cocoapods/p/Ji.svg?style=flat)](https://cocoapods.org/pods/RingPieChart)
[![Swift 5.1](https://img.shields.io/badge/swift-5.1-orange)](https://swift.org)

<p><h4>Add Beautiful Ring Piechart in your Project</h4></p>

___

<p> 
  

<a href="https://www.linkedin.com/in/jawad-ali-3804ab24/"><img src="https://i.imgur.com/vGjsQPt.png" width="134" height="34"></a>  

</br></br>


## Requirements

- iOS 10.0+ / Mac OS X 10.9+ / watchOS 2.0+ / tvOS 9.0+
- Xcode 8.0+

## Installation

### [CocoaPods](http://cocoapods.org)

To integrate **RingPieChart** into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

pod 'RingPieChart'
```

Then, run the following command:

```bash
$ pod install
```

### [Carthage](http://github.com/Carthage/Carthage)

To integrate `RingPieChart` into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "jwd-ali/RingPieChart"
```

### [Swift Package Manager (SPM)](https://swift.org/package-manager)

#### Prerequisites
- OSX


#### Update `Package.swift`
To integrate `RingPieChart` in your project, add the proper description to your `Package.swift` file:
```swift
// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    dependencies: [
        .package(url: "https://github.com/jwd-ali/RingPieChart.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "YOUR_TARGET_NAME",
            dependencies: ["RingPieChart"]
        ),
        ...
    ]
)
```

### Manually

If you prefer not to use a dependency manager, you can integrate Ji into your project manually.

- Add sources into your project:
  - Drag `Circular.swift`

## Usage

> If you are using any dependency manager (pods , carthage , package manager)to integrate RingPieChart. Import RingPieChart first:
> ```swift
> import Ji
> ```

> And for Manuall install you dont need to import anything 

- Init your ring with  `percentages` and `colors`:
```swift
 let cir = Circular(percentages: [42,27,18,13], colors: [#colorLiteral(red: 0.2768642902, green: 0.552749753, blue: 0.9582422376, alpha: 1),#colorLiteral(red: 0.6800097227, green: 0.2969456911, blue: 0.8304955363, alpha: 1),#colorLiteral(red: 0.9592140317, green: 0.4973406196, blue: 0.08628573269, alpha: 1),#colorLiteral(red: 0.9573473334, green: 0.2803060114, blue: 0.4532059431, alpha: 1)],animated: false)
```
