.class public Lcn/codemao/android/sketch/model/FinalBgEditInfo;
.super Ljava/lang/Object;
.source "FinalBgEditInfo.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private dx:F

.field private dy:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 20
    iget-object v0, p0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDx()F
    .registers 2

    .line 28
    iget v0, p0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->dx:F

    return v0
.end method

.method public getDy()F
    .registers 2

    .line 36
    iget v0, p0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->dy:F

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDx(F)V
    .registers 2

    .line 32
    iput p1, p0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->dx:F

    return-void
.end method

.method public setDy(F)V
    .registers 2

    .line 41
    iput p1, p0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->dy:F

    return-void
.end method

.method public setStageRect(Landroid/graphics/RectF;)V
    .registers 2

    return-void
.end method
