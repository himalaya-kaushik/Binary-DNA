from google import genai
import os

client = genai.Client(api_key='AIzaSyBG3BQgy5tLCym-3HQey1zPrqXF4pef1I0')

# List BASE models available to your key
for m in client.models.list(config={"query_base": True}):
    # m.name is the model id string you should pass to generate_content()
    print(m.name, "->", getattr(m, "supported_actions", None))
