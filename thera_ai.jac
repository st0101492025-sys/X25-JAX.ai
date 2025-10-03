import from byllm { Model }

glob llm = Model(
    model_name = "openai/gpt-4o-mini"
);

def generate_therapeutic_response(feeling: str) -> str by llm();

def generate_advice_response(advice: str) -> str by llm();

def generate_tutor_response(tutor: str) -> str by llm();

with entry {
    user_feeling = "I feel overwhelmed and stuck.";
    response = generate_therapeutic_response(user_feeling);
    print(f"TheraAI says: {response}");
}

with entry {
    user_advice ="I need your advice regarding my broken relationship";
    response_one = generate_advice_response(user_advice);
    print(f"Thera ADV says: {response_one}");
}

with entry {
    user_tutor ="I want you to teach me jaclang, from jaclang.org";
    response_two = generate_tutor_response(user_tutor);
    print(f"Thera Tutor says: {response_two}");
}