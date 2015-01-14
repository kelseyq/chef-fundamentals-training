require 'serverspec'

set :backend, :exec

describe 'motd' do
  it "creates a file" do
    expect(file "/etc/motd").to be_file
    expect(file "/etc/motd").to contain("doggone")
  end

end

end
