.class public Lcom/lxj/xpopup/core/BasePopupView_LifecycleAdapter;
.super Ljava/lang/Object;
.source "BasePopupView_LifecycleAdapter.java"

# interfaces
.implements Landroidx/lifecycle/GeneratedAdapter;


# instance fields
.field final mReceiver:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView_LifecycleAdapter;->mReceiver:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "event",
            "onAny",
            "logger"
        }
    .end annotation

    const/4 p1, 0x1

    if-eqz p4, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz p3, :cond_9

    return-void

    .line 23
    :cond_9
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_1c

    if-eqz v0, :cond_17

    const-string p2, "onDestroy"

    .line 24
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 25
    :cond_17
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView_LifecycleAdapter;->mReceiver:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->onDestroy()V

    :cond_1c
    return-void
.end method
