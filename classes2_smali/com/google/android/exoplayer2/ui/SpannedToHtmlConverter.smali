.class final Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;,
        Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;,
        Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    }
.end annotation


# static fields
.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(&#13;)?&#10;"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;F)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 84
    new-instance p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    return-object p0

    .line 86
    :cond_f
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_21

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    return-object p1

    .line 89
    :cond_21
    check-cast p0, Landroid/text/Spanned;

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v3, :cond_49

    aget-object v6, v2, v5

    .line 95
    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 97
    :cond_49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0xe

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "bg_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 101
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "background-color:%s;"

    invoke-static {v3, v6}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 104
    :cond_8c
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    move-result-object p1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    .line 107
    :goto_9a
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_103

    .line 108
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 109
    invoke-interface {p0, v3, v5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    .line 112
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->access$200()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_da

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 114
    iget-object v7, v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 116
    :cond_da
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->access$400()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 118
    iget-object v6, v6, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ed

    :cond_ff
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_9a

    .line 123
    :cond_103
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance p0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    return-object p0
.end method

.method private static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    .line 302
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 303
    sget-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<br>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 132
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_11
    if-ge v3, v2, :cond_4c

    aget-object v4, v1, v3

    .line 133
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getClosingTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 136
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz v8, :cond_49

    .line 138
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v12, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    const/4 v10, 0x0

    move-object v5, v12

    move v6, v11

    move v7, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    .line 140
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4c
    return-object v0
.end method

.method private static getClosingTag(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 217
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    const-string v1, "</span>"

    if-nez v0, :cond_81

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_81

    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-nez v0, :cond_81

    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-nez v0, :cond_81

    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_81

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_81

    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v0, :cond_1f

    goto :goto_81

    .line 225
    :cond_1f
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 226
    check-cast p0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    return-object v1

    .line 228
    :cond_2f
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_4c

    .line 229
    check-cast p0, Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_49

    const/4 v0, 0x2

    if-eq p0, v0, :cond_46

    const/4 v0, 0x3

    if-eq p0, v0, :cond_43

    goto :goto_80

    :cond_43
    const-string p0, "</i></b>"

    return-object p0

    :cond_46
    const-string p0, "</i>"

    return-object p0

    :cond_49
    const-string p0, "</b>"

    return-object p0

    .line 237
    :cond_4c
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v0, :cond_79

    .line 238
    check-cast p0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 239
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->rubyText:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "<rt>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</rt></ruby>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_79
    instance-of p0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz p0, :cond_80

    const-string p0, "</u>"

    return-object p0

    :cond_80
    :goto_80
    return-object v2

    :cond_81
    :goto_81
    return-object v1
.end method

.method private static getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;
    .registers 6

    .line 150
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_7

    const-string p0, "<span style=\'text-decoration:line-through;\'>"

    return-object p0

    .line 152
    :cond_7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 153
    check-cast p0, Landroid/text/style/ForegroundColorSpan;

    new-array p1, v2, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span style=\'color:%s;\'>"

    .line 154
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :cond_22
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_3b

    .line 157
    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    new-array p1, v2, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span class=\'bg_%s\'>"

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_3b
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-eqz v0, :cond_42

    const-string p0, "<span style=\'text-combine-upright:all;\'>"

    return-object p0

    .line 161
    :cond_42
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_69

    .line 162
    check-cast p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 164
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 165
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p0

    int-to-float p0, p0

    goto :goto_5a

    .line 166
    :cond_54
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    :goto_5a
    new-array p1, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_69
    instance-of p1, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz p1, :cond_86

    new-array p1, v2, [Ljava/lang/Object;

    .line 169
    check-cast p0, Landroid/text/style/RelativeSizeSpan;

    .line 170
    invoke-virtual {p0}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result p0

    const/high16 v0, 0x42c80000  # 100.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "<span style=\'font-size:%.2f%%;\'>"

    .line 169
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_86
    instance-of p1, p0, Landroid/text/style/TypefaceSpan;

    const/4 v0, 0x0

    if-eqz p1, :cond_9e

    .line 172
    check-cast p0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9d

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "<span style=\'font-family:\"%s\";\'>"

    .line 174
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_9d
    return-object v0

    .line 176
    :cond_9e
    instance-of p1, p0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    if-eqz p1, :cond_ba

    .line 177
    check-cast p0, Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result p0

    if-eq p0, v2, :cond_b7

    if-eq p0, v3, :cond_b4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_b1

    return-object v0

    :cond_b1
    const-string p0, "<b><i>"

    return-object p0

    :cond_b4
    const-string p0, "<i>"

    return-object p0

    :cond_b7
    const-string p0, "<b>"

    return-object p0

    .line 187
    :cond_ba
    instance-of p1, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz p1, :cond_d3

    .line 188
    check-cast p0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 189
    iget p0, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;->position:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d0

    if-eq p0, v2, :cond_cd

    if-eq p0, v3, :cond_ca

    return-object v0

    :cond_ca
    const-string p0, "<ruby style=\'ruby-position:under;\'>"

    return-object p0

    :cond_cd
    const-string p0, "<ruby style=\'ruby-position:over;\'>"

    return-object p0

    :cond_d0
    const-string p0, "<ruby style=\'ruby-position:unset;\'>"

    return-object p0

    .line 199
    :cond_d3
    instance-of p1, p0, Landroid/text/style/UnderlineSpan;

    if-eqz p1, :cond_da

    const-string p0, "<u>"

    return-object p0

    .line 201
    :cond_da
    instance-of p1, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz p1, :cond_fb

    .line 202
    check-cast p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    .line 203
    iget p1, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markShape:I

    iget v0, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markFill:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getTextEmphasisStyle(II)Ljava/lang/String;

    move-result-object p1

    .line 204
    iget p0, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->position:I

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getTextEmphasisPosition(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p0, v0, v2

    const-string p0, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 205
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_fb
    return-object v0
.end method

.method private static getOrCreate(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;",
            ">;I)",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    if-nez v0, :cond_10

    .line 295
    new-instance v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 296
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method private static getTextEmphasisPosition(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string p0, "over right"

    return-object p0

    :cond_6
    const-string p0, "under left"

    return-object p0
.end method

.method private static getTextEmphasisStyle(II)Ljava/lang/String;
    .registers 5

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    if-eq p1, v1, :cond_c

    goto :goto_17

    :cond_c
    const-string p1, "open "

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_12
    const-string p1, "filled "

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    if-eqz p0, :cond_38

    if-eq p0, v2, :cond_32

    if-eq p0, v1, :cond_2c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_26

    const-string p0, "unset"

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_26
    const-string p0, "sesame"

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_2c
    const-string p0, "dot"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_32
    const-string p0, "circle"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_38
    const-string p0, "none"

    .line 272
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
