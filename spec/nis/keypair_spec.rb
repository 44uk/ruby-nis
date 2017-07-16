require 'spec_helper'

describe Nis::Keypair do
  let(:priv_key) { '00b4a68d16dc505302e9631b860664ba43a8183f0903bc5782a2403b2f9eb3c8a1' }
  let(:pub_key) { '5aff2e991f85d44eed8f449ede365a920abbefc22f1a2f731d4a002258673519' }
  # TODO: public key calculated from private key in future version.
  let(:keypair) { Nis::Keypair.new(priv_key, public_key: pub_key) }

  subject { keypair }

  describe '#private' do
    it { expect(subject.private).to eq priv_key }
  end

  describe '#public' do
    it { expect(subject.public).to eq pub_key }
  end
end
