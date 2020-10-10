# NibLogger

![Swift](https://img.shields.io/badge/Swift-4.2-orange.svg)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/Nahanwoong/NibLogger/blob/main/LICENSE)

## Summary

- [Requirements](#requirements)
- [Usage](#usage)
- [Installation](#installation)
- [Example](#example)

## Requirements
- Swift 4.2
- iOS 9.0+

## Usage
> DEBUG
```swift
NibLogger.DEBUG("Debug Log")
``` 
- Print Console :

🟢[DEBUG][File.swift -> line: line Number]:  Debug Log

> INFO
```swift
NibLogger.INFO("Info Log")
``` 
- Print Console 

🔵[INFO][File.swift -> line: line Number]: Info Log
> WARN
```swift
NibLogger.WARN("Warn Log")
``` 
- Print Console     

🟡[WARN][File.swift -> line: line Number]: Warn Log
> ERROR
```swift
NibLogger.ERROR("Error Log")
``` 
- Print Console

🔴[ERROR][File.swift -> line: line Number]: Error Log

> TAG
```swift
NibLogger.TAG(tag: "Some Tag", "Tag Log")
``` 
- Print Console

[Some Tag][ViewController.swift -> line: 20]: Tag Log

## Installation
NibLogger is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'NibLogger', :tag => '1.0.0', :git => 'https://github.com/Nahanwoong/NibLogger'
```
## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License
These works are available under the MIT license. See the [LICENSE][license] file
for more info.

[license]: LICENSE
