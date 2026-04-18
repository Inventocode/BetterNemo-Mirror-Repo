.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1479
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->parsePort(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->portColonOffset(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->slashCount(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private final parsePort(Ljava/lang/String;II)I
    .registers 17

    const/4 v0, -0x1

    .line 1542
    :try_start_1
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf8

    const/4 v12, 0x0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1543
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_19} :catch_23

    const v2, 0xffff

    const/4 v3, 0x1

    if-le v3, v1, :cond_20

    goto :goto_23

    :cond_20
    if-lt v2, v1, :cond_23

    move v0, v1

    :catch_23
    :cond_23
    :goto_23
    return v0
.end method

.method private final portColonOffset(Ljava/lang/String;II)I
    .registers 6

    :goto_0
    if-ge p2, p3, :cond_1f

    .line 1526
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_1b

    .line 1529
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1e
    return p2

    :cond_1f
    return p3
.end method

.method private final schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 12

    sub-int v0, p3, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    .line 1489
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v3, :cond_1c

    :cond_17
    if-lt v0, v4, :cond_4e

    if-le v0, v2, :cond_1c

    goto :goto_4e

    :cond_1c
    :goto_1c
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_4e

    .line 1493
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v5, v0, :cond_27

    goto :goto_2a

    :cond_27
    if-lt v3, v0, :cond_2a

    goto :goto_48

    :cond_2a
    :goto_2a
    if-le v4, v0, :cond_2d

    goto :goto_30

    :cond_2d
    if-lt v2, v0, :cond_30

    goto :goto_48

    :cond_30
    :goto_30
    const/16 v6, 0x39

    const/16 v7, 0x30

    if-le v7, v0, :cond_37

    goto :goto_3a

    :cond_37
    if-lt v6, v0, :cond_3a

    goto :goto_48

    :cond_3a
    :goto_3a
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_3f

    goto :goto_48

    :cond_3f
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_44

    goto :goto_48

    :cond_44
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_49

    :goto_48
    goto :goto_1c

    :cond_49
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_4e

    move v1, p2

    :cond_4e
    :goto_4e
    return v1
.end method

.method private final slashCount(Ljava/lang/String;II)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_14

    .line 1512
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_14
    return v0
.end method
