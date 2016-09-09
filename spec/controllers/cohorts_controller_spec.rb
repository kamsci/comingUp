require 'rails_helper'


RSpec.describe CohortsController, :type => :controller do
  describe 'GET #index' do
    it ' responds successfully with a 302 status code' do
      get :index
      expect(page).to have_http_status(:success)
      expect(response).to have_http_status(302)
    end

    it 'loads all cohorts into @cohorts in ascending order' do
      cohort2 = Cohort.create!(id: 2, cohort: 'WDItestUI', created_at: "2016-09-09 18:36:07", updated_at: "2016-09-09 18:36:07")
      cohort1 = Cohort.create!(id: 1, cohort: 'WDItest09', created_at: "2016-09-09 18:36:07", updated_at: "2016-09-09 18:36:07")
      # cohort2 = Cohort.create!(:id => 2, :cohort => 'WDItestUI', :created_at => "2016-09-09 18:36:07", :updated_at => "2016-09-09 18:36:07")
      # cohort1 = Cohort.create!(:id => 1, :cohort => 'WDItest09', :created_at => "2016-09-09 18:36:07", :updated_at => "2016-09-09 18:36:07")
      get :index

      # expect(assigns(@cohorts)).to match_array([cohort1, cohort2])
      expect(Cohort.all.order('cohort ASC')).to eq([id: 1, cohort: "WDItest", created_at: "2016-09-09 18:36:07", updated_at: "2016-09-09 18:36:07", id: 2, cohort: "WDItestUI", created_at: "2016-09-09 18:36:07", updated_at: "2016-09-09 18:36:07", id: 1, cohort: 'WDItest', created_at: "2016-09-09 18:36:07", updated_at: "2016-09-09 18:36:07"])
    end

    xit 'creates @student obj combining user, student, and cohort tables' do
      get :index
    end

    xit 'creates an @deliverables obj combining deliverable and cohort tables' do
    end
  end

  describe 'POST #create' do
    it 'CREATE creates a new cohort' do
      cohort1 = Cohort.create!(cohort: 'WDItest')
      # expect(cohort1).to be_a_new(Cohort)
      expect(cohort1.cohort).to eq('WDItest')
    end
  end

end

######## Test Examples for Controllers ########

# RSpec.describe PostsController, :type => :controller do
#   describe "GET #index" do
#     it "responds successfully with an HTTP 200 status code" do
#       get :index
#       expect(response).to be_success
#       expect(response).to have_http_status(200)
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end

#     it "loads all of the posts into @posts" do
#       post1, post2 = Post.create!, Post.create!
#       get :index

#       expect(assigns(:posts)).to match_array([post1, post2])
#     end
#   end
# end