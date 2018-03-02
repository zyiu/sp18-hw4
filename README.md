# Rails Decal Spring 2018 Homework 4

## Overview 
Welcome to homework 4 of the Rails DeCal! This homework is due **Mar 8th at 6:30PM**.

We've finally learned about models! At the end of this homework, you will have built an app with the models `Cat`, `Todo`, and `User` with the specifications below (along with their associated tables). As well, you will have created a view to render all the models persisted in your database. Finally, you will have responded to the questions in `ANSWERS.md`.

As always, remember to `bundle install` before getting started.

tl;dr: you will build a basic TODO app, an app pretty common in many Rails tutorials.

## Application Spec

### Models

#### Cat
```
name: a string that contains the name of a cat
```

#### Todo
```
tasks: a string name of a Todo that needs to be done
finished: a boolean on whether or not a Todo has been finished
```

#### User
```
username: a string that contains the username of a User
email: a string that contains the email of a User
age: an integer that contains the age of a User
```

### Views
- A home page that renders all `Cat`s, `Todo`s, and `User`s in your database.
- A form to create new `Todo`s.

## Preface

Please briefly examine the repo before you start to see what's been done for you already. The directories `app/models` and `db/migrations` are definitely places to look at.

As well, remember to run your migrations with
```
rails db:migrate
```
when you want to make changes to your database.

Note that a walkthrough for the homework is included below. For a challenge, try completing the homework without the walkthrough. Essentially, create an application based on the specs we provided above.

## Walkthrough

### Q1: Cats
One of the first things you should notice is that there is already a migration to create a `Cats` table with a name field of type string in it, but you don't have a model associated with it yet. [Define the model](http://guides.rubyonrails.org/active_record_basics.html#creating-active-record-models) in `app/models`. Then, create a method called `meow` (you can call it whatever really) and just have it `puts "meow"` to the console. Save the file and fire up your Rails console with `rails console` or `rails c`; check to see if you can create a new `Cat` and call its `meow` method as shown below.

```
$ rails console
> c = Cat.new
> c.meow # Should print out meow
```

### Q2: Users
For the `User` model, you'll see a migration - which was made to create a user with a `name` and an `email` - and an associated model in `app/models`. What you need to do is add an integer field called `age` to our `Users` table. Check out the [Rails documentation](http://guides.rubyonrails.org/active_record_migrations.html#creating-a-migration) for a refresher on how to do this. Run the migration and fire up your Rails console; check to see if your `User` model now has an age as shown below.

```
$ rails console
> u = User.new
> u.age # Should not error
```

Following, try and see if you can rename the column from `name` to `username`. You'll find how to do so within the above documentation. Do a similar check to see if it worked.

### Q3: Todos

There isn't anything in the repo for todos! This is a perfect chance to see how easy it is to create a migration and model in seconds with by generating the model and migration in **one command**. Check to see if your changes (namely creating a `Todos` table and `Todo` model) worked in Rails console.

### Q4: MVC
1. Combining everything you have learned from lectures up to this point, make a home page that displays all the `Cat`s, `Todo`s, and `User`s in your database. 

This will require a controller, a route, and a view. Don't worry about formatting, but feel free to make it pretty if you'd like.

2. Feel free to populate your database by `create`ing some `Cat`s and `User`s. 

3. Make it so that you should be able to go to your homepage simply by visiting `localhost:3000`.

**Hint:** How can we retrieve all the objects in our database? The documentation [here](http://guides.rubyonrails.org/active_record_querying.html) may help.

**Note/Super Hint:** There is a lot of flexibility in this question but how we implemented it was to have a Pages controller with `home` method that initialized the variables `@cats`, `@users`, `@todos`.

### Q5: Forms

1. Create a form (`form_for`) viewable at `localhost:3000/todos/new` that submits a `POST` request that will create the a `Todo` object in your database. Verify this works by visiting your home page and seeing that the object you created shows up. 

**Hint:** This question will require additional controller methods, views, and routes. 

**Hint:** The field for a boolean check box is `f.checkbox`.

2. You can even have the controller method that creates the `Todo` object redirect to your home page. 

**Hint:** Use `rails routes` to see the name of the home page path. 

3. (Bonus) Add a link to (look up `link_to`) your form from the home page.

### Q6: Final questions
Answer the questions in `ANSWERS.md`.

## Submission
Run these commands to submit:
```
git add .
git commit -am "whatever message you want"
git push origin master
```
Fill out the submission form for this homework, which can be found on Piazza.