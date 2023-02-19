require "../beginners_selection.rb"
require 'debug'

RSpec.describe 'PracticeA' do
  it 'Sample input' do
    in_val = [
      '1',
      '2 3',
      'test',
    ]
    out_val = <<-EOS
6 test
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.practice_a }.to output(out_val).to_stdout
  end
end

RSpec.describe 'ABC086A - Product' do
  it 'Sample1' do
    in_val = [
      '3 4',
    ]
    out_val = <<-EOS
Even
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc086a_product }.to output(out_val).to_stdout
  end

  it 'Sample2' do
    in_val = [
      '1 21',
    ]
    out_val = <<-EOS
Odd
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc086a_product }.to output(out_val).to_stdout
  end
end

RSpec.describe 'ABC081A - Placing Marbles' do
  it 'Sample1' do
    in_val = [
      '101',
    ]
    out_val = <<-EOS
2
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc081a_placing_marbles }.to output(out_val).to_stdout
  end

  it 'Sample2' do
    in_val = [
      '000',
    ]
    out_val = <<-EOS
0
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc081a_placing_marbles }.to output(out_val).to_stdout
  end
end

RSpec.describe 'ABC081B - Shift only' do
  it 'Sample1' do
    in_val = [
      '3',
      '8 12 40'
    ]
    out_val = <<-EOS
2
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc081b_shift_only }.to output(out_val).to_stdout
  end

  it 'Sample2' do
    in_val = [
      '4',
      '5 6 8 10'
    ]
    out_val = <<-EOS
0
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc081b_shift_only }.to output(out_val).to_stdout
  end

  it 'Sample3' do
    in_val = [
      '6',
      '382253568 723152896 37802240 379425024 404894720 471526144'
    ]
    out_val = <<-EOS
8
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc081b_shift_only }.to output(out_val).to_stdout
  end
end

RSpec.describe 'ABC087B - Coins' do
  it 'Sample1' do
    in_val = [
      '2',
      '2',
      '2',
      '100',
    ]
    out_val = <<-EOS
2
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc087b_coins }.to output(out_val).to_stdout
  end

  it 'Sample2' do
    in_val = [
      '5',
      '1',
      '0',
      '150',
    ]
    out_val = <<-EOS
0
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc087b_coins }.to output(out_val).to_stdout
  end

  it 'Sample3' do
    in_val = [
      '30',
      '40',
      '50',
      '6000',
    ]
    out_val = <<-EOS
213
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc087b_coins }.to output(out_val).to_stdout
  end
end

RSpec.describe 'ABC087B - Coins (speed)' do
  it 'Sample1' do
    in_val = [
      '2',
      '2',
      '2',
      '100',
    ]
    out_val = <<-EOS
2
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc087b_coins_speed }.to output(out_val).to_stdout
  end

  it 'Sample2' do
    in_val = [
      '5',
      '1',
      '0',
      '150',
    ]
    out_val = <<-EOS
0
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc087b_coins_speed }.to output(out_val).to_stdout
  end

  it 'Sample3' do
    in_val = [
      '30',
      '40',
      '50',
      '6000',
    ]
    out_val = <<-EOS
213
    EOS

    allow(ARGF).to receive(:gets) { in_val.shift.to_s }
    expect { BeginnersSelection.new.abc087b_coins_speed }.to output(out_val).to_stdout
  end
end
