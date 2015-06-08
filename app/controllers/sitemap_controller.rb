class SitemapController < ApplicationController
  layout nil

  def show
    headers['Content-Type'] = 'application/xml'
    respond_to do |format|
      format.xml do
        render 'sitemap.xml'
      end
    end
  end
end
