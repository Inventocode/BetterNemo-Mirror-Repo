.class public abstract Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub;
.super Landroid/os/Binder;
.source "IAccountAuthAidlInterface.java"

# interfaces
.implements Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.eebbk.bfc.account.auth.IAccountAuthAidlInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
