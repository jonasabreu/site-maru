require 'liquid'
require 'uri'

module FixWhiteChars
    def fix_white_chars(input)
        return input.to_s.strip.gsub(Regexp.new("\\s+"), " ").strip
    end
end

Liquid::Template.register_filter(FixWhiteChars)
