.class final Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;
.super Ljava/lang/Object;
.source "SubtitleViewUtils.java"


# direct methods
.method public static synthetic $r8$lambda$LbedgCfvSqXwio51KdlA1lAn7hw(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->lambda$removeAllEmbeddedStyling$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UlObj1m5t-7ZSHAelfFzlpAicyU(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->lambda$removeEmbeddedFontSizes$1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$removeAllEmbeddedStyling$0(Ljava/lang/Object;)Z
    .registers 1

    .line 68
    instance-of p0, p0, Lcom/google/android/exoplayer2/text/span/LanguageFeatureSpan;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$removeEmbeddedFontSizes$1(Ljava/lang/Object;)Z
    .registers 2

    .line 92
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_b

    instance-of p0, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static removeAllEmbeddedStyling(Lcom/google/android/exoplayer2/text/Cue$Builder;)V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->clearWindowColor()Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2d

    .line 64
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1e

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 68
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    sget-object v1, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    .line 67
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V

    .line 70
    :cond_2d
    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeEmbeddedFontSizes(Lcom/google/android/exoplayer2/text/Cue$Builder;)V

    return-void
.end method

.method public static removeEmbeddedFontSizes(Lcom/google/android/exoplayer2/text/Cue$Builder;)V
    .registers 3

    const v0, -0x800001

    const/high16 v1, -0x80000000

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_32

    .line 87
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_23

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 91
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    sget-object v0, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;

    .line 90
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V

    :cond_32
    return-void
.end method

.method private static removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 98
    array-length v1, v0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 99
    invoke-interface {p1, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 100
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public static resolveTextSize(IFII)F
    .registers 6

    const v0, -0x800001

    cmpl-float v1, p1, v0

    if-nez v1, :cond_8

    return v0

    :cond_8
    if-eqz p0, :cond_16

    const/4 p3, 0x1

    if-eq p0, p3, :cond_12

    const/4 p2, 0x2

    if-eq p0, p2, :cond_11

    return v0

    :cond_11
    return p1

    :cond_12
    int-to-float p0, p2

    :goto_13
    mul-float p1, p1, p0

    return p1

    :cond_16
    int-to-float p0, p3

    goto :goto_13
.end method
