.class public Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;
.super Ljava/lang/Object;
.source "SimpleCallback.java"

# interfaces
.implements Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeShow()V
    .registers 1

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreated()V
    .registers 1

    return-void
.end method

.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
