# Blog Tutorial
This project is a [tutorial](https://guides.rubyonrails.org/getting_started.html) focusing on getting started with Rails and learning MVC architecture. Below are the notes I took while followig this tutorial. 

## Notes
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
    - `resources :articles` in the config/routes.rb creates all routes for the articles resource. 
        - To view all the routes your application has run `bin/rails routes`
    - It also creates helper methods like:
        - `article_path` that takes in an article and returns the path of that article. 
        - `link_to` which renders a link where the first argument is the link's text to display and the second argument is the link's destination.
            - Ex. `link_to article.title, article` which shows the articles title in a link and resolves the destination of article using the `article_path` method. 

- Controllers
    - Routes map to a controller
    - Controller gets proper data from model and holds it in instance variables
    - These instance variables are accessible by the view for the controller and displayed to user that way
    - `params` hash
        - stores parameters in the request URI. For example in `GET /articles/:id`, we can access the *id* with `params[:id]`
        - stores submitted form data.
            - look at `article_params` method in `articles_controller.rb` for reference.
    - render vs redirect_to


- Models
    - Models hold the data for the app. Models can interact with a database using *Active Record*.
    - To generate a new model: 
    `bin/rails generate model Article title:string body:text`.
        - This generates a model named Article with member variables title and body.
    - Migrations
        - The model generation command automatically creates a migration file alters the schema of the application database.
        - To run a migration: `bin/rails db:migrate`


