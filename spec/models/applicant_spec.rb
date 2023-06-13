require 'rails_helper'

describe Applicant do
  subject(:new_applicant) { described_class.new }

  it 'must except record without settings' do
    expect(Applicant.create.id).to_not be(nil)
  end

  describe '#order' do
    let!(:low) { Applicant.create(settings: { phone_number: '111' }) }
    let!(:high) { Applicant.create(settings: { phone_number: '222' }) }

    it 'must work order by phone_number DESC' do
      expect(Applicant.order(Arel.sql("settings -> 'phone_number' DESC")).ids).to eq([high.id, low.id])
    end

    it 'must work order by phone_number ASC' do
      expect(Applicant.order(Arel.sql("settings -> 'phone_number' ASC")).ids).to eq([low.id, high.id])
    end
  end
end
