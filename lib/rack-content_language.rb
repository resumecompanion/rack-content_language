require "rack-content_language/version"

module Rack
  class ContentLanguage
    def initialize(app)
      @app = app
    end

    def call(env)
      @status, @headers, @body = @app.call(env)
      
      if @headers['Content-Type'] =~ /application\/html/ || @headers['Content-Type'] =~ /text\/html/
        new_body = []
        @body.each {|fragement| new_body << fragement.gsub(%r{</head>}, '<meta http-equiv="content-language" content="en"></head>') } 
        @body = new_body
      end

      [@status, @headers, @body]
    end
  end
end
