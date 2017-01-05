Then /^the css should be inlined$/ do
  html = Nokogiri::HTML(page.html)
  expect(html.xpath('//style').first.text).to match('monospace')
end
