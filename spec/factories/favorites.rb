FactoryBot.define do
  factory :favorite do

    job_id { 1 }
    association :user
  end
end
