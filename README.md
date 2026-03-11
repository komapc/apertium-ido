# Ido Monolingual Dictionary for Apertium

This is an Apertium monolingual language package for Ido containing **6,748 dictionary entries**.

## Data Source

This dictionary was automatically generated from **Ido Wiktionary** ([io.wiktionary.org](https://io.wiktionary.org/)) data using an extraction script.

- **Source:** Ido Wiktionary dump (io.wiktionary.org)
- **Extraction date:** October 2025
- **Extraction script:** [ido-esperanto-extractor](https://github.com/komapc/ido-esperanto-extractor)
- **Generation script:** `create_ido_monolingual.py`

### Dictionary Statistics

- **Total entries:** 6,748
  - **Nouns:** 3,961 (with singular/plural, nominative/accusative)
  - **Adjectives:** 2,515 (with adverbial forms)
  - **Adverbs:** 272
- **Morphological states:** 4,210

## What you can use this language package for

* **Morphological analysis** of Ido text
* **Morphological generation** of Ido words
* **Part-of-speech tagging** of Ido (when combined with a tagger)
* **Machine translation** (when combined with bilingual dictionaries)

## Ido Grammar Coverage

### Nouns
- Singular nominative: `-o` (kato = cat)
- Plural nominative: `-i` (kati = cats)
- Singular accusative: `-on` (katon)
- Plural accusative: `-in` (katin)

### Adjectives
- Base form: `-a` (bona = good)
- Adverbial form: `-e` (bone = well)

### Verbs (paradigm defined, limited entries)
- Infinitive: `-ar` (vidar = to see)
- Present: `-as` (vidas = sees)
- Past: `-is` (vidis = saw)
- Future: `-os` (vidos = will see)
- Imperative: `-ez` (videz = see!)
- Conditional: `-us` (vidus = would see)

## Requirements

You will need the following software installed:

* `lttoolbox` (>= 3.5.1)
* `apertium` (>= 3.6.1)

If this does not make any sense, we recommend you look at: [www.apertium.org](https://www.apertium.org)

## Compiling

Given the requirements being installed, you should be able to just run:

```bash
./autogen.sh
./configure
make
```

You can use `./autogen.sh --prefix=/usr` if you want to install in `/usr` instead of `/usr/local`.

## Testing

If you are in the source directory after running make:

```bash
$ echo "kato" | apertium -d . ido-morph
^kato/kat<n><sg><nom>$

$ echo "bona" | apertium -d . ido-morph
^bona/bon<adj>$

$ echo "domi" | apertium -d . ido-morph
^domi/dom<n><pl><nom>$
```

After installing somewhere in `$PATH`, you should be able to do:

```bash
$ echo "kato" | apertium ido-morph
^kato/kat<n><sg><nom>$
```

## Files and Data

* `apertium-ido.ido.dix` - Morphological dictionary (6,748 entries, ~492 KB)
* `modes.xml` - Translation modes (ido-morph, ido-gener)
* `Makefile.am` - Build system
* `configure.ac` - Configuration

## License

### Code and Morphological Data

This package is licensed under the **GNU General Public License v2.0** (see `COPYING` file).

### Source Data Attribution

The dictionary entries were extracted from **Ido Wiktionary** ([io.wiktionary.org](https://io.wiktionary.org/)), which is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](https://creativecommons.org/licenses/by-sa/3.0/) and the [GNU Free Documentation License](https://www.gnu.org/licenses/fdl-1.3.html).

**Attribution:** 
- Original data: Ido Wiktionary contributors ([full list](https://io.wiktionary.org/wiki/Special:Statistics))
- Extracted and processed by: Mark (komapc)
- Extraction tool: [ido-esperanto-extractor](https://github.com/komapc/ido-esperanto-extractor)

The transformation from Wiktionary format to Apertium morphological dictionary format constitutes a substantial transformation and adaptation of the data, released here under GPL v2.0, compatible with the original CC-BY-SA and GFDL licenses.

## Generation Process

This dictionary was automatically generated using the following process:

1. **Download:** Ido Wiktionary XML dump ([iowiktionary-latest-pages-articles.xml.bz2](https://dumps.wikimedia.org/iowiktionary/))
2. **Extract:** Parse and extract Ido words with morphological information
3. **Convert:** Transform to Apertium `.dix` format with proper paradigms
4. **Validate:** Compile and test the resulting dictionary

See the [ido-esperanto-extractor](https://github.com/komapc/ido-esperanto-extractor) repository for the extraction and conversion scripts.

## Contributing

Contributions are welcome! You can:

- Report issues with specific dictionary entries
- Suggest improvements to morphological paradigms
- Add missing entries
- Improve verb coverage

Please open an issue or pull request on GitHub.

## For More Information

* **Apertium:** [https://wiki.apertium.org/wiki/Apertium](https://wiki.apertium.org/wiki/Apertium)
* **Apertium-ido:** [https://wiki.apertium.org/wiki/Apertium-ido](https://wiki.apertium.org/wiki/Apertium-ido)
* **Ido language:** [https://en.wikipedia.org/wiki/Ido](https://en.wikipedia.org/wiki/Ido)
* **Using lttoolbox dictionaries:** [https://wiki.apertium.org/wiki/Using_an_lttoolbox_dictionary](https://wiki.apertium.org/wiki/Using_an_lttoolbox_dictionary)

## Help and Support

If you need help using this language package, you can contact:

* **Mailing list:** apertium-stuff@lists.sourceforge.net
* **IRC:** #apertium on irc.oftc.net
* **GitHub Issues:** [https://github.com/komapc/apertium-ido/issues](https://github.com/komapc/apertium-ido/issues)

## See Also

- [apertium-ido-epo](https://github.com/komapc/apertium-ido-epo) - Ido-Esperanto language pair
- [ido-esperanto-extractor](https://github.com/komapc/ido-esperanto-extractor) - Extraction and conversion tools

