require_relative '../lib/rename_this'

describe Rename_this do
  it 'returns nil if nil is passed in' do
    obj = Rename_this.new
    expect(obj.execute).to be_nil
  end
end
