require 'ruble'

bundle do |bundle|
  bundle.author = 'Christopher Williams'
  bundle.copyright = "© Copyright 2010 Aptana Inc. Distributed under the MIT license."
  bundle.display_name =  'HAML'
  bundle.repository = "git://github.com/aptana/haml.ruble.git"
  bundle.description =  <<END
Ported from Matt Polito's HAML bundle for TextMate.

<a href="http://unspace.ca/discover/haml">HTML Abstraction Markup Language</a> is a templating engine for Ruby on Rails.
END
  # Folding
  start_folding = /^\s*([-%#\:\.\w\=].*)\s$/
  end_folding = /^\s*$/
  bundle.folding['text.haml'] = start_folding, end_folding
  # Make sure we associate file with our editor and give it a top-level scope
  bundle.file_types['text.haml'] = '*.haml'

  bundle.menu 'HAML' do |main_menu|
    main_menu.menu 'Insert DocType' do |submenu|
      submenu.command 'XHTML - 1.0 Strict'
      submenu.command 'XHTML - 1.0 Transitional'
      submenu.command 'XHTML - 1.1'
      submenu.command 'XHTML - Mobile'
    end
    main_menu.menu 'Insert XML Prolog' do |submenu|
      submenu.command 'XML prolog'
      submenu.command 'XML prolog iso-8859-1'
    end
    main_menu.menu 'Filters' do |submenu|
      submenu.command 'CDATA'
      submenu.command 'Escaped'
      submenu.command 'Erb'
      submenu.command 'Javascript'
      submenu.command 'Markdown'
      submenu.command 'Maruku'
      submenu.command 'Plain'
      submenu.command 'Preserve'
      submenu.command 'Ruby'
      submenu.command 'Sass'
      submenu.command 'Textile'
    end
     main_menu.menu 'Meta Tags' do |submenu|
      submenu.command 'Meta - Generic'
      submenu.command 'Meta - http-equiv'
    end
    main_menu.separator
    main_menu.command 'HTML - en-US'
    main_menu.command 'Element Attribute'
    main_menu.command 'IE Conditional'
    main_menu.command 'Page Class'
    main_menu.command 'Insert Tag'
    main_menu.command 'Convert HTML to HAML'
    main_menu.command 'Check Syntax'
  end
end

# Add special ENV vars
env "text.haml" do |e|
  e['TM_COMMENT_START'] = "-# "
  e.delete('TM_COMMENT_END')
  e['TM_COMMENT_START_2'] = "/"
  e.delete('TM_COMMENT_END_2')
  e.delete('TM_COMMENT_DISABLE_INDENT')
end