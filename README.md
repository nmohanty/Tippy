# Tippy
# Pre-work - *Tippy*

**Tippy** is a tip calculator application for iOS.

Submitted by: **Namrata Mohanty**

Time spent: **11** hours spent in total

## User Stories

The following **required** functionality is complete:
* [ ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [ ] Custom font
* [ ] UI animations
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] Added the number of people splitting the tip, so the app can be used for a group when needed. The number of people given is 1 to 10, beyond which the result can be divided easily if there are more people than 10 using 1 to 10 and then doubling the value as needed


## Video Walkthrough for the app

![tippy tipcalc app gif walkthrough] (tippy.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes on the various additions for optionals and issues resolved to complete those animations successfully are as below:

1. During the making of the basic app - tip textfield on the ui was shorter in length than needed and the result on simulation showed the tipfield cutoff till the textfield length was fixed
2. For animation to fade in and out with just viewfields, it took some time to figure out which action trigger to use on the field
3. Keeping text in bill textfield in firstview needed to be the input for bill textfield in second view as soon as second view loaded - so researched the internet to find the correct syntax and use get set command to store the double value from one textfield into the secondview bill textfield.text
4. Research also helped in resolving how to keep the bill textfield active as soon as it loads in both first and secondview with .becomeFirstResponder syntax
5. Research used to add the frame.origin syntax to make the secondview transition to a new y origin as it fades in.


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
