class Spork::TestFramework::RSpec < Spork::TestFramework
  DEFAULT_PORT = ENV['RSPEC_PORT'] || 8989
  HELPER_FILE = File.join(Dir.pwd, ENV['RSPEC_HELPER'] || "spec/spec_helper.rb")

  def run_tests(argv, stderr, stdout)
    ::Spec::Runner::CommandLine.run(
      ::Spec::Runner::OptionParser.parse(
        argv,
        stderr,
        stdout
      )
    )
  end
end
