# FFI Additions

[![Join the chat at https://gitter.im/P3t3rU5/winffi](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/P3t3rU5/winffi?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

FFI Additions is a gem that adds functionality to FFI
This gem is work in progress
To install:

```
gem install ffi-additions
```

`FFIAdditions::Struct` - same as FFI::Struct, but with getters and setter defined for all layout fields.

`Array::from_pointer_of` - maps pointer to an array of structs

# License
```
(The MIT License)

Copyright &copy; 2016 Pedro Miranda

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```