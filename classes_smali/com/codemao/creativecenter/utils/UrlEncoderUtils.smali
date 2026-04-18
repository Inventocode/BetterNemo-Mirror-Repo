.class public Lcom/codemao/creativecenter/utils/UrlEncoderUtils;
.super Ljava/lang/Object;
.source "UrlEncoderUtils.java"


# static fields
.field private static dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_b
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_17

    .line 14
    sget-object v1, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    const/16 v0, 0x41

    :goto_19
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_25

    .line 17
    sget-object v1, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    const/16 v0, 0x30

    :goto_27
    const/16 v1, 0x39

    if-gt v0, v1, :cond_33

    .line 20
    sget-object v1, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 22
    :cond_33
    sget-object v0, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 30
    sget-object v0, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 31
    sget-object v0, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 32
    sget-object v0, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public static hasUrlEncoded(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3c

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 55
    sget-object v4, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_39

    :cond_16
    const/16 v4, 0x25

    if-ne v2, v4, :cond_3b

    add-int/lit8 v2, v1, 0x2

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3b

    add-int/lit8 v1, v1, 0x1

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v3

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 62
    invoke-static {v2}, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->isDigit16Char(C)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v4}, Lcom/codemao/creativecenter/utils/UrlEncoderUtils;->isDigit16Char(C)Z

    move-result v2

    if-eqz v2, :cond_3b

    :goto_39
    add-int/2addr v1, v3

    goto :goto_2

    :cond_3b
    const/4 v0, 0x1

    :cond_3c
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private static isDigit16Char(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x46

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
