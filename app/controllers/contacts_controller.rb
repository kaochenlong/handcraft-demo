class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      # 成功
      flash[:notice] = "已成功送出!"
      redirect_to root_path
    else
      flash[:notice] = "失敗!!"
      # 失敗
    end
  end

end
