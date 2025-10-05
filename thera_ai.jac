import from byllm { Model }

glob llm = Model(model_name = "openai/gpt-4o-mini");

def generate_therapeutic_response(feeling: str) -> str by llm();
def generate_advice_response(advice: str) -> str by llm();
def generate_tutor_response(topic: str) -> str by llm();

with entry {
    print("🧠 Welcome to Thera.AI — your AI companion!");
    print("Type 'exit' anytime to leave.\n");

    while True {
        print("Choose a mode:");
        print("1. Therapeutic");
        print("2. Advice");
        print("3. Tutor");
        mode = input("Enter number (1–3): ").strip();

        if mode == "exit" or mode == "quit" {
            print("👋 Goodbye! Take care of yourself ❤️");
            break;
        }

        if mode == "1" {
            while True {
                user_feeling = input("\nHow are you feeling today? (or 'back' to main menu) ");
                if user_feeling == "back" { break; }
                if user_feeling == "exit" {
                    print("👋 Goodbye! Take care of yourself ❤️");
                    break;
                }
                response = generate_therapeutic_response(user_feeling);
                print(f"💬 TheraAI says: {response}");
            }
        } elif mode == "2" {
            while True {
                user_advice = input("\nWhat advice do you need? (or 'back' to main menu) ");
                if user_advice == "back" { break; }
                if user_advice == "exit" {
                    print("👋 Goodbye! Take care of yourself ❤️");
                    break;
                }
                response = generate_advice_response(user_advice);
                print(f"💡 Thera Advice says: {response}");
            }
        } elif mode == "3" {
            while True {
                user_tutor = input("\nWhat topic do you want to learn? (or 'back' to main menu) ");
                if user_tutor == "back" { break; }
                if user_tutor == "exit" {
                    print("👋 Goodbye! Take care of yourself ❤️");
                    break;
                }
                response = generate_tutor_response(user_tutor);
                print(f"📘 Thera Tutor says: {response}");
            }
        } else {
            print("❌ Invalid choice. Please pick 1, 2, or 3.\n");
        }
    }
}

