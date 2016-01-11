class User < ActiveRecord::Base
    has_many :secrets
    has_secure_password
end
