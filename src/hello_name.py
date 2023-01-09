import os

name = os.environ.get("NAME")

def hello_name(name):
  if not name: 
    print("No name specified")
  else:
    print(f"Hello {name}")

if __name__ == "__main__":
  hello_name(name=name)