require 'spec_helper'

module Rack
  describe ContentLanguage do
    include Rack::Test::Methods
    it 'should inject tag into head of https HTML request' do
      get('https://example.org/').body.should == '<html><head>Hello world<meta http-equiv="content-language" content="en"></head><body></body></html>'
    end

    it 'should inject tag into head of https HTML request for text/html' do
      get('https://example.org/text.html').body.should == '<html><head>Hello world<meta http-equiv="content-language" content="en"></head><body></body></html>'
    end

    it 'should inject tag of http HTML request' do
      get('/').body.should == '<html><head>Hello world<meta http-equiv="content-language" content="en"></head><body></body></html>'
    end

    it 'should not inject tag into non HTML requests for HTTP' do
      get('/test.xml').body.should == '<head></head><xml></xml>'
    end

    it 'should not inject tag into non HTML requests for HTTPS' do
      get('https://example.org/test.xml').body.should == '<head></head><xml></xml>'
    end
  end
end
