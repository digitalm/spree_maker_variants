SpreeMakerVariants
==================

Purpose
-------
* Admin can enable Maker Variant informations.
* Items are : "Article Number", "Maker Price" and currency, "Minimum Selling Price" and currency, "Discontinued"
* Nothing does not affect storefront.

Appears link "MAKER VARIANT" to Product side menu.
![MakerVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_variants/images/makervariants1.jpg)

"MAKER VARIANT" show variant list. Select particular variant and edit
![MakerVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_variants/images/makervariants2.jpg)

Enable to manage.
![MakerVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_variants/images/makervariants3.jpg)

Dependency
------------
It needs 
* [spree_add_on_menu](https://github.com/digitalm/spree_add_on_menu) for admin menu tab expanding
* [spree_maker_search](https://github.com/digitalm/spree_maker_search) for maker list managing
Is there anyone who dont wants maker search?

Installation
------------

Add spree_maker_variants to your Gemfile:

```ruby
gem 'spree_maker_variants'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_add_on_menu:instal
bundle exec rails g spree_maker_search:instal
bundle exec rails g spree_maker_variants:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_maker_variants/factories'
```

Copyright (c) 2014 [Exsight.inc](http://www.exsight.co.jp/) , released under the New BSD License