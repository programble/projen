# Projen

A tool for developers to quickly create new projects based on directory
templates.

Projen uses the [Liquid](http://liquidmarkup.org/) template rendering library
to allow template files to change based on project name, description, or any
other supplied parameters.

## Install

    gem install projen

## Tutorial

Project template directories are stored in `~/.projen/`. To begin, let's create
a generic project template directory:

```sh
mkdir -p ~/.projen/generic/
```

Now, if we want to create a new generic project called "nyan", we can run:

```sh
projen generic nyan
```

This will create a new project in the directory `nyan` based on the files in
the template directory.  But there aren't any files in the generic template for
Projen to copy! Let's create a README template:

```sh
$EDITOR ~/.projen/generic/README.md
```

##### ~/.projen/generic/README.md
```markdown
# {{ project | capitalize }}

This project is called {{ project }}.
```

Now when we run `projen generic nyan`, Projen should create a file called
`nyan/README.md` that looks like this:

##### nyan/README.md
```markdown
# Nyan

This project is called nyan.
```

## License

Copyright (c) 2011, Curtis McEnroe <programble@gmail.com>

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

