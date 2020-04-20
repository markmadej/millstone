# Initial v1.0 functionality requirements
millstone should be built using lean methodologies, aiming to get a product to customer hands with solid, but limited functionality at first.

millstone will initially support the standard daily cycle of an agile environment - a scrum meeting in the AM where you report what you did yesterday, what you're doing today, and anything blocking you.  In addition, you need a task list to keep you organized throughout the day.

millstone 1.0 will be a task list with tagging capabilities, and a custom standup view.  You will be able to add items to a task list, and mark them as:
* Blocked
* In Progress (only one task can be in progress at a time)
* Closed/Completed

Other data will be tracked automatically by Millstone - creation date, completion date, and so on.

When you bring up the standup view, it will display all items on your current list, as well as anything completed since the last standup.

You should be able to access the standup view for any given date : ie /users/1/standup/2018-07-06 (or something similar)

## Project
A project is a larger effort, completed over weeks or months.  It may translate roughly to a Jira epic.  Basically these are buckets of work that can be used to group/categorize tasks.  This data can be leveraged later when creating a resume, updating LinkedIn, or preparing for a review with a manager.

The data included will be:
* Name
* Description
* Company (optional, company where this project occurred)
* Start Date (will be automatically set via tasks that are tagged with this project)
* Stop Date (automatically configured based on last task tagged?)

## Tasks
Tasks will be composed of the following information:
* Name
* Project
* Date
* Notes (List of individual freeform text notes that can be added - ideally in Markdown format)

## Notes
* Task ID
* Note
* Date Created