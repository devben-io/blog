---
title: "SALT - Highstate as scheduled job (config pull) "
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - salt
  - config
  - management
  - links
---



folgendes in die &lt;minion-config&gt; eintragen:

```
schedule:
  highstate:
    function: state.highstate
    minutes: 60
```

## Weblinks {#weblinks}

* [https://docs.saltstack.com/en/latest/topics/jobs/\#scheduling-highstates](https://docs.saltstack.com/en/latest/topics/jobs/#scheduling-highstates)



