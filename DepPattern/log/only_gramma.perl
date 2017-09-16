# Single: X<lemma:$NEG>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$NEG\|${r})/$1/g;
Add("Head","pol:neg",@temp);

# Single: X<lemma:$POS>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:$POS\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$POS\|${r})/$1/g;
Add("Head","pol:pos",@temp);

# TermR: X<lemma:$NEG> X|PUNCT
# Add: pol:neg
# NoUniq
(@temp) = ($listTags =~ /($X${l}lemma:$NEG\|${r})($X$a|$PUNCT$a)/g);
$Rel =  "TermR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$NEG\|${r})($X$a|$PUNCT$a)/$1$2/g;
Add("HeadDep","pol:neg",@temp);

# TermR: X<lemma:$POS> X|PUNCT
# Add: pol:pos
# NoUniq
(@temp) = ($listTags =~ /($X${l}lemma:$POS\|${r})($X$a|$PUNCT$a)/g);
$Rel =  "TermR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:$POS\|${r})($X$a|$PUNCT$a)/$1$2/g;
Add("HeadDep","pol:pos",@temp);

# VSpecL: VERB<type:S> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? VERB<mode:P>
# Inherit: mode, person, tense, number
(@temp) = ($listTags =~ /($VERB${l}type:S\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($VERB${l}mode:P\|${r})/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($VERB${l}type:S\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($VERB${l}mode:P\|${r})/$2$3$4$5$6$7$8$9$10$11$12/g;
Inherit("DepHead","mode,person,tense,number",@temp);

# VSpecL: VERB<(type:A)|(lemma:ter|haver|haber|avoir|have|deber|querer|poder)> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? VERB
# Inherit: mode, person, tense, number
(@temp) = ($listTags =~ /($VERB${l}type:A\|${r}|$VERB${l}lemma:(?:ter|haver|haber|avoir|have|deber|querer|poder)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($VERB$a)/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($VERB${l}type:A\|${r}|$VERB${l}lemma:(?:ter|haver|haber|avoir|have|deber|querer|poder)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($VERB$a)/$2$3$4$5$6$7$8$9$10$11$12/g;
Inherit("DepHead","mode,person,tense,number",@temp);

# VSpecL: [VERB<lemma:tener|haber>] [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? CONJ<lemma:que> [ADV]? VERB<mode:N>
# NEXT
# VSpecL: VERB<lemma:tener|haber> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [CONJ<lemma:que>] [ADV]? VERB<mode:N>
# Inherit: mode, person, tense, number
(@temp) = ($listTags =~ /(?:$VERB${l}lemma:(?:tener|haber)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($CONJ${l}lemma:que\|${r})(?:$ADV$a)?($VERB${l}mode:N\|${r})/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
(@temp) = ($listTags =~ /($VERB${l}lemma:(?:tener|haber)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$CONJ${l}lemma:que\|${r})(?:$ADV$a)?($VERB${l}mode:N\|${r})/g);
$Rel =  "VSpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($VERB${l}lemma:(?:tener|haber)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($CONJ${l}lemma:que\|${r})($ADV$a)?($VERB${l}mode:N\|${r})/$2$3$4$5$6$7$8$9$10$11$13$14/g;
Inherit("DepHead","mode,person,tense,number",@temp);

# AdjnL: [ADV<lemma:no>] VERB<lemma:be|seem|look> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? NOUN|ADJ<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:be|seem|look)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($NOUN$a|$ADJ${l}lemma:$NEG\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:be|seem|look)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($NOUN$a|$ADJ${l}lemma:$NEG\|${r})/$1$3$4$5$6$7$8$9$10$11$12$13/g;
Add("DepHead","pol:pos",@temp);

# AdjnL: [ADV<lemma:no>] VERB<lemma:be|seem|look> [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? [ADV]? NOUN|ADJ<lemma:$POS>
# Add: pol:neg
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:be|seem|look)\|${r})(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?(?:$ADV$a)?($NOUN$a|$ADJ${l}lemma:$POS\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($VERB${l}lemma:(?:be|seem|look)\|${r})($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($ADV$a)?($NOUN$a|$ADJ${l}lemma:$POS\|${r})/$1$3$4$5$6$7$8$9$10$11$12$13/g;
Add("DepHead","pol:neg",@temp);

# SpecL: [ADV<lemma:no>] PRO  VERB<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "SpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$NEG\|${r})/$1$3/g;
Add("DepHead","pol:pos",@temp);

# SpecL: [ADV<lemma:no>] PRO  VERB<lemma:$POS>
# Add: pol:neg
(@temp) = ($listTags =~ /(?:$ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "SpecL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADV${l}lemma:no\|${r})($PRO$a)($VERB${l}lemma:$POS\|${r})/$1$3/g;
Add("DepHead","pol:neg",@temp);

# AdjnL: X<lemma:any> X<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:any\|${r})($X${l}lemma:$NEG\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:any\|${r})($X${l}lemma:$NEG\|${r})/$2/g;
Add("DepHead","pol:pos",@temp);

# AdjnL: X<lemma:any> X<lemma:$POS>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:any\|${r})($X${l}lemma:$POS\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:any\|${r})($X${l}lemma:$POS\|${r})/$2/g;
Add("DepHead","pol:neg",@temp);

# CprepR: X<lemma:easy> PRP<lemma:of|to> VERB<lemma:$POS>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:easy\|${r})($PRP${l}lemma:(?:of|to)\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:easy\|${r})($PRP${l}lemma:(?:of|to)\|${r})($VERB${l}lemma:$POS\|${r})/$1/g;
Add("HeadRelDep","pol:pos",@temp);

# Single: X<lemma:easy> [PRP<lemma:of|to>] [VERB<lemma:$NEG>]
# Add: pol:neg
# NEXT
# CprepR: X<lemma:easy> PRP<lemma:of|to> VERB<lemma:$NEG>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:easy\|${r})(?:$PRP${l}lemma:(?:of|to)\|${r})(?:$VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:easy\|${r})($PRP${l}lemma:(?:of|to)\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:easy\|${r})($PRP${l}lemma:(?:of|to)\|${r})($VERB${l}lemma:$NEG\|${r})/$1/g;
Add("HeadRelDep","pol:neg",@temp);

# Single: [X<lemma:hard|complicated|difficult|taugh>] [PRP<lemma:to|of>] VERB<lemma:$POS>
# Add: pol:neg
# NEXT
# CprepR: X<lemma:hard|complicated|difficult|taugh> PRP<lemma:to|of> VERB<lemma:$POS>
(@temp) = ($listTags =~ /(?:$X${l}lemma:(?:hard|complicated|difficult|taugh)\|${r})(?:$PRP${l}lemma:(?:to|of)\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:hard|complicated|difficult|taugh)\|${r})($PRP${l}lemma:(?:to|of)\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:hard|complicated|difficult|taugh)\|${r})($PRP${l}lemma:(?:to|of)\|${r})($VERB${l}lemma:$POS\|${r})/$1/g;

# Single: [X<lemma:hard|complicated|difficult|taugh>] [PRP<lemma:to|of>] VERB<lemma:$NEG>
# Add: pol:pos
# NEXT
# CprepR: X<lemma:hard|complicated|difficult|taugh> PRP<lemma:to|of> VERB<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$X${l}lemma:(?:hard|complicated|difficult|taugh)\|${r})(?:$PRP${l}lemma:(?:to|of)\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:pos",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:hard|complicated|difficult|taugh)\|${r})($PRP${l}lemma:(?:to|of)\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:hard|complicated|difficult|taugh)\|${r})($PRP${l}lemma:(?:to|of)\|${r})($VERB${l}lemma:$NEG\|${r})/$1/g;
Add("HeadRelDep","pol:pos",@temp);

# Single: ADJ<pol:pos> [NOUN<pol:neg>]
# Add: pol:neg
# NEXT
# AdjnL: ADJ<pol:neg> NOUN<pol:neg>
(@temp) = ($listTags =~ /($ADJ${l}pol:pos\|${r})(?:$NOUN${l}pol:neg\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($ADJ${l}pol:neg\|${r})($NOUN${l}pol:neg\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:neg\|${r})($NOUN${l}pol:neg\|${r})/$2/g;

# AdjnL: ADJ<pol:neg> NOUN
# Add: pol:neg
(@temp) = ($listTags =~ /($ADJ${l}pol:neg\|${r})($NOUN$a)/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:neg\|${r})($NOUN$a)/$2/g;
Add("DepHead","pol:neg",@temp);

# AdjnR: NOUN ADJ<pol:neg>
# Add: pol:neg
(@temp) = ($listTags =~ /($NOUN$a)($ADJ${l}pol:neg\|${r})/g);
$Rel =  "AdjnR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($NOUN$a)($ADJ${l}pol:neg\|${r})/$1/g;
Add("HeadDep","pol:neg",@temp);

# AdjnL: ADJ<pol:pos> NOUN
# Add: pol:pos
(@temp) = ($listTags =~ /($ADJ${l}pol:pos\|${r})($NOUN$a)/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:pos\|${r})($NOUN$a)/$2/g;
Add("DepHead","pol:pos",@temp);

# AdjnR: NOUN ADJ<pol:pos>
# Add: pol:pos
(@temp) = ($listTags =~ /($NOUN$a)($ADJ${l}pol:pos\|${r})/g);
$Rel =  "AdjnR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($NOUN$a)($ADJ${l}pol:pos\|${r})/$1/g;
Add("HeadDep","pol:pos",@temp);

# CprepR: ADJ|NOUN PRP X
(@temp) = ($listTags =~ /($ADJ$a|$NOUN$a)($PRP$a)($X$a)/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($ADJ$a|$NOUN$a)($PRP$a)($X$a)/$1/g;

# CircR: VERB PRP X
(@temp) = ($listTags =~ /($VERB$a)($PRP$a)($X$a)/g);
$Rel =  "CircR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($VERB$a)($PRP$a)($X$a)/$1/g;

# AtrR: VERB<lemma:be> ADJ
(@temp) = ($listTags =~ /($VERB${l}lemma:be\|${r})($ADJ$a)/g);
$Rel =  "AtrR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($VERB${l}lemma:be\|${r})($ADJ$a)/$1/g;

