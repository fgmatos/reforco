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
    
    def self.destroy
        @model.destroy 
    end

    def self.get(id)
        @model.find(id) 
    end
    
    def self.all
        @model.all 
    end
    
    def self.order(*args)
        @model.order(args)
    end
    
    def self.select_and_where(colums, conditions)
        @model.where(conditions).select(colums)
    end
    
    # def self.where(conditions)
    #     @model.where(conditions)
    # end
    
    # def self.where_IN(conditions, terms)
    #     @model.where(conditions, terms)
    # end
    
    def self.where(*args)
       @model.where(args)
    end
    
    def self.joins(conditions)
        @model.joins(conditions)
    end
    
    def self.joins_and_where_in(join_conditions, where_conditions, terms)
        @model.joins(join_conditions).where(where_conditions, terms)
    end
    
    def self.allLimetedOf(quant)
        @model.all.limit(quant)
    end
    
    def self.count
        @model.all.count
    end
    
    def self.errors
        @model.errors
    end

end