.class Lcom/lxj/xpopup/core/AttachPopupView$4;
.super Ljava/lang/Object;
.source "AttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/AttachPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/AttachPopupView;

.field final synthetic val$isRTL:Z

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/AttachPopupView;ZLandroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$rect",
            "val$isRTL"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iput-boolean p2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$isRTL:Z

    iput-object p3, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v1, :cond_7

    return-void

    .line 245
    :cond_7
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$isRTL:Z

    if-eqz v1, :cond_44

    .line 246
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    sub-int/2addr v1, v2

    goto :goto_3f

    .line 247
    :cond_2d
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v2

    :goto_3f
    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    goto :goto_65

    .line 249
    :cond_44
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v2

    goto :goto_62

    :cond_50
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    sub-int/2addr v1, v2

    :goto_62
    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    .line 251
    :goto_65
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v1, :cond_de

    .line 253
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    const/high16 v2, 0x40000000  # 2.0f

    if-eqz v1, :cond_a9

    .line 254
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$isRTL:Z

    if-eqz v1, :cond_90

    .line 255
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    iget-object v3, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v4}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    goto :goto_de

    .line 257
    :cond_90
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    iget-object v3, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v4}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    goto :goto_de

    .line 260
    :cond_a9
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$isRTL:Z

    if-eqz v1, :cond_c6

    .line 261
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    iget-object v3, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v4}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    goto :goto_de

    .line 263
    :cond_c6
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    iget-object v3, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v4}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    .line 267
    :cond_de
    :goto_de
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 270
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationY:F

    goto :goto_10a

    .line 272
    :cond_fe
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->translationY:F

    .line 275
    :goto_10a
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/AttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 276
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/AttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 277
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/AttachPopupView;->initAndStartAnimation()V

    return-void
.end method
