<!--
 Author: TruongPham
-->

Create toggle button with one line code and customize easily

## Features

- Create toggle button with one line code
- Specify it easily
- Allow customize height, with, background color...

## Getting started

```dart
  import 'package:f_toggle_button/src.dart';
```

## Usage

```dart
FToggleButton(
    isEnable: true,
    onChangeStatus: (bool value) {
    
    },
    bgCircleDisable: Colors.white,
    bgCircleEnable: Theme.of(context).colorScheme.primary,
    bgDisable: Colors.grey.withOpacity(0.5),
    borderColorEnable: Theme.of(context).colorScheme.primary.withOpacity(0.5),
    borderColorDisEnable: Colors.grey.withOpacity(0.5),
),

FToggleButton(
    isEnable: false,
    onChangeStatus: (bool value) {
    
    },
    bgCircleDisable: Colors.white,
    bgCircleEnable: Theme.of(context).colorScheme.primary,
    bgDisable: Colors.grey.withOpacity(0.5),
    borderColorEnable: Theme.of(context).colorScheme.primary.withOpacity(0.5),
    borderColorDisEnable: Colors.grey.withOpacity(0.5),
),
```



- Screenshot


   ![toggle_button.png](..%2F..%2Ftoggle_button.png)
# switch_button
