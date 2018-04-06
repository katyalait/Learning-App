
# Learning App

This git includes the necessary files to get the app up and running. To ensure that it works properly please follow these instructions:

# Clone

Clone the git into a directory of your choice

# Pre-Requisites

Install ruby if you do not have it already. We developed this app using Linux but it should be able to run on Windows/Mac also. Use this link: https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-16-04 to install on Ubuntu or this link: https://gorails.com/setup/windows/10 to install on windows. You will also be required to have MySQL on your machine. If you already have MySQL read further for instructions on how to ensure you have the database on your machine. 

# Command Line
After you have downloaded all the necessary files and installed the necessary parts you will need to open your command terminal and go to the directory which contains the git directory. Type the following command:
 `bundle install` 
 This installs the necessary gems for the program.
 
 # Database
 You will then need to migrate the database into your own. To do this run `$ mysql -u root -p` and enter your own password. Create an empty databased called 'fardemo_development' and then quit MySQL by typing `$ quit`. The next command to run from your git directory is `$ mysql -u username -p database_name < fardemo_development.sql`

# Running the Program
You will run the framework from the git directory with the command `$ rails s`. 

Enter your browser and type 'localhost:3000/' you will be prompted with a login page into which you should enter one of the pre-set user/password combinations. E.g. u: monika p: monika

After this you can begin to click around the UI and look at the platform. 
