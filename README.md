Prarupa
=======

> Please note that this is neither the official nor the best plugin available for this task. David Trasbo's [formatize](http://github.com/
> dtrasbo) was the awesome one. I have in fact used it as a reference while making prarupa and hence the two codebases are very very similar.
> I posted on [RubyFlow](http://www.rubyflow.com) before David and therefore got more watchers and press. So this message is just to set
> things clear, and hopefully all watchers of this project will start watching & report issues to Formatize. Note that I will continue to
> maintain prarupa.

Prarupa is plugin for Rails 3 that provides the `textilize`, `textilize_without_paragraph` and `markdown` helpers. These were extracted from Rails and have been modified slightly. Instead of using `BlueCloth` for `markdown`, Prarupa uses `RDiscount` which is supposed to be faster and better maintained. Other minor internal tweaks have been made.

Install
=======

You can either install Prarupa as a gem or plugin. Installing as a gem is the preferred choice.

Install as a gem
----------------

Simply add `prarupa` to the Gemfile. Also add `RedCloth` for textilize & textilize_without_paragraph and/or add `rdiscount` for markdown. Now just `bundle install` and you should be good to go. Note that installing `prarupa` will also install `rdiscount` and `markdown` as dependencies.

Install as a plugin
-------------------

To install as a plugin simply do `rails plugin install git://github.com/rohit/prarupa.git`

Example
=======

In your views you can do the following.

The `textilize` and `textilize_without_paragraph` helpers
---------------------------------------------------------

The `textilize` helper accepts a string of [Textile](http://redcloth.org/textile) and optionally one or more options.

Without any options:

    textilize("This is *how* we _textilize_ in Rails!")
    # => "<p>This is <strong>how</strong> we <em>textilize</em> in Rails!</p>"
    
With options:

    textilize("This is *how* we <em>textilize</em> in Rails!", :filter_html)
    # => "<p>This is <strong>how</strong> we &lt;em&gt;textilize&lt;/em&gt; in Rails!</p>"

Note that you can provide multiple options like `textilize("text", :filter_html, :lite_mode)`

The `textilize_without_paragraph` is similar to `textilize`, except that the surrounding &lt;p&gt; and &lt;/p&gt; tags are removed. It accepts options just like `textilize`

    textilize_without_paragraph("This is *how* we _textilize_ in Rails!")
    # => "This is <strong>how</strong> we <em>textilize</em> in Rails!"

The `markdown` helper
---------------------

The `markdown` helper accepts a string of [Markdown](http://daringfireball.net/projects/markdown/) and optionally one or more options.

Without any options:

    markdown("This is *how* we **markdown** in Rails!")
    # => "<p>This is <em>how</em> we <strong>markdown</strong> in Rails!</p>" 

With options:

    markdown("Greedy urls are here! http://rohitarondekar.com", :autolink)
    # => "<p>Greedy urls are here! <a href=\"http://rohitarondekar.com\">http://rohitarondekar.com</a></p>"

To be `:safe`
============

Being Rails text helpers, all three methods accept the `:safe` option that tells the helpers that the input text need not be escaped.

Credits
=======

[David Trasbo](http://github.com/dtrasbo) for making the awesome (official?) plugin [formatize](http://github.com/dtrasbo/formatize) which extracts the helpers without any modification. I liberally used his gem as reference.

Todo
====

* Tidy up the rdocs

Copyright (c) 2010 Rohit Arondekar, released under the MIT license
