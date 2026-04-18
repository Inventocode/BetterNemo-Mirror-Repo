.class public Lorg/apache/commons/codec/binary/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private static newString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 257
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .registers 2

    .line 383
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/StringUtils;->newString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
