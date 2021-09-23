class AddUserRefToJobs < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :user, foreign_key: true
  end
end
