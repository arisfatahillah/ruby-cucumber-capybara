# Automation in Web Using Ruby, Selenium And Capybara
Software Automation Testing using selenium, ruby and capybara

## Installation
1. [Git](https://www.atlassian.com/git/tutorials/install-git)
2. [Ruby 2.5.5](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/install_language_runtime.html)
3. Install chrome driver https://chromedriver.chromium.org/ choose based on your chrome in local ex: https://chromedriver.storage.googleapis.com/index.html?path=88.0.4324.96/ for google chrome 88
4. Gem install bundler
5. bundle install

## Running command
   Profile configuration : config/cucumber.yml

| Browser             | Command                                                |
|---------------------|------------------------------------------------------- |
| **firefox**         | `cucumber -p firefox --tag @login`                     |
| **Chrome**          | `cucumber -p chrome --tag @login`                      |

## Folder Structure
For your convenient please put the file based on the folder structure.

```
|features
│   ├── helper
│   ├── page_object
│   ├── step_definitions
│   ├── scenario
|Gemfile
```
