# XercesSwiftExample

This Swift package tries to use [XercesSwift](https://github.com/stefanspringer1/XercesSwift), using Xerces-C++ as a SAX parser inm Swift.

Sadly, this does not function yet, there are errors of the following type:

```text
Undefined symbol: xercesc_3_2::XMLFormatter::formatBuf(char16_t const*, unsigned long, xercesc_3_2::XMLFormatter::EscapeFlags, xercesc_3_2::XMLFormatter::UnRepFlags)
```

...the reasson for this is that the libxerces dynamic library is not referenced or "installed" properly, see [XercesSwift](https://github.com/stefanspringer1/XercesSwift) for more details.

Of course, any help is welcome!