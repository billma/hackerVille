class User < ActiveRecord::Base

  attr_accessible :avatar, :image, :name, :uid, :url, :email

  def self.find_or_create_from_auth_hash auth_hash
    provider = auth_hash[:provider]
    if provider == "github"
      user = User.find_or_initialize_by_uid auth_hash['uid']
      user.update_attributes(
        :name=>auth_hash['info']['name'],
        :email=>auth_hash['info']['email'],
        :url => auth_hash['info']['urls']['GitHub'],
        :image=>auth_hash['info']['image']
      )
      return user
    end 
  end 

  
end
