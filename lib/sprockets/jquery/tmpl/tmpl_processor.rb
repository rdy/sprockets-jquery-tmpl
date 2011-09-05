require 'sprockets/engines'
require 'tilt'
require 'action_view'
require 'action_view/helpers'
require 'action_view/helpers/javascript_helper'

module Sprockets
  module Jquery
    module Tmpl
      class TmplProcessor < Tilt::Template
        include ActionView::Helpers::JavaScriptHelper

        def self.default_mime_type
          'application/javascript'
        end

        def prepare
        end

        def evaluate(scope, locals, &block)
          <<-TMPL
(function($) {
  $.template(#{scope.logical_path.gsub(/^tmpls\/(.*)$/i, "\\1").inspect}, "#{escape_javascript data}");
})(jQuery);
          TMPL
        end
      end
    end
  end
end

begin
  Rails.application.assets.register_engine '.tmpl', ::Sprockets::Jquery::Tmpl::TmplProcessor
rescue
end  

