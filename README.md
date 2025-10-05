# 🧠 Thera AI — Your AI Companion ✨

Thera AI is an **experimental emotional support and tutoring assistant** built with [Jaclang](https://jaclang.org/) — a next-generation language for **agent-based AI reasoning and orchestration**.

It’s powered by **BYLLM** and **OpenAI GPT models**, allowing it to provide therapy-style empathy, life advice, and even Jaclang tutoring — all through a single interactive terminal experience.

> 💬 Meet Thera AI — your one-stop therapist, tutor, and AI advisor.
> Built with ❤️ using Jaclang + BYLLM.

---

## 🌟 Key Features
- 🤖 **Three AI Modes**
  - 🧘 *Therapeutic Mode* — empathetic, conversational responses  
  - 💡 *Advice Mode* — life and relationship guidance  
  - 📘 *Tutor Mode* — Jaclang and AI learning support  
- 🧠 **Powered by BYLLM** — seamless LLM integration  
- ⚙️ **Built in Jaclang** — a language purpose-built for AI agents  
- 🔁 **Continuous Chat Mode** — stay in conversation until you type “exit”  
- 🧩 **Modular Design** — easily extend with new capabilities (like image generation)  
- ☁️ **Cloud-Ready** — deployable via **Jac Cloud** or **Jac Server**

---

## 📁 Project Structure
thera_ai/
├── thera_ai.jac # Main Jaclang program
├── README.md # Full documentation (you’re reading it)
├── LICENSE # MIT open-source license
└── .gitignore # Git ignored files and folders


##  🚀 Installation & Setup

1️⃣ Clone the repository
git clone https://github.com/<your-username>/thera_ai.git
cd thera_ai

2️⃣ Create and activate a virtual environment
python3 -m venv lii-dev

# On Linux / macOS
source lii-dev/bin/activate

# On Windows PowerShell
lii-dev\Scripts\activate

3️⃣ Install Jaclang
pip install jaclang


Check that it works:

jac --version

▶️ Run Thera AI

Start the app from your terminal:

jac run thera_ai.jac

Example Session
🧠 Welcome to Thera.AI — your AI companion!
Choose a mode:
1. Therapeutic
2. Advice
3. Tutor
Enter number (1–3): 1
How are you feeling today? I’m a bit anxious.

💬 TheraAI says: It’s okay to feel that way. Let’s take a breath together.
Would you like to talk more about what’s on your mind?

🧩 Extending Thera AI

Want to add new features (like image generation, journaling, or storytelling)?
Just define a new function using by llm and add a new mode:

def generate_image(prompt: str) -> str by llm();

# Then call:
response_img = generate_image("A calm sunset over the ocean")
print(f"🖼️ Imagen says: {response_img}")


Re-run:

jac run thera_ai.jac

☁️ Deploying to Jac Cloud

Jac Cloud lets you host your Jac applications on the web.
You can use:

jac cloud deploy thera_ai.jac


Or run locally with Jac Server:

jac serve thera_ai.jac


Once hosted, you can build a React GUI or REST API to interact with your Thera AI model in real time.

##  🧠 About Jaclang

Jaclang is an AI-first language designed for:

Agent-based reasoning

Graph memory and contextual learning

LLM orchestration with fine-grained control

📘 Learn more at jaclang.org

🪪 License

This project is licensed under the MIT License.

MIT License

Copyright (c) 2025 Mikel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction...

# 🧑‍💻 Author

Mikel Edusei
💼 Developer | AI Researcher | Jaclang Enthusiast
🌐 jaclang.org

“Thera AI is not just a program — it’s a companion that listens, teaches, and helps you grow.”
— Mikel Edusei

 # ❤️ Acknowledgements

Jaclang
 — for the powerful agent-based language

BYLLM
 — for easy LLM integration

OpenAI GPT Models
 — for the conversational engine

Community testers and contributors ❤️

🧩 Future Plans

🌐 Web GUI using Jac Server + React

🧘 Memory persistence and emotional tracking

🖼️ Image generation with multimodal support

☁️ Cloud deployment with live chat dashboard

🧠 Thera AI — Built to listen, teach, and heal.

Made with ❤️ using Jaclang and BYLLM.

