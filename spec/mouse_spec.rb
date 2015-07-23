require 'rspec'
require_relative '../mice_example.rb'

RSpec.describe 'a mouse' do

  it 'has boots' do
    mouse = Mouse.new
    mouse.boots = 'cool boots'
    expect(mouse.boots).to eq('cool boots')
  end

  it 'does not share boots with other mice' do
    cool_mouse = Mouse.new
    dumb_mouse = Mouse.new
    cool_mouse.boots = "cool boots"
    dumb_mouse.boots = 'untied boots'

    expect(cool_mouse.boots).to eq('cool boots')
    expect(dumb_mouse.boots).to eq('untied boots')
  end

  it 'can run if it has cool boots' do
    mouse = Mouse.new
    expect(mouse.run).to eq('running')
  end

  it 'trips if boots are untied' do
    mouse = Mouse.new
    mouse.boots = 'untied boots'
    expect(mouse.run).to eq('I tripped!')
  end

  it 'runs in the matter stated in the argument' do
    mouse = Mouse.new
    mouse_running = mouse.run('quickly')
    expect(mouse_running).to eq('running quickly')
    expect(mouse.run('poorly')).to eq('running poorly')
  end
end
