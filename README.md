
## Laugh Tracks

This Sinatra application is intended to be used as an opportunity for students to measure their own learning from week 1 of module 2 of the back end program of the Turing School of Software & Design.

Fork this repository and clone your newly created repository. At the end of one hour, push your code to your repository and create a pull request to this repository.

Before you begin work, run the following commands:

```
bundle install
bundle update
rake db:{drop,create,migrate,seed}
rake db:test:prepare
```

Use TDD to implement the following user stories. If you create Model methods, make sure you test those too!

```
As a visitor,
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
```

```
As a visitor,
When I visit `/comedians`
Then I also see a list of each comedian's specials.
```

```
As a visitor,
When I visit `/comedians`
Then I also see the average age for all comedians.
```

```
As a visitor,
when I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34.
```

```
As a visitor,
When I visit `/comedians`
Then I also see the count of specials for each comedian.
```
