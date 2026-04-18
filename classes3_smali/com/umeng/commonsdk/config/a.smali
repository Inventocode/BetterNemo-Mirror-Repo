.class public Lcom/umeng/commonsdk/config/a;
.super Ljava/lang/Object;
.source "BitUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_f

    const/16 v1, 0x1f

    if-le p1, v1, :cond_8

    goto :goto_f

    :cond_8
    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0
.end method

.method public static a(JI)Z
    .registers 6

    const/4 v0, 0x0

    if-ltz p2, :cond_13

    const/16 v1, 0x3f

    if-le p2, v1, :cond_8

    goto :goto_13

    :cond_8
    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    and-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    :goto_13
    return v0
.end method

.method public static b(II)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(JI)J
    .registers 5

    if-ltz p2, :cond_b

    const/16 v0, 0x3f

    if-le p2, v0, :cond_7

    goto :goto_b

    :cond_7
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    :cond_b
    :goto_b
    return-wide p0
.end method

.method public static c(II)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static c(JI)J
    .registers 5

    if-ltz p2, :cond_c

    const/16 v0, 0x3f

    if-le p2, v0, :cond_7

    goto :goto_c

    :cond_7
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    not-long v0, v0

    and-long/2addr p0, v0

    :cond_c
    :goto_c
    return-wide p0
.end method
