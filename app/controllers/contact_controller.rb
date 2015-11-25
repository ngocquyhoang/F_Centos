class ContactController < ApplicationController
	# Set view
  def index
  	@messages_contact = ContactMessage.all
  end
  # Contact messages
  def contact
  	@contact = ContactMessage.create(contact_params)
  	redirect_to contact_index_path
  end
  # Params
  def contact_params
  	params.require(:@contact).permit(:name, :company, :email, :message)
  end
end
