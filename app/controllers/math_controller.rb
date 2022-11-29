class MathController < ApplicationController
  def addition
    @result = params.fetch("first_num").to_f + params.fetch("second_num").to_f
    render({ :template => "math_html/add_template.html.erb" })
  end

  def addition_form
    render({ :template => "form_html/add_form.html.erb" })
  end

  def subtraction
    @result = params.fetch("first_num").to_f - params.fetch("second_num").to_f
    render({ :template => "math_html/sub_template.html.erb" })
  end

  def subtraction_form
    render({ :template => "form_html/sub_form.html.erb" })
  end

  def multiplication
    @result = params.fetch("first_num").to_f * params.fetch("second_num").to_f
    render({ :template => "math_html/mult_template.html.erb" })
  end

  def multiplication_form
    render({ :template => "form_html/mult_form.html.erb" })
  end

  def division
    @result = params.fetch("first_num").to_f / params.fetch("second_num").to_f
    render({ :template => "math_html/div_template.html.erb" })
  end

  def division_form
    render({ :template => "form_html/division_form.html.erb" })
  end
end
