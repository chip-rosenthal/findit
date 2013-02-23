require 'findit/database'
require 'findit/location'
require 'findit/base-feature'
require 'findit/version'

class String
  
  def capitalize_words
    self.split.map{|w| w.capitalize}.join(" ")
  end
    
  require 'cgi'
  def html_safe
    CGI::escape_html(self)
  end
  
end


class NilClass
  
  # So I can use foo.empty? safely on things expected to hold a String.  
  def empty?
    true
  end
  
end
