# Blog Tutorial
This project is a [tutorial](https://guides.rubyonrails.org/getting_started.html) focusing on getting started with Rails and learning MVC architecture. Below are the notes I took while followig this tutorial. 

- Routes
    - The router is the doorman of the app. 
    - The router looks at the HTTP request and matches it with an appropriate controller and action.
        - A controller is a Ruby class and an action is a method in that class.
    - Routes are located in `config/routes.rb` in Rails.
        - Example: 
        `get "/posts", to: "posts#index"` route matches to
        `PostsController`'s `index` method.
    - Route need to be RESTful
         - There are only 7 actions you should od to a resource (the resrouce is posts in this example):
            1. GET all the posts (aka “index” the posts)
            2. GET just one specific post (aka “show” that post)
            3. GET the page that lets you create a new post (aka view the “new” post page)
            4. POST the data you just filled out for a new post back to the server so it can create that post (aka “create” the post)
            5. GET the page that lets you edit an existing post (aka view the “edit” post page)
            6. PUT the data you just filled out to edit the post back to the server so it can actually perform the update (aka “update” the post)
            7. DELETE one specific post by sending a delete request to the server (aka “destroy” the post)
- Models

