module AuthorizationSpecHelper
  def sign_in(user)
    post(
      '/v1/auth/sign_in',
      params: { email: user.email, password: user.password }
    )
    response.headers.slice('client', 'access-token', 'uid')
  end
end
