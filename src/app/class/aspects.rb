
module ASPECTS
    
    #----------------------------------------------------------------------------- #
    # Metodo equivalente a um aspecto de AOP, disparado pelo código equivalente a  #
    # um pointcut do tipo arround.                                                 #
    #----------------------------------------------------------------------------- #
    
    # Aspect :around, :class => TeacherController, :method => :new 
    def validate_teacher
        begin
            @teacher = Teacher.all
            if ( @teacher.find_by( user_id: current_user.id ) )
                flash[:notice] = "Olá #{current_user.name}, Você já é um professor!"
                redirect_to teacher_path(@teacher.find_by(user_id: current_user.id))
            else
                # Realiza a chamada ao metodo original 
                yield
            end
        ensure
        
        end
    end
end