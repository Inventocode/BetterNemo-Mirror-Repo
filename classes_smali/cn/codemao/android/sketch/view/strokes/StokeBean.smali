.class public Lcn/codemao/android/sketch/view/strokes/StokeBean;
.super Ljava/lang/Object;
.source "StokeBean.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private diffHor:F

.field private height:F

.field private unSize:F

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IFFFF)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p6, 0x3f800000  # 1.0f

    .line 27
    iput p6, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->unSize:F

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    iput p3, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->width:F

    .line 32
    iput p4, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->height:F

    .line 33
    iput p5, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->diffHor:F

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDiffHor()F
    .registers 3

    .line 59
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->diffHor:F

    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->unSize:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getHeight()F
    .registers 3

    .line 55
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->height:F

    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->unSize:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getWidth()F
    .registers 3

    .line 43
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->width:F

    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->unSize:F

    mul-float v0, v0, v1

    return v0
.end method

.method public setUnSize(F)V
    .registers 2

    .line 51
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/StokeBean;->unSize:F

    return-void
.end method
