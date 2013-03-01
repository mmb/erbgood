require 'spec_helper'

describe Erbgood::ErbBindingCheck do

  subject { Erbgood::ErbBindingCheck.new(bindin, erb).error }

  context 'when the binding satisfies the ERB' do
    let(:bindin) {
      x = 1
      binding
    }

    let(:erb) { <<-eos
<%= x %>
    eos
    }

    it { should be_nil }

  end

  context 'when the binding does not satisfy the ERB' do
    let(:bindin) {
      x = 1
      binding
    }

    let(:erb) { <<-eos
<%= y %>
    eos
    }

    its(:message) { should include "undefined local variable or method `y'" }

  end

end
