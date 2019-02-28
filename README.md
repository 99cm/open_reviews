# Open Reviews

Add straightforward review/rating functionality to Open stores.

---

## Installation

Add the following to your `Gemfile` to install from git:

```ruby
gem 'open_reviews', github: '99cm/open_reviews'
```

Now bundle up with:

    bundle

Next, run the rake task that copies the necessary migrations and assets to your project:

    bundle exec rails g open_reviews:install

And finish with a migrate:

    bundle exec rake db:migrate

Now you should be able to boot up your server with:

    bundle exec rails s

That's all!

---

## Usage

Action "submit" in "reviews" controller - goes to review entry form

Users must be logged in to submit a review

Three partials:
 - `app/views/spree/products/_rating.html.erb` -- display number of stars
 - `app/views/spree/products/_shortrating.html.erb` -- shorter version of above
 - `app/views/spree/products/_review.html.erb` -- display a single review

Administrator can edit and/or approve and/or delete reviews.

## Implementation

Reviews table is quite obvious - and note the "approved" flag which is for the
administrator to update.

Ratings table holds current fractional value - avoids frequent recalc...

---

## Contributing

See corresponding [contributing guidelines][1].

---

Copyright (c) 2019 [Leo Wang][3] and [contributors][2], released under the [New BSD License][3]

[1]: https://github.com/99cm/open_reviews/blob/master/CONTRIBUTING.md
[2]: https://github.com/99cm/open_reviews/graphs/contributors
[3]: https://github.com/99cm/open_reviews/blob/master/LICENSE.md