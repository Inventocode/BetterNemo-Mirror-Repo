.class Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;
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


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/AttachPopupView;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget-boolean v1, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_d

    iget-object v2, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    goto :goto_f

    :cond_d
    iget v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->maxX:F

    :goto_f
    iget v3, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetX:I

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    neg-int v3, v3

    :goto_15
    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    .line 135
    iget-object v3, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v3, v3, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v3, :cond_3e

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v1, :cond_31

    .line 138
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    goto :goto_3e

    .line 140
    :cond_31
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    .line 142
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 145
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationY:F

    goto :goto_6f

    .line 147
    :cond_61
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationY:F

    .line 149
    :goto_6f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 150
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
