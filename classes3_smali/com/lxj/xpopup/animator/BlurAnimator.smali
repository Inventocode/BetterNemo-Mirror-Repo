.class public Lcom/lxj/xpopup/animator/BlurAnimator;
.super Lcom/lxj/xpopup/animator/PopupAnimator;
.source "BlurAnimator.java"


# instance fields
.field public decorBitmap:Landroid/graphics/Bitmap;

.field public hasShadowBg:Z

.field public shadowColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "shadowColor"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/lxj/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;I)V

    .line 18
    new-instance p1, Landroid/animation/FloatEvaluator;

    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/lxj/xpopup/animator/BlurAnimator;->hasShadowBg:Z

    .line 22
    iput p2, p0, Lcom/lxj/xpopup/animator/BlurAnimator;->shadowColor:I

    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .registers 1

    return-void
.end method

.method public animateShow()V
    .registers 1

    return-void
.end method

.method public initAnimator()V
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/animator/BlurAnimator;->decorBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x41200000  # 10.0f

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/lxj/xpopup/util/XPopupUtils;->renderScriptBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 32
    iget-boolean v0, p0, Lcom/lxj/xpopup/animator/BlurAnimator;->hasShadowBg:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/lxj/xpopup/animator/BlurAnimator;->shadowColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    :cond_25
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
