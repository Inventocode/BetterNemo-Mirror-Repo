.class public Lcom/codemao/nemo/MainApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "MainApplication.java"


# static fields
.field public static chromeVersion:I = 0x270f

.field public static chromeVersionStr:Ljava/lang/String; = null

.field public static configVO:Lcom/codemao/nemo/bean/ConfigVO; = null

.field private static isInitThirdSdk:Z = false

.field public static realSizePoint:Landroid/graphics/Point;

.field private static sApplication:Lcom/codemao/nemo/MainApplication;


# instance fields
.field public isOADUpload:Z

.field private mDefaultDpi:I

.field private outJumUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/codemao/nemo/MainApplication;->isOADUpload:Z

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/codemao/nemo/MainApplication;->outJumUri:Landroid/net/Uri;

    return-void
.end method

.method private checkIsBBKChannel()V
    .registers 3

    .line 619
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/etc/appchannel/nemobbkchannel.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "bubugao_pre"

    .line 621
    sput-object v0, Lcom/codemao/nemo/util/AppConstants;->localChannel:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method private static createFile(Ljava/io/File;Z)V
    .registers 2

    if-eqz p1, :cond_10

    .line 127
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_10

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_10
    return-void
.end method

.method public static get()Lcom/codemao/nemo/MainApplication;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/nemo/MainApplication;->sApplication:Lcom/codemao/nemo/MainApplication;

    return-object v0
.end method

.method private handleWebViewDir()V
    .registers 9

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    return-void

    .line 423
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/app_webview"

    const-string v3, "/app_hws_webview"

    const-string v4, "/webview_data.lock"

    .line 429
    invoke-virtual {p0, p0}, Lcom/codemao/nemo/MainApplication;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_10b

    const-string v7, "_"

    if-nez v6, :cond_7d

    .line 431
    :try_start_2a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 432
    :cond_34
    invoke-static {v5}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 433
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-static {}, Lcom/codemao/creativecenter/utils/RomUtils;->isHuawei()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 440
    :cond_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static {}, Lcom/codemao/creativecenter/utils/RomUtils;->isHuawei()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_ec
    :goto_ec
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 451
    invoke-static {v2}, Lcom/codemao/nemo/MainApplication;->tryLockOrRecreateFile(Ljava/io/File;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_10a} :catch_10b

    goto :goto_10f

    :catch_10b
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10f
    :goto_10f
    return-void
.end method

.method private initCMAccount()V
    .registers 7

    .line 299
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_12

    goto :goto_41

    .line 301
    :cond_12
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dev"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v3, 0x2

    goto :goto_41

    .line 303
    :cond_22
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "release"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v3, 0x0

    goto :goto_41

    .line 305
    :cond_32
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "staging"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v3, 0x1

    .line 308
    :cond_41
    :goto_41
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->Builder()Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v4, "T5qx9_w0"

    invoke-virtual {v0, p0, v4}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->init(Landroid/content/Context;Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v4, "101477015"

    .line 309
    invoke-virtual {v0, v4}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setQQAppKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v5, "wx5966b00f345eb948"

    .line 310
    invoke-virtual {v0, v5}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setWeChatAppKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setNeedBBKLogin(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v2, "303425e545244852"

    .line 312
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setBbkClientArgument(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v2, "f466d25758674124"

    .line 313
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setBbkClientKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v2, "101cc001"

    .line 314
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setBbkClientId(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setChannel(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setInitX5(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    .line 317
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setDebug(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v3}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setEnv(I)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->build()V

    .line 321
    invoke-static {}, Lcn/codemao/android/share/CodeMaoShare;->newBuilder()Lcn/codemao/android/share/CodeMaoShare$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/codemao/android/share/CodeMaoShare$Builder;->setQQId(Ljava/lang/String;)Lcn/codemao/android/share/CodeMaoShare$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/codemao/android/share/CodeMaoShare$Builder;->setWechatId(Ljava/lang/String;)Lcn/codemao/android/share/CodeMaoShare$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/share/CodeMaoShare$Builder;->build()Lcn/codemao/android/share/CodeMaoShare;

    return-void
.end method

.method private initCrashReport()V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "99806187ba"

    .line 219
    invoke-static {p0, v1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 223
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setAppVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setAppChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getIMEI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setDeviceModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setAppPackage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initCrashUtil(Z)V
    .registers 4

    .line 348
    invoke-static {}, Lcom/codemao/nemo/util/CrashUtil;->get()Lcom/codemao/nemo/util/CrashUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/MainApplication$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/MainApplication$4;-><init>(Lcom/codemao/nemo/MainApplication;)V

    invoke-virtual {v0, p0, v1, p1}, Lcom/codemao/nemo/util/CrashUtil;->init(Landroid/content/Context;Lcom/codemao/nemo/util/CrashUtil$ExceptionCallBack;Z)V

    return-void
.end method

.method private initHttp()V
    .registers 1

    return-void
.end method

.method private initImageLoader()V
    .registers 3

    .line 517
    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 518
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method private initNemoUIConfig()V
    .registers 3

    .line 197
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/NemoUIConfigManager;->setLowAnimationLevel(Z)V

    goto :goto_13

    .line 200
    :cond_d
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/NemoUIConfigManager;->setLowAnimationLevel(Z)V

    :goto_13
    return-void
.end method

.method private initOkhttp()V
    .registers 6

    .line 483
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lokhttp3/Interceptor;

    new-instance v3, Lcom/codemao/nemo/MainApplication$6;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/MainApplication$6;-><init>(Lcom/codemao/nemo/MainApplication;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/giu/xzz/http/RetrofitManager;->init(Landroid/content/Context;ZLjava/lang/String;[Lokhttp3/Interceptor;)V

    return-void
.end method

.method private initPrivacyTransformComplete()V
    .registers 4

    .line 149
    new-instance v0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;-><init>()V

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->syncDebug(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v2, "buyer_privacy"

    .line 152
    invoke-virtual {v0, v2}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->configResultFileName(Ljava/lang/String;)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->configVisitorModel(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableFileResult(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1, p0, v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->init(Landroid/app/Application;Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;)V

    return-void
.end method

.method private initScreenDpi()V
    .registers 3

    .line 206
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getDefaultDisplayDensity()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/MainApplication;->mDefaultDpi:I

    .line 207
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/codemao/nemo/MainApplication;->realSizePoint:Landroid/graphics/Point;

    const-string v0, "window"

    .line 208
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 209
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/MainApplication;->realSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 210
    sget-object v0, Lcom/codemao/nemo/MainApplication;->sApplication:Lcom/codemao/nemo/MainApplication;

    iget v1, p0, Lcom/codemao/nemo/MainApplication;->mDefaultDpi:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method private isNewVersion()Lcom/codemao/nemo/bean/ConfigVO;
    .registers 2

    .line 473
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    move-result-object v0

    return-object v0
.end method

.method private registerActivityLifecycleCallbacks()V
    .registers 4

    .line 326
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;

    new-instance v2, Lcom/codemao/nemo/MainApplication$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/MainApplication$3;-><init>(Lcom/codemao/nemo/MainApplication;)V

    invoke-direct {v1, v2}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;-><init>(Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private shouldInit()Z
    .registers 2

    .line 527
    invoke-static {p0}, Lcom/codemao/nemo/util/ProcessHelperKt;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static tryLockOrRecreateFile(Ljava/io/File;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 111
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V

    goto :goto_2f

    .line 113
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/MainApplication;->createFile(Ljava/io/File;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_2f

    :catch_1d
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 121
    :cond_2c
    invoke-static {p0, v0}, Lcom/codemao/nemo/MainApplication;->createFile(Ljava/io/File;Z)V

    :goto_2f
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 141
    sput-object p0, Lcom/codemao/nemo/MainApplication;->sApplication:Lcom/codemao/nemo/MainApplication;

    .line 142
    invoke-static {}, Lcom/codemao/nemo/util/FileProviderHookUtil;->attachContext()V

    .line 143
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 144
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getCurEnv()Ljava/lang/String;
    .registers 2

    .line 171
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    if-nez v0, :cond_7

    const-string v0, "release"

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getDefaultDpi()I
    .registers 2

    .line 613
    iget v0, p0, Lcom/codemao/nemo/MainApplication;->mDefaultDpi:I

    return v0
.end method

.method public getOutJumUri()Landroid/net/Uri;
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/MainApplication;->outJumUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v1, "activity"

    .line 463
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 464
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 465
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 466
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_2b
    return-object v0
.end method

.method public initAfterAgreement()V
    .registers 11

    .line 233
    sget-boolean v0, Lcom/codemao/nemo/MainApplication;->isInitThirdSdk:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 236
    sput-boolean v0, Lcom/codemao/nemo/MainApplication;->isInitThirdSdk:Z

    .line 238
    invoke-static {p0}, Lcom/codemao/nemo/util/FileProviderHookUtil;->initProvider(Landroid/content/Context;)V

    .line 240
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initNemoUIConfig()V

    .line 241
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 242
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->isNewVersion()Lcom/codemao/nemo/bean/ConfigVO;

    move-result-object v1

    sput-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    const/4 v1, 0x0

    .line 243
    invoke-static {v1}, Lcom/giu/xzz/utils/Logger;->init(Z)V

    .line 244
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/codemao/nemo/util/ActivityUtils;->init(Landroid/app/Application;)V

    .line 245
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initHttp()V

    .line 246
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initOkhttp()V

    .line 247
    invoke-static {}, Lcom/codemao/nemo/util/RomUtil;->initRom()V

    .line 248
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    if-eqz v2, :cond_32

    .line 249
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 251
    :cond_32
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initScreenDpi()V

    .line 252
    sget-object v2, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getCurUserEyeshieldMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nemo/commonui/NemoUIConfigManager;->setOpenEyeshieldMode(Z)V

    .line 254
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->checkIsBBKChannel()V

    .line 255
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->registerActivityLifecycleCallbacks()V

    .line 256
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v4

    sget-object v2, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v8

    const/4 v9, 0x0

    const-string v7, "nemo"

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/codemao/creativecenter/CreativeCenterUtils;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/MainApplication$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/MainApplication$2;-><init>(Lcom/codemao/nemo/MainApplication;)V

    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setEventLogCallBack(Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/MainApplication$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/MainApplication$1;-><init>(Lcom/codemao/nemo/MainApplication;)V

    .line 267
    invoke-virtual {v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setErrorLogCallBack(Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    .line 279
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initImageLoader()V

    .line 280
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initCMAccount()V

    .line 281
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initUserInfo()V

    .line 284
    invoke-static {p0, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->init(Landroid/content/Context;Z)V

    .line 286
    invoke-direct {p0, v0}, Lcom/codemao/nemo/MainApplication;->initCrashUtil(Z)V

    .line 287
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initCrashReport()V

    .line 288
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->init(Landroid/content/Context;Z)V

    .line 289
    invoke-virtual {p0}, Lcom/codemao/nemo/MainApplication;->initX5()V

    .line 290
    sget-object v2, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-virtual {v2, p0, v1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->init(Landroid/content/Context;Z)V

    const v3, 0x7f12001e

    .line 291
    invoke-virtual {p0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v4

    const-string v5, "com.codemao.nemo"

    invoke-virtual {v2, v3, v5, v4}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->setCommonProperties(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "62c678ee05844627b5dc9091"

    const-string v4, ""

    invoke-static {p0, v3, v2, v0, v4}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled(Z)V

    return-void
.end method

.method public initX5()V
    .registers 5

    .line 358
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 361
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const-string v1, "Chrome"

    .line 362
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/codemao/nemo/MainApplication;->chromeVersionStr:Ljava/lang/String;

    const-string v2, "."

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 365
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    if-lez v2, :cond_66

    .line 367
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 369
    sput v0, Lcom/codemao/nemo/MainApplication;->chromeVersion:I

    const/16 v1, 0x31

    if-ge v0, v1, :cond_66

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "use_speedy_classloader"

    .line 372
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "use_dexloader_service"

    .line 373
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->initTbsSettings(Ljava/util/Map;)V

    .line 375
    new-instance v0, Lcom/codemao/nemo/MainApplication$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/MainApplication$5;-><init>(Lcom/codemao/nemo/MainApplication;)V

    .line 391
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_66

    :catch_66
    :cond_66
    return-void
.end method

.method public isIsManager()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .registers 3

    .line 176
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 177
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->initPrivacyTransformComplete()V

    .line 178
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->shouldInit()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 179
    sput-boolean v0, Lcom/codemao/nemo/MainApplication;->isInitThirdSdk:Z

    .line 180
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "62c678ee05844627b5dc9091"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 182
    invoke-direct {p0}, Lcom/codemao/nemo/MainApplication;->handleWebViewDir()V

    .line 183
    invoke-virtual {p0}, Lcom/codemao/nemo/MainApplication;->initAfterAgreement()V

    .line 186
    :cond_24
    invoke-virtual {p0}, Lcom/codemao/nemo/MainApplication;->otherInit()V

    .line 193
    invoke-static {p0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/app/Application;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 542
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 543
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 545
    :cond_d
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 550
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x14

    if-eq p1, v0, :cond_e

    const/16 v0, 0x50

    if-ne p1, v0, :cond_15

    .line 552
    :cond_e
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 554
    :cond_15
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->onTrimMemory(I)V

    .line 556
    :cond_1c
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method

.method public otherInit()V
    .registers 9

    const-string/jumbo v0, "环境"

    const-string/jumbo v1, "进入选择"

    .line 629
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    .line 632
    sget-object v2, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    const-string/jumbo v3, "选择的环境:"

    if-nez v2, :cond_4a

    .line 648
    :try_start_12
    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_2e

    goto :goto_8f

    .line 651
    :catch_2e
    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 655
    :cond_4a
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_c0

    goto :goto_80

    :sswitch_59
    const-string v5, "release"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v4, 0x3

    goto :goto_80

    :sswitch_63
    const-string v5, "test"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v4, 0x1

    goto :goto_80

    :sswitch_6d
    const-string v5, "dev"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v4, 0x2

    goto :goto_80

    :sswitch_77
    const-string v5, "staging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v4, 0x0

    :cond_80
    :goto_80
    if-eqz v4, :cond_8d

    if-eq v4, v7, :cond_8a

    if-eq v4, v6, :cond_87

    goto :goto_8f

    .line 663
    :cond_87
    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->DEV:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    goto :goto_8f

    .line 660
    :cond_8a
    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    goto :goto_8f

    .line 657
    :cond_8d
    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->STAGING:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    .line 671
    :goto_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    .line 673
    sget-object v0, Lcom/ljwx/basedialog/dialog/BaseDialog;->Companion:Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;

    const v1, 0x7f0d011f

    invoke-virtual {v0, v1}, Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;->setCommonLayout(I)V

    .line 674
    sget-object v0, Lcom/ljwx/baseapp/BasePopupLoading;->Companion:Lcom/ljwx/baseapp/BasePopupLoading$Companion;

    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/BasePopupLoading$Companion;->setLayout(I)V

    .line 675
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->INSTANCE:Lcom/codemao/nemo/util/RootUtils;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/util/RootUtils;->checkRoot(Landroid/content/Context;)V

    return-void

    :sswitch_data_c0
    .sparse-switch
        -0x7119e7c5 -> :sswitch_77
        0x18415 -> :sswitch_6d
        0x364492 -> :sswitch_63
        0x41012807 -> :sswitch_59
    .end sparse-switch
.end method

.method public setOutJumUri(Landroid/net/Uri;)V
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/codemao/nemo/MainApplication;->outJumUri:Landroid/net/Uri;

    return-void
.end method
