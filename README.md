Debugger for GitHub actions

## Usage

Add action to workflow file:
```yaml
---
name: Debugger
on: push
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        fetch-depth: '20'
    - name: Run a one-line script
      uses: g4s8/debugger-action@master
      with:
        payload: "true"
        gitlog: "true"
        env: "true"
 ```
 
 Parameters:
  - `payload` - show events payload
  - `gitlog` - show git log
  - `env` - show environment variables
