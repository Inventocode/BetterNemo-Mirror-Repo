.class public Lcn/codemao/android/sketch/model/CutoutBitmapInfo;
.super Ljava/lang/Object;
.source "CutoutBitmapInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cutOutX:F

.field private cutOutY:F

.field private scale:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCutOutX(F)V
    .registers 2

    .line 14
    iput p1, p0, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->cutOutX:F

    return-void
.end method

.method public setCutOutY(F)V
    .registers 2

    .line 22
    iput p1, p0, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->cutOutY:F

    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 30
    iput p1, p0, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->scale:F

    return-void
.end method
