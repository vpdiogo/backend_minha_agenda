class Api::V1::TarefasController < Api::V1::ApiController
 
  before_action :set_tarefa, only: [:show, :update, :destroy]
    
  before_action :require_authorization!, only: [:show, :update, :destroy]
    
  # GET /api/v1/tarefas
    
  def index
    
    @tarefas = current_user.tarefas
    
    render json: @tarefas
    
  end
    
  # GET /api/v1/tarefas/1
    
  def show
    
    render json: @tarefas
    
  end
    
  # POST /api/v1/tarefas
    
  def create
    
    @tarefa = Tarefa.new(tarefa_params.merge(user: current_user))
    
    if @tarefa.save
    
      render json: @tarefa, status: :created
    
    else
    
      render json: @tarefa.errors, status: :unprocessable_entity
    
    end
    
  end
    
  # PATCH/PUT /api/v1/tarefas/1
    
  def update
    
    if @tarefa.update(tarefa_params)
    
      ender json: @tarefa
    
    else
    
      render json: @tarefa.errors, status: :unprocessable_entity
    
    end
    
  end
    
  # DELETE /api/v1/tarefas/1
    
  def destroy
    
    @tarefa.destroy
    
  end
    
  private
    
    # Use callbacks to share common setup or constraints between actions.
    
    def set_tarefa
    
      @tarefa = Tarefa.find(params[:id])
    
    end
    
    # Only allow a trusted parameter "white list" through.
    
    def tarefa_params
    
      params.require(:tarefa).permit(:name, :data, :hora)
    
    end
    
    def require_authorization!
    
      unless current_user == @tarefa.user
    
        ender json: {}, status: :forbidden
    
      end
    
    end
    
end