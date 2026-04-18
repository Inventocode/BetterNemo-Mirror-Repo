.class public Lcom/umeng/analytics/pro/ac;
.super Ljava/lang/Object;
.source "DeviceIdSupplier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;
    .registers 5

    .line 15
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Brand"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "Device"

    .line 16
    invoke-static {v2, v1}, Lcom/umeng/analytics/pro/aj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    return-object v2

    :cond_1a
    const-string v1, "huawei"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "honor"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "华为"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto/16 :goto_b6

    :cond_34
    const-string v1, "xiaomi"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string v1, "redmi"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string v1, "meitu"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string v1, "小米"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_b0

    :cond_55
    const-string v1, "vivo"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 30
    new-instance p0, Lcom/umeng/analytics/pro/ah;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ah;-><init>()V

    return-object p0

    :cond_63
    const-string v1, "oppo"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "oneplus"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_aa

    :cond_74
    const-string v1, "lenovo"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4

    const-string v1, "zuk"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_a4

    .line 37
    :cond_85
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 38
    new-instance p0, Lcom/umeng/analytics/pro/ag;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ag;-><init>()V

    return-object p0

    :cond_95
    const-string v0, "com.coolpad.deviceidsupport"

    .line 39
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a3

    .line 40
    new-instance p0, Lcom/umeng/analytics/pro/ab;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ab;-><init>()V

    return-object p0

    :cond_a3
    return-object v2

    .line 36
    :cond_a4
    :goto_a4
    new-instance p0, Lcom/umeng/analytics/pro/ae;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ae;-><init>()V

    return-object p0

    .line 33
    :cond_aa
    :goto_aa
    new-instance p0, Lcom/umeng/analytics/pro/af;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/af;-><init>()V

    return-object p0

    .line 28
    :cond_b0
    :goto_b0
    new-instance p0, Lcom/umeng/analytics/pro/ai;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ai;-><init>()V

    return-object p0

    .line 23
    :cond_b6
    :goto_b6
    new-instance p0, Lcom/umeng/analytics/pro/ad;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ad;-><init>()V

    return-object p0
.end method
