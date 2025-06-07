@explicit_destroy()
struct LinearType:
  fn __init__(out self):
    return

  fn destroy(owned self):
    destroy self

def main():
  var l = LinearType()
  print()
