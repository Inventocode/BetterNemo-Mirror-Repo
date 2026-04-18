.class Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;
.super Ljava/lang/Object;
.source "HorizontalAttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

.field final synthetic val$h:I

.field final synthetic val$isRTL:Z

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;ZLandroid/graphics/Rect;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$h",
            "val$w",
            "val$rect",
            "val$isRTL"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iput-boolean p2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$isRTL:Z

    iput-object p3, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$rect:Landroid/graphics/Rect;

    iput p4, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$w:I

    iput p5, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$isRTL:Z

    if-eqz v0, :cond_3f

    .line 98
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v2

    goto :goto_3a

    .line 99
    :cond_1d
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    sub-int/2addr v1, v2

    :goto_3a
    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationX:F

    goto :goto_60

    .line 101
    :cond_3f
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->access$000(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$w:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    sub-int/2addr v1, v2

    goto :goto_5d

    :cond_54
    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    add-int/2addr v1, v2

    :goto_5d
    int-to-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationX:F

    .line 103
    :goto_60
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->val$h:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v3, v1, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationY:F

    .line 104
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/AttachPopupView;->initAndStartAnimation()V

    return-void
.end method
