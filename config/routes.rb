Rails.application.routes.draw do
  get 'calc/output'
  root 'calc#input'
end
