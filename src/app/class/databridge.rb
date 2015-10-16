require "modelbridge.rb"


class BridgeUser < ModelBridgeTemplate
    @model = User
end

class BridgeStudent < ModelBridgeTemplate
    @model = Student
end

class BridgeTeacher < ModelBridgeTemplate
    @model = Teacher
end

class BridgeAreaOfKnowledge < ModelBridgeTemplate
    @model = AreaOfKnowledge
end

class BridgeMatter < ModelBridgeTemplate
    @model = Matter
end

class BridgeCourse < ModelBridgeTemplate
    @model = Course
end

class BridgeEnrollment < ModelBridgeTemplate
    @model = Enrollment
end

class BridgeRecommendation < ModelBridgeTemplate
    @model = Recommendation
end

class BridgeContact < ModelBridgeTemplate
    @model = Contact
end

