.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;
.super Ljava/lang/Object;
.source "ZTEImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZTEInterface"
.end annotation


# instance fields
.field private final mIBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;->mIBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 136
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "com.bun.lib.MsaIdInterface"

    .line 138
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;->mIBinder:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 140
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 141
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_29

    :catchall_23
    move-exception v1

    const-string v2, "SA.ZTEImpl"

    .line 145
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    return-object v0
.end method
