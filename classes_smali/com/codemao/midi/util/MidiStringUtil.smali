.class public Lcom/codemao/midi/util/MidiStringUtil;
.super Ljava/lang/Object;
.source "MidiStringUtil.java"


# direct methods
.method public static getLength(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 45
    invoke-static {v2}, Lcom/codemao/midi/util/MidiStringUtil;->isDbcCase(C)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_15
    add-int/lit8 v1, v1, 0x2

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public static isDbcCase(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_a

    return v0

    :cond_a
    const v1, 0xff61

    if-lt p0, v1, :cond_15

    const v1, 0xff9f

    if-gt p0, v1, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isHanshu(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "[\\u0020\\u0028\\u0029\\uff08\\uff09\\u002d\\u005f\\u2014\\uff01\\u2019\\u4e00-\\u9fa5() A-Za-z0-9]*"

    .line 29
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 32
    :cond_a
    invoke-static {p0}, Lcom/codemao/midi/util/MidiStringUtil;->getLength(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method
