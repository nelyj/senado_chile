require 'spec_helper'
require 'pry-byebug'

describe SenadoChile do
  it 'has a version number' do
    expect(SenadoChile::VERSION).not_to be nil
  end

  describe '#senadores' do
    before(:each) do
      @senadores = SenadoChile.senadores
    end

    it 'return a Hash data type' do
      expect(@senadores.class).to be Hash
    end

    it 'has a senadores object key' do
      expect(@senadores.keys.first).to eq("senadores")
    end
  end

  describe '#tramitaciones' do
    before(:each) do
      @tramitaciones = SenadoChile.tramitaciones
    end

    it 'return a Hash data type' do
      expect(@tramitaciones.class).to be Hash
    end

    it 'has a proyectos object key' do
      expect(@tramitaciones.keys.first).to eq("proyectos")
    end
  end
end
