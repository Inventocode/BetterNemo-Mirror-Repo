.class Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;
.super Ljava/lang/Object;
.source "CutOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/view/CutOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanEvent"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/CutOutImageView;FF)V
    .registers 6

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-static {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$000(Lcn/codemao/android/sketch/view/CutOutImageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$100(Lcn/codemao/android/sketch/view/CutOutImageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 296
    invoke-static {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$000(Lcn/codemao/android/sketch/view/CutOutImageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    .line 297
    invoke-static {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$000(Lcn/codemao/android/sketch/view/CutOutImageView;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    div-float/2addr p3, v0

    .line 298
    iput p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->x:F

    .line 299
    iput p3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 2

    .line 303
    iget v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 311
    iget v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->y:F

    return v0
.end method
