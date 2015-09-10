class ModelBridgeTemplate
    
    # Métodos genéricos existentes em todos os MODEL's. 
    # As particularidades serão implementadas em classes qye herdam esta.
    
    @model

    def self.get(id)
      @model.get(id) 
    end
    
    def self.all
      @model.all 
    end
    
    def self.allLimetedOf(quant)
      @model.all.limit(quant)
    end
    
    def self.count
        @model.all.count
    end

end