Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#index"
  get "by_name" => "application#findByName"
  get "by_expense" => "application#findByExpense"
  get "by_income" => "application#findByIncome"
end
