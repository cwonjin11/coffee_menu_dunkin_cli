

require_relative "lib/dunkin_coffee_menu/version"

Gem::Specification.new do |spec|
  spec.name          = "dunkin_coffee_menu"
  spec.version       = DunkinCoffeeMenu::VERSION
  spec.authors       = ["Wonjin Cho"]
  spec.email         = ["cwonjin1@gmail.com"]

  spec.summary       = "https://github.com/cwonjin11/coffee_menu_dunkin_cli"
  spec.description   = "https://github.com/cwonjin11/coffee_menu_dunkin_cli"
  spec.homepage      = "https://github.com/cwonjin11/coffee_menu_dunkin_cli"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/cwonjin11/coffee_menu_dunkin_cli"

  # spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cwonjin11/coffee_menu_dunkin_cli"
  spec.metadata["changelog_uri"] = "https://github.com/cwonjin11/coffee_menu_dunkin_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_development_dependency "pry"
  
  spec.add_dependency "nokogiri"
  spec.add_dependency "colorize"
end
