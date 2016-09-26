
                    export  fix32_inv_table
                    export  fix32_isqrt_table
                    export  fix32_sin_table


; The reciprocal lookup table. The table consist of 256 eight-bit entries.
; Each entry represents the eight least significant bits of a nine-bit Q8
; reciprocal of a number in the range from one-half to one. The ninth bit
; is ignored since it is always set and can be restored by software. The
; entries are packed into 32-bit little-endian words.

                    area    |.fix32_inv_table|, data

fix32_inv_table     dcd     0xf9fbfdfe, 0xf1f3f5f7, 0xeaeceef0, 0xe3e5e6e8
                    dcd     0xdcdddfe1, 0xd5d7d8da, 0xced0d2d3, 0xc8c9cbcd
                    dcd     0xc2c3c5c6, 0xbcbdbfc0, 0xb6b7b9ba, 0xb0b1b3b4
                    dcd     0xaaacadae, 0xa5a6a7a9, 0x9fa1a2a3, 0x9a9c9d9e
                    dcd     0x95969899, 0x90919394, 0x8b8d8e8f, 0x8788898a
                    dcd     0x82838486, 0x7e7f8081, 0x797a7b7c, 0x75767778
                    dcd     0x71727374, 0x6d6e6f70, 0x696a6b6c, 0x65666768
                    dcd     0x61626364, 0x5d5e5f60, 0x595a5b5c, 0x56575858
                    dcd     0x52535455, 0x4f505151, 0x4b4c4d4e, 0x48494a4b
                    dcd     0x45464647, 0x42424344, 0x3f3f4041, 0x3b3c3d3e
                    dcd     0x38393a3b, 0x35363738, 0x33333435, 0x30303132
                    dcd     0x2d2e2e2f, 0x2a2b2c2c, 0x2828292a, 0x25262627
                    dcd     0x22232424, 0x20202122, 0x1d1e1e1f, 0x1b1b1c1d
                    dcd     0x18191a1a, 0x16171718, 0x14141515, 0x11121213
                    dcd     0x0f101011, 0x0d0d0e0f, 0x0b0b0c0c, 0x09090a0a
                    dcd     0x06070708, 0x04050506, 0x02030304, 0x00010102


; The inverse square root lookup table. Each table entry is 16-bit wide and
; represents a Q10 inverse square root of a number that is in the range from
; one-half to one. The entries are packed into 32-bit little-endian words.

                    area    |.fix32_isqrt_table|, data

fix32_isqrt_table   dcd     0x05a005a5, 0x0595059a, 0x058a058f, 0x05800585
                    dcd     0x0575057a, 0x056b0570, 0x05610566, 0x0558055d
                    dcd     0x054e0553, 0x0545054a, 0x053c0540, 0x05330538
                    dcd     0x052a052f, 0x05220526, 0x051a051e, 0x05110515
                    dcd     0x0509050d, 0x05010505, 0x04fa04fd, 0x04f204f6
                    dcd     0x04ea04ee, 0x04e304e7, 0x04dc04df, 0x04d504d8
                    dcd     0x04ce04d1, 0x04c704ca, 0x04c004c3, 0x04b904bd
                    dcd     0x04b304b6, 0x04ad04b0, 0x04a604a9, 0x04a004a3
                    dcd     0x049a049d, 0x04940497, 0x048e0491, 0x0488048b
                    dcd     0x04820485, 0x047d047f, 0x0477047a, 0x04710474
                    dcd     0x046c046f, 0x04670469, 0x04610464, 0x045c045f
                    dcd     0x0457045a, 0x04520454, 0x044d044f, 0x0448044a
                    dcd     0x04430445, 0x043e0441, 0x043a043c, 0x04350437
                    dcd     0x04300433, 0x042c042e, 0x04270429, 0x04230425
                    dcd     0x041e0420, 0x041a041c, 0x04160418, 0x04110414
                    dcd     0x040d040f, 0x0409040b, 0x04050407, 0x04010403


; The sine lookup table. The table consist of sixty-four 32-bit entries. Each
; table entry is a Q31 fixed-point value representing the sine of an angle in
; the first quadrant.

                    area    |.fix32_sin_table|, data

fix32_sin_table     dcd     0x01921d20, 0x04b6195d, 0x07d95b9e, 0x0afb6805
                    dcd     0x0e1bc2e4, 0x1139f0cf, 0x145576b1, 0x176dd9de
                    dcd     0x1a82a026, 0x1d934fe5, 0x209f701c, 0x23a6887f
                    dcd     0x26a82186, 0x29a3c485, 0x2c98fbba, 0x2f875262
                    dcd     0x326e54c7, 0x354d9057, 0x382493b0, 0x3af2eeb7
                    dcd     0x3db832a6, 0x4073f21d, 0x4325c136, 0x45cd3590
                    dcd     0x4869e665, 0x4afb6c98, 0x4d8162c4, 0x4ffb654d
                    dcd     0x5269126f, 0x54ca0a4b, 0x571deefa, 0x59646498
                    dcd     0x5b9d1154, 0x5dc79d7c, 0x5fe3b38e, 0x61f1003f
                    dcd     0x63ef3290, 0x65ddfbd3, 0x67bd0fbd, 0x698c246c
                    dcd     0x6b4af279, 0x6cf934fc, 0x6e96a99d, 0x7023109a
                    dcd     0x719e2cd3, 0x7307c3d0, 0x745f9dd1, 0x75a585d0
                    dcd     0x76d94989, 0x77fab989, 0x7909a92d, 0x7a05eeae
                    dcd     0x7aef6324, 0x7bc5e290, 0x7c894bde, 0x7d3980ed
                    dcd     0x7dd6668f, 0x7e5fe494, 0x7ed5e5c7, 0x7f3857f6
                    dcd     0x7f872bf3, 0x7fc25597, 0x7fe9cbc1, 0x7ffd885b


                    end