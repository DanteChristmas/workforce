FactoryBot.define do
  factory :workforce_assignment, class: 'Workforce::Assignment' do
    workforce_shift { create(:workforce_shift) }
    assignee { create(:user) }
  end
end
