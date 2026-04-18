.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 502
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onDismiss()V

    .line 503
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->xPopupCallback:Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_12

    .line 504
    invoke-interface {v0}, Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;->onDismiss()V

    .line 506
    :cond_12
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 507
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 508
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    .line 510
    :cond_20
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    sget-object v1, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->Dismiss:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    iput-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupStatus:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    .line 511
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->getInstance()Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->removeOnNavigationBarListener(Lcn/codemao/android/sketch/xpopup/util/navbar/OnNavigationBarListener;)V

    .line 513
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 514
    :cond_40
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    if-eqz v0, :cond_81

    iget-boolean v0, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isRequestFocus:Z

    if-eqz v0, :cond_81

    .line 515
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6c

    .line 516
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$200()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    goto :goto_81

    .line 519
    :cond_6c
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 520
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 521
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 526
    :cond_81
    :goto_81
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_95

    .line 527
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 528
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$6;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcn/codemao/android/sketch/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V

    :cond_95
    return-void
.end method
