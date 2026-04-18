.class Lcom/codemao/toolssdk/dsp/resample/FilterKit;
.super Ljava/lang/Object;
.source "FilterKit.java"


# direct methods
.method private static Izero(D)D
    .registers 11

    const/4 v0, 0x1

    int-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr p0, v3

    move-wide v3, v1

    const/4 v5, 0x1

    :cond_7
    int-to-double v6, v5

    div-double v6, p0, v6

    add-int/2addr v5, v0

    mul-double v6, v6, v6

    mul-double v1, v1, v6

    add-double/2addr v3, v1

    const-wide v6, 0x3b92e3b40a0e9b4fL  # 1.0E-21

    mul-double v6, v6, v3

    cmpl-double v8, v1, v6

    if-gez v8, :cond_7

    return-wide v3
.end method

.method public static lrsFilterUD([F[FIZ[FIDID)F
    .registers 16

    mul-double v0, p6, p9

    const/4 v2, 0x1

    if-ne p8, v2, :cond_e

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v2, 0x0

    cmpl-double v4, p6, v2

    if-nez v4, :cond_e

    add-double/2addr v0, p9

    :cond_e
    const/4 p6, 0x0

    if-eqz p3, :cond_2a

    :goto_11
    double-to-int p3, v0

    if-ge p3, p2, :cond_37

    .line 240
    aget p7, p0, p3

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    double-to-float v2, v2

    .line 244
    aget p3, p1, p3

    mul-float p3, p3, v2

    add-float/2addr p7, p3

    .line 245
    aget p3, p4, p5

    mul-float p7, p7, p3

    add-float/2addr p6, p7

    add-double/2addr v0, p9

    add-int/2addr p5, p8

    goto :goto_11

    :cond_2a
    :goto_2a
    double-to-int p1, v0

    if-ge p1, p2, :cond_37

    .line 252
    aget p1, p0, p1

    .line 253
    aget p3, p4, p5

    mul-float p1, p1, p3

    add-float/2addr p6, p1

    add-double/2addr v0, p9

    add-int/2addr p5, p8

    goto :goto_2a

    :cond_37
    return p6
.end method

.method public static lrsFilterUp([F[FIZ[FIDI)F
    .registers 16

    const-wide/high16 v0, 0x40b0000000000000L  # 4096.0

    mul-double p6, p6, v0

    double-to-int v0, p6

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_10

    .line 165
    invoke-static {p6, p7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double v3, p6, v3

    goto :goto_11

    :cond_10
    move-wide v3, v1

    :goto_11
    const/4 v5, 0x1

    if-ne p8, v5, :cond_1c

    add-int/lit8 p2, p2, -0x1

    cmpl-double v5, p6, v1

    if-nez v5, :cond_1c

    add-int/lit16 v0, v0, 0x1000

    :cond_1c
    move p6, v0

    const/4 p7, 0x0

    if-eqz p3, :cond_37

    :goto_20
    if-ge p6, p2, :cond_44

    .line 180
    aget p3, p0, p6

    float-to-double v1, p3

    .line 181
    aget p3, p1, v0

    float-to-double v5, p3

    mul-double v5, v5, v3

    add-double/2addr v1, v5

    double-to-float p3, v1

    add-int/lit16 v0, v0, 0x1000

    .line 183
    aget v1, p4, p5

    mul-float p3, p3, v1

    add-float/2addr p7, p3

    add-int/lit16 p6, p6, 0x1000

    add-int/2addr p5, p8

    goto :goto_20

    :cond_37
    :goto_37
    if-ge p6, p2, :cond_44

    .line 190
    aget p1, p0, p6

    .line 191
    aget p3, p4, p5

    mul-float p1, p1, p3

    add-float/2addr p7, p1

    add-int/lit16 p6, p6, 0x1000

    add-int/2addr p5, p8

    goto :goto_37

    :cond_44
    return p7
.end method

.method public static lrsLpFilter([DIDDI)V
    .registers 16

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double v2, p2, v0

    const/4 v4, 0x0

    .line 105
    aput-wide v2, p0, v4

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_9
    if-ge v3, p1, :cond_23

    const-wide v4, 0x400921fb54442d18L  # Math.PI

    int-to-double v6, v3

    mul-double v6, v6, v4

    int-to-double v4, p6

    div-double/2addr v6, v4

    mul-double v4, v6, v0

    mul-double v4, v4, p2

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v4, v6

    aput-wide v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 118
    :cond_23
    invoke-static {p4, p5}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->Izero(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    div-double p2, v0, p2

    add-int/lit8 p6, p1, -0x1

    int-to-double v3, p6

    div-double v3, v0, v3

    :goto_30
    if-ge v2, p1, :cond_55

    int-to-double v5, v2

    mul-double v5, v5, v3

    mul-double v5, v5, v5

    sub-double v5, v0, v5

    const-wide/16 v7, 0x0

    cmpg-double p6, v5, v7

    if-gez p6, :cond_40

    move-wide v5, v7

    .line 129
    :cond_40
    aget-wide v7, p0, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, p4

    invoke-static {v5, v6}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->Izero(D)D

    move-result-wide v5

    mul-double v5, v5, p2

    mul-double v7, v7, v5

    aput-wide v7, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_55
    return-void
.end method
