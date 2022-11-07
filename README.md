# view-component-demo

Rails application with ViewComponent, using the `https://github.com/github/view_component` gem.

## Ruby version

Use your favorite Ruby version manager to install `3.0.0`.

## Local development

Install Postgres as desired.

## Configuration

`bundle install`
`npm install`

## Database creation

`rails db:setup`

## How to run the test suite

`bundle exec rake`

## Server

`rails s`

## Benchmark

Run server in production mode: `RAILS_ENV=production rails s`.

Load `/benchmark` and read server log.

## Workshop Additions

### New components

The `ExampleComponent` and `CardComponent` components have been added to demonstrate various features of ViewComponent like slots, inline templates, and collections. The `app/views/demo/index.html.erb` has been updated with example usage of those components as well.

### RSpec + Capybara matchers

Following the [documentation](https://viewcomponent.org/guide/testing.html#rspec-configuration), the component previews and tests are located under the `spec/` directory.

### System spec example

There are two example system specs to demonstrate how to test components in the browser if there is associated client-side JS behavior to cover.
