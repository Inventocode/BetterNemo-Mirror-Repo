.class Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;
.super Ljava/lang/Object;
.source "BubbleAttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/BubbleAttachPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

.field final synthetic val$isRTL:Z

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BubbleAttachPopupView;Landroid/graphics/Rect;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isRTL",
            "val$rect"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iput-object p2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$isRTL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v1, :cond_7

    return-void

    .line 197
    :cond_7
    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v1, :cond_29

    .line 198
    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    goto/16 :goto_aa

    .line 200
    :cond_29
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$isRTL:Z

    if-eqz v1, :cond_78

    .line 201
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_4f

    .line 202
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v3, v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    sub-int/2addr v1, v3

    iget-object v2, v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v2}, Lcom/lxj/xpopup/widget/BubbleLayout;->getShadowRadius()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    goto :goto_aa

    .line 204
    :cond_4f
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v3, v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v3

    iget-object v2, v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v2}, Lcom/lxj/xpopup/widget/BubbleLayout;->getShadowRadius()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    goto :goto_aa

    .line 207
    :cond_78
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_99

    .line 208
    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v2}, Lcom/lxj/xpopup/widget/BubbleLayout;->getShadowRadius()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    goto :goto_aa

    .line 210
    :cond_99
    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v2}, Lcom/lxj/xpopup/widget/BubbleLayout;->getShadowRadius()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    .line 215
    :goto_aa
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 217
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationY:F

    goto :goto_d6

    .line 219
    :cond_ca
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationY:F

    .line 223
    :goto_d6
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 224
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLook(Lcom/lxj/xpopup/widget/BubbleLayout$Look;)V

    goto :goto_f1

    .line 226
    :cond_e8
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->TOP:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLook(Lcom/lxj/xpopup/widget/BubbleLayout$Look;)V

    .line 229
    :goto_f1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v1, :cond_100

    .line 230
    iget-object v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLookPositionCenter(Z)V

    goto :goto_170

    .line 232
    :cond_100
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$isRTL:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14d

    .line 233
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_12f

    .line 234
    iget-object v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    neg-float v0, v0

    iget-object v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v4, v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v3, v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget v3, v3, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLookPosition(I)V

    goto :goto_170

    .line 236
    :cond_12f
    iget-object v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v4, v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    sub-int/2addr v1, v4

    iget-object v3, v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget v3, v3, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLookPosition(I)V

    goto :goto_170

    .line 239
    :cond_14d
    iget-object v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->val$rect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v4, v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    sub-float/2addr v1, v4

    iget-object v3, v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget v3, v3, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLookPosition(I)V

    .line 242
    :goto_170
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/BubbleLayout;->invalidate()V

    .line 244
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 245
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 246
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->initAndStartAnimation()V

    return-void
.end method
