# use like {{ var | asset_url }}
module Jekyll
  module AssetFilter
    def asset_url(input)
      "http://www.example.com/#{input}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)