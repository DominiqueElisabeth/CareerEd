require 'rails_helper'
describe 'Favorite model function', type: :model do

  describe 'Favorite model function' do
    context 'If the user is set empty' do
      it 'It is hard to Validation' do
        job = FactoryBot.create(:job)
        favorite = Favorite.create(job_id: job.id)
        expect(favorite).not_to be_valid
      end
    end
    context 'If the job is set empty' do
      it 'It is hard to Validation' do
        user = FactoryBot.create(:user)
        favorite = Favorite.create(user_id: user.id )
        expect(favorite).not_to be_valid
      end
    end
    context 'If the job and user are described' do
      it 'Validation passes' do
        job = FactoryBot.create(:job)
        user = FactoryBot.create(:user2)
        favorite = Favorite.create(job_id: job.id ,user_id: user.id)
        expect(favorite).to be_valid
      end
    end
  end
end
