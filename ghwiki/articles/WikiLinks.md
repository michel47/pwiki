# WikiLinks (markdown, mediawiki, vimwiki, gollum, github)

## wiki link syntax & format :
* ``[WikiPage|Link text]`` : example [[WikiPage|Link Text]]
      mediawiki style link (pipe format) (config.rb: reverse_link=true)
* ``[Reference Link Text][WikiPage]`` : example [Reference Link Text][WikiPage]
      markdown-wikilink (vimwiki style)
* ``[Link text|WikiPage]`` : example [[Link Text|WikiPage]]
      reversed_wikilink (gollum/github style) (config.rb: reverse_links=false)
* ``[Inline Link](url)`` : example [[LinkText|WikiPage]]
      inline link with an URL i.e. a normal web link (http)
  
* ``[CamelCase]`` : not supported
     however a "reference link" with a CamelCase reference is a particular link
     within the [[holoMap]] name space
