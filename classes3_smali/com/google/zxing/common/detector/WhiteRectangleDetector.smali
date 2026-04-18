.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 p2, p2, 0x2

    sub-int v1, p3, p2

    .line 62
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p2

    .line 63
    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v2, p4, p2

    .line 64
    iput v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p2

    .line 65
    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v2, :cond_2a

    if-ltz v1, :cond_2a

    if-ge p4, v0, :cond_2a

    if-ge p3, p1, :cond_2a

    return-void

    .line 67
    :cond_2a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 16

    .line 278
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 279
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    .line 280
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 281
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    .line 282
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 283
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p3

    .line 284
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 285
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    .line 287
    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000  # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_58

    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    .line 288
    new-instance v9, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4

    :cond_58
    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    .line 294
    new-instance v9, Lcom/google/zxing/ResultPoint;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4
.end method

.method private containsBlackPoint(IIIZ)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p4, :cond_11

    :goto_3
    if-gt p1, p2, :cond_1f

    .line 315
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_e

    return v0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_11
    :goto_11
    if-gt p1, p2, :cond_1f

    .line 321
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .registers 10

    .line 241
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_32

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 246
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 247
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 248
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 249
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 89
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 90
    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_10
    :goto_10
    if-eqz v6, :cond_8a

    const/4 v6, 0x1

    const/4 v12, 0x0

    :cond_14
    :goto_14
    if-nez v6, :cond_18

    if-nez v7, :cond_2c

    .line 108
    :cond_18
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v6, :cond_2c

    .line 109
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_27

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    const/4 v12, 0x1

    goto :goto_14

    :cond_27
    if-nez v7, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 119
    :cond_2c
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v6, :cond_33

    :goto_30
    const/4 v4, 0x1

    goto/16 :goto_8a

    :cond_33
    const/4 v6, 0x1

    :cond_34
    :goto_34
    if-nez v6, :cond_38

    if-nez v8, :cond_4c

    .line 128
    :cond_38
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v3, v6, :cond_4c

    .line 129
    invoke-direct {p0, v0, v1, v3, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_47

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto :goto_34

    :cond_47
    if-nez v8, :cond_34

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 139
    :cond_4c
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v6, :cond_51

    goto :goto_30

    :cond_51
    const/4 v6, 0x1

    :cond_52
    :goto_52
    if-nez v6, :cond_56

    if-nez v9, :cond_68

    :cond_56
    if-ltz v0, :cond_68

    .line 149
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_63

    add-int/lit8 v0, v0, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    goto :goto_52

    :cond_63
    if-nez v9, :cond_52

    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    :cond_68
    if-gez v0, :cond_6b

    goto :goto_30

    :cond_6b
    move v6, v12

    const/4 v12, 0x1

    :cond_6d
    :goto_6d
    if-nez v12, :cond_71

    if-nez v11, :cond_83

    :cond_71
    if-ltz v2, :cond_83

    .line 169
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v12

    if-eqz v12, :cond_7e

    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x1

    goto :goto_6d

    :cond_7e
    if-nez v11, :cond_6d

    add-int/lit8 v2, v2, -0x1

    goto :goto_6d

    :cond_83
    if-gez v2, :cond_86

    goto :goto_30

    :cond_86
    if-eqz v6, :cond_10

    const/4 v10, 0x1

    goto :goto_10

    :cond_8a
    :goto_8a
    if-nez v4, :cond_104

    if-eqz v10, :cond_104

    sub-int v4, v1, v0

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x1

    :goto_93
    if-nez v7, :cond_a6

    if-ge v8, v4, :cond_a6

    int-to-float v7, v0

    sub-int v9, v3, v8

    int-to-float v9, v9

    add-int v10, v0, v8

    int-to-float v10, v10

    int-to-float v11, v3

    .line 196
    invoke-direct {p0, v7, v9, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    :cond_a6
    if-eqz v7, :cond_ff

    move-object v8, v6

    const/4 v9, 0x1

    :goto_aa
    if-nez v8, :cond_bd

    if-ge v9, v4, :cond_bd

    int-to-float v8, v0

    add-int v10, v2, v9

    int-to-float v10, v10

    add-int v11, v0, v9

    int-to-float v11, v11

    int-to-float v12, v2

    .line 206
    invoke-direct {p0, v8, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_aa

    :cond_bd
    if-eqz v8, :cond_fa

    move-object v0, v6

    const/4 v9, 0x1

    :goto_c1
    if-nez v0, :cond_d4

    if-ge v9, v4, :cond_d4

    int-to-float v0, v1

    add-int v10, v2, v9

    int-to-float v10, v10

    sub-int v11, v1, v9

    int-to-float v11, v11

    int-to-float v12, v2

    .line 216
    invoke-direct {p0, v0, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_c1

    :cond_d4
    if-eqz v0, :cond_f5

    :goto_d6
    if-nez v6, :cond_e9

    if-ge v5, v4, :cond_e9

    int-to-float v2, v1

    sub-int v6, v3, v5

    int-to-float v6, v6

    sub-int v9, v1, v5

    int-to-float v9, v9

    int-to-float v10, v3

    .line 226
    invoke-direct {p0, v2, v6, v9, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d6

    :cond_e9
    if-eqz v6, :cond_f0

    .line 233
    invoke-direct {p0, v6, v7, v0, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    .line 230
    :cond_f0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 220
    :cond_f5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 210
    :cond_fa
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 200
    :cond_ff
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 236
    :cond_104
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
