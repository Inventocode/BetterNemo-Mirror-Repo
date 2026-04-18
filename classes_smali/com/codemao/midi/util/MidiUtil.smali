.class public Lcom/codemao/midi/util/MidiUtil;
.super Ljava/lang/Object;
.source "MidiUtil.java"


# direct methods
.method public static intToBytes(II)[B
    .registers 7

    .line 74
    new-array v0, p1, [B

    .line 76
    new-array v1, p1, [I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, p1, :cond_1c

    and-int/lit16 v3, p0, 0xff

    .line 80
    aput v3, v1, v2

    sub-int v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    .line 81
    aget v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    shr-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1c
    :goto_1c
    return-object v0
.end method
