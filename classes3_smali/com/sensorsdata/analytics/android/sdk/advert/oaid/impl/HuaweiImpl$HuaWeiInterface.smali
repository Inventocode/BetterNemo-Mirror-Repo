.class final Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;
.super Ljava/lang/Object;
.source "HuaweiImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HuaWeiInterface"
.end annotation


# instance fields
.field private final iBinder:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;->iBinder:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$1;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;->iBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 103
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 105
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;->iBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_29

    :catchall_23
    move-exception v1

    const-string v2, "SA.HuaweiImpl"

    .line 112
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    return-object v0
.end method
