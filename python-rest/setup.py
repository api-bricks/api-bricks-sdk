import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="coinapi.rest.v1",
    version="1.1",
    author="Tomasz Przybysz",
    author_email="tom.przybysz@gmail.com",
    description="SDKs for CoinAPI",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://docs.coinapi.io/",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.0',
)
