class Questions
    attr_reader :num1, :num2, :question, :answer

    def initialize
        @num1 = Random.new.rand(1..9)
        @num2 = Random.new.rand(1..12)
        @answer = num1 * num2
        @question = generate_question
    end

    def generate_question
        question = "What does #{num1} times #{num2} equal?"
    end
end
