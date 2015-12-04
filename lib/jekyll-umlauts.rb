# This generator converts all umlauts äÄöÖüÜ and ß in its correct html equivalent
# ü = &uuml; Ü = &Uuml;
# ä = &auml; Ä = &Auml;
# ö = &ouml; Ö = &Ouml;
# ß = &szlig; ẞ = &#7838;
# Author: Arne Gockeln
# Website: http://www.Webchef.de
module Jekyll
  class UmlautsGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      puts "\nReplacing umlauts"

      site.pages.each do |page|
        page.content = replace(page.content)
      end

      site.posts.docs.each do |post|
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
      content.gsub!(/ẞ/, '&#7838;')

      content
    end
  end
end
