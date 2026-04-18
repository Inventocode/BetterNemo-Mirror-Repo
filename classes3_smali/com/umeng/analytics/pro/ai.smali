.class Lcom/umeng/analytics/pro/ai;
.super Ljava/lang/Object;
.source "XiaomiDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/z;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 28
    :try_start_2
    invoke-static {}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->a()Z

    move-result v2

    if-nez v2, :cond_12

    const-string p1, "当前设备不支持获取OAID"

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_21

    .line 34
    :cond_12
    invoke-static {p1}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_18

    move-object v0, p1

    goto :goto_21

    :catch_18
    const-string p1, "未检测到您集成OAID SDK包"

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    :goto_21
    return-object v0
.end method
