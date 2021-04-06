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
import NibLogger

LOG.shared.isDetailLog = true
```

#### DEBUG
```swift
LOG.shared.isDetailLog = true
LOG.DEBUG("Debug Log")
LOG.shared.isDetailLog = false
LOG.DEBUG("Debug Log")
``` 
- Print Console

> 🟢[DEBUG][File.swift -> line: line Number]:  Debug Log
> 🟢[DEBUG]: Debug Log

#### INFO
```swift
LOG.shared.isDetailLog = true
LOG.INFO("Info Log")
LOG.shared.isDetailLog = false
LOG.INFO("Info Log")
``` 
- Print Console 

> 🔵[INFO][File.swift -> line: line Number]: Info Log
> 🔵[INFO]: Info Log

#### WARN
```swift
LOG.shared.isDetailLog = true
LOG.WARN("Warn Log")
LOG.shared.isDetailLog = false
LOG.WARN("Warn Log")
``` 
- Print Console     

> 🟡[WARN][File.swift -> line: line Number]: Warn Log
> 🟡[WARN]: Warn Log

#### ERROR
```swift
LOG.shared.isDetailLog = true
LOG.ERROR("Error Log")
LOG.shared.isDetailLog = false
LOG.ERROR("Error Log")
``` 
- Print Console

> 🔴[ERROR][File.swift -> line: line Number]: Error Log
> 🔴[ERROR]: Error Log

#### TAG
```swift
LOG.shared.isDetailLog = true
LOG.TAG(tag: "Some Tag", "Tag Log")
LOG.shared.isDetailLog = false
LOG.TAG(tag: "Some Tag", "Tag Log")
``` 
- Print Console

> [Some Tag][ViewController.swift -> line: 20]: Tag Log
> [Some Tag]: Tag Log

## Installation

NibLogger is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NibLogger', :tag => '1.2.0', :git => 'https://github.com/nibdevn/NibLogger'
```
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License

These works are available under the MIT license. See the [LICENSE][license] file
for more info.


[license]: LICENSE
