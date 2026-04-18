.class public interface abstract Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;
.super Ljava/lang/Object;
.source "IAccountAuthAidlInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract request(ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
