module Refinery
  module Cats
    class CatsController < ::ApplicationController

      before_filter :find_all_cats
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @cat in the line below:
        present(@page)
      end

      def show
        @cat = Cat.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @cat in the line below:
        present(@page)
      end

    protected

      def find_all_cats
        @cats = Cat.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/cats").first
      end

    end
  end
end
