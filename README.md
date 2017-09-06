# AVPlayerViewController-Bug
Bug in iOS SDK (iOS 11 Beta)

## Area:
AVKit

## Summary:
AVPlayerViewController shows the overlay view at the top. The view has incorrect size in fullscreen and windowed modes.

Steps to reproduce:
1. Launch the project on iOS 11.
2. Launch the project on iOS 10 .
3. Compare results.

![iOS10](https://github.com/sample-repo/AVPlayerViewController-Bug/blob/master/iOS10.PNG)

![iOS11](https://github.com/sample-repo/AVPlayerViewController-Bug/blob/master/iOS11.png)

## Expected Results:
Content overlay view has correct size to attach custom views at center/bottom/top.
According to documentation: "Use the content overlay view to add additional custom views between the video content and the controls."

## Version:
iOS 11 beta 9.

## Notes:

