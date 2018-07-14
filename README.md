# millstone
Software engineer task list, optimized for use in an agile environment.

## Why "millstone"?
The name may change later - but I connected this app's purpose to a lot of the word's synonyms.  They aren't necessarily positive - "task", "responsibility".  And the definition is "burden".

I think to be your absolute best as a software engineer, you need to stay organized and be as diligent about that as you are with your code.  It is easy to lose track of small yet important tasks.  It is impossible to keep everything perfectly categorized in your memory.  

Normal task lists are helpful, but they are not tailored specifically to an agile/scrum environment.  A subset of each day's tasks turns into the next day's scrum update.  A subset of each week or two's events turns into retro items, or 1 on 1 discussion topics with your manager.  And a small subset will become important in your quarterly/annual reviews, during salary negotiations, when writing a resume, or when interviewing.  

millstone acknowledges that it requires discipline and hard work to achieve this, and it truly is a burden.  However, millstone's capabilities allow you to leverage that data to the fullest, enhancing both your everyday work and the future of your career.  Every morning, millstone acts as your personal assistant, giving you a tailored list of items to mention during the morning's scrum meeting.  1 on 1s with your manager require little preparation, millstone will surface the items you've noted for this purpose in a specialized view.  You'll be able to quickly access the larger projects you've worked on and accomplishments you've achieved, filtered down to a level appropriate for an annual review, resume, or LinkedIn profile.  

I plan to use millstone during my everyday work, and I work in an agile environment.  For now scrum will be the target, but other things like Kanban may be supported in the future.

## Initial architecture decisions
### Technologies
As far as language, I'm going to use Java.  It's what I'm using at work and I'm very comfortable with it, so why not.  I'd like to start making progress quickly so experimenting with a new language doesn't work with that goal for now.

Spring Boot is also an obvious choice, it works well and I understand it.  I think I'll choose a Spring Boot template with some built in REST/JSON support, database, Oauth2, Spring Security (although I'm not really sure what that is) - basically bring a bunch of things in that are important.  However, to make sure the project doesn't become too bloated I'm also going to create issues in Github for each selected item so I can follow up and make sure I'm actually using it and using it properly.  

For linting, Checkstyle has worked well.

For code coverage I'll use [JaCoCo](https://www.eclemma.org/jacoco/).  I haven't used it before so that will be interesting.
  
Database - I'm going to use PostgreSQL.  I'm more familiar with mySQL at this point, so this is an area where I can comfortably grow while not slowing progress down.  I think the differences will be minimal, but I might learn some interesting differences between mySQL and PostgreSQL.

I'm not going to use an ORM like Hibernate, I'm going to write my own SQL.  I love writing SQL, I feel very comfortable with it, and that will give me a ton of flexibility.  I'm debating this a bit because I think it would be a good learning experience, but I enjoy writing SQL so much that I just don't care, and it would also slow me down a lot. 

I'll probably use AWS for deployment.  I'm using it at work and while I haven't configured that all myself, I'm very interested and capable of digging in and figuring this all out.  I'll try to adhere to best practices on aspects like security, logging, etc - this will require a lot of learning on my part, but I'm up to the challenge.  
## Product decisions
### Initial v1.0 functionality requirements
millstone should be built using lean methodologies, aiming to get a product to customer hands with solid, but limited functionality at first.

millstone will initially support the standard daily cycle of an agile environment - a scrum meeting in the AM where you report what you did yesterday, what you're doing today, and anything blocking you.  In addition, you need a task list to keep you organized throughout the day.

millstone 1.0 will be a task list with tagging capabilities, and a custom standup view.  You will be able to add items to a task list, and mark them as:
* Scrum Worthy (which means it will show up on the scrum list)
* New / In Progress / Completed / Not Completed

The date they are created will be automatically tracked as well.

When you bring up the standup view, it will display:
* Items you completed yesterday
* 
