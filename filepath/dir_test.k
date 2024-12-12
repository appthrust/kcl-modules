test_basic_unix_path = lambda {
    assert dir("/home/user/file.txt") == "/home/user"
}

test_trailing_slash = lambda {
    assert dir("/home/user/") == "/home"
}

test_root_level_file = lambda {
    assert dir("/file.txt") == "/"
}

test_filename_only = lambda {
    assert dir("file.txt") == "."
}

test_current_directory = lambda {
    assert dir(".") == "."
}

test_current_directory_with_slash = lambda {
    assert dir("./") == "."
}

test_parent_directory = lambda {
    assert dir("..") == "."
}

test_parent_directory_with_slash = lambda {
    assert dir("../") == "."
}

test_root_directory = lambda {
    assert dir("/") == "/"
}

test_empty_string = lambda {
    assert dir("") == "."
}

test_multiple_slashes = lambda {
    assert dir("/home//user///file.txt") == "/home//user"
}

test_multiple_current_directories = lambda {
    assert dir("./././file") == "././."
}

test_multiple_parent_directories = lambda {
    assert dir("../../../file") == "../../.."
}

test_triple_dots = lambda {
    assert dir(".../file") == "..."
}

test_path_with_current_directory = lambda {
    assert dir("/home/user/./file") == "/home/user/."
}

test_path_with_parent_directory = lambda {
    assert dir("/home/user/../file") == "/home/user/.."
}

test_path_with_spaces = lambda {
    assert dir("/path/with spaces/file") == "/path/with spaces"
}

test_path_with_tab = lambda {
    assert dir("/path/with\tTab/file") == "/path/with\tTab"
}

test_path_with_unicode = lambda {
    assert dir("/ユーザー/ファイル") == "/ユーザー"
}

test_path_with_hash = lambda {
    assert dir("/path/with#hash/file") == "/path/with#hash"
}

test_path_with_query = lambda {
    assert dir("/path/with?query/file") == "/path/with?query"
}

test_multiple_root_slashes = lambda {
    assert dir("////////") == "/"
}
