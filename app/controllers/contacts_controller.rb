class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # 成功
      flash[:notice] = "已成功送出!"

      # send mail
      ContactMailer.send_notification(@contact).deliver_later

      redirect_to contacts_path
    else
      # 失敗
      flash[:notice] = "失敗!!"
      render action: :index
    end
  end

  # Strong Parameter
  private
  def contact_params
    params.require(:contact).permit(:subject, :email, :content)
  end

end
