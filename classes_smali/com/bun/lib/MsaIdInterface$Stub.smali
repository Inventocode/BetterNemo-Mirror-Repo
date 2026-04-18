.class public abstract Lcom/bun/lib/MsaIdInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bun/lib/MsaIdInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/lib/MsaIdInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/lib/MsaIdInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bun.lib.MsaIdInterface"

.field public static final TRANSACTION_getAAID:I = 0x5

.field public static final TRANSACTION_getOAID:I = 0x3

.field public static final TRANSACTION_getVAID:I = 0x4

.field public static final TRANSACTION_isDataArrived:I = 0x2

.field public static final TRANSACTION_isSupported:I = 0x1

.field public static final TRANSACTION_shutDown:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bun.lib.MsaIdInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bun/lib/MsaIdInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.bun.lib.MsaIdInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bun/lib/MsaIdInterface;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/bun/lib/MsaIdInterface;

    return-object v0

    :cond_13
    new-instance v0, Lcom/bun/lib/MsaIdInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/bun/lib/MsaIdInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/bun/lib/MsaIdInterface;
    .registers 1

    sget-object v0, Lcom/bun/lib/MsaIdInterface$Stub$Proxy;->sDefaultImpl:Lcom/bun/lib/MsaIdInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/bun/lib/MsaIdInterface;)Z
    .registers 2

    sget-object v0, Lcom/bun/lib/MsaIdInterface$Stub$Proxy;->sDefaultImpl:Lcom/bun/lib/MsaIdInterface;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    sput-object p0, Lcom/bun/lib/MsaIdInterface$Stub$Proxy;->sDefaultImpl:Lcom/bun/lib/MsaIdInterface;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "com.bun.lib.MsaIdInterface"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_60

    packed-switch p1, :pswitch_data_64

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_10  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bun/lib/MsaIdInterface;->shutDown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_1a  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bun/lib/MsaIdInterface;->getAAID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_28  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bun/lib/MsaIdInterface;->getVAID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_36  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bun/lib/MsaIdInterface;->getOAID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_44  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bun/lib/MsaIdInterface;->isDataArrived()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_52  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bun/lib/MsaIdInterface;->isSupported()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_44  #00000002
        :pswitch_36  #00000003
        :pswitch_28  #00000004
        :pswitch_1a  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method
