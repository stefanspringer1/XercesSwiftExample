# XercesSwiftExample

This Swift package tries to use [XercesSwift](https://github.com/stefanspringer1/XercesSwift), using Xerces-C++ as a SAX parser in Swift.

Sadly, this does not function yet, there are errors of the following type:

```text
Undefined symbol: xercesc_3_2::XMLFormatter::formatBuf(char16_t const*, unsigned long, xercesc_3_2::XMLFormatter::EscapeFlags, xercesc_3_2::XMLFormatter::UnRepFlags)
```

...the reason for this is that the libxerces dynamic library is not referenced or "installed" properly, see [XercesSwift](https://github.com/stefanspringer1/XercesSwift) for more details.

Note that there is the corresponding Xcode (not Swift Package Manager) project [XercesSwiftXcode](https://github.com/stefanspringer1/XercesSwiftXcode) where this works with the dynamic library integrated into the project (the `libxerces-c-3.2.dylib` inside that project is for macOS on Intel and is to be replaced by the one for macOS on ARM from [XercesBuild](https://github.com/stefanspringer1/XercesBuild)).

Of course, any help is welcome!

---

Legal notice: Usage of any of the included material is to your own risk.