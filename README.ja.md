SpreeMakerVariants
==================

Purpose
-------
* 管理者はメーカーのバリアント情報を管理することができます。
* 項目 : "JANコード", "定価", "定価の通貨単位", "最低販売価格","最低販売価格の通貨単位","販売終了"
* これらの入出力データはショップ側には影響しません。

製品のサイドメニューへのリンク「メーカー別情報」表示
![MakerVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_variants/images/makervariants1.jpg)

「メーカー別情報」 - edit(種類を選択)
![MakerVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_variants/images/makervariants2.jpg)

メーカー別情報の管理
![MakerVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_variants/images/makervariants3.jpg)

依存関係
------------
* [spree_add_on_menu](https://github.com/digitalm/spree_add_on_menu)
* [spree_maker_search](https://github.com/digitalm/spree_maker_search)

Installation
------------

Add spree_maker_variants to your Gemfile:

```ruby
gem 'spree_maker_variants', github: 'digitalm/spree_maker_variants'
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