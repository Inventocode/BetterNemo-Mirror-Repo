.class public Lcn/codemao/android/sketch/utils/CaculatorUtil;
.super Ljava/lang/Object;
.source "CaculatorUtil.java"


# direct methods
.method public static getZoom(FFFF)F
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float p2, p2, v0

    div-float/2addr p2, p0

    mul-float p3, p3, v0

    div-float/2addr p3, p1

    .line 37
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static getZoomSpace(FFFFF)F
    .registers 5

    mul-float p2, p2, p4

    div-float/2addr p2, p0

    mul-float p4, p4, p3

    div-float/2addr p4, p1

    .line 20
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
