# Risk of Rain 2 Items - A web-based item viewer
## Building
### Prerequisites
This project uses Nix flakes for packaging, so at the minimum you will need to install the
[Nix Package Manager](https://nixos.org/download/), or better yet use NixOS!
Make sure to enable
[experimental flake feature](https://nix.dev/manual/nix/2.18/contributing/experimental-features#xp-feature-flakes)
to allow the usage of flakes.

### Building the web application
The web application in the flake is called `ror2-frontend`, so at the toplevel directory of the repo run the following:

```bash
nix build .#ror2-frontend
```
This will build the web application, and provide a symbolic link `result` to the contents of the web application.

```bash
$ tree ./result/
result
├── css
│   └── style.css
├── images
│   ├── artifacts
│   │   └── ... cut for brevity
│   ├── backgrounds
│   │   └── ... cut for brevity
│   └── items
│       └── ... cut for brevity
├── index.html
└── js
    ├── catalog.js
    ├── config.js
    └── main.js
```

You can then do what you want with the build artifacts, such as serving them on your web server.
If you'd like to preview what the application looks like, you can run the following:

```bash
$ nix develop
$ static-file-server serve --path result/ --port 8000
```

Those commands will enter the flakes default development shell, which provides development tools.
The `static-file-server` is one of those tools, that simply serves files given a base directory.

