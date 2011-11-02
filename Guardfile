# TDD Guardfile

guard 'spork', :rspec_env => { 'RAILS_ENV' => 'test' }, 
               :wait => 60, :test_unit => false, 
               :cucumber => false do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb')
  watch('test/test_helper.rb')
end

guard 'rspec', :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')        { "spec" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^app/(.+)\.rb$})           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$}) do |m| 
    "spec/#{m[1]}#{m[2]}_spec.rb"
  end
  watch(%r{^lib/(.+)\.rb$})           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$}) do |m|
   ["spec/routing/#{m[1]}_routing_spec.rb",
    "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
    "spec/acceptance/#{m[1]}_spec.rb"]
  end
  watch(%r{^spec/support/(.+)\.rb$})                 { "spec" }
  watch('spec/spec_helper.rb')                       { "spec" }
  watch('config/routes.rb')                          { "spec/routing" }
  watch('app/controllers/application_controller.rb') { "spec/controllers" }
  watch(%r{^app/views/(.+)/.*\.(erb|haml)$}) do |m| 
    "spec/requests/#{m[1]}_spec.rb"
  end
end
