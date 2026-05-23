"""Smoke tests: does the package even turn on."""


def test_imports():
    import solvatochrome  # noqa: F401


def test_version_is_str():
    import solvatochrome

    assert isinstance(solvatochrome.__version__, str)
    assert solvatochrome.__version__
