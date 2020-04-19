# millstone
Software engineer task list, optimized for use in an agile environment.

## Why "millstone"?
The name may change later - but I connected this app's purpose to a lot of the word's synonyms.  They aren't necessarily positive - "task", "responsibility".  And the definition is "burden".

I think to be your absolute best as a software engineer, you need to stay organized and be as diligent about that as you are with your code.  It is easy to lose track of small yet important tasks.  It is impossible to keep everything perfectly categorized in your memory.  

Normal task lists are helpful, but they are not tailored specifically to an agile/scrum environment.  A subset of each day's tasks turns into the next day's scrum update.  A subset of each week or two's events turns into retro items, or 1 on 1 discussion topics with your manager.  And a small subset will become important in your quarterly/annual reviews, during salary negotiations, when writing a resume, or when interviewing.  

millstone acknowledges that it requires discipline and hard work to achieve this, and it truly is a burden.  However, millstone's capabilities allow you to leverage that data to the fullest, enhancing both your everyday work and the future of your career.  Every morning, millstone acts as your personal assistant, giving you a tailored list of items to mention during the morning's scrum meeting.  1 on 1s with your manager require little preparation, millstone will surface the items you've noted for this purpose in a specialized view.  You'll be able to quickly access the larger projects you've worked on and accomplishments you've achieved, filtered down to a level appropriate for an annual review, resume, or LinkedIn profile.  

I plan to use millstone during my everyday work, and I work in an agile environment.  For now scrum will be the target, but other things like Kanban may be supported in the future.

## Development setup

To run locally, run this command:
```
make install && make run
```
The login page is at [http://localhost:8080](http://localhost:8080).  You can login with the username `user` and the password that gets printed out to the terminal:
```
Using generated security password: 3053a5e1-08ff-453f-b37b-d20a429bd88f
```

## Calling REST endpoints
Some REST endpoints are defined in `UserController`/`ErrorController`.  You need to use basic authentication to access these.  Postman is a good option for creating/sending these requests.

See `SecurityConfig` for the usernames/passwords, they are hardcoded (this needs to be fixed).

If you use Postman, you can add Basic Authentication with a username/password and that will be used when submitting the request.  To add a user you will need to add JSON in the request body for all relevant User fields.

## Environment variables
None yet configured.

# Product
Click here for [Millstone Product](./documentation/product/README.md).

# Additional Information
* [Architectural Decisions](./documentation/architecturalDecisions.md)
* [Random notes](./documentation/randomNotes.md)

# Additional External Information
* [Spring Boot Reference Documentation](https://docs.spring.io/spring-boot/docs/current/reference/html/index.html)

