# snap_js-rails

Add [Snap.js](https://github.com/jakiestfu/Snap.js) to your asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'snap_js-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snap_js-rails

## Usage

Add this line to your `application.js` file.

    //= require snap

Then, either add this to `application.js` below the requires...

    $(function() {
      var snapper = new Snap({
        element: document.getElementById('content')
      });
    })

... or add it directly to your layout file (i.e. `application.html.erb`)

    <script type="text/javascript">
      var snapper = new Snap({
        element: document.getElementById('content')
      });
    </script>

There's also an optional CSS stylesheet containing the barebones styles you'll need to get started (also from https://github.com/jakiestfu/Snap.js). To use it, add this to `application.css`:

    *= require snap

A barebones `application.html.erb` might look like this:

    ...
    <body>
      <div class="snap-drawers" style="position: absolute">
        <div class="snap-drawer snap-drawer-left">
          <!-- Left Drawer Content -->
        </div>
        <div class="snap-drawer snap-drawer-right">
          <!-- Right Drawer Content -->
        </div>
      </div>
      <div id="content" class="snap-content">
        <div id="toolbar">
          <!-- Toolbar Content -->
        </div>
        <%= yield %>
      </div>
    </body>
    ...

Refer to [Snap.js](https://github.com/jakiestfu/Snap.js) for more options.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
