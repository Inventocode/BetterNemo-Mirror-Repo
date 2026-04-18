.class Lcom/nemo/commonui/xpopup/core/BasePopupView$3;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 207
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    :cond_15
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_43

    iget-boolean v2, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasEyeshieldView:Z

    if-eqz v2, :cond_43

    iget-boolean v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isOpenEyeshieldMode:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    .line 212
    :goto_25
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_43

    .line 213
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 214
    instance-of v2, v2, Lcom/nemo/commonui/xpopup/widget/EyeshieldLayout;

    if-eqz v2, :cond_40

    goto :goto_44

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_43
    const/4 v0, -0x1

    .line 220
    :goto_44
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v3, v2, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->init()V

    return-void
.end method
