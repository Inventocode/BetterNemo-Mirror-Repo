.class public Lcom/codemao/nemo/util/LocalDownsampleStrategy;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "LocalDownsampleStrategy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .registers 5

    .line 25
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object p1
.end method

.method public getScaleFactor(IIII)F
    .registers 5

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 16
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p3, p1, p2

    if-lez p3, :cond_12

    const/high16 p1, 0x3f800000  # 1.0f

    :cond_12
    return p1
.end method
