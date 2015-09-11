# require "bteacher.rb"
# require "bmatter.rb"

require "databridge.rb"


# This class implements the facade design pattern
class Facade
    
    
    # singleton design pattern implementation
    def self.instance
       @instance ||= new
    end
    
    # mapping Model's Class to local vars
    
    def Usuario
       @Usuario = BridgeUser 
    end
    
    def Aluno
       @Aluno = BridgeStudent
    end
     
    def Professor
       @Professor = BridgeTeacher
    end
    
    def AreaConhecimento
       @AreaConhecimento = BridgeAreaOfKnowledge
    end
    
    def Materia
       @Materia = BridgeMatter
    end
     
    def Curso
       @Curso = BridgeCourse 
    end
    
    def Matricula
       @Matricula = BridgeEnrollment
    end
    
    def Recomendacao
       @Recomendacao = BridgeRecommendation
    end
    
    def Contato
       @Contato = BridgeContact
    end
    
    

    # Get all data from a model    
    def getAll(model)
        case model
            when "user" then BridgeUser.all
            when "student" then BridgeStudent.all
            when "teacher" then BridgeTeacher.all
            when "area_of_knowledge" then BridgeAreaOfKnowledge.all
            when "matter" then BridgeMatter.all
            when "course" then BridgeCourse.all
            when "enrollment" then BridgeEnrollment.all
            when "recommendation" then BridgeRecommendation.all
            when "contact" then BridgeContact.all
            else "Model #{model} not found!"
        end
    end
    
    # def getAll(*args)
    #     if args.length == 1
    #         case args[0]
    #           when "teacher" then BTeacher.all
    #           when "course" then Course.all
    #           else "no found model"
    #         end
    #     else 
    #         case args[0]
    #           when "teacher" then BTeacher.allLimetedOf(args[1]) #Teacher.all.limit(args[1])  #
    #           when "course" then Course.all.limit(args[1])
    #           else "no found model"
    #         end
    #     end
        
    #     # return result
    # end
    
    # def getAll(model, qtd)
    #     result = case model
    #       when "teacher" then BTeacher.allLimetedOf(qtd)
    #       when "course" then Course.all.limit(qtd)
    #       else "no found model"
    #     end
    #     return result
    # end
    
    # return the COUNT of records in a model
    def count(model)
        result = case model
           when "teacher" then Teacher.all.count
           when "course" then Course.all.count
           else "no found model"
        end
        return result
    end
end

FACADE = Facade.instance