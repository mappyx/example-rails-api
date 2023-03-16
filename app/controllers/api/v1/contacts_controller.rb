class Api::V1::ContactsController < AbstractApiController
    before_action :authenticate_user!
    def index
        @contacts = Contact.all
        render json: @contacts
    end 

    def show
        @contact = Contact.find(params[:id])
        render json: @contact
    end 

    def create
        @contact = Contact.create(
            fullname: params[:fullname],
            phone_number: params[:phone_number],
            user_id: current_user.id
        )
        render json: @contact
    end 

    def update
        @contact = Contact.find(params[:id])
        @contact.update(
            fullname: params[:fullname],
            phone_number: params[:phone_number]
        )
        render json: @contact
    end 

    def destroy
        @contacts = Contact.all 
        @contact = Contact.find(params[:id])
        @contact.destroy
        render json: @contacts
    end 
end
