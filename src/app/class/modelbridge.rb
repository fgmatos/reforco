class ModelBridgeTemplate
    
    # Métodos genéricos existentes em todos os MODEL's. 
    # As particularidades serão implementadas em classes qye herdam esta.
    
    @model

    def self.new(args = nil)
        if args.nil?
            @model.new
        else
            @model.new(args)
        end
    end
    
    def self.save
        @model.save 
    end
    
    def self.update(args = nil)
        if args.nil?
            @model.update
        else
            @model.update(args)
        end
    end

    def self.get(id)
        @model.find(id) 
    end
    
    def self.all
        @model.all 
    end
    
    def self.destroy
        @model.destroy 
    end
    
    def self.where(conditions)
        @model.where(conditions)
    end
    
    def self.allLimetedOf(quant)
        @model.all.limit(quant)
    end
    
    def self.count
        @model.all.count
    end

end