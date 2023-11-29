# PayloadCMS Themes

PayloadThemes is a simply CLI to simplify the implementation and communal sharing of PayloadCMS themes.

## Motivation

PayloadCMS is amazing!  It allows for an amazing amount of customization and, for me, is "the last CMS I'll ever need."  However, the actual UI is very distinctive and, perhaps, not to everyone's tastes. While front-end websites may be the ultimate goal of our CMS, users of the CMS may end up using the actual CMS interface every, single, day.  Due to this, it makes sense for application developers and UI experts to have control over their UX.  While customization is well done, there are a number of boiler-plate steps you'll need to do for every project.  CMS UI customization has opportunities for improvement in Payload documentation.  Further, not everyone has time (or desire) to create new design systems for Payload.  The large and friendly Payload community will provide a large amount of themes to match most tastes.  As can be seen by major design systems, libraries, and pervasive color pallettes, many tastes can be addressed with a refined, curated set of themes.

## Usage

1. Kick off the CLI without downloading `npx payloadthemes` or install `npm add -D payloadthemes`
   - The app will create a themes directory and add an overrides entry in your Payload config file (if it doesn't already exist).  This is non-disruptive and won't otherwise break anything.
   - The app will read the `manifest.json` file from this github repository
2. Select the theme you want
   - The app will download the theme's `.scss` file to the themes directory
   - The app will update the payload config to point to the new `.scss` file.  Note that the downloaded theme will have its own name to allow easily reverting to the prior theme.
3. Restart your payload project to see the new changes

## How it works

### 

- The app modifies ...
- The GitHub repo ...

## Roadmap

- [ ] Add params to allow initialization only, i.e. `npx payloadthemes --init`
- [ ] Use semantic versioning in the manifest and denote upgrades
- [ ] Add support for themes that overwrite (or add) components
- [ ] Diff the current version of the theme and confirm for overwrite
- [ ] Establish conventions for easily modified elements (such as color)
- [ ] Add mechanism to add screenshots for a theme
- [ ] Finish README.md
- [ ] Add license (MIT)
- [ ] Publish to npm

## Contributing
