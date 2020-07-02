# House Salad Refactor
What is declarative Programming?
- Writing code that we wish existed and worrying about implementation details later

What is Red, Green, Refactor?
 - Red: failing test
 - Green: passing test
 - Refactor to make code follow SRP or DRY up code
 
I think our refactored code is a lot more abstract and encapsulated than it was before. I'd be interested in breaking out the PropublicaService further, pulling out the response variable into it's own method so it can be used throughout the call, not just for members, etc.
# House Salad Base

This repo is used as a base for the Consuming API lesson taught in Backend Module 3. To complete the lesson you will need to sign-up for an API key from the [ProPublica Congress API](https://projects.propublica.org/api-docs/congress-api/).

### Versions

Rails 5.1.7
Ruby 2.5.3

### Setup

```bash
git clone https://github.com/turingschool-examples/house-salad-base house-salad

cd house-salad

rails db:{create,migrate}
```

### Exercise

Write a test and complete this user story

*NOTE: Please use the existing form in the application.*

```
As a user
When I visit "/"
And I select "Colorado" from the dropdown
And I click on "Locate Members of the House"
Then my path should be "/search" with "state=CO" in the parameters
And I should see a message "7 Results"
And I should see a list of the 7 members of the house for Colorado
And I should see a name, role, party, and district for each member
```
