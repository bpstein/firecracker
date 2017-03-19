module Omniauth

  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:facebook] = {
        'provider' => 'facebook',
        'uid' => '123545',
        'user_info' => {
          'name' => 'mockuser'
        },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        }
      }
    end

    def mock_auth_hash
      # The mock_auth configuration allows you to set per-provider (or default)
      # authentication hashes to return during integration testing.
      OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
        'provider' => 'facebook',
        'uid' => '123545',
        'info' => {
          'name' => 'mockuser',
          'image' => 'mock_user_thumbnail_url',
          'first_name' => 'john',
          'last_name' => 'doe',
          'email' => 'john@doe.com',
          'urls' => {
            'public_profile' => 'http://test.test/public_profile'
          }
        },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        },
        'extra' => {
          'raw_info' => '{"json":"data"}'
        }
      })
    end
  end

  module SessionHelpers
    def sign_in_omniauth
      visit root_path
      expect(page).to have_content("Log In")
      auth_mock
      click_link "Log In"
    end
  end

end
