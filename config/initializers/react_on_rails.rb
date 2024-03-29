module RailsContextExtension
  # Return a Hash that contains custom values from the view context that will get passed to
  # all calls to react_component and redux_store for rendering
  def self.custom_context(view_context)
    community = view_context.request.env[:current_marketplace]
    {
      marketplaceId: community&.id,
      loggedInUsername: Maybe(view_context.controller.current_user).username.or_else(nil)
    }.merge(CommonStylesHelper.marketplace_colors(community))
  end
end

# ReactOnRails.configure do |config|
#   # Directory where your generated assets go. All generated assets must go to the same directory.
#   # Configure this in your webpack config files. This relative to your Rails root directory.
#   config.generated_assets_dir = File.join(%w(app assets webpack))
#
#   # Define the files for we need to check for webpack compilation when running tests.
#   config.webpack_generated_files = %w( app-bundle.js vendor-bundle.js server-bundle.js )
#
#   # This is the file used for server rendering of React when using `(prerender: true)`
#   # If you are never using server rendering, you may set this to "".
#   # If you are using the same file for client and server rendering, having this set probably does
#   # not affect performance.
#   config.server_bundle_js_file = "server-bundle.js"
#
#   # If you are using the ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)
#   # with rspec then this controls what npm command is run
#   # to automatically refresh your webpack assets on every test run.
#   config.build_test_command = "npm run build:test"
#
#   # This configures the script to run to build the production assets by webpack. Set this to nil
#   # if you don't want react_on_rails building this file for you.
#   config.build_production_command = nil #"npm run build:production"
#
#   ################################################################################
#   # CLIENT RENDERING OPTIONS
#   # Below options can be overriden by passing options to the react_on_rails
#   # `render_component` view helper method.
#   ################################################################################
#   config.prerender = true # default is false
#   config.trace = Rails.env.development? # default is true for development, off otherwise
#
#   ################################################################################
#   # SERVER RENDERING OPTIONS
#   ################################################################################
#   # If set to true, this forces Rails to reload the server bundle if it is modified
#   config.development_mode = Rails.env.development?
#
#   # For server rendering. This can be set to false so that server side messages are discarded.
#   config.replay_console = true # Default is true. Be cautious about turning this off.
#
#   config.logging_on_server = true # Default is true. Logs server rendering messags to Rails.logger.info
#
#   config.raise_on_prerender_error = true # change to true to raise exception on server if the JS code throws
#
#   # Server rendering only (not for render_component helper)
#   # You can configure your pool of JS virtual machines and specify where it should load code:
#   # On MRI, use `therubyracer` for the best performance
#   # (see [discussion](https://github.com/reactjs/react-rails/pull/290))
#   # On MRI, you'll get a deadlock with `pool_size` > 1
#   # If you're using JRuby, you can increase `pool_size` to have real multi-threaded rendering.
#   config.server_renderer_pool_size = 1 # increase if you're on JRuby
#   config.server_renderer_timeout = 20 # seconds
#
#   ################################################################################
#   # MISCELLANEOUS OPTIONS
#   ################################################################################
#   # This allows you to add additional values to the Rails Context. Implement one static method
#   # called `custom_context(view_context)` and return a Hash.
#   config.rendering_extension = RailsContextExtension
#
#   # The server render method - either ExecJS or NodeJS
#   config.server_render_method = "ExecJS"
#
#   # Client js uses assets not digested by rails.
#   # For any asset matching this regex, non-digested symlink will be created
#   # To disable symlinks set this parameter to nil.
#   # config.symlink_non_digested_assets_regex = /\.(png|jpg|jpeg|gif|tiff|woff|ttf|eot|svg)/
# end
