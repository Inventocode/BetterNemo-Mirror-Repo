.class Lcom/lxj/xpopup/core/BasePopupView$6;
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

    .line 349
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupStatus;->Show:Lcom/lxj/xpopup/enums/PopupStatus;

    iput-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 353
    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 354
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    .line 355
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcom/lxj/xpopup/impl/FullScreenPopupView;

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    .line 356
    :cond_1b
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v1, :cond_28

    .line 357
    invoke-interface {v1, v0}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onShow(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 359
    :cond_28
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    if-lez v0, :cond_4f

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    if-nez v1, :cond_4f

    .line 360
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$6;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->moveUpToKeyboard(ILcom/lxj/xpopup/core/BasePopupView;)V

    :cond_4f
    return-void
.end method
