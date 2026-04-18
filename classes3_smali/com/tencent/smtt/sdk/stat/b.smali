.class public Lcom/tencent/smtt/sdk/stat/b;
.super Ljava/lang/Object;


# static fields
.field public static a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "65dRa93L"

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/stat/b;->a:[B
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    if-eqz p0, :cond_64

    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    if-eqz p0, :cond_64

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    if-gtz v3, :cond_34

    return-object v0

    :cond_34
    const/4 v3, 0x0

    :goto_35
    array-length v4, p0

    if-ge v3, v4, :cond_5b

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    if-lez v3, :cond_4b

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_55

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_64
    return-object v0
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/tencent/smtt/sdk/stat/b;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(LMTT/ThirdAppInfoNew;Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/tencent/smtt/sdk/stat/b$1;

    const-string v1, "HttpUtils"

    invoke-direct {v0, v1, p1, p0}, Lcom/tencent/smtt/sdk/stat/b$1;-><init>(Ljava/lang/String;Landroid/content/Context;LMTT/ThirdAppInfoNew;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/stat/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;)V

    goto :goto_69

    :cond_14
    const-string v0, "rmfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    :try_start_1c
    const-string v0, "tbs_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received command,delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_50
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5c} :catch_5d

    goto :goto_69

    :catch_5d
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    goto :goto_69

    :cond_62
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsPVConfig;->putData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V
    .registers 15

    const-string v0, ""

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v1

    const-string v2, "SET_SENDREQUEST_AND_UPLOAD"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string p0, "sdkreport"

    const-string p1, "[HttpUtils.doReport] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_47} :catch_6e

    :try_start_47
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getQQBuildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getQQBuildNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_69} :catch_6a

    goto :goto_73

    :catch_6a
    move-exception v3

    goto :goto_70

    :cond_6c
    move-object v2, v0

    goto :goto_73

    :catch_6e
    move-exception v3

    move-object v2, v0

    :goto_70
    invoke-static {v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    :try_start_73
    new-instance v3, LMTT/ThirdAppInfoNew;

    invoke-direct {v3}, LMTT/ThirdAppInfoNew;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/smtt/utils/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/m;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "GMT+08"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LMTT/ThirdAppInfoNew;->sTime:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, LMTT/ThirdAppInfoNew;->sVersionCode:I

    const-string v4, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {p0, v4}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b9

    iput-object v4, v3, LMTT/ThirdAppInfoNew;->sMetaData:Ljava/lang/String;

    :cond_b9
    iput-object p1, v3, LMTT/ThirdAppInfoNew;->sGuid:Ljava/lang/String;

    if-eqz p5, :cond_c2

    iput-object p2, v3, LMTT/ThirdAppInfoNew;->sQua2:Ljava/lang/String;

    iput-boolean p8, v3, LMTT/ThirdAppInfoNew;->bIsSandboxMode:Z

    goto :goto_c8

    :cond_c2
    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, LMTT/ThirdAppInfoNew;->sQua2:Ljava/lang/String;

    :goto_c8
    iput-object p3, v3, LMTT/ThirdAppInfoNew;->sLc:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_e4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e4

    iput-object p2, v3, LMTT/ThirdAppInfoNew;->sImei:Ljava/lang/String;

    :cond_e4
    if-eqz p3, :cond_ee

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ee

    iput-object p3, v3, LMTT/ThirdAppInfoNew;->sImsi:Ljava/lang/String;

    :cond_ee
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f6

    iput-object v4, v3, LMTT/ThirdAppInfoNew;->sAndroidID:Ljava/lang/String;

    :cond_f6
    if-eqz p1, :cond_100

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_100

    iput-object p1, v3, LMTT/ThirdAppInfoNew;->sMac:Ljava/lang/String;

    :cond_100
    int-to-long p1, p4

    iput-wide p1, v3, LMTT/ThirdAppInfoNew;->iPv:J

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-eqz p1, :cond_121

    if-eqz p5, :cond_11e

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreFormOwn()Z

    move-result p1

    if-eqz p1, :cond_117

    const/4 p1, 0x2

    iput p1, v3, LMTT/ThirdAppInfoNew;->iCoreType:I

    goto :goto_119

    :cond_117
    iput p3, v3, LMTT/ThirdAppInfoNew;->iCoreType:I

    :goto_119
    if-eqz p8, :cond_12b

    :goto_11b
    iput p2, v3, LMTT/ThirdAppInfoNew;->iCoreType:I

    goto :goto_12b

    :cond_11e
    iput v1, v3, LMTT/ThirdAppInfoNew;->iCoreType:I

    goto :goto_12b

    :cond_121
    if-eqz p5, :cond_124

    const/4 v1, 0x1

    :cond_124
    iput v1, v3, LMTT/ThirdAppInfoNew;->iCoreType:I

    if-eqz p5, :cond_12b

    if-eqz p8, :cond_12b

    goto :goto_11b

    :cond_12b
    :goto_12b
    iput-object v2, v3, LMTT/ThirdAppInfoNew;->sAppVersionName:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, LMTT/ThirdAppInfoNew;->sAppSignature:Ljava/lang/String;

    if-nez p5, :cond_13d

    iput-wide p6, v3, LMTT/ThirdAppInfoNew;->sWifiConnectedTime:J

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, v3, LMTT/ThirdAppInfoNew;->localCoreVersion:I

    :cond_13d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tencent/smtt/sdk/stat/b;->a(LMTT/ThirdAppInfoNew;Landroid/content/Context;)V
    :try_end_144
    .catchall {:try_start_73 .. :try_end_144} :catchall_145

    goto :goto_149

    :catchall_145
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :goto_149
    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string v2, "gzip"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_18
    move-object v1, p0

    goto :goto_30

    :cond_1a
    if-eqz p0, :cond_30

    const-string v2, "deflate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_85
    .catchall {:try_start_1 .. :try_end_2f} :catchall_82

    goto :goto_18

    :cond_30
    :goto_30
    :try_start_30
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_80
    .catchall {:try_start_30 .. :try_end_35} :catchall_bf

    const/16 v0, 0x80

    :try_start_37
    new-array v0, v0, [B

    :goto_39
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_39

    :cond_45
    if-eqz p2, :cond_59

    new-instance p1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/utils/g;->c([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_67

    :cond_59
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/g;->b([BLjava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_66} :catch_7c
    .catchall {:try_start_37 .. :try_end_66} :catchall_78

    move-object p1, v0

    :goto_67
    :try_start_67
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_a0

    :catch_73
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    goto :goto_a0

    :catchall_78
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_c0

    :catch_7c
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_87

    :catch_80
    move-exception p0

    goto :goto_87

    :catchall_82
    move-exception p0

    move-object v1, v0

    goto :goto_c0

    :catch_85
    move-exception p0

    move-object v1, v0

    :goto_87
    :try_start_87
    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_bf

    if-eqz v0, :cond_94

    :try_start_8c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    if-eqz v1, :cond_9e

    :try_start_96
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_9e
    :goto_9e
    const-string p1, ""

    :goto_a0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getResponseFromConnection,response="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";isUseRSA="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "HttpUtils"

    invoke-static {p2, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_bf
    move-exception p0

    :goto_c0
    if-eqz v0, :cond_ca

    :try_start_c2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception p1

    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ca
    if-eqz v1, :cond_d4

    :try_start_cc
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d4

    :catch_d0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_d4
    :goto_d4
    throw p0
.end method

.method static synthetic b(LMTT/ThirdAppInfoNew;Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/stat/b;->c(LMTT/ThirdAppInfoNew;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_38

    aget-object v3, p1, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_40

    :try_start_1e
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_35

    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {p0, v4, v3}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v3

    :try_start_32
    invoke-static {v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_38
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->commit()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :goto_44
    return-void
.end method

.method private static c(LMTT/ThirdAppInfoNew;Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 14

    const-string v0, "com.tencent.mm"

    const-string v1, "sdkreport"

    const-string v2, ":"

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "APPNAME"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TIME"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "QUA2"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sQua2:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "LC"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sLc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "GUID"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sGuid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "IMEI"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sImei:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "IMSI"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sImsi:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "MAC"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sMac:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "PV"

    iget-wide v5, p0, LMTT/ThirdAppInfoNew;->iPv:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "CORETYPE"

    iget v5, p0, LMTT/ThirdAppInfoNew;->iCoreType:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "APPVN"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sAppVersionName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "APPMETADATA"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sMetaData:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "VERSION_CODE"

    iget v5, p0, LMTT/ThirdAppInfoNew;->sVersionCode:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CPU"

    iget-object v5, p0, LMTT/ThirdAppInfoNew;->sCpu:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_73} :catch_15f

    const-string v5, "com.tencent.mobileqq"

    const-string v6, "SIGNATURE"

    if-nez v4, :cond_96

    :try_start_79
    iget-object v4, p0, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    const-string v4, "com.tencent.tbs"

    iget-object v7, p0, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    goto :goto_96

    :cond_8c
    iget-object v2, p0, LMTT/ThirdAppInfoNew;->sAppSignature:Ljava/lang/String;

    if-nez v2, :cond_92

    const-string v2, "0"

    :cond_92
    :goto_92
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d2

    :cond_96
    :goto_96
    new-instance v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    invoke-direct {v4, p1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->readTbsDownloadInfo(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getNeedDownloadCode()I

    move-result v7

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getStartDownloadCode()I

    move-result v8

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getNeedDownloadReturn()I

    move-result v9

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getLocalCoreVersion()I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_92

    :goto_d2
    const-string v2, "PROTOCOL_VERSION"

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ANDROID_ID"

    iget-object v4, p0, LMTT/ThirdAppInfoNew;->sAndroidID:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_e3} :catch_15f

    const-string v4, "HOST_COREVERSION"

    if-eqz v2, :cond_ef

    :try_start_e7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCoreVersions(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_ff

    :cond_ef
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getCoreShareDecoupleCoreVersionByContext(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "DECOUPLE_COREVERSION"

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getCoreShareDecoupleCoreVersionByContext(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_ff
    const-string v2, "WIFICONNECTEDTIME"

    iget-wide v6, p0, LMTT/ThirdAppInfoNew;->sWifiConnectedTime:J

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "CORE_EXIST"

    iget v4, p0, LMTT/ThirdAppInfoNew;->localCoreVersion:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget v2, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->mLoadErrorCode:I

    iget v4, p0, LMTT/ThirdAppInfoNew;->localCoreVersion:I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_111} :catch_15f

    const-string v6, "TBS_ERROR_CODE"

    if-gtz v4, :cond_121

    :try_start_115
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadInterruptCode()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_124

    :cond_121
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_124
    const/4 v4, -0x1

    if-ne v2, v4, :cond_12c

    const-string v2, "ATTENTION: Load errorCode missed!"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12c
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->uploadDownloadInterruptCodeIfNeeded(Landroid/content/Context;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_133} :catch_15f

    :try_start_133
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getTID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15e

    iget-object p1, p0, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13f} :catch_15e

    const/4 v1, 0x0

    const-string v2, "TIDTYPE"

    const-string v4, "TID"

    if-eqz p1, :cond_151

    :try_start_146
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getTID()Ljava/lang/String;

    move-result-object p0

    :goto_14a
    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_15e

    :cond_151
    iget-object p0, p0, LMTT/ThirdAppInfoNew;->sAppName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15e

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getTID()Ljava/lang/String;

    move-result-object p0
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_15d} :catch_15e

    goto :goto_14a

    :catch_15e
    :cond_15e
    :goto_15e
    return-object v3

    :catch_15f
    const-string p0, "getPostData exception!"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
