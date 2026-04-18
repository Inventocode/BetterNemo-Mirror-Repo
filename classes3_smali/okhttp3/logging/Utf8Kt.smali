.class public final Lokhttp3/logging/Utf8Kt;
.super Ljava/lang/Object;
.source "utf8.kt"


# direct methods
.method public static final isProbablyUtf8(Lokio/Buffer;)Z
    .registers 9

    const-string v0, "$this$isProbablyUtf8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    :try_start_6
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 29
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 30
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    const/16 p0, 0x10

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, p0, :cond_3c

    .line 32
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_3c

    .line 35
    :cond_28
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2
    :try_end_36
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_36} :catch_3e

    if-nez v2, :cond_39

    return v0

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3c
    :goto_3c
    const/4 p0, 0x1

    return p0

    :catch_3e
    return v0
.end method
