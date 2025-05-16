from sys import argv

if __name__ == "__main__":
    if len(argv) != 2:
        print(f"usage: {argv[0]} <string>")
        exit(1)

    for c in argv[1]:
        print(f"&#x{ord(c):x};", end="")
    print("")

