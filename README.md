# SimplyQR
[![wakatime](https://wakatime.com/badge/user/9cabb579-a7c5-4976-a214-8ca4b23bcbc9/project/018b6160-536f-4c0b-ae6c-66247ad167ae.svg)](https://wakatime.com/badge/user/9cabb579-a7c5-4976-a214-8ca4b23bcbc9/project/018b6160-536f-4c0b-ae6c-66247ad167ae)

Simply(no tracking/ads) a Open Source Swift-powered QR Code reader with the future option to also scan existing photos from your phone, I do
hope to eventually include other barcode standards that might be useful in a offline context.

Targets iOS 17.0+ mainly for the security updates I got to keep the end user secure! its a new age of tech and 0days be endless

After some thinking I'm leaning towards using functions provided by apple to store scan history and handle crash analytics iirc I think they do provide that service, Instead of using firebase.

My first attempt at a public project I hope to learn alot while publishing my code such as workflows and automated testing.
Hopefully I don't dump my own creds/keys by accident.

Once sort of complete will publish to the app store - way too many ad infested qr code scanners other then I guess the main apple ios camera app for scanning :p but hey it's just a practice project I made to boost my poor morale lol

Thanks for stopping by and checking out my project!


# Timeline

11/10
- History view and Data Controller for handling CoreData done for the most part, would like to tweak the Ui/Ux for a nicer look
- Some small bug fixes and created a launch screen

10/30 
- Starting history view deciding if we should store history as a user object in firebase or just locally like in a db leaning towards the latter.
- PhotoPicker input works now.
- Basic Scanner works with thanks to the folks at hacking swift via there CodeScanner Lib, 
Will have to learn more to eventually implement my own scanning functionality.


# TODO
Sorted by Priority (High to Low)

- Fine Tune History View
- Create a Settings View
- Anaylze CodeScanner and see how it works under the hood so I can create my own impl
- Implement a error handling/crashlytics
- Maybe a update check


# Credits

Currently I'm utilizing [CodeScanner](https://github.com/twostraws/CodeScanner) lib which was made by Paul Hudson, who writes free Swift tutorials over at Hacking with Swift but I do plan on creating my own as I get more comfortable with Swift. 
It’s available under the MIT license, which permits commercial use, modification, distribution, and private use.

# License

Copyright © 2023 TooPlain

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
