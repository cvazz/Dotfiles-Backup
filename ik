 default  partial alphanumeric_keys
 xkb_symbols "basic" {

    include "us(intl-unicode)"
    name[Group1]= "IK English (customized)";
    include "level3(ralt_switch)"


    key <AD04> { [ r, R, egrave, Egrave ] };
    key <AD05> { [ t, T, ediaeresis, Ediaeresis ] };
    key <AC04> { [ f, F, odiaeresis, Odiarasis ] };
    key <AC05> { [ g, G, udiaeresis, Udiaeresis ] };
    key <AC08> { [ k, K, idiaeresis, Idiaeresis ] };
    key <AB03> { [ c, C, ccedilla, Ccedilla ] };
    key <AB04> { [ v, V, atilde, Atilde ] };
    key <AB05> { [ b, B, otilde, Otilde ] };

    key.type = "ONE_LEVEL";
    key <CAPS> { [ Escape ] };

 };
