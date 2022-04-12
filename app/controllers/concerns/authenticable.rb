module Authenticable
    private

    def authenticable_with_token
        @token ||= request.headers['Authorization'] # ||= pega o valor caso não já não tenha, se tiver não pega
        unless valid_token?
            render json: {errors: 'Você não tem autorização para essa operação.'},
                status: :unauthorized # 401
        end
    end

    def valid_token?
        @token.present? && @token == Rails.application.credentials.token
    end
end