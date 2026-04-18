.class public Lcom/codemao/nemo/view/CarouselZoomPostLayoutListener;
.super Ljava/lang/Object;
.source "CarouselZoomPostLayoutListener.java"

# interfaces
.implements Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformChild(Landroid/view/View;FI)Lcom/codemao/nemo/view/ItemTransformation;
    .registers 9

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1f

    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3e23d70a  # 0.16f

    mul-float v0, v0, v3

    sub-float v0, v2, v0

    goto :goto_2d

    :cond_1f
    const v0, 0x3f570a3d  # 0.84f

    .line 21
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v3, v2

    const v4, 0x3df5c28f  # 0.12f

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    :goto_2d
    const/4 v3, 0x1

    if-ne v3, p3, :cond_42

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, v0

    mul-float p1, p1, v2

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p1, p3

    .line 29
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float p2, p2, p1

    goto :goto_49

    .line 32
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    const/4 p2, 0x0

    .line 37
    :goto_49
    new-instance p1, Lcom/codemao/nemo/view/ItemTransformation;

    invoke-direct {p1, v0, v0, v1, p2}, Lcom/codemao/nemo/view/ItemTransformation;-><init>(FFFF)V

    return-object p1
.end method
