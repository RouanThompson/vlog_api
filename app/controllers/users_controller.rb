class UsersController < ApplicationController

    def show
        users = User.all
        render jsons: users
    end
    
    # create controller action
    def create 
        user = User.create(user_params)
        # byebug
        if user.valid?
            render json: { user: UserSerializer.new(user) }, status: :created
            # if the user is valid send back a filtered json to the frontend
        else
            render json: { error: 'failed to create user' }, status: :bad_request
            # if the user is not valid send this error message to the frontend
        end
    end


    #delete controller action
    # def delete

    # end



    private 
    # why use private?

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password)
    end
    # params is whatever the user typed
    # difference between the require and permit?

end
