require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'phusion_passenger/standalone/runtime_installer'

module PhusionPassenger
module Standalone

describe RuntimeInstaller do
	context "when originally packaged" do
		it "downloads the support binaries from the Internet"
		it "downloads the Ruby extension binary from the Internet"
		it "downloads the Nginx binary from the Internet"
		it "builds the support binaries if it cannot be downloaded"
		it "builds the Ruby extension binary if it cannot be downloaded"
		it "builds the Nginx binary if it cannot be downloaded"
		it "aborts if the support binaries cannot be built"
		it "continues if the Ruby extension binary cannot be built"
		it "aborts if the Nginx binary cannot be built"
	end

	context "when natively packaged" do
		it "doesn't download the support binaries from the Internet"
		it "downloads the Ruby extension binary from the Internet"
		it "downloads the Nginx binary from the Internet"
		it "builds the Ruby extension binary if it cannot be downloaded"
		it "builds the Nginx binary if it cannot be downloaded"
		it "aborts if the support binaries is not already available"
		it "continues if the Ruby extension binary cannot be built"
		it "builds the Nginx binary"
	end

	it "lists the compiler as a dependency if one or more components needs to be built"
	it "doesn't list the compiler as a dependency if no component needs to be built"
	it "lists the Ruby development headers as a suggestion if the Ruby extension needs to be built"
	it "doesn't list the Ruby development headers as a suggestion if the Ruby extension doesn't need to be built"
end

end # module Standalone
end # module PhusionPassenger