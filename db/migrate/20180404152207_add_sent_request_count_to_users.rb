class AddSentRequestCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sent_requests_count, :integer
  end
end
