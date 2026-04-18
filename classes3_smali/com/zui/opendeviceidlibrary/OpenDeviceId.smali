.class public Lcom/zui/opendeviceidlibrary/OpenDeviceId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static TAG:Ljava/lang/String; = "OpenDeviceId library"


# instance fields
.field private mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    return-void
.end method

.method public static synthetic access$002(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;
    .registers 2

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    .registers 1

    iget-object p0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    return-void
.end method

.method private logPrintE(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private logPrintI(Ljava/lang/String;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public getAAID()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getAAID package："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :try_start_27
    iget-object v3, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v3, :cond_51

    invoke-interface {v3, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_37
    iget-object v2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v2, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->createAAIDForPackageName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v2, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_46

    goto :goto_51

    :catch_46
    const-string v0, "getAAID error, RemoteException!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    goto :goto_51

    :cond_4c
    const-string v0, "input package is null!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-object v1

    :cond_52
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOAID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    :try_start_4
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getOAID()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "getOAID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_16
    const/4 v0, 0x0

    return-object v0

    :cond_18
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUDID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    :try_start_4
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getUDID()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "getUDID error, Exception!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    :catch_17
    move-exception v0

    const-string v1, "getUDID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0

    :cond_22
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVAID()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getVAID package："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    if-eqz v0, :cond_39

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    :try_start_26
    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_3e

    invoke-interface {v1, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getVAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    const-string v1, "getVAID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3e

    :cond_39
    const-string v0, "input package is null!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    return-object v0

    :cond_40
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "Context can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    new-instance p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;

    invoke-direct {p1, p0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;-><init>(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mConnection:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v0, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "bindService Successful!"

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    return v1

    :cond_2d
    const-string p1, "bindService Failed!"

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public isSupported()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_10

    const-string v1, "Device support opendeviceid"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v1}, Lcom/zui/deviceidservice/IDeviceidInterface;->isSupport()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    :cond_10
    return v0

    :catch_11
    const-string v1, "isSupport error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    return v0
.end method

.method public setLogEnable(Z)V
    .registers 2

    sput-boolean p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->DBG:Z

    return-void
.end method

.method public shutdown()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "unBind Service successful"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    const-string v0, "unBind Service exception"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    return-void
.end method
