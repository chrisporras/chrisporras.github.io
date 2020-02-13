class ApplicationController < ActionController::Base
  def render_square
    render({:template => "forms/square_form.html.erb"})
  end
  
  def query_square
    # Parameters: {"user_number" => "42"}

    @the_num = params.fetch('user_number').to_f
    @the_square = @the_num ** 2

    render({:template => "calculators/square_results.html.erb" })
  end

  def render_square_root
    
    render({:template => "forms/square_root_form.html.erb"}) 
  end

  def query_square_root
    # Parameters: {"user_number" => "42"}

    @the_num = params.fetch("user_number").to_f
    @the_sqrt = @the_num ** (0.5)

    render({:template => "calculators/square_root_results.html.erb"})
  end

  def render_payment
  
    render({:template => "forms/payment_form.html.erb"})
  end

  def query_payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @pv = params.fetch("user_pv").to_f

    mr = (@apr/12)/100
    mos = @years*12
    
    @payment = ((mr*@pv)/(1 - (1+mr)**(-1*mos))).round(2)

    @apr = @apr.round(4)
    render({:template => "calculators/payment_results.html.erb"})
  end 

  def render_random
  
  render({:template => "forms/random_form.html.erb"})
  end

  def query_random

    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    @rando = rand(@min...@max).round(4)

    render({:template => "calculators/random_results.html.erb"})
  end

end
