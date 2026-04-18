.class public interface abstract Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;
.super Ljava/lang/Object;
.source "BfcAccountAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;,
        Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;,
        Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;
    }
.end annotation


# virtual methods
.method public abstract bindService(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;)Z
.end method

.method public abstract enqueue(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V
.end method

.method public abstract unBindService(Landroid/content/Context;)V
.end method
