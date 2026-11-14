In this project, ChatGPT was used.

ChatGPT helped us first create BusBuddy which was eventually discarded due to our understanding of the problem being shallow and the solution we had come up with was for a problem that didn’t really exist. After this, we had used ChatGPT to fix the wording and grammar on our FRs and NFRs in our System Requirements Specification. It was also in UI/UX layout in helping us know where we should put the FRs so that the user can spot it easily and won’t be confused while using our app. ChatGPT was also in the Final Project Report, specifically in the ‘design’ and ‘implementation’ sections of the Golden Thread Table, to explain the definition and give examples for both of these. 

**For the Prototype:**   
It was vibecoded, specifically by Claude AI. Originally the prototype was made with Figma, but due to it requiring Premium in order to be able to share and being unable to create a prototype that covers every FRs with Figma, I had made the decision to use Claude to code the website based on the FRs and the UI design.  
I asked Claude: “Based on these FR and UI, create a prototype .html file”. I had tested if the prototype was able to cover every single FRs I had given, as well as match UI design created by us.   
Note: I had specified Claude that while unhappy paths can be added, it was not necessary. I wanted Claude to only code a prototype that covers the FRs and only the happy paths were necessary.  
FR \- 1  
**Create a tutor profile listing courses and availability**   
Creating profile  
Name: John Doe  
Courses: Calculus  
Availability: Sun 4:30 \- 18:00, Mon: 6.30 \- 15:00  
Result: A profile was created with the specified details. The profile can be seen in the Tutor dashboard and the Tutor search. The profile can be viewed listing the availability, courses, and schedule. No reviews due to it being a new profile

\* I also tested if it would’ve created a tutor profile if I had not typed in the required section. It did not create a profile.  
FR-2   
**Search for tutors by filtering desired courses and time**  
Search: Math  
Results: Maya Chen and Priya Nair  
Both profiles listed Mathematics as their course

Search: Friday  
Results: Priya Nair  
The profile has Fri available

Search: Sunday 12:00PM  
Results: No profile found

Search: Maya Chen  
Results: No profile found  
While the profile ‘Maya Chen’ does exist, it does not appear due to the fact I had asked Claude to follow the FRs. FR-2 ‘Search for tutors by filtering desired courses and time’, the FR did not mention searching by name therefore it was not added.

After all, Claude can only do what it was asked to do, it can not infer what should be added as well.

FR-3   
**View tutor profile and see availability, what courses the tutor teaches, and reviews**

Priya Nair  
*View full profile*  
I was able to see:

Availability: Available

Courses:

* Mathematics  
* English  
* Statistics

Monday: 10:00 \- 12:00  
Friday: 15:00 \- 18:00  
Sunday: 13:00 \- 15:00  
The other days are listed as: Not available on ‘day’  
Description  
Math major. I focus on building intuition before formulas, and I love essay feedback sessions too. 

FR \- 4  
**Send/Receive tutoring requests**

Sent a request to Maya Chen

John Doe  
Mathematics  
Wednesday  
17:00-19:00

As Maya Chen  
Received request from John Doe (Created by me) and Jamie Lee (An example request created by Claude)

Accepted John Doe and was able to mark session as done  
Status was changed to completed

Declined Jamie Lee  
Status was changed to declined

FR-5   
**Leave a review**  
In my requests  
Submitted review to Maya Chen  
5 Stars  
Nothing written

In profile:  
5 stars John Doe \- Mathematics  
(no comment)

Submitted review to Priya Nair  
1 Star  
‘Awful’

In profile  
Total stars reduced from 4 to 3

1 Star Alex \- English  
Awful

The prototype coded by Claude had definitely followed the FRs I had given, but it followed it literally causing the search function to be unable to search by name. Claude is an AI that can do what we have told it to do, and can not infer what could/should be added that is on us humans.  
