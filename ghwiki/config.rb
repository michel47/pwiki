# always include this:
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES

# first remove all markups:
Gollum::Markup.formats.clear

# and then define the sole markup to be supported:
Gollum::Markup.formats[:md] = { :ext => 'md', :name => "Markdown", :regexp => /md|mkdn?|mdown|markdown/, :reverse_links => false }
Gollum::Markup.formats[:md] = { :ext => 'wiki', :name => "vimWiki", :regexp => /wiki/, :reverse_links => true }

Gollum::Markup.formats[:md] = {
  :ext => "ghmd",
  :name => "GIThub-Markdown",
  :regexp => /ghmd/,
  :reverse_links => false
}

