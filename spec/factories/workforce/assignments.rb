FactoryBot.define do
  factory :workforce_assignment, class: 'Workforce::Assignment' do
    association :workforce_shift
    association :assignee, factory: :user
  end
end
