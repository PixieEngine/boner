Gem::Specification.new do |s|
  s.name        = "boner"
  s.version     = 0.0.1
  s.authors     = ["Matt Diebolt, Daniel X. Moore"]
  s.email       = ["matt@pixieengine.com"]
  s.homepage    = ""
  s.summary     = %q{}
  s.description = %q{}

  # Manifest
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
