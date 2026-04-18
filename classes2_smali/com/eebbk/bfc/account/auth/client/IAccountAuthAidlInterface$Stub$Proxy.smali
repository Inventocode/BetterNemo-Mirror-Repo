.class Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccountAuthAidlInterface.java"

# interfaces
.implements Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub;
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public request(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.eebbk.bfc.account.auth.IAccountAuthAidlInterface"

    .line 81
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_28
    move-exception p1

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
