.class public final Lcom/ljwx/baseapp/extensions/StringKt;
.super Ljava/lang/Object;
.source "String.kt"


# direct methods
.method public static final isMatch(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "regex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_12

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v2, 0x1

    :goto_13
    if-nez v2, :cond_1c

    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static final isNumber(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 19
    sget-object v0, Lcom/ljwx/baseapp/regex/CommonRegex;->INSTANCE:Lcom/ljwx/baseapp/regex/CommonRegex;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/regex/CommonRegex;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ljwx/baseapp/extensions/StringKt;->isMatch(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final toIntSafe(Ljava/lang/String;I)I
    .registers 3

    .line 27
    invoke-static {p0}, Lcom/ljwx/baseapp/extensions/StringKt;->isNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :cond_d
    return p1
.end method

.method public static final toLongSafe(Ljava/lang/String;J)J
    .registers 4

    .line 35
    invoke-static {p0}, Lcom/ljwx/baseapp/extensions/StringKt;->isNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    :cond_d
    return-wide p1
.end method

.method public static synthetic toLongSafe$default(Ljava/lang/String;JILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, -0x1

    .line 34
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/ljwx/baseapp/extensions/StringKt;->toLongSafe(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method
