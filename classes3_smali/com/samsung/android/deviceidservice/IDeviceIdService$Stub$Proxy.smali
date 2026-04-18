.class public Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/deviceidservice/IDeviceIdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/deviceidservice/IDeviceIdService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAAID(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-static {}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/deviceidservice/IDeviceIdService;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_37

    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_28

    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/deviceidservice/IDeviceIdService;->getOAID()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_25

    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVAID(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-static {}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/deviceidservice/IDeviceIdService;->getVAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_37

    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_28

    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
