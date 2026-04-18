.class public Lcn/codemao/android/sketch/model/CenterPointInfo;
.super Ljava/lang/Object;
.source "CenterPointInfo.java"


# instance fields
.field public bottomPath:Landroid/graphics/Path;

.field public finalX:F

.field public finalY:F

.field public leftPath:Landroid/graphics/Path;

.field public rect:Landroid/graphics/Rect;

.field public rectF:Landroid/graphics/RectF;

.field public rightPath:Landroid/graphics/Path;

.field public topPath:Landroid/graphics/Path;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    iput v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->rectF:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->topPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->rightPath:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->leftPath:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->bottomPath:Landroid/graphics/Path;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public setFinalX(F)V
    .registers 2

    .line 96
    iput p1, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    return-void
.end method

.method public setFinalY(F)V
    .registers 2

    .line 100
    iput p1, p0, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    return-void
.end method
