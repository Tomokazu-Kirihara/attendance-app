FactoryBot.define do
  factory :message do
    id                {1}
    dayname           {2020}
    absence           {"欠席"}
    body              {"体調不良"}
    user_id           {1}
  end
end