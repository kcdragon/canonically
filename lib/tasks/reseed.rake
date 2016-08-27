namespace :db do
  task reseed: [:migrate, :reset, :seed]
end
