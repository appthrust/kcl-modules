dir = lambda path: str -> str {
    """Returns the directory name of a path."""
    ret = "."
    if path == "":
        ret = "."
    elif path == "/":
        ret = "/"
    elif path[0] == "/" and path.strip("/") == "":
        ret = "/"
    else:
        parts = path.rstrip("/").rsplit("/", 1)
        len = len(parts)
        if len > 1:
            if parts[0] == "":
                ret = "/"
            else:
                ret = parts[0].rstrip("/")

    ret
}
