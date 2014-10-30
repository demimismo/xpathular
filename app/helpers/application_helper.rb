module ApplicationHelper
  def highlight_xml(xml, matches)
    xml = h(xml)
    matches.each do |match|
      xml.gsub! h(match.to_s), "<span class=\"xpathular\">#{h(match.to_s)}</span>"
    end
    xml
  end
end
