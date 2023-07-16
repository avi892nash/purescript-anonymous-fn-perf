export const _bind = function( ma ) {
    return function(f) {
        debugger;
    }
}

export const runOPMonad = function(ma) {
    while(ma.length == 2) {
        var a = ma[1][0]();
        ma = ma[0](a);
    }
}