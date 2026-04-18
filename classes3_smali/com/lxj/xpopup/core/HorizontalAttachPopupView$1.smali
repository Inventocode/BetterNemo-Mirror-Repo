.class Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;
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

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;ZII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$h",
            "val$w",
            "val$isRTL"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iput-boolean p2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->val$isRTL:Z

    iput p3, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->val$w:I

    iput p4, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 62
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->val$isRTL:Z

    if-eqz v0, :cond_47

    .line 63
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-object v3, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_43

    .line 64
    :cond_21
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-object v3, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_43
    neg-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationX:F

    goto :goto_6e

    .line 66
    :cond_47
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->access$000(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-object v2, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->val$w:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v1, v1, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    goto :goto_6c

    :cond_60
    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-object v2, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    :goto_6c
    iput v2, v0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationX:F

    .line 68
    :goto_6e
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->val$h:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationY:F

    .line 69
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 70
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 71
    iget-object v0, p0, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;->this$0:Lcom/lxj/xpopup/core/HorizontalAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/AttachPopupView;->initAndStartAnimation()V

    return-void
.end method
