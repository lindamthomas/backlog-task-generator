Participants:

Alicia (PM, LGE)

Ravi (Engineering Lead, LGE)

Thomas (Customer Success, MSFT)

Linda (Architect, MSFT)

Jo (QA Lead, LGE)

Transcript Begins

Alicia: Thanks everyone for joining. Before we jump in, did anyone see the new washing machine promo? The one with the AI drum balancing? Anyway, yeah—so the reason we’re here is to explore using agents in the Smart App… It’s a bit high-level right now.

Thomas: Right, agents that assist users? Or agents that automate device workflows?

Alicia: Exactly… um, both? We want something like a “helper”, someone who can talk to the customer inside the app. Not a chatbot… more like a… coordinator? Maybe it checks things across devices.

Linda: So some cross-device intelligence?

Ravi: Yes but not too complicated at first. Last week someone tried to troubleshoot a refrigerator compressor issue using the app and the support flow was too long. So maybe an agent that can detect what’s wrong and give quick steps.

Jo: But don’t rely only on sensor data. Half the time users ignore notifications so the agent should remind them… if possible.

Alicia: Also a smart scheduling assistant for appliances. People keep asking if the app can automatically run the dishwasher during off-peak hours. We don’t have that yet.

Thomas: That’s interesting. And does the agent need access to energy pricing APIs?

Alicia: Maybe. But let's capture it as a possibility, not a requirement yet.

Ravi: And also maybe an agent for onboarding new devices? Customers complain: “I don’t know where the pairing button is”. It should guide them step-by-step. Not like a long article — an actual interactive guide.

Jo: I’m also thinking—internal stuff. Like maybe an agent that checks logs? But that’s for later.

Alicia: Yes yes, not for v1.

Thomas: What are the main outcomes you want?

Alicia: Reduce customer frustration. If the agent can answer simple questions like “why is my AC not cooling” without the user digging into manuals, that’s ideal.

Ravi: But please don’t promise deep diagnostics. It should answer simple things first—filters, airflow, modes.

Linda: Got it — something like a tier-0 support agent.

Alicia: Exactly.

Thomas: Any constraints?

Ravi: We cannot call internal APIs more than 5 times per minute per customer. And we cannot store raw sensor logs.

Jo: And responses must be localized. Korean, English, Spanish at least.

Alicia: And tone must be friendly. The legal team keeps saying that.

Thomas: Alright — I think we have enough for a first cut.

Linda: One last thing — do users want voice or text?

Alicia: Text is fine for now. Voice is too costly.