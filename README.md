# SimplyQR
[![wakatime](https://wakatime.com/badge/user/9cabb579-a7c5-4976-a214-8ca4b23bcbc9/project/018b6160-536f-4c0b-ae6c-66247ad167ae.svg)](https://wakatime.com/badge/user/9cabb579-a7c5-4976-a214-8ca4b23bcbc9/project/018b6160-536f-4c0b-ae6c-66247ad167ae)

Simply(no tracking/ads) a Open Source Swift-powered QR Code reader with the future option to also scan existing photos from your phone, I do
hope to eventually include other barcode standards that might be useful in a offline context.

Will try to only implement Crashlytics for crash reporting so I can hopefully identify any bugs that may arise, etc. 
(I may have to implement firebase as a whole for this so anonymous identifiers might be created on the backend via firebase and if that is the case there will be no identifiable information present I stand by on not adding ads or ad tracking)

My first attempt at a public project I hope to learn alot while publishing my code such as workflows and automated testing.
Hopefully I don't dump my own creds/keys by accident.
Thanks for checking out my project!

# Timeline

10/30 
-Starting history view deciding if we should store history as a user object in firebase or just locally like in a db leaning towards the latter.

-Basic Scanner works with thanks to the folks at hacking swift via there CodeScanner Lib, 
Will have to learn more to eventually implement my own scanning functionality.


# TODO
Sorted by Priority (High to Low)

Create a History View
Create a Settings View
Implement a error handling/crashlytics
Maybe a update check
