# -*- encoding: utf-8 -*-
#require "lib/rhodes.rb"

Gem::Specification.new do |s|
  s.name = %q{tauplatform}
  s.version = File.read('version').chomp

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["TAU Technologies"]
  s.date = Time.now
  s.description = %q{TAU mobile framework}
  s.email = %q{info@tau-technologies.com}
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  files = Array.new
  IO.read("Manifest.txt").each_line {|x| files << x.chomp}
  s.files =  files
  s.homepage = %q{http://www.tau-technologies.com}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8", '--exclude=bin', '--exclude=doc', '--exclude=ext', '--exclude=installer', '--exclude=lib/build', '--exclude=lib/commonAPI', '--exclude=lib/extensions', '--exclude=lib/rhodes', '--exclude=lib/test', '--exclude=lib/rhodes.rb', '--exclude=platform', '--exclude=res', '--exclude=spec']
  s.require_paths = ["lib"]
  s.rubyforge_project = nil
  s.rubygems_version = %q{1.3.5}
  s.add_dependency('templater', '>= 0.5.0')
  s.add_dependency('rake', '>= 0.9.2')
  s.add_dependency('uuid', '>= 2.3.2')
  s.add_dependency('systemu', '>= 2.5.0')
  s.add_dependency('json', '~>1.5.4')
  s.add_dependency('rest-client', '~>1.6.6')
  s.add_dependency('CFPropertyList', '>= 2.2.0')
  s.add_dependency('listen', '>= 2.8.5')
  s.add_dependency('rubyzip', '>= 1.1.7')
  #s.add_dependency('rdoc', '~> 3.6.1')
  s.executables << 'taugen'
  s.executables << 'tau'
  s.executables << 'upgrade-tau-app'
  s.executables << 'tau-setup'
  s.executables << 'set-tau-sdk'
  s.executables << 'migrate-tau-app'
  s.executables << 'get-tau-info'
  #this is a hack, we dont have an extension, but we want to run postinstall code. It's done via the 'building' of an extension
  s.extensions << 'ext/extconf.rb'
  s.summary = %q{The TAU framework is the easiest way to develop NATIVE apps with full device capabilities (GPS, PIM, camera, etc.) for any smartphone.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end
