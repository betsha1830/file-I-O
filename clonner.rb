require 'rest-client'

class Clonner
    def initialize

    end

    def clone  
    wiki_url = "http://wikipedia.org/"
    wiki_local_filename = "index.html"

    File.open(wiki_local_filename, "w") do |file|
        file.write(RestClient.get(wiki_url))
        end
    end
end

c = Clonner.new
c.clone