import from byllm { Model }

glob llm = Model(
    model_name = "openai/gpt-4o-mini"
);

def generate_therapeutic_response(feeling: str) -> str by llm();

def generate_advice_response(advice: str) -> str by llm();

def generate_tutor_response(tutor: str) -> str by llm();

with entry {
    print("🧠 Welcome to Thera.AI — your AI companion!");
    print("Choose a mode:");
    print("1. Therapeutic");
    print("2. Advice");
    print("3. Tutor");

    mode = input("Enter number (1–3): ").strip();

    if mode == "1" {
        user_feeling = input("How are you feeling today? ");
        response = generate_therapeutic_response(user_feeling);
        print(f"💬 TheraAI says: {response}");
    } elif mode == "2" {
        user_advice = input("What advice do you need? ");
        response_one = generate_advice_response(user_advice);
        print(f"💡 Thera Advice says: {response_one}");
    } elif mode == "3" {
        user_tutor = input("What topic do you want to learn? ");
        response_two = generate_tutor_response(user_tutor);
        print(f"📘 Thera Tutor says: {response_two}");
    } else {
        print("❌ Invalid choice. Please run again and pick 1, 2, or 3.");
    }
}
