.class public Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;
.super Ljava/lang/Object;
.source "ShareBitmapEditInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private offsetX:F

.field private offsetY:F

.field private zoomScale:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;->offsetX:F

    .line 12
    iput p2, p0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;->offsetY:F

    .line 13
    iput p3, p0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;->zoomScale:F

    return-void
.end method
