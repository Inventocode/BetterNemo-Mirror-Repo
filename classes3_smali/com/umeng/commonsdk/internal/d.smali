.class public Lcom/umeng/commonsdk/internal/d;
.super Ljava/lang/Object;
.source "UMInternalManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 7

    .line 782
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "a_pr"

    .line 784
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_bl"

    .line 785
    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_22

    const-string v2, "a_rv"

    .line 787
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_22
    const-string v2, "a_fp"

    .line 789
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "a_hw"

    .line 790
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "a_host"

    .line 791
    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_5a

    .line 793
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 794
    :goto_42
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_4f

    .line 795
    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 797
    :cond_4f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5a

    const-string v4, "a_s32"

    .line 798
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    :cond_5a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7c

    .line 802
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 803
    :goto_64
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_71

    .line 804
    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 806
    :cond_71
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7c

    const-string v4, "a_s64"

    .line 807
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    :cond_7c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_9d

    .line 811
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 812
    :goto_85
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_92

    .line 813
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 815
    :cond_92
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9d

    const-string v2, "a_sa"

    .line 816
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9d
    const-string v1, "a_ta"

    .line 819
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_uk"

    const-string v2, "unknown"

    .line 820
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_user"

    .line 821
    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_cpu1"

    .line 822
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_cpu2"

    .line 823
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_ra"

    .line 824
    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_e2

    const-string v1, "a_bos"

    .line 826
    sget-object v2, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_pre"

    .line 827
    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "a_sp"

    .line 828
    sget-object v2, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e2
    const-string v1, "a_cn"

    .line 830
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_intl"

    .line 831
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f0} :catch_f0

    :catch_f0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 12

    const-string v0, "walle"

    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[internal] workEvent send envelope"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 61
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "i_sdk_v"

    const-string v3, "1.2.0"

    .line 63
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    .line 65
    sget-object v8, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_ANALYTICS:Ljava/lang/String;

    const-string v9, "i"

    const-string v10, "1.2.0"

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_40

    const-string v3, "exception"

    .line 66
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[internal] workEvent send envelope back, result is ok"

    aput-object v2, v1, v4

    .line 68
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v0

    .line 75
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p0, :cond_4a

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_4a

    if-nez p1, :cond_13

    .line 678
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_13
    const-string v0, "android.hardware.location.gps"

    .line 681
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gp"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.touchscreen"

    .line 683
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "to"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.telephony"

    .line 685
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "mo"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.camera"

    .line 687
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ca"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.camera.flash"

    .line 689
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "fl"

    invoke-static {p1, v0, p0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_4a
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p0, :cond_13

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_f

    const/4 p2, 0x1

    .line 699
    :try_start_b
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_13

    :cond_f
    const/4 p2, 0x0

    .line 701
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    :goto_13
    return-void
.end method

.method private static b()Lorg/json/JSONObject;
    .registers 5

    const-string v0, "rev"

    const/4 v1, 0x0

    .line 481
    :try_start_3
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->a()Lcom/umeng/commonsdk/internal/utils/c$a;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 483
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_83

    :try_start_e
    const-string v1, "pro"

    .line 484
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pla"

    .line 485
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpus"

    .line 486
    iget v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->c:I

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fea"

    .line 487
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imp"

    .line 488
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arc"

    .line 489
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "var"

    .line 490
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "par"

    .line 491
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->h:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    iget-object v1, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "har"

    .line 493
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->j:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    iget-object v1, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ser"

    .line 495
    iget-object v1, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cur_cpu"

    .line 496
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_cpu"

    .line 497
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "min_cpu"

    .line 498
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_82

    :catch_82
    move-object v1, v3

    :catch_83
    :cond_83
    return-object v1
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[internal] begin by stateful--->>>"

    aput-object v2, v0, v1

    const-string v1, "walle"

    .line 84
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_12

    .line 86
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->j(Landroid/content/Context;)V

    :cond_12
    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "_dsk_s"

    const-string v1, "_thm_z"

    const-string v2, "_gdf_r"

    if-eqz p0, :cond_45

    .line 709
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 710
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 712
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1e

    .line 715
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 717
    :cond_1e
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 718
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    :cond_2b
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 721
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    :cond_38
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 724
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[internal] begin by stateful--->>>"

    aput-object v2, v0, v1

    const-string v1, "walle"

    .line 95
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_19

    .line 98
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 101
    :cond_16
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->j(Landroid/content/Context;)V

    :cond_19
    return-void
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_fb

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_10
    const-string v2, "inner_rs"

    .line 165
    invoke-static {v2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 166
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->k(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 167
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2e

    const-string v3, "rs"

    .line 168
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    .line 172
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 196
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->l(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 197
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_44

    const-string v3, "by"

    .line 198
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v2

    .line 202
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 214
    :cond_44
    :goto_44
    :try_start_44
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    .line 216
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 227
    :goto_4c
    :try_start_4c
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/d;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v2

    .line 229
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 259
    :goto_54
    :try_start_54
    invoke-static {}, Lcom/umeng/commonsdk/internal/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 260
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6a

    const-string v3, "build"

    .line 261
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception v2

    .line 265
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 294
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 295
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_80

    const-string v3, "scr"

    .line 296
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception v2

    .line 300
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 306
    :cond_80
    :goto_80
    :try_start_80
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 307
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_96

    const-string v3, "sinfo"

    .line 308
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception v2

    .line 312
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 341
    :cond_96
    :goto_96
    :try_start_96
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->g(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_ac

    .line 342
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_ac

    const-string v3, "input"

    .line 343
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a7} :catch_a8

    goto :goto_ac

    :catch_a8
    move-exception v2

    .line 347
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    :try_start_ac
    const-string v2, "inner_appls"

    .line 384
    invoke-static {v2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 385
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->h(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_ca

    .line 386
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_ca

    const-string v3, "appls"

    .line 387
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception v2

    .line 391
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 397
    :cond_ca
    :goto_ca
    :try_start_ca
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->i(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_e0

    .line 398
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_e0

    const-string v3, "mem"

    .line 399
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception v2

    .line 403
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 420
    :cond_e0
    :goto_e0
    :try_start_e0
    invoke-static {}, Lcom/umeng/commonsdk/internal/d;->b()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_f1

    .line 421
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_f1

    const-string v3, "cpu"

    .line 422
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f1} :catch_f1

    :catch_f1
    :cond_f1
    :try_start_f1
    const-string v2, "inner"

    .line 447
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_f1 .. :try_end_f6} :catch_f7

    goto :goto_fb

    :catch_f7
    move-exception v1

    .line 449
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_fb
    :goto_fb
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .line 847
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_3d

    :try_start_7
    const-string v1, "a_st_h"

    .line 850
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "a_nav_h"

    .line 851
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v2, "a_den"

    .line 855
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "a_dpi"

    .line 856
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v1

    .line 860
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .line 868
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_a7

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_f
    const-string v2, "a_fit"

    .line 874
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 873
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "a_alut"

    .line 876
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 875
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "a_c"

    .line 878
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "a_uid"

    .line 880
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 879
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 881
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->a()Z

    move-result v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_a3

    const-string v2, "a_root"

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    .line 882
    :try_start_3c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_44

    :cond_40
    const/4 v1, 0x0

    .line 884
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_44
    const-string v1, "tf"

    .line 888
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s_fs"

    .line 890
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->a(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    .line 889
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "a_meid"

    .line 892
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMeid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_imsi"

    .line 894
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    .line 896
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->c()J

    move-result-wide v2

    .line 895
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 898
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSimICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7a} :catch_a3

    if-nez v2, :cond_81

    :try_start_7c
    const-string v2, "a_iccid"

    .line 901
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_81

    .line 906
    :catch_81
    :cond_81
    :try_start_81
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSecondSimIMEi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_89} :catch_a3

    if-nez v2, :cond_90

    :try_start_8b
    const-string v2, "a_simei"

    .line 909
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_90

    :catch_90
    :cond_90
    :try_start_90
    const-string v1, "hn"

    .line 914
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a2} :catch_a3

    goto :goto_a7

    :catch_a3
    move-exception v1

    .line 917
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 7

    .line 976
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4a

    .line 979
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 980
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 982
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 988
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_id"

    .line 990
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_pn"

    .line 991
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    .line 992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 994
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_45

    goto :goto_15

    :catchall_45
    move-exception v2

    .line 997
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_4a
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 7

    .line 1007
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4e

    .line 1010
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1011
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1012
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1013
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/internal/utils/a$a;

    if-eqz v2, :cond_1b

    .line 1016
    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_pn"

    .line 1017
    iget-object v5, v2, Lcom/umeng/commonsdk/internal/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_la"

    .line 1018
    iget-object v2, v2, Lcom/umeng/commonsdk/internal/utils/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1021
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_48} :catch_49

    goto :goto_1b

    :catch_49
    move-exception v2

    .line 1024
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_4e
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .line 1035
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_33

    .line 1037
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1038
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->h(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1041
    :try_start_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1e

    const-string v2, "t"

    .line 1042
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1e
    const-string v2, "f"

    .line 1044
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v1

    .line 1047
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    return-object v0
.end method

.method private static j(Landroid/content/Context;)V
    .registers 9

    .line 136
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x8001

    .line 138
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    invoke-static {p0, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_17
    const-string v0, "MobclickRT"

    const-string v1, "--->>> 冷启动：5秒后触发2号数据仓遗留信封检查动作。"

    .line 141
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x8013

    .line 143
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    move-object v2, p0

    .line 142
    invoke-static/range {v2 .. v7}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v0

    .line 145
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_35
    return-void
.end method

.method private static k(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_c2

    .line 519
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    .line 520
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_c2

    const v2, 0x7fffffff

    .line 522
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c2

    .line 523
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c2

    const/4 v2, 0x0

    .line 526
    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_90

    .line 527
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v3, :cond_8d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 528
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_be

    if-eqz v3, :cond_8d

    .line 530
    :try_start_53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sn"

    .line 531
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pn"

    .line 532
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v0, :cond_8a

    .line 534
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v0, v4

    .line 536
    :cond_8a
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_8d} :catch_8d
    .catchall {:try_start_53 .. :try_end_8d} :catchall_be

    :catch_8d
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_90
    if-eqz v0, :cond_c2

    .line 543
    :try_start_92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_be

    :try_start_97
    const-string v2, "ts"

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ls"

    .line 546
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_a5} :catch_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_be

    .line 550
    :catch_a5
    :try_start_a5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_be

    :try_start_aa
    const-string v3, "sers"

    .line 552
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_af} :catch_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_be

    .line 557
    :catch_af
    :try_start_af
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_be

    .line 558
    :try_start_b4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b9

    move-object v0, v1

    goto :goto_c2

    :catchall_b9
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_bf

    :catchall_be
    move-exception v1

    .line 565
    :goto_bf
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_c2
    :goto_c2
    return-object v0
.end method

.method private static l(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    .line 586
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 588
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 591
    :try_start_f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-object v0
.end method
