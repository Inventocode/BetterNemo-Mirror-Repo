.class Lcom/umeng/analytics/pro/ad;
.super Ljava/lang/Object;
.source "HuaweiDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/ad$b;,
        Lcom/umeng/analytics/pro/ad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

.field private static final b:I = 0x1

.field private static final c:I = 0x2


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 25
    new-instance v0, Lcom/umeng/analytics/pro/ad$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ad$a;-><init>(Lcom/umeng/analytics/pro/ad$1;)V

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.huawei.hwid"

    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 28
    invoke-virtual {p1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 30
    :try_start_19
    new-instance v2, Lcom/umeng/analytics/pro/ad$b;

    .line 31
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ad$a;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/analytics/pro/ad$b;-><init>(Landroid/os/IBinder;)V

    .line 32
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/ad$b;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_2f
    .catchall {:try_start_19 .. :try_end_26} :catchall_2a

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_2a
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :catch_2f
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_32
    return-object v1
.end method
