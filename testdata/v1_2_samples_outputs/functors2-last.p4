parser p1()(bit<2> a) {
    state start {
    }
}

parser p2()(bit<2> b, bit<2> c) {
    p1(2w0) p1a;
    p1(b) p1b;
    p1(c) p1c;
    state start {
        p1a.apply();
        p1b.apply();
        p1c.apply();
    }
}

parser nothing();
package m(nothing n);
m(p2(2w1, 2w2)) main;
