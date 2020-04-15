# Initial architecture decisions

### Technologies
As far as language, I'm going to use Java.  It's what I'm using at work and I'm very comfortable with it, so why not.  I'd like to start making progress quickly so experimenting with a new language doesn't work with that goal for now.

Spring Boot is also an obvious choice, it works well and I understand it.  I think I'll choose a Spring Boot template with some built in REST/JSON support, database, Oauth2, Spring Security (although I'm not really sure what that is) - basically bring a bunch of things in that are important.  However, to make sure the project doesn't become too bloated I'm also going to create issues in Github for each selected item so I can follow up and make sure I'm actually using it and using it properly.  

For linting, Checkstyle has worked well.

For code coverage I'll use [JaCoCo](https://www.eclemma.org/jacoco/).  I haven't used it before so that will be interesting.
  
Database - mySQL.  I'm most familiar with this at this point and have lots of other things to learn, so let's just use mySQL.  It's fine.

I'm not going to use an ORM like Hibernate, I'm going to write my own SQL.  I love writing SQL, I feel very comfortable with it, and that will give me a ton of flexibility.  I'm debating this a bit because I think it would be a good learning experience, but I enjoy writing SQL so much that I just don't care, and it would also slow me down a lot. 

I'll probably use AWS for deployment.  I'm using it at work and while I haven't configured that all myself, I'm very interested and capable of digging in and figuring this all out.  I'll try to adhere to best practices on aspects like security, logging, etc - this will require a lot of learning on my part, but I'm up to the challenge.  

### Decisions I changed later

> I'm going to use PostgreSQL.  I'm more familiar with mySQL at this point, so this is an area where I can comfortably grow while not slowing progress down.  I think the differences will be minimal, but I might learn some interesting differences between mySQL and PostgreSQL.

More familiar with mySQL, so I'm just using that.