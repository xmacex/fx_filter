FxFilter : FxBase {
    *new {
        var ret = super.newCopyArgs(nil, \none, (
            freq: 440,	 // norns controlspec.WIDEFREQ default, not SC
            res: 0.1,
            inputgain: 1.0,
            type: 0
        ), nil, 1);
        ^ret;
    }

    *initClass {
        FxSetup.register(this.new);
    }

    subPath {
        ^"/fx_filter";
    }

    symbol {
        ^\fxFilter;
    }

    addSynthdefs {
        SynthDef(\fxFilter, {|inBus, outBus|
            var input, sig;
            input = In.ar(inBus, 2);
            sig   = DFM1.ar(input,
                freq:       \freq.kr(1),
                res:        \res.kr(1),
                inputgain:  \inputgain.kr(1),
                type:       (\type.kr(1) - 1),
            );
            Out.ar(outBus, sig);
        }).add;
    }
}
