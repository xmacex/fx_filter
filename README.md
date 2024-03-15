# Filter fx for norns

A simple implementation of [DFM1](https://doc.sccode.org/Classes/DFM1.html) SuperCollider filter as a norns effect. Requires sixolet's amazing [fx mod](https://llllllll.co/t/fx-mod/62726) framework, updated on 2024-03-14.

> DFM1 is a digitally modelled analog filter.1 It provides low-pass and high-pass filtering. The filter can be overdriven and will self-oscillate at high resonances.

The norns fx caps resonance and gain for safety reasons.

# Requirements

- norns
- [fx mod](https://llllllll.co/t/fx-mod/62726)

# Installation

After installing the fx mod and enabling it, install the filter via [Maiden](https://norns.local) with

```
;install https://github.com/xmacex/fx_filter
```

Then, enable via the `SYSTEM > MODS` menu, and restart norns.

# Usage

You'll find the exposed parameters in norns menu in the section `fx filter`.

See the [fx mod](https://llllllll.co/t/fx-mod/62726) documentation about routing to sends, end-of-chain etc.
