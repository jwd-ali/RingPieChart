<img src="https://github.com/jwd-ali/TidalTestProject/blob/master/images/header/header.png">
<img align="right" src="https://github.com/jwd-ali/RingPieChart/blob/master/images/demo.png" width="480" />
<p><h1 align="left">RingPieChart</h1></p>

[![CI Status](https://travis-ci.org/jwd-ali/RingPieChart.svg)](https://travis-ci.org/jwd-ali/RingPieChart)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/RingPieChart.svg?style=flat)](https://cocoapods.org/pods/RingPieChart)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-0473B3.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/RingPieChart.svg?style=flat)](https://cocoapods.org/pods/RingPieChart)
[![Platform](https://img.shields.io/cocoapods/p/RingPieChart.svg?style=flat)](https://cocoapods.org/pods/RingPieChart)
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
        .package(url: "https://github.com/jwd-ali/RingPieChart.git", from: "2.0.0")
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

If you prefer not to use a dependency manager, you can integrate RingPieChart into your project manually.

- Add sources into your project:
  - Drag `Circular.swift`

## Usage

> If you are using any dependency manager (pods , carthage , package manager)to integrate RingPieChart. Import RingPieChart first:
> ```swift
> import RingPieChart
> ```

> And for Manuall install you dont need to import anything 

- Init your ring with  `percentages` and `colors`:
```swift
 let chart = Circular(percentages: [42,27,18,13], colors: [.blue,.purple,.orange,.red],aimationType: .animationFadeIn,showPercentageStyle: .inward)
 // OR 
 let chart = Circular(percentages: [42,27,18,13], colors: [.blue,.purple,.orange,.red])
```
Animation is True by default 
you can set frame or add constraints to chart 

```swift
 chart.frame = CGRect(x: 50, y: 50, width: 250, height: 250)
 self.view .addSubview(chart)
```
You can add chart line width by setting lineWidth property like this 
```swift
chart.lineWidth = 12 
```
Ring chart Has 5 values for its Animation Enum 
```swift 
public enum AnimationStyle: Int {
    case animationFanAll
    case animationFan
    case animationFadeIn
    case animationthreeD
    case none
}
```
and 4 different styles of showing percentages. You can choose accoding to your UI needs

```swift
public enum PercentageStyle : Int {
    case none
    case inward
    case outward
    case over
    
}
```

You can pass them in an initialiser or set there value after intialisation 
```swift
chart.animationType =  .animationFan
chart.showPercentageStyle = .outward
```
Congratulations! You're done.

<h3 align="center">
    <img src="https://github.com/jwd-ali/RingPieChart/blob/master/images/ezgif.com-video-to-gif.gif"  alt="Beautiful Ring PieChart" />
</h3>


License
-------

RingPieChart is under [MIT](https://opensource.org/licenses/MIT). See [LICENSE](LICENSE) file for more info.
