.class public Lcom/codemao/nemo/util/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field public static channel:Ljava/lang/String; = null

.field public static header:Ljava/lang/String; = null

.field public static isNeedToUpdateHeader:Z = false


# direct methods
.method public static synthetic $r8$lambda$CatlhAZrPh0-6c2Wr8kfOVI9gSk(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/util/SystemUtil;->getPushActivateObservableSource(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Clj4yNhM42cmj1UNHPC0YVUqnUc(Lio/reactivex/ObservableEmitter;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/util/SystemUtil;->lambda$pushOAID$1(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NROuAqdOC24hKoogIMSjl6gbbIk(Lio/reactivex/ObservableEmitter;ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/SystemUtil;->lambda$pushOAID$0(Lio/reactivex/ObservableEmitter;ZLcom/bun/miitmdid/interfaces/IdSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YDXx_JE8PmlldOSq4IJZf2VyqhU(Lretrofit2/Response;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/util/SystemUtil;->lambda$getPushActivateObservableSource$3(Lretrofit2/Response;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkFi8KFE2u95MTw08I3J6H1nKFk(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/util/SystemUtil;->lambda$pushOAID$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 197
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    const-string v0, "0000000000000000"

    return-object v0
.end method

.method public static getAppVersionCode()J
    .registers 3

    .line 441
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 445
    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 446
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_17} :catch_19

    int-to-long v0, v0

    return-wide v0

    :catch_19
    move-exception v0

    .line 448
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 3

    .line 454
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 459
    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 460
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    .line 463
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "1.0"

    return-object v0
.end method

.method public static getBackendHost()Ljava/lang/String;
    .registers 6

    .line 283
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    const-string v1, "api.codemao.cn"

    if-eqz v0, :cond_4c

    .line 286
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_4e

    goto :goto_3c

    :sswitch_15
    const-string v3, "release"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x3

    goto :goto_3c

    :sswitch_1f
    const-string v3, "test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x1

    goto :goto_3c

    :sswitch_29
    const-string v3, "dev"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x2

    goto :goto_3c

    :sswitch_33
    const-string v3, "staging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x0

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_49

    if-eq v2, v5, :cond_46

    if-eq v2, v4, :cond_43

    goto :goto_4c

    :cond_43
    const-string v0, "backend-dev.codemao.cn"

    goto :goto_4b

    :cond_46
    const-string v0, "test-api.codemao.cn"

    goto :goto_4b

    :cond_49
    const-string v0, "backend-test.codemao.cn"

    :goto_4b
    move-object v1, v0

    :cond_4c
    :goto_4c
    return-object v1

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x7119e7c5 -> :sswitch_33
        0x18415 -> :sswitch_29
        0x364492 -> :sswitch_1f
        0x41012807 -> :sswitch_15
    .end sparse-switch
.end method

.method public static getChannel()Ljava/lang/String;
    .registers 2

    const-string v0, "codemao_hi"

    .line 125
    sget-object v1, Lcom/codemao/nemo/util/AppConstants;->localChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 126
    sget-object v0, Lcom/codemao/nemo/util/AppConstants;->localChannel:Ljava/lang/String;

    return-object v0

    .line 128
    :cond_d
    sget-object v1, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 129
    sget-object v0, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;

    return-object v0

    .line 133
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meituan/android/walle/WalleChannelReader;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_27

    goto :goto_29

    .line 135
    :catch_27
    sput-object v0, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;

    .line 137
    :goto_29
    sget-object v1, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 138
    sput-object v0, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;

    .line 140
    :cond_33
    sget-object v0, Lcom/codemao/nemo/util/SystemUtil;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public static getCreationHost()Ljava/lang/String;
    .registers 6

    .line 258
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    const-string v1, "api-creation.codemao.cn"

    if-eqz v0, :cond_4c

    .line 261
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_4e

    goto :goto_3c

    :sswitch_15
    const-string v3, "release"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x3

    goto :goto_3c

    :sswitch_1f
    const-string v3, "test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x1

    goto :goto_3c

    :sswitch_29
    const-string v3, "dev"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x2

    goto :goto_3c

    :sswitch_33
    const-string v3, "staging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x0

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_49

    if-eq v2, v5, :cond_46

    if-eq v2, v4, :cond_43

    goto :goto_4c

    :cond_43
    const-string v0, "dev-api-creation.codemao.cn"

    goto :goto_4b

    :cond_46
    const-string v0, "test-api-creation.codemao.cn"

    goto :goto_4b

    :cond_49
    const-string v0, "staging-api-creation.codemao.cn"

    :goto_4b
    move-object v1, v0

    :cond_4c
    :goto_4c
    return-object v1

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x7119e7c5 -> :sswitch_33
        0x18415 -> :sswitch_29
        0x364492 -> :sswitch_1f
        0x41012807 -> :sswitch_15
    .end sparse-switch
.end method

.method public static getCurrentNetType()Ljava/lang/String;
    .registers 4

    .line 532
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 535
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "unknow"

    if-nez v0, :cond_19

    goto :goto_56

    .line 538
    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const-string v1, "wifi"

    goto :goto_56

    .line 540
    :cond_23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_56

    .line 541
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_53

    if-eq v0, v3, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_53

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    const/16 v1, 0x8

    if-eq v0, v1, :cond_50

    const/4 v1, 0x6

    if-eq v0, v1, :cond_50

    const/4 v1, 0x5

    if-eq v0, v1, :cond_50

    const/16 v1, 0xc

    if-eq v0, v1, :cond_50

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4d

    const-string v0, "4g"

    goto :goto_55

    :cond_4d
    const-string v0, ""

    goto :goto_55

    :cond_50
    const-string v0, "3g"

    goto :goto_55

    :cond_53
    const-string v0, "2g"

    :goto_55
    move-object v1, v0

    :cond_56
    :goto_56
    return-object v1
.end method

.method public static getDensity()I
    .registers 1

    .line 477
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getGroupId()Ljava/lang/String;
    .registers 2

    .line 206
    :try_start_0
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    const-string v0, ""

    return-object v0
.end method

.method public static getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    sget-boolean v0, Lcom/codemao/nemo/util/SystemUtil;->isNeedToUpdateHeader:Z

    if-nez v0, :cond_3b

    .line 385
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p0

    if-nez p0, :cond_18

    const-wide/16 v1, 0x0

    goto :goto_20

    .line 391
    :cond_18
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_20
    const-string p0, "uid"

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_3b

    return-object p0

    .line 401
    :catch_3b
    :cond_3b
    :try_start_3b
    new-instance p0, Lorg/json/JSONObject;

    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "net"

    .line 403
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCurrentNetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "devid"

    .line 404
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/SystemUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "group_id"

    .line 405
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6d
    const-string v0, "appvn"

    .line 407
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "density"

    .line 408
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getDensity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "build"

    .line 409
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "origin"

    const-string v1, "nemo"

    .line 410
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_93} :catch_94

    goto :goto_98

    .line 413
    :catch_94
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getLocalHeader()Ljava/lang/String;

    move-result-object p0

    :goto_98
    const/4 v0, 0x0

    .line 415
    sput-boolean v0, Lcom/codemao/nemo/util/SystemUtil;->isNeedToUpdateHeader:Z

    return-object p0
.end method

.method public static getHeaderStr()Ljava/lang/String;
    .registers 1

    .line 334
    sget-object v0, Lcom/codemao/nemo/util/SystemUtil;->header:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/SystemUtil;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/SystemUtil;->header:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const-string v1, "phone"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 169
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_17

    const-string v0, "un_permission"

    goto :goto_2c

    .line 172
    :cond_17
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 173
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 175
    :cond_22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_30} :catch_33

    if-nez v1, :cond_34

    return-object v0

    :catch_33
    nop

    .line 185
    :cond_34
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    return-object v0

    .line 189
    :cond_3f
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/codemao/nemo/util/SprefUtil;->setIMEI(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "phone"

    .line 420
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_8
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 424
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    const-string p0, "un_permission"

    goto :goto_2b

    .line 427
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 428
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    .line 430
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_29

    goto :goto_2b

    :catch_29
    const-string p0, "000000000000000"

    :goto_2b
    return-object p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 3

    .line 520
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 522
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_20

    .line 523
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_2a

    .line 525
    :cond_20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 528
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalHeader()Ljava/lang/String;
    .registers 5

    const-string v0, "model"

    .line 339
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "platform"

    const-string v3, "android"

    .line 341
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    if-nez v2, :cond_17

    const-wide/16 v2, 0x0

    goto :goto_1f

    .line 347
    :cond_17
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 349
    :goto_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "swvc"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 351
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "swvn"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :try_start_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4b .. :try_end_70} :catch_71

    goto :goto_7c

    :catch_71
    move-exception v2

    const-string v3, "UnsupportedEncodingException:"

    .line 357
    invoke-static {v3, v2}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "unknown"

    .line 358
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_7c
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resolution"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "la"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sysv"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "policy"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 366
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v2, "channel"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 370
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCurrentNetType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "net"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/SystemUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "devid"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_dd
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appvn"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getDensity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "density"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 375
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "build"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "origin"

    const-string v2, "nemo"

    .line 376
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    .line 561
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneBrand()Ljava/lang/String;
    .registers 1

    .line 469
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .registers 1

    .line 473
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getPushActivateObservableSource(Ljava/lang/String;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/retrofit/api/SystemService;

    invoke-virtual {v1, v2}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/SystemService;

    new-instance v9, Lcom/codemao/nemo/bean/ActivateRequest;

    .line 314
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getGroupId()Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getIMEI()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    move-object v2, v9

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/codemao/nemo/bean/ActivateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface {v1, v0, v9}, Lcom/codemao/nemo/retrofit/api/SystemService;->activate(Ljava/lang/String;Lcom/codemao/nemo/bean/ActivateRequest;)Lio/reactivex/Observable;

    move-result-object p0

    .line 320
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;->INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;

    sget-object v1, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda3;->INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda3;

    .line 321
    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getScreenResolution()Ljava/lang/String;
    .registers 5

    .line 501
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "x"

    const-string v3, "window"

    const/16 v4, 0x11

    if-ge v1, v4, :cond_37

    .line 505
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    .line 508
    :cond_37
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 509
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 510
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 511
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 512
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5f
    return-object v0
.end method

.method public static getUUID()Ljava/lang/String;
    .registers 3

    .line 325
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBBK()Z
    .registers 2

    .line 565
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLaunchedActivity(Landroid/content/Context;Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/util/ActivityUtils;->activityClassIsLive(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getPushActivateObservableSource$3(Lretrofit2/Response;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codemao/nemo/MainApplication;->isOADUpload:Z

    return-void
.end method

.method private static synthetic lambda$pushOAID$0(Lio/reactivex/ObservableEmitter;ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .registers 3

    if-nez p2, :cond_d

    .line 222
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "获取不到ID"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 225
    :cond_d
    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 227
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$pushOAID$1(Lio/reactivex/ObservableEmitter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v2

    .line 220
    new-instance v3, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result v2

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const v0, 0xf63e4

    if-ne v2, v0, :cond_1f

    const-string v0, "不支持的设备"

    goto :goto_38

    :cond_1f
    const v0, 0xf63e5

    if-ne v2, v0, :cond_27

    const-string v0, "加载配置文件出错"

    goto :goto_38

    :cond_27
    const v0, 0xf63e3

    if-ne v2, v0, :cond_2f

    const-string v0, "不支持的设备厂商"

    goto :goto_38

    :cond_2f
    const v0, 0xf63e7

    if-ne v2, v0, :cond_37

    const-string v0, "反射调用出错"

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 242
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdidInit offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_6a

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdidInit error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 245
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_6a
    return-void
.end method

.method private static synthetic lambda$pushOAID$2(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, ""

    .line 253
    invoke-static {p0}, Lcom/codemao/nemo/util/SystemUtil;->getPushActivateObservableSource(Ljava/lang/String;)V

    return-void
.end method

.method public static pushOAID()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda2;

    sget-object v2, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda4;->INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static setCookie(Ljava/lang/String;)V
    .registers 5

    .line 569
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 570
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 571
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 572
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 573
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BBL-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 574
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p0

    .line 576
    :cond_1c
    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 577
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    if-eqz v2, :cond_3f

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 579
    :cond_3f
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    if-eqz v2, :cond_58

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 582
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "staging-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    return-void
.end method
