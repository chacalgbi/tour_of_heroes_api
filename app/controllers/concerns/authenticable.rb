module Authenticable
    private

    def authenticable_with_token
        @token ||= request.headers['Authorization'] # ||= pega o valor caso não já não tenha, se tiver não pega
        unless valid_token?
            render json: {errors: 'Forneça um header Authorization para se identificar.'},
                status: :unauthorized # 401
        end
    end

    def valid_token?
        @token.present? && @token.size >= 10
    end
end