.class Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;
.super Ljava/lang/Object;
.source "PositionPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/PositionPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/PositionPopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/PositionPopupView;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v2, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v2, :cond_25

    .line 47
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_2d

    .line 50
    :cond_25
    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 52
    :goto_2d
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
