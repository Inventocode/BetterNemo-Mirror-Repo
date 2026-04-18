.class final Lcom/codemao/utils/util/CuKeyboardUtils$1;
.super Landroid/os/ResultReceiver;
.source "CuKeyboardUtils.java"


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 96
    :cond_6
    invoke-static {}, Lcom/codemao/utils/util/CuKeyboardUtils;->toggleSoftInput()V

    :cond_9
    return-void
.end method
