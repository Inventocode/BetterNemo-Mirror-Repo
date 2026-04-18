.class Lcom/lxj/xpopup/core/BasePopupView$5;
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

    .line 278
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v1, :cond_16

    .line 283
    invoke-interface {v1, v0}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->beforeShow(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 284
    :cond_16
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->beforeShow()V

    .line 285
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 286
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcom/lxj/xpopup/impl/FullScreenPopupView;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    .line 289
    :cond_2d
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-nez v1, :cond_4c

    instance-of v1, v0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    if-nez v1, :cond_4c

    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-nez v1, :cond_4c

    instance-of v1, v0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-nez v1, :cond_4c

    .line 292
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->initAnimator()V

    .line 294
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    .line 296
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$5;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    :cond_4c
    return-void
.end method
