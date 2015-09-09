# This generator converts all umlauts äÄöÖüÜ and ß in its correct html equivalent
# ü = &uuml; Ü = &Uuml;
# ä = &auml; Ä = &Auml;
# ö = &ouml; Ö = &Ouml;
# ß = &szlig;
# Author: Arne Gockeln
# Website: http://www.arnegockeln.com
module Jekyll
  class UmlautsGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      puts "\nReplace umlauts"

      site.pages.each do |page|
        page.content = replace(page.content)
      end

      site.posts.each do |post|
        post.content = replace(post.content)
      end
    end

    def replace(content)
      content.gsub!(/ü/, '&uuml;')
      content.gsub!(/Ü/, '&Uuml;')
      content.gsub!(/ö/, '&ouml;')
      content.gsub!(/Ö/, '&Ouml;')
      content.gsub!(/ä/, '&auml;')
      content.gsub!(/Ä/, '&Auml;')
      content.gsub!(/ß/, '&szlig;')

      content
    end
  end
end
