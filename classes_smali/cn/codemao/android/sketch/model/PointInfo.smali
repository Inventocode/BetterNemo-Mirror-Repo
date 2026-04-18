.class public Lcn/codemao/android/sketch/model/PointInfo;
.super Ljava/lang/Object;
.source "PointInfo.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 13
    iput p2, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method


# virtual methods
.method public copy()Lcn/codemao/android/sketch/model/PointInfo;
    .registers 4

    .line 47
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    return-object v0
.end method

.method public getX()F
    .registers 2

    .line 28
    iget v0, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 32
    iget v0, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return v0
.end method

.method public offset(FF)V
    .registers 4

    .line 23
    iget v0, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 24
    iget p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method

.method public set(FF)V
    .registers 3

    .line 18
    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 19
    iput p2, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 36
    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 40
    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method
