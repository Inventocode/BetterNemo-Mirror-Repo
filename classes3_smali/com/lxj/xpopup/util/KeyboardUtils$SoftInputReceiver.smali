.class Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;
.super Landroid/os/ResultReceiver;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/util/KeyboardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftInputReceiver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 104
    iput-object p1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultData"
        }
    .end annotation

    .line 109
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    const/4 p2, 0x3

    if-ne p1, p2, :cond_e

    .line 112
    :cond_9
    iget-object p1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/lxj/xpopup/util/KeyboardUtils;->toggleSoftInput(Landroid/content/Context;)V

    :cond_e
    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;->context:Landroid/content/Context;

    return-void
.end method
