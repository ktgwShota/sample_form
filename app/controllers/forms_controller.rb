class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create 
    @form = Form.new(form_params)
    
    if @form.save
      redirect_to @form, notice: '処理が完了しますた'
    else
      render :new
    end    
  end

  def show
    @form = Form.find(params[:id])
  end

  private

  def form_params
    params.require(:form).permit(:title, :body, :user_last_name, :user_first_name, :user_last_reading, :user_first_reading, :login_id, :login_pw)
  end


end
