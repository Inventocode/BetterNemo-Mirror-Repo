.class Lcom/umeng/analytics/pro/ab$1;
.super Ljava/lang/Object;
.source "CoolpadDeviceIdSupplier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/ab;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/ab;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "Coolpad"

    .line 79
    :try_start_2
    invoke-static {p2}, Lcom/umeng/analytics/pro/a$a;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/a;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/a;)Lcom/umeng/analytics/pro/a;

    .line 80
    iget-object p2, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {}, Lcom/umeng/analytics/pro/ab;->a()Lcom/umeng/analytics/pro/a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {v1}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/analytics/pro/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/ab;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected: oaid = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {v0}, Lcom/umeng/analytics/pro/ab;->b(Lcom/umeng/analytics/pro/ab;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3a} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_3a} :catch_3b

    goto :goto_56

    :catch_3b
    move-exception p2

    goto :goto_3e

    :catch_3d
    move-exception p2

    .line 83
    :goto_3e
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

    .line 85
    :goto_56
    iget-object p1, p0, Lcom/umeng/analytics/pro/ab$1;->a:Lcom/umeng/analytics/pro/ab;

    invoke-static {p1}, Lcom/umeng/analytics/pro/ab;->c(Lcom/umeng/analytics/pro/ab;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "Coolpad"

    const-string v0, "onServiceDisconnected"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Lcom/umeng/analytics/pro/ab;->a(Lcom/umeng/analytics/pro/a;)Lcom/umeng/analytics/pro/a;

    return-void
.end method
