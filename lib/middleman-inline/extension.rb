# Require core library
require 'middleman-core'

# Extension namespace
class MiddlemanInline < ::Middleman::Extension
  helpers do
    def inline_css(*fnames)
      fnames.map do |fname|
        fname.concat('.css') unless fname.match('.css')

        "<style type='text/css'>#{render_resource(fname)}</style>"
      end.join("\n")
    end

    def inline_js(*fnames)
      fnames.map do |fname|
        fname.concat('.js') unless fname.match('.js')

        "<script type='text/javascript'>#{render_resource(fname)}</style>"
      end.join("\n")
    end

    private

    def render_resource(fname)
      sitemap.resources.find do |res|
        res.source_file.match(fname)
      end.render
    end
  end
end
