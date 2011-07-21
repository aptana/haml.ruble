require 'ruble'

template "HAML Template" do |t|
  t.filetype = "*.haml"
  t.invoke do |context|
    ENV['TM_DATE'] = Time.now.strftime("%Y-%m-%d")
    #we remove /lib since we don't have a lib directory in the haml ruble and it fails when we try to navigate from there
    raw_contents = IO.read("#{ENV['TM_BUNDLE_SUPPORT']}".chomp("/lib") + "/templates/template.haml")
    raw_contents.gsub(/\$\{([^}]*)\}/) {|match| ENV[match[2..-2]] }
 end
end