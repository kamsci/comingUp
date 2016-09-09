require 'rails_helper'


RSpec.describe Cohort, :type => :model do

end

######## Test Examples for Model ########

# RSpec.describe User, :type => :model do
#   it 'orders by last name' do
#     lindeman = User.create!(first_name: 'Andy', last_name: 'Lindeman')
#     chelimsky = User.create!(first_name: 'David', last_name: 'Chelimsky')

#     expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
#   end
# end


# RSpec.describe Post, :type => :model do
#   context "with 2 or more comments" do
#     it "orders them in reverse chronologically" do
#       post = Post.create!
#       comment1 = post.comments.create!(:body => "first comment")
#       comment2 = post.comments.create!(:body => "second comment")
#       expect(post.reload.comments).to eq([comment2, comment1])
#     end
#   end
# end