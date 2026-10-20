from setuptools import setup, find_packages

setup(
    name='apiverve_wordlexiconanalyzer',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Word Lexicon Analyzer inspects any single word to check linguistic properties including palindromes, isograms, and Scrabble validity. It identifies anagram potential, alphagram status, and sorted letter forms.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/lexicon?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
