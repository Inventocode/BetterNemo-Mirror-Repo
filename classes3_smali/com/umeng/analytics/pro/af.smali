.class public Lcom/umeng/analytics/pro/af;
.super Ljava/lang/Object;
.source "OppoDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/z;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/af;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 25
    :try_start_2
    iget-boolean v2, p0, Lcom/umeng/analytics/pro/af;->a:Z

    if-nez v2, :cond_c

    .line 26
    invoke-static {p1}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/af;->a:Z

    .line 29
    :cond_c
    invoke-static {}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->a()Z

    move-result v2

    if-nez v2, :cond_1c

    const-string p1, "当前设备不支持获取OAID"

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_2b

    .line 35
    :cond_1c
    invoke-static {p1}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-object v0, p1

    goto :goto_2b

    :catch_22
    const-string p1, "未检测到您集成OAID SDK包"

    .line 40
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    :goto_2b
    return-object v0
.end method
