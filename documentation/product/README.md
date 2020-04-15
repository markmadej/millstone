# Initial v1.0 functionality requirements
millstone should be built using lean methodologies, aiming to get a product to customer hands with solid, but limited functionality at first.

millstone will initially support the standard daily cycle of an agile environment - a scrum meeting in the AM where you report what you did yesterday, what you're doing today, and anything blocking you.  In addition, you need a task list to keep you organized throughout the day.

millstone 1.0 will be a task list with tagging capabilities, and a custom standup view.  You will be able to add items to a task list, and mark them as:
* Scrum Worthy (which means it will show up on the scrum list)
* Worked on Today
* Blocked
* New / In Progress / Completed / Not Completed

The date they are created will be automatically tracked as well.

When you bring up the standup view, it will display:
* Scrum-worthy items you completed yesterday
* Scrum-worthy items that you worked on, but did not complete, yesterday
* Scrum-worthy items that are not yet started
* Blocked items

You should be able to access the standup view for any given date : ie /users/1/standup/2018/07/06 (or something similar)