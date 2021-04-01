class MembersController < ApplicationController

    def index
        render json: Member.first
    end

    def login
        member = Member.find_by(email: member_params[:email])
        if member && member.authenticate(member_params[:password])
            # token = JWT.encode({ user_id: user.id }, 'my$ecretK3y', 'HS256')
            # render json: { user: UserSerializer.new(user), token: token }
            render json: member
          else
            render json: { errors: ["Invalid email or password"] }, status: :unauthorized
          end
    end

    # def signup
    #     member = Member.create(member_params)
    #     if member.valid?
    #         render json: member, status: :created
    #     else
    #         render json: {errors: member.errors.full_messages}, status: :unprocessable_entity
    #     end

    # end

    def signup
        
        member = Member.create(member_params)
        if member_params[:image] != ""
            image_url = Cloudinary::Uploader.upload(member_params[:image])
            member.update(image: image_url['url'])
        end
        if member.valid?

        render json: member, status: :created
        else
            render json: {errors: member.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def member_params
        params.permit(:name, :password, :email, :age, :image)
    end

    

   


end
