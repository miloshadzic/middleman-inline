Then /^the css should be inlined$/ do
  html = Nokogiri::HTML(page.html)
  # first css file
  expect(html.xpath('//style').inner_html).to match('monospace')
  # second css file
  expect(html.xpath('//style').inner_html).to match('padding')
end

Then /^the JavaScript should be inlined$/ do
  html = Nokogiri::HTML(page.html)
  expect(html.xpath('//script').inner_html).to match('console.log')
end
