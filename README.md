how are ya

# FirstProject::Cli

Welcome to my new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. The code file is located in the file `lib/firstProject/cli`. To experiment with that code, I ran the  `bin/console` for an interactive prompt. The executable fie, however, is located in the `./bin/movie-exe` file in the fiestProject-cli directory. 
  the program is a very staright farward comand line interface  application. which promts a user to enter a movie name or keyword when prompted in the application. when the user does enter the parameters requested, the application will inform the user if the movie existas in the application or not. if it does exists, the user gets the link to the movie and the rating alongside it, if it does not exist, the user is prompted to enter another entry or exit the interaction all together.



## Installation
The program can be located  at the github repository which can be located here `git@github.com:bluguja/firstProject-cli.git`. all related files assosciated with the application can be downloaded in the provided link. The link contains the executionable file located in the fiestProject-cli project directory and the MovieAPI directories respectively., in the /bin folder the movie-exe folde is located which runs the application within the cli.rb file or CLI class. the Movie API folder, houses the api, cli, and movies.rb folders in it. these files are responsible for the body of the application as is. for the most part, the cli.rb where the CLI class is domiciled contains the interactive part of the application. The movies.rb folder holds the initialized instances and methods responsible for storing the calls from the CLI class in an array. it is responsible for  storing and deleting the enteries when and if necesssary in the application.



And then execute: executes code on command line

    $ bundle

Or install it yourself as:

    $ gem install firstProject-cli

## Usage

for the most part the instructions for the usage of this application have been described in the
 istallation portion of this application. refer to ` Installation `
 
## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'bluguja'/firstProject-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FirstProject::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'bluguja'/firstProject-cli/blob/master/CODE_OF_CONDUCT.md).
