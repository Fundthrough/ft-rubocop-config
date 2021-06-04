
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ft-rubocop-config"
  spec.version       = '0.1.0'
  spec.authors       = ["Fundthrough"]
  spec.email         = ["mikalai@fundthrough.com"]

  spec.summary       = %q{Rubocop shared configuration}
  spec.description   = %q{Rubocop shared configuration}
  spec.homepage      = "https://github.com/Fundthrough/ft-rubocop-config"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Fundthrough/ft-rubocop-config"
    spec.metadata["changelog_uri"] = "https://github.com/Fundthrough/ft-rubocop-config/tree/main/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_runtime_dependency 'rubocop', '>= 0.81.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
end
