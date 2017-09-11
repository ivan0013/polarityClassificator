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

# CprepR: X<lemma:fácil|sencillo> PRP<lemma:de> VERB<lemma:$POS>
# Add: pol:pos
(@temp) = ($listTags =~ /($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/$1/g;
Add("HeadRelDep","pol:pos",@temp);

# Single: X<lemma:fácil|sencillo> [PRP<lemma:de>] [VERB<lemma:$NEG>]
# Add: pol:neg
# NEXT
# CprepR: X<lemma:fácil|sencillo> PRP<lemma:de> VERB<lemma:$NEG>
# Add: pol:neg
(@temp) = ($listTags =~ /($X${l}lemma:(?:fácil|sencillo)\|${r})(?:$PRP${l}lemma:de\|${r})(?:$VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:fácil|sencillo)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/$1/g;
Add("HeadRelDep","pol:neg",@temp);

# Single: [X<lemma:difícil|complicado|duro>] [PRP<lemma:de>] VERB<lemma:$POS>
# Add: pol:neg
# NEXT
# CprepR: X<lemma:difícil|complicado|duro> PRP<lemma:de> VERB<lemma:$POS>
(@temp) = ($listTags =~ /(?:$X${l}lemma:(?:difícil|complicado|duro)\|${r})(?:$PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$POS\|${r})/$1/g;

# Single: [X<lemma:difícil|complicado|duro>] [PRP<lemma:de>] VERB<lemma:$NEG>
# Add: pol:pos
# NEXT
# CprepR: X<lemma:difícil|complicado|duro> PRP<lemma:de> VERB<lemma:$NEG>
# Add: pol:pos
(@temp) = ($listTags =~ /(?:$X${l}lemma:(?:difícil|complicado|duro)\|${r})(?:$PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:pos",@temp);
(@temp) = ($listTags =~ /($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/g);
$Rel =  "CprepR";
HeadRelDep($Rel,"",@temp);
$listTags =~ s/($X${l}lemma:(?:difícil|complicado|duro)\|${r})($PRP${l}lemma:de\|${r})($VERB${l}lemma:$NEG\|${r})/$1/g;
Add("HeadRelDep","pol:pos",@temp);

# Single: ADJ<pol:pos> [NOUN<pol:neg>]
# Add: pol:neg
# NEXT
# AdjnL: ADJ<pol:pos> NOUN<pol:neg>
(@temp) = ($listTags =~ /($ADJ${l}pol:pos\|${r})(?:$NOUN${l}pol:neg\|${r})/g);
$Rel =  "Single";
Head($Rel,"",@temp);
Add("Head","pol:neg",@temp);
(@temp) = ($listTags =~ /($ADJ${l}pol:pos\|${r})($NOUN${l}pol:neg\|${r})/g);
$Rel =  "AdjnL";
DepHead($Rel,"",@temp);
$listTags =~ s/($ADJ${l}pol:pos\|${r})($NOUN${l}pol:neg\|${r})/$2/g;

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

# AtrR: VERB<lemma:ser> ADJ
(@temp) = ($listTags =~ /($VERB${l}lemma:ser\|${r})($ADJ$a)/g);
$Rel =  "AtrR";
HeadDep($Rel,"",@temp);
$listTags =~ s/($VERB${l}lemma:ser\|${r})($ADJ$a)/$1/g;

