.class Lcom/umeng/analytics/pro/ag$1;
.super Ljava/lang/Object;
.source "SamsungDeviceIdSupplier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/ag;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/ag;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/umeng/analytics/pro/ag$1;->a:Lcom/umeng/analytics/pro/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "DeviceIdService"

    .line 68
    :try_start_2
    invoke-static {p2}, Lcom/umeng/analytics/pro/b$a;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/b;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/umeng/analytics/pro/ag$1;->a:Lcom/umeng/analytics/pro/ag;

    invoke-interface {p2}, Lcom/umeng/analytics/pro/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/umeng/analytics/pro/ag;->a(Lcom/umeng/analytics/pro/ag;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "onServiceConnected"

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_30

    :catch_15
    move-exception p2

    goto :goto_18

    :catch_17
    move-exception p2

    .line 72
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected failed e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_30
    iget-object p1, p0, Lcom/umeng/analytics/pro/ag$1;->a:Lcom/umeng/analytics/pro/ag;

    invoke-static {p1}, Lcom/umeng/analytics/pro/ag;->a(Lcom/umeng/analytics/pro/ag;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "DeviceIdService"

    const-string v0, "onServiceDisconnected"

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
