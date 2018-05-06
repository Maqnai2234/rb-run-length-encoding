require './rb_run_length_encoding.rb'

describe 'rb_run_length_encoding' do
    it "encode string AAAAABBBZZZZDDDDDDDIII return to 5A3B4Z7D3I" do
        expect(encode("AAAAABBBZZZZDDDDDDDIII")).to eq "5A3B4Z7D3I"
    end 
    it "decode string 5A3B4Z7D3I return to AAAAABBBZZZZDDDDDDDIII" do
        expect(decode("5A3B4Z7D3I")).to eq "AAAAABBBZZZZDDDDDDDIII"
    end
end