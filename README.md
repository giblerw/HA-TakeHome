### iOS Coding Exercise - HomeAdvisor
#### Weston Gibler - TakeHome Evaluation
> Approximate duration spent building: ~3.25 hours

> No outside libraries or pods were used.

> To side load the app, just clone, then open the .xcodeproj to begin.

##### Requirements Completed  


Step #1
> 1. Navigation title will be "Pros".   

> 2. Present the pro list in a plain table view nested within a navigation controller.

> 3. List cells will show the pro name on the first line, wrapping if needed, and the rating information on a second line.  

> 4. Pro name will by System Font Bold 18.0, 10px from the top, 15px from the sides.  

> 5. The rating information will read "Ratings: <value> | <count> rating(s)" if the count is greater than 0, otherwise it will read "References Available"  

> 6. The rating information will be System Font 16.0; color the text green if the rating is 4.0 or greater, orange if 3.0 to 4.0, or red if lower than 3.0. Otherwise it will be black. It will be 10px from from the name label, 10px from the bottom, and 15px from the sides.  

> 7. The cells will have a disclosure indicator.  

> 8. The pros will be sorted alphabetically by name.  

> 9. Tapping on a pro will navigate to the details screen.  

![TableView Mockup](https://s3.us-east-2.amazonaws.com/weston-gibler-portfolio/HA/Screen+Shot+2018-10-17+at+5.48.53+PM.png)
  Step #2  


  > 1.Navigation title will be "Details".

  > 2.The pro name will be centered, wrapping if necessary, System Font Bold 20.0, 20px from the top, and 15px from the sides.  

  > 3.The specialty will be centered, 10px below the name, System Font Medium 18.0.  

  > 4.The rating information will be centered, 10px below the specialty, System Font Bold 16.0.  

  > 5.The rating information will be the same as on the list screen; see #5 above.  

  > 6.The location will be 30px below the rating information, 15px from the left side, System Font 16.0.  

  > 7.The services will be 10px below the location, wrapping if needed, 15px from the sides, System Font 16.0. If no services are available, display "Services Not Available".  

  > 8.The overview will be 30px from the services, 15px from the sides, and will fill the remaining space until the buttons at the bottom with a 30px padding between the overview and buttons, System Font 14.0. (hint: text view)  

  > 9.There will be CALL and EMAIL buttons, equal widths, 15px from the sides, bottom, and each other. They will be 50px tall, System Font Medium 16.0, with a background color of #F7901E.  

  > 10.Tapping the call button will print "phone = <phone number>".

![UI mockup 2.0](https://s3.us-east-2.amazonaws.com/weston-gibler-portfolio/HA/Screen+Shot+2018-10-17+at+5.49.04+PM.png)
![UI mockup 2.1](https://s3.us-east-2.amazonaws.com/weston-gibler-portfolio/HA/Screen+Shot+2018-10-17+at+5.49.19+PM.png)
![UI mockup 2.2](https://s3.us-east-2.amazonaws.com/weston-gibler-portfolio/HA/Screen+Shot+2018-10-17+at+5.49.30+PM.png)
