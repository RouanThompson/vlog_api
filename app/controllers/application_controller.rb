class ApplicationController < ActionController::API
    # def encode_token(payload)
    #     JWT.encode(payload, 'my_s3cr3t')
    #     # #encode will return a encoded string...this is the JWT
    #     # encoded string contains header.payload.secret
    # end

    # def decoded_token(token)
    #     JWT.decode(token, 'my_s3cr3t')[0]
    #     # #decode will return an array of two elements: payload & header
    #     # [0] will specify the first element which is the payload
    # end
end
