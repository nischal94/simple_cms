class User < ActiveRecord::Base
  # to configure a different table name
  # self.table_name = "admin_users"

  #short way
  # attr_accessor :first_name

  #long way
  # def last_name
  # @last_name

  #no need of this.active record does that.
end
