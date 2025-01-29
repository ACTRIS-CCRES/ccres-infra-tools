# Tools to manage CCRES HKD services

## grafana_update_logo.sh

Tool to update the default logo of Grafana with custom ones.

The tools assumes images directory in grafana in located in `/usr/share/grafana/public/img`.

### Usage

The logo to use are located in `grafana/logos` directory.
- **favicon.png** : 32x32 pixels, the favicon of the web page
- **logo.svg** : the logo on the login page and in the top left corner of grafana


```bash
./grafana_update_logo.sh login server
```