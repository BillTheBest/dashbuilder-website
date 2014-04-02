require File.expand_path '../haml/filters/asciidoc.rb', __FILE__

Awestruct::Extensions::Pipeline.new do
        extension Awestruct::Extensions::DataDir.new
        extension Awestruct::Extensions::Posts.new( '/news', :posts )
        extension Awestruct::Extensions::Paginator.new(:posts, '/news/index', :per_page => 5 )
	extension Awestruct::Extensions::Disqus.new
        
        # Indexifier moves HTML files to their own directory to achieve "pretty" URLs (e.g., features.html -> /features/index.html)
        #extension Awestruct::Extensions::Indexifier.new

        # Helpers
        helper Awestruct::Extensions::Partial
        helper Awestruct::Extensions::Relative

end

