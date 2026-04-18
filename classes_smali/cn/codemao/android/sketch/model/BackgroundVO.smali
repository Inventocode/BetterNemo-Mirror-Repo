.class public Lcn/codemao/android/sketch/model/BackgroundVO;
.super Ljava/lang/Object;
.source "BackgroundVO.java"


# instance fields
.field private rotate:F

.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->scaleX:F

    .line 9
    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->scaleY:F

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->rotate:F

    return-void
.end method


# virtual methods
.method public getRotate()F
    .registers 2

    .line 13
    iget v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->rotate:F

    return v0
.end method

.method public setRotate(F)V
    .registers 4

    .line 17
    iget v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->rotate:F

    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000  # 360.0f

    rem-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->rotate:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_10

    add-float/2addr v0, p1

    .line 19
    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->rotate:F

    :cond_10
    return-void
.end method

.method public setScaleX()V
    .registers 3

    .line 29
    iget v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->scaleX:F

    const/high16 v1, -0x40800000  # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->scaleX:F

    return-void
.end method

.method public setScaleY()V
    .registers 3

    .line 45
    iget v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->scaleY:F

    const/high16 v1, -0x40800000  # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/model/BackgroundVO;->scaleY:F

    return-void
.end method
