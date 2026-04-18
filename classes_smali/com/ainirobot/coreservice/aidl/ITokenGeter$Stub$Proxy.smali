.class Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITokenGeter.java"

# interfaces
.implements Lcom/ainirobot/coreservice/aidl/ITokenGeter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.ainirobot.coreservice.aidl.ITokenGeter"

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/ainirobot/coreservice/aidl/ITokenGeter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_22
    move-exception v2

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
