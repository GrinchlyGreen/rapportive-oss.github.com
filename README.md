code.rapportive.com
===================

Code, content and styling behind the Rapportive developer site at
[code.rapportive.com](http://code.rapportive.com/). It is hosted by GitHub.


Building locally
----------------

* You need to have [Jekyll](https://github.com/mojombo/jekyll), [Haml/Sass](http://sass-lang.com/),
  [Pygments](http://pygments.org/) and [Sinatra](http://www.sinatrarb.com/) installed.
* Clone [raplet-docs](https://github.com/rapportive-oss/raplet-docs) to `../raplet-docs` relative
  to this directory.
* Build the Raplet docs HTML.

Then run:

    $ jekyll --auto &
    $ sass --watch stylesheets/sass:stylesheets &
    $ rackup config.ru &
    $ open http://localhost:9292

(Jekyll is run automatically by GitHub, but Sass is not, so compiled CSS needs to
be checked in to the repo.)
