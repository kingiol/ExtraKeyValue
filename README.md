ExtraKeyValue
=============

`ExtraKeyValue` is a category for NSObject, that you can add extra value of key for all object instance, like the message setValue:forKey: 

Very Easy To Use
================

1.drag the `ExtraKeyValue` folder to your project.

2.add `#import "NSObject+ExtraKeyValue.h"` to your **-Prefix.pch** file.

3.if your have a class named `Student`, then you can do this to use.

```

Student *student = [[Student alloc] init];
// set value by key
[student setPropertieValue:@"kingiol" forKey:@"name"];
[student setPropertieValue:@"20" forKey:@"age"];

// get value by key
NSLog(@"student name:%@ age:%@", [student getPropertieValueForKey:@"name"], [student getPropertieValueForKey:@"age"]);

```

License
=======
The MIT License (MIT)

Copyright (c) 2013 Kingiol

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.