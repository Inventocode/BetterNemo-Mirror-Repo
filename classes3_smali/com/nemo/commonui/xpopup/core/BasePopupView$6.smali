.class Lcom/nemo/commonui/xpopup/core/BasePopupView$6;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemo/commonui/xpopup/core/BasePopupView;
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

    .line 517
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 521
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->xPopupCallback:Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_12

    .line 522
    invoke-interface {v0}, Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;->onDismiss()V

    .line 524
    :cond_12
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 525
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 526
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    .line 528
    :cond_20
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    iput-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 529
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;->getInstance()Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;->removeOnNavigationBarListener(Lcom/nemo/commonui/xpopup/util/navbar/OnNavigationBarListener;)V

    .line 531
    invoke-static {}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 532
    :cond_40
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    if-eqz v0, :cond_81

    iget-boolean v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isRequestFocus:Z

    if-eqz v0, :cond_81

    .line 533
    invoke-static {}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6c

    .line 534
    invoke-static {}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-static {}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    goto :goto_81

    .line 537
    :cond_6c
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 538
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 539
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 544
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_95

    .line 545
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V

    :cond_95
    return-void
.end method
