class PagesController < ApplicationController
  
  def index
    @teachers = FACADE.getAll('teacher').limit(4)
    @quantidade_of_teachers = FACADE.count('teacher')
  end
  
  def show

  end
  
  def sobre
    # render 'pages/sobre'
  end
  
  def termos
    # render 'pages/termos'
  end
  
  def funcionamento
    render 'pages/como-funciona'
  end
  
end
