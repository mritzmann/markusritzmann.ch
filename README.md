# markusritzmann.ch

Personal Website. Build with [awsm.css](https://github.com/igoradamenko/awsm.css).

## Works with curl too!

```json
$ curl markusritzmann.ch
{
  "@context": "http://schema.org/",
  "@type": "Person",
  "name": "Markus Ritzmann",
  "birthDate": "████-██-██",
  "url": "https://markusritzmann.ch/",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "████████████-Strasse 11",
    "addressLocality": "█████████",
    "postalCode": "████",
    "addressCountry": "Switzerland"
  },
  "sameAs": [
    "https://twitter.com/RitzmannMarkus/",
    "https://github.com/mritzmann/"
  ]
}
```

## Automatic deploys

Every push to `master` will deploy a new version of [markusritzmann.ch](https://markusritzmann.ch/).
Deploys happen automatically: be sure that this branch in GitHub is always in a deployable state.
