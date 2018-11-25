[This website application was created for beginner learning Ruby on Rails Framework.]

1. PREPARATION FOR HEROKU DEPLOY: 

- Remove sqlite3 gem from top of application to within group :development, :test do block

- Create a group production:
    group :production do
      gem 'pg'
    end

- Save Gemfile

- Run bundle install --without production to update Gemfile.lock file

- Commit your changes to git repo:

  git add -A

  git commit -m "Make app production ready"

- Install Heroku on your machine:

- Check heroku version:

  heroku -v

  heroku version

  heroku (for list of common heroku commands)

- From your app directory:

  + To login to your heroku account: heroku login

  + To add your SSH key to your heroku account so you don't have to use username and password everytime: heroku keys:add

  + To create a new production version of your app hosted in heroku: heroku create

  + To push your application code to heroku (deploy your app): git push heroku master
  + To run database migration on heroku using command: heroku run rails db:migrate

- Ensure you have committed all your local changes to your git repo prior to pushing to heroku by checking git status

- To change the name of your application: heroku rename newnameofyourapp (replace newnameofyourapp above with the name you'd like to give your app)

- Your app will then be accessible from the following browser URL: newnameofyourapp.herokuapp.com

2. VALIDATIONS FOR USER CLASS
- Username must be presence and unique
- Email must be presence and unique
- Validate email format using regrex