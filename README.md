# Global Symposium & 38th ACSIC Conference 2026

A responsive, static GitHub Pages implementation modeled on [globalacsic2026.in](https://globalacsic2026.in/). It has no build step or backend. All navigation pages are plain HTML entry files and use relative asset paths, so it works at both `username.github.io/` and `username.github.io/repository/`.

## Publish on GitHub Pages

1. Copy the contents of this `outputs` folder into the root of your GitHub repository.
2. Push the files to GitHub.
3. In the repository, open **Settings → Pages**.
4. Under **Build and deployment**, choose **Deploy from a branch**, select your publishing branch (usually `main`) and **/(root)**, then save.
5. Wait for the Pages deployment to finish and open the published URL shown on the Pages settings screen.

For a local preview, open `index.html` in a browser or run a simple static file server from this folder.

## Pages and assets

The homepage is `index.html`. The source navigation pages are included as individual `.html` files. Shared presentation and menu behavior are in `styles.css` and `script.js`; local artwork is in `assets/`.

The source site’s imagery and marks are included for this presentation clone. Confirm you have permission to republish those materials before making the repository public or using the site commercially. Google Fonts are loaded from Google Fonts when online; system fallbacks remain available offline.
