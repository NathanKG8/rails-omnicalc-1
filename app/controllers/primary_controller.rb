class PrimaryController < ApplicationController
  def newsquare
    render({ :template => "math_templates/newsquare"})
  end

  def squareresults
    @beforefloat_num = params.fetch("number")
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2
    render({ :template => "math_templates/squareresults"})
  end

  def newroot
    render({ :template => "math_templates/newroot"})
  end

  def rootresults
    @beforefloat_num = params.fetch("user_number")
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** (1.0 /2)
    render({ :template => "math_templates/rootresults"})
  end

  def newpayment
    render({ :template => "math_templates/newpayment"})
  end

  def paymentresults
    @pre_userapr = params.fetch("user_apr").to_f
    @userapr = @pre_userapr.to_fs(:percentage, {:precision => 4})
    @userperiods = params.fetch("user_years")
    @pre_userprincipal = params.fetch("user_pv").to_f
    @userprincipal = @pre_userprincipal.to_fs(:currency)
    @apr = (params.fetch("user_apr").to_f / 100) /12
    @periods = params.fetch("user_years").to_i * 12
    @principal = params.fetch("user_pv").to_f
    @numerator = @apr * @principal
    @denominator = 1 - ((1 + @apr) ** ((-1) * @periods))
    @pre_result = @numerator / @denominator
    @the_result = @pre_result.to_fs(:currency)
    render({ :template => "math_templates/paymentresults"})
  end

  def newrandom
    render({ :template => "math_templates/newrandom"})
  end

  def randomresults
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @the_result = rand(@min..@max)
    render({ :template => "math_templates/randomresults"})
  end
end
