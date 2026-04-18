.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;
.super Ljava/lang/Object;
.source "CoolpadImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CoolpadInterface"
.end annotation


# instance fields
.field private final mIBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;->mIBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getOAID(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 78
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "com.coolpad.deviceidsupport.IDeviceIdManager"

    .line 80
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;->mIBinder:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {p1, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_2c

    :catchall_26
    move-exception p1

    const-string v1, "SA.CoolpadImpl"

    .line 88
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    return-object v0
.end method
