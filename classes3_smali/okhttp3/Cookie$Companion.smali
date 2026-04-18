.class public final Lokhttp3/Cookie$Companion;
.super Ljava/lang/Object;
.source "Cookie.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Companion\n*L\n1#1,614:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 330
    invoke-direct {p0}, Lokhttp3/Cookie$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$domainMatch(Lokhttp3/Cookie$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 330
    invoke-direct {p0, p1, p2}, Lokhttp3/Cookie$Companion;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pathMatch(Lokhttp3/Cookie$Companion;Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 3

    .line 330
    invoke-direct {p0, p1, p2}, Lokhttp3/Cookie$Companion;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 9

    :goto_0
    if-ge p2, p3, :cond_3b

    .line 555
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_32

    :cond_f
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_32

    const/16 v1, 0x39

    const/16 v3, 0x30

    if-gt v3, v0, :cond_1b

    if-ge v1, v0, :cond_32

    :cond_1b
    const/16 v1, 0x7a

    const/16 v3, 0x61

    if-gt v3, v0, :cond_23

    if-ge v1, v0, :cond_32

    :cond_23
    const/16 v1, 0x5a

    const/16 v3, 0x41

    if-gt v3, v0, :cond_2b

    if-ge v1, v0, :cond_32

    :cond_2b
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    xor-int/lit8 v1, p4, 0x1

    if-ne v0, v1, :cond_38

    return p2

    :cond_38
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3b
    return p3
.end method

.method private final domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 338
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 342
    invoke-static {p1, p2, v3, v0, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2e

    if-ne p2, v0, :cond_2a

    .line 344
    invoke-static {p1}, Lokhttp3/internal/Util;->canParseAsIpAddress(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method private final parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 590
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    .line 591
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    return-object p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 590
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseExpires(Ljava/lang/String;II)J
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    move/from16 v4, p2

    .line 488
    invoke-direct {v0, v1, v4, v2, v3}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v4

    .line 496
    invoke-static {}, Lokhttp3/Cookie;->access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_1c
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v4, v2, :cond_e0

    add-int/lit8 v15, v4, 0x1

    .line 499
    invoke-direct {v0, v1, v15, v2, v14}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v15

    .line 500
    invoke-virtual {v5, v4, v15}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v8, v6, :cond_54

    .line 503
    invoke-static {}, Lokhttp3/Cookie;->access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 504
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 505
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x3

    .line 506
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_d8

    :cond_54
    if-ne v9, v6, :cond_6d

    .line 508
    invoke-static {}, Lokhttp3/Cookie;->access$getDAY_OF_MONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 509
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_d8

    :cond_6d
    if-ne v10, v6, :cond_c0

    .line 511
    invoke-static {}, Lokhttp3/Cookie;->access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 512
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v10, "matcher.group(1)"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Locale.US"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_b8

    invoke-virtual {v4, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lokhttp3/Cookie;->access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v10

    const-string v13, "MONTH_PATTERN.pattern()"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    div-int/lit8 v10, v4, 0x4

    goto :goto_d8

    .line 512
    :cond_b8
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c0
    if-ne v7, v6, :cond_d8

    .line 515
    invoke-static {}, Lokhttp3/Cookie;->access$getYEAR_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 516
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_d8
    :goto_d8
    add-int/lit8 v15, v15, 0x1

    .line 520
    invoke-direct {v0, v1, v15, v2, v3}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v4

    goto/16 :goto_1c

    :cond_e0
    const/16 v1, 0x63

    const/16 v2, 0x46

    if-le v2, v7, :cond_e7

    goto :goto_eb

    :cond_e7
    if-lt v1, v7, :cond_eb

    add-int/lit16 v7, v7, 0x76c

    :cond_eb
    :goto_eb
    const/16 v1, 0x45

    if-gez v7, :cond_f0

    goto :goto_f4

    :cond_f0
    if-lt v1, v7, :cond_f4

    add-int/lit16 v7, v7, 0x7d0

    :cond_f4
    :goto_f4
    const/16 v1, 0x641

    if-lt v7, v1, :cond_fa

    const/4 v1, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v1, 0x0

    :goto_fb
    const-string v2, "Failed requirement."

    if-eqz v1, :cond_194

    if-eq v10, v6, :cond_103

    const/4 v1, 0x1

    goto :goto_104

    :cond_103
    const/4 v1, 0x0

    :goto_104
    if-eqz v1, :cond_18a

    const/16 v1, 0x1f

    if-le v14, v9, :cond_10b

    goto :goto_10f

    :cond_10b
    if-lt v1, v9, :cond_10f

    const/4 v1, 0x1

    goto :goto_110

    :cond_10f
    :goto_10f
    const/4 v1, 0x0

    :goto_110
    if-eqz v1, :cond_180

    const/16 v1, 0x17

    if-gez v8, :cond_117

    goto :goto_11b

    :cond_117
    if-lt v1, v8, :cond_11b

    const/4 v1, 0x1

    goto :goto_11c

    :cond_11b
    :goto_11b
    const/4 v1, 0x0

    :goto_11c
    if-eqz v1, :cond_176

    const/16 v1, 0x3b

    if-gez v11, :cond_123

    goto :goto_127

    :cond_123
    if-lt v1, v11, :cond_127

    const/4 v4, 0x1

    goto :goto_128

    :cond_127
    :goto_127
    const/4 v4, 0x0

    :goto_128
    if-eqz v4, :cond_16c

    if-gez v12, :cond_12d

    goto :goto_131

    :cond_12d
    if-lt v1, v12, :cond_131

    const/4 v1, 0x1

    goto :goto_132

    :cond_131
    :goto_131
    const/4 v1, 0x0

    :goto_132
    if-eqz v1, :cond_162

    .line 536
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 537
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 538
    invoke-virtual {v1, v14, v7}, Ljava/util/GregorianCalendar;->set(II)V

    sub-int/2addr v10, v14

    .line 539
    invoke-virtual {v1, v13, v10}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v2, 0x5

    .line 540
    invoke-virtual {v1, v2, v9}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xb

    .line 541
    invoke-virtual {v1, v2, v8}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xc

    .line 542
    invoke-virtual {v1, v2, v11}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xd

    .line 543
    invoke-virtual {v1, v2, v12}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v2, 0xe

    .line 544
    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 545
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1

    .line 534
    :cond_162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_16c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_18a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final parseMaxAge(Ljava/lang/String;)J
    .registers 8

    const-wide/high16 v0, -0x8000000000000000L

    .line 574
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_d

    goto :goto_e

    :cond_d
    move-wide v0, v2

    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    .line 578
    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "-?\\d+"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "-"

    .line 579
    invoke-static {p1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2e

    :cond_29
    const-wide v0, 0x7fffffffffffffffL

    :goto_2e
    return-wide v0

    .line 581
    :cond_2f
    throw v2
.end method

.method private final pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 8

    .line 348
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 354
    invoke-static {p1, p2, v0, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "/"

    .line 355
    invoke-static {p2, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    .line 356
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_2b

    return v1

    :cond_2b
    return v0
.end method


# virtual methods
.method public final parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCookie"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lokhttp3/Cookie$Companion;->parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p1

    return-object p1
.end method

.method public final parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const-string v1, "url"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "setCookie"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v1, p4

    .line 371
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v9

    const/16 v2, 0x3d

    const/4 v5, 0x2

    move v4, v9

    .line 373
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v9, :cond_28

    return-object v2

    :cond_28
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 376
    invoke-static {v7, v3, v1, v4, v2}, Lokhttp3/internal/Util;->trimSubstring$default(Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 377
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    if-nez v5, :cond_17a

    invoke-static {v11}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    goto/16 :goto_17a

    :cond_42
    add-int/2addr v1, v4

    .line 379
    invoke-static {v7, v1, v9}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    .line 380
    invoke-static {v12}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_4e

    return-object v2

    :cond_4e
    add-int/2addr v9, v4

    .line 392
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v5, -0x1

    move-object v10, v2

    move-object/from16 v22, v10

    move-wide v15, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-wide v23, 0xe677d21fdbffL

    :goto_66
    if-ge v9, v1, :cond_d6

    const/16 v2, 0x3b

    .line 394
    invoke-static {v7, v2, v9, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v2

    const/16 v13, 0x3d

    .line 396
    invoke-static {v7, v13, v9, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v13

    .line 397
    invoke-static {v7, v9, v13}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    if-ge v13, v2, :cond_81

    add-int/lit8 v13, v13, 0x1

    .line 399
    invoke-static {v7, v13, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_83

    :cond_81
    const-string v13, ""

    :goto_83
    const-string v14, "expires"

    .line 405
    invoke-static {v9, v14, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_94

    .line 407
    :try_start_8b
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v0, v13, v3, v9}, Lokhttp3/Cookie$Companion;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v23
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_93} :catch_d2

    goto :goto_a0

    :cond_94
    const-string v14, "max-age"

    .line 413
    invoke-static {v9, v14, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_a3

    .line 415
    :try_start_9c
    invoke-direct {v0, v13}, Lokhttp3/Cookie$Companion;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a0} :catch_d2

    :goto_a0
    const/16 v19, 0x1

    goto :goto_d2

    :cond_a3
    const-string v14, "domain"

    .line 421
    invoke-static {v9, v14, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 423
    :try_start_ab
    invoke-direct {v0, v13}, Lokhttp3/Cookie$Companion;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_af} :catch_d2

    const/16 v20, 0x0

    goto :goto_d2

    :cond_b2
    const-string v14, "path"

    .line 429
    invoke-static {v9, v14, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_bd

    move-object/from16 v22, v13

    goto :goto_d2

    :cond_bd
    const-string v13, "secure"

    .line 432
    invoke-static {v9, v13, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_c8

    const/16 v17, 0x1

    goto :goto_d2

    :cond_c8
    const-string v13, "httponly"

    .line 435
    invoke-static {v9, v13, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d2

    const/16 v18, 0x1

    :catch_d2
    :cond_d2
    :goto_d2
    add-int/lit8 v9, v2, 0x1

    const/4 v2, 0x0

    goto :goto_66

    :cond_d6
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v4, v15, v1

    if-nez v4, :cond_de

    :cond_dc
    move-wide v13, v1

    goto :goto_10f

    :cond_de
    cmp-long v1, v15, v5

    if-eqz v1, :cond_10d

    const-wide v1, 0x20c49ba5e353f7L

    cmp-long v4, v15, v1

    if-gtz v4, :cond_f1

    const/16 v1, 0x3e8

    int-to-long v1, v1

    mul-long v15, v15, v1

    goto :goto_f6

    :cond_f1
    const-wide v15, 0x7fffffffffffffffL

    :goto_f6
    add-long v1, p1, v15

    cmp-long v4, v1, p1

    if-ltz v4, :cond_106

    const-wide v4, 0xe677d21fdbffL

    cmp-long v6, v1, v4

    if-lez v6, :cond_dc

    goto :goto_10b

    :cond_106
    const-wide v4, 0xe677d21fdbffL

    :goto_10b
    move-wide v13, v4

    goto :goto_10f

    :cond_10d
    move-wide/from16 v13, v23

    .line 460
    :goto_10f
    invoke-virtual/range {p3 .. p3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    if-nez v10, :cond_118

    move-object v15, v1

    const/4 v2, 0x0

    goto :goto_122

    .line 463
    :cond_118
    invoke-direct {v0, v1, v10}, Lokhttp3/Cookie$Companion;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_120

    const/4 v2, 0x0

    return-object v2

    :cond_120
    const/4 v2, 0x0

    move-object v15, v10

    .line 469
    :goto_122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_139

    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v1

    invoke-virtual {v1, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_139

    return-object v2

    :cond_139
    const-string v1, "/"

    move-object/from16 v4, v22

    if-eqz v4, :cond_14a

    const/4 v5, 0x2

    .line 475
    invoke-static {v4, v1, v3, v5, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_147

    goto :goto_14a

    :cond_147
    move-object/from16 v16, v4

    goto :goto_171

    .line 476
    :cond_14a
    :goto_14a
    invoke-virtual/range {p3 .. p3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v2

    .line 477
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_16f

    if-eqz v2, :cond_167

    .line 478
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16f

    :cond_167
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16f
    :goto_16f
    move-object/from16 v16, v1

    .line 481
    :goto_171
    new-instance v1, Lokhttp3/Cookie;

    const/16 v21, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v21}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_17a
    :goto_17a
    move-object v1, v2

    return-object v1
.end method

.method public final parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Set-Cookie"

    .line 597
    invoke-virtual {p2, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 600
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_31

    .line 601
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lokhttp3/Cookie$Companion;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v3

    if-eqz v3, :cond_2e

    if-nez v1, :cond_2b

    .line 602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    :cond_2b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    if-eqz v1, :cond_3d

    .line 607
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Collections.unmodifiableList(cookies)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_41

    .line 609
    :cond_3d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_41
    return-object p1
.end method
