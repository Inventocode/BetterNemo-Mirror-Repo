.class public abstract Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/asus/msa/sdid/IDIDBinderStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/IDIDBinderStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.asus.msa.sdid.IDIDBinderStatusListener"

.field public static final TRANSACTION_onError:I = 0x2

.field public static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.asus.msa.sdid.IDIDBinderStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/asus/msa/sdid/IDIDBinderStatusListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.asus.msa.sdid.IDIDBinderStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/asus/msa/sdid/IDIDBinderStatusListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/asus/msa/sdid/IDIDBinderStatusListener;

    return-object v0

    :cond_13
    new-instance v0, Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "com.asus.msa.sdid.IDIDBinderStatusListener"

    if-eq p1, v0, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/asus/msa/sdid/IDIDBinderStatusListener;->onError()V

    :goto_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/asus/msa/SupplementaryDID/IDidAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/asus/msa/sdid/IDIDBinderStatusListener;->onSuccess(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V

    goto :goto_1c
.end method
