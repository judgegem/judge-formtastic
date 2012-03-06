# judge-formtastic

[![Build status](https://secure.travis-ci.org/joecorcoran/judge-formtastic.png?branch=master)](http://travis-ci.org/joecorcoran/judge-formtastic)

This is an adapter gem which allows you to use [Judge](http://judge.joecorcoran.co.uk) from within your [Formtastic](http://github.com/justinfrench/formtastic) forms.

## Usage

Do this in your Gemfile:

    gem "judge-formtastic", "~> x.x.x", :require => "judge/formtastic"

Then add <code>:validate => true</code> to the input options in your views. That's all.

    <%= semantic_form_for(@user) do |f| %>
      <%= f.input :name, :validate => true %>
    <% end %>

## Judge

Judge is a client-side validation gem for Rails 3. You can read more about it at [judge.joecorcoran.co.uk](http://judge.joecorcoran.co.uk).

## License

Released under an MIT license (see LICENSE.txt).

http://blog.joecorcoran.co.uk