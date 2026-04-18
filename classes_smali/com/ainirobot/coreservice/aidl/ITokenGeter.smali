.class public interface abstract Lcom/ainirobot/coreservice/aidl/ITokenGeter;
.super Ljava/lang/Object;
.source "ITokenGeter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub;
    }
.end annotation


# virtual methods
.method public abstract getToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
