require 'rubygems'
require 'spec'
require 'spec/rake/spectask'

desc 'Run specs'
task 'spec' do
  Spec::Rake::SpecTask.new("spec") do |t|
    t.spec_files = FileList["spec/*.spec","spec/*.rb"]
    t.rcov = true
    t.rcov_opts = ['-x', '/Library', '-x', '/System/Library', '-x', 'spec']
    t.spec_opts = ["-c"]
  end
end

desc 'Run specs with backtrace'
task 'tracespec' do
  Spec::Rake::SpecTask.new("tracespec") do |t|
    t.spec_files = FileList["spec/*.spec"]
    t.rcov = false
    t.rcov_opts = ['-x', '/Library', '-x', '/System/Library', '-x', 'spec']
    t.spec_opts = ["-bcfn"]
  end
end

task :default => [:spec]
