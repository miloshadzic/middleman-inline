require 'middleman-core'

class MiddlemanInline < ::Middleman::Extension
  helpers do
    def inline_css(*args)
      args.map do |arg|
        "<style type='text/css'>#{render_resource(fname(arg, '.css'))}</style>"
      end.join("\n")
    end

    def inline_js(*args)
      args.map do |arg|
        "<script type='text/javascript'>#{render_resource(fname(arg, '.js'))}</style>"
      end.join("\n")
    end

    private

    def fname(str, ext)
      str.concat(ext) unless str.match(ext)
      str
    end

    def render_resource(fname)
      sitemap.resources.find { |res| res.source_file.match(fname) }.render
    end
  end
end
