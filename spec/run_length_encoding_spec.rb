require './rb_run_length_encoding.rb'

describe 'rb_run_length_encoding' do
    it "encode string AAAAABBBZZZZDDDDDDDIII return to 5A3B4Z7D3I" do
        expect(encode("AAAAABBBZZZZDDDDDDDIII")).to eq "5A3B4Z7D3I"
    end
    it "encode string AAAAABBBZZZZDDDDDDDIIIX return to 5A3B4Z7D3IX" do
        expect(encode("AAAAABBBZZZZDDDDDDDIIIX")).to eq "5A3B4Z7D3IX"
    end
    it "encode string when string doesn't repeat ABCDEF return to ABCDEF" do
        expect(encode("ABCDEF")).to eq "ABCDEF"
    end    
    it "decode string 5A3B4Z7D3I return to AAAAABBBZZZZDDDDDDDIII" do
        expect(decode("5A3B4Z7D3I")).to eq "AAAAABBBZZZZDDDDDDDIII"
    end
    it "decode string 12AI7B2I return to AAAAAAAAAAAAIBBBBBBBII" do
        expect(decode("12AI7B2I")).to eq "AAAAAAAAAAAAIBBBBBBBII"
    end
end