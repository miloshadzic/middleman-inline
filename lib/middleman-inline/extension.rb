# Require core library
require 'middleman-core'

# Extension namespace
class MiddlemanInline < ::Middleman::Extension
  helpers do
    def inline_css(*fnames)
      fnames.map do |fname|
        fname += ".css" unless fname.match(".css")

        resource = sitemap.resources.find do |res|
          res.source_file.match(fname)
        end

        "<style type='text/css'>#{resource.render}</style>"
      end.join("\n")
    end
  end
end
