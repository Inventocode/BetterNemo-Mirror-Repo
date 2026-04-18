.class Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;
.super Ljava/lang/Object;
.source "AttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/AttachPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/AttachPopupView;Landroid/graphics/Rect;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 194
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget-boolean v1, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    goto :goto_e

    :cond_c
    iget v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->maxX:F

    :goto_e
    iget v3, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetX:I

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    neg-int v3, v3

    :goto_14
    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    .line 195
    iget-object v3, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v3, v3, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v3, :cond_4f

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v1, :cond_39

    .line 198
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v4}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    goto :goto_4f

    .line 200
    :cond_39
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v4}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    .line 202
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 205
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationY:F

    goto :goto_7b

    .line 207
    :cond_6f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationY:F

    .line 209
    :goto_7b
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 210
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
