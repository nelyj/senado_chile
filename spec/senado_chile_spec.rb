require 'spec_helper'
require 'pry-byebug'

describe SenadoChile do
  it 'has a version number' do
    expect(SenadoChile::VERSION).not_to be nil
  end

  describe '#diputados' do
    before(:each) do
      @diputados = SenadoChile.diputados
    end

    it 'return an Array data type' do
      expect(@diputados.class).to be Array
    end

    it 'return first object with :dipid' do
      diputado = @diputados.first.keys
      expect(diputado.first).to eq(:dipid)
    end
  end

  describe '#periodos_legislativos' do
    before(:each) do
      @periodos_legislativos = SenadoChile.periodos_legislativos
    end

    it 'return an Array data type' do
      expect(@periodos_legislativos.class).to be Array
    end

    it 'return first object with :id' do
      periodos_legislativos = @periodos_legislativos.first.keys
      expect(periodos_legislativos.first).to eq(:id)
    end

  end

  describe '#senadores' do
    before(:each) do
      @senadores = SenadoChile.senadores
    end

    it 'return a Hash data type' do
      expect(@senadores.class).to be Array
    end

    it 'return first object with :parlaid key' do
      senador = @senadores.first.keys
      expect(senador.first).to eq(:parlid)
    end
  end

  describe '#tramitaciones' do
    before(:each) do
      @tramitaciones = SenadoChile.tramitaciones
    end

    it 'return a Hash data type' do
      expect(@tramitaciones.class).to be Array
    end

    it 'eturn first object with :descripcion key' do
      tramite = @tramitaciones.first.keys
      expect(tramite.first).to eq(:descripcion)
    end
  end
end
