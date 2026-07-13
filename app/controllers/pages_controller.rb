class PagesController < ApplicationController
  before_action :set_page, only: %i[ edit update ]

  def home
    @page = PageContent.find_by(slug: "home")
  end

  def aboutus
    @page = PageContent.find_by(slug: "aboutus")
  end

  def contact
    @page = PageContent.find_by(slug: "contact")
  end

  def edit
    authorize! :update, @page
  end

  def update
    authorize! :update, @page
    if @page.update(page_params)
      redirect_to "/#{@page.slug}", notice: "Page updated."
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_page
    @page = PageContent.find(params[:id])
  end

  def page_params
    params.require(:page_content).permit(:title1, :body1, :title2, :body2, :image_filename)
  end
end