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
- iOS 10.0+

## Usage

> Setting Detail Log
```swift
NibLogger.shared.isDetailLog = true
```

> DEBUG
```swift
NibLogger.shared.isDetailLog = true
NibLogger.DEBUG("Debug Log")
NibLogger.shared.isDetailLog = false
NibLogger.DEBUG("Debug Log")
``` 
- Print Console

🟢[DEBUG][File.swift -> line: line Number]:  Debug Log
🟢[DEBUG]: Debug Log

> INFO
```swift
NibLogger.shared.isDetailLog = true
NibLogger.INFO("Info Log")
NibLogger.shared.isDetailLog = false
NibLogger.INFO("Info Log")
``` 
- Print Console 

🔵[INFO][File.swift -> line: line Number]: Info Log
🔵[INFO]: Info Log
> WARN
```swift
NibLogger.shared.isDetailLog = true
NibLogger.WARN("Warn Log")
NibLogger.shared.isDetailLog = false
NibLogger.WARN("Warn Log")
``` 
- Print Console     

🟡[WARN][File.swift -> line: line Number]: Warn Log
🟡[WARN]: Warn Log
> ERROR
```swift
NibLogger.shared.isDetailLog = true
NibLogger.ERROR("Error Log")
NibLogger.shared.isDetailLog = false
NibLogger.ERROR("Error Log")
``` 
- Print Console

🔴[ERROR][File.swift -> line: line Number]: Error Log
🔴[ERROR]: Error Log

> TAG
```swift
NibLogger.shared.isDetailLog = true
NibLogger.TAG(tag: "Some Tag", "Tag Log")
NibLogger.shared.isDetailLog = false
NibLogger.TAG(tag: "Some Tag", "Tag Log")
``` 
- Print Console

[Some Tag][ViewController.swift -> line: 20]: Tag Log
[Some Tag]: Tag Log

## Installation

NibLogger is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NibLogger', :tag => '1.1.0', :git => 'https://github.com/nibdevn/NibLogger'
```
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License

These works are available under the MIT license. See the [LICENSE][license] file
for more info.


[license]: LICENSE
