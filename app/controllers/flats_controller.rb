require 'open-uri'

class FlatsController < ApplicationController
  # DRY - Don't Repeat Yourself

  API_URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'

  before_action :set_flats # ANTIGAMENTE, era before_filter e não before_action

  def index
  end

  def show
    #  URL             parametro com a chave definida        valor do parametro
    #                  na rota
    # 'flat/morbazan'  params[:alguma_variavel]              'morbazan'
    # 'flat/25'        params[:alguma_variavel]              '25'
    #
    # depois da mudança nas rotas, o que temos é params[:id]
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    @flats = JSON.parse(URI.open(API_URL).read)
  end
end
