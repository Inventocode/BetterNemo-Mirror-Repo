.class Lcom/lxj/xpopup/core/BasePopupView$9;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 703
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 706
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupStatus;->Dismiss:Lcom/lxj/xpopup/enums/PopupStatus;

    iput-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 707
    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 708
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_14

    return-void

    .line 709
    :cond_14
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-eqz v1, :cond_25

    .line 710
    invoke-static {v0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 711
    :cond_25
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 712
    sput-object v0, Lcom/lxj/xpopup/XPopup;->longClickPoint:Landroid/graphics/PointF;

    .line 713
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v2, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v2, :cond_38

    .line 714
    invoke-interface {v2, v1}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onDismiss(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 716
    :cond_38
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_45

    .line 717
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 718
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    .line 720
    :cond_45
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v2, v1, Lcom/lxj/xpopup/core/PopupInfo;->isRequestFocus:Z

    if-eqz v2, :cond_6d

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v1, :cond_6d

    .line 722
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getWindowDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 723
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getWindowDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6d

    const/4 v1, 0x1

    .line 725
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 726
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 731
    :cond_6d
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$9;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/BasePopupView;->access$100(Lcom/lxj/xpopup/core/BasePopupView;)V

    return-void
.end method
