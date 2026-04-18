.class public Lcom/tencent/smtt/sdk/TbsDownloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_DISABLE_DOWNLOAD:Z = false

.field public static DOWNLOAD_OVERSEA_TBS:Z = false

.field public static final LOGTAG:Ljava/lang/String; = "TbsDownload"

.field public static final TBS_METADATA:Ljava/lang/String; = "com.tencent.mm.BuildInfo.CLIENT_VERSION"

.field static a:Z = false

.field private static b:Ljava/lang/String; = null

.field private static c:Landroid/content/Context; = null

.field private static d:Landroid/os/Handler; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/Object; = null

.field private static g:Lcom/tencent/smtt/sdk/l; = null

.field private static h:Landroid/os/HandlerThread; = null

.field private static i:Z = false

.field private static j:Z = false

.field private static k:Z = false

.field private static l:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected static a(I)Ljava/io/File;
    .registers 9

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_6a

    aget-object v5, v0, v4

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_67

    :cond_1b
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v5, v7, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const-string v6, "x5.oversea.tbs.org"

    goto :goto_33

    :cond_2f
    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v6

    :goto_33
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "TbsDownload"

    if-eqz v5, :cond_62

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v5

    if-ne v5, p0, :cond_5f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local tbs version fond,path = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_5f
    const-string v5, "version is not match"

    goto :goto_64

    :cond_62
    const-string v5, "can not find local backup core file"

    :goto_64
    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_6a
    :goto_6a
    return-object v3
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static a(Z)Lorg/json/JSONArray;
    .registers 12

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_64

    aget-object v5, v1, v4

    const/4 v6, 0x4

    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8, v5, v6, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_2e

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "x5.oversea.tbs.org"

    goto :goto_2a

    :cond_26
    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v6

    :goto_2a
    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_2e
    const-string v6, "x5.tbs.decouple"

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_61

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_61

    const/4 v7, 0x0

    :goto_47
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5b

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v8, v5

    if-nez v10, :cond_58

    const/4 v7, 0x1

    goto :goto_5c

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_5b
    const/4 v7, 0x0

    :goto_5c
    if-nez v7, :cond_61

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_64
    return-object v0
.end method

.method private static a(ZZZ)Lorg/json/JSONObject;
    .registers 19

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsDownloader.postJsonData]isQuery: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " forDecoupleCore is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TbsDownload"

    invoke-static {v4, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    if-eqz v10, :cond_50

    move-object v12, v10

    goto :goto_51

    :cond_50
    move-object v12, v11

    :goto_51
    :try_start_51
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_61} :catch_63

    move-object v10, v0

    goto :goto_67

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_67
    :goto_67
    if-eqz v10, :cond_6a

    move-object v11, v10

    :cond_6a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_6f
    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v10

    const-string v13, "tpatch_num"

    invoke-virtual {v10, v13}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v10
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_2ce

    const/4 v13, 0x5

    const-string v14, "REQUEST_TPATCH"

    const/4 v15, 0x0

    if-ge v10, v13, :cond_86

    const/4 v10, 0x1

    :try_start_82
    invoke-virtual {v0, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_89

    :cond_86
    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_89
    const-string v10, "TIMEZONEID"

    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "COUNTRYISO"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tencent/smtt/utils/b;->d()Z

    move-result v10

    if-eqz v10, :cond_a0

    const-string v10, "REQUEST_64"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_a1

    :cond_a0
    const/4 v11, 0x1

    :goto_a1
    const-string v10, "PROTOCOLVERSION"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_ca

    sget-boolean v10, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-eqz v10, :cond_ba

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10, v15}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v10

    goto/16 :goto_15d

    :cond_ba
    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "tbs_download_version"

    invoke-interface {v10, v11, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_15d

    :cond_ca
    if-eqz v3, :cond_d7

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v10

    goto :goto_e1

    :cond_d7
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/tencent/smtt/sdk/o;->m(Landroid/content/Context;)I

    move-result v10

    :goto_e1
    if-nez v10, :cond_131

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v11

    sget-object v12, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/tencent/smtt/sdk/o;->l(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_131

    const/4 v10, -0x1

    const-string v11, "com.tencent.mobileqq"

    sget-object v12, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_131

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->clear()V

    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v11

    iget-object v12, v11, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v13, "tbs_local_core_version"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getLocalCoreVersionMoreTimes()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_131

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v10

    :cond_131
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TbsDownloader.postJsonData] tbsLocalVersion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isDownloadForeground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_15d

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v11

    sget-object v12, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/tencent/smtt/sdk/o;->l(Landroid/content/Context;)Z

    move-result v11
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_159} :catch_2ce

    if-eqz v11, :cond_15c

    goto :goto_15d

    :cond_15c
    const/4 v10, 0x0

    :cond_15d
    :goto_15d
    const-string v11, "FUNCTION"

    if-eqz v1, :cond_166

    const/4 v12, 0x2

    :try_start_162
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_16e

    :cond_166
    if-nez v10, :cond_16a

    const/4 v12, 0x0

    goto :goto_16b

    :cond_16a
    const/4 v12, 0x1

    :goto_16b
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_16e
    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_198

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->g()Lorg/json/JSONArray;

    move-result-object v1

    const-string v11, "TBSVLARR"

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v11, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v12, "last_thirdapp_sendrequest_coreversion"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-eqz v1, :cond_1b4

    const-string v1, "THIRDREQ"

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1b4

    :cond_198
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Z)Lorg/json/JSONArray;

    move-result-object v11

    sget-object v12, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v12}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1b4

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-eqz v12, :cond_1b4

    if-nez v10, :cond_1b4

    if-eqz v1, :cond_1b4

    const-string v1, "TBSBACKUPARR"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b4
    :goto_1b4
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v11, "APPN"

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "APPVN"

    iget-object v11, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "app_versionname"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "APPVC"

    iget-object v11, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "app_versioncode"

    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "APPMETA"

    iget-object v11, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "app_metadata"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TBSSDKV"

    const v11, 0xabbf

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "TBSV"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "DOWNLOADDECOUPLECORE"

    if-eqz v3, :cond_202

    const/4 v11, 0x1

    goto :goto_203

    :cond_202
    const/4 v11, 0x0

    :goto_203
    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v11, "tbs_downloaddecouplecore"

    if-eqz v3, :cond_20e

    const/4 v12, 0x1

    goto :goto_20f

    :cond_20e
    const/4 v12, 0x0

    :goto_20f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v10, :cond_226

    const-string v1, "TBSBACKUPV"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    invoke-virtual {v5, v3}, Lcom/tencent/smtt/sdk/l;->c(Z)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_226
    const-string v1, "CPU"

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "UA"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "IMSI"

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "IMEI"

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ANDROID_ID"

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GUID"

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_25e} :catch_2ce

    if-nez v1, :cond_285

    const-string v1, "STATUS"

    if-eqz v10, :cond_273

    :try_start_264
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_26e

    const/4 v3, 0x0

    goto :goto_26f

    :cond_26e
    const/4 v3, 0x1

    :goto_26f
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_276

    :cond_273
    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_276
    const-string v1, "TBSDV"

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_285
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "request_full_package"

    invoke-interface {v1, v3, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v5, "can_unlzma"

    invoke-static {v3, v5, v13}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a8

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_2a8

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2a9

    :cond_2a8
    const/4 v3, 0x0

    :goto_2a9
    if-eqz v3, :cond_2af

    const/4 v3, 0x1

    xor-int/lit8 v15, v1, 0x1

    goto :goto_2b0

    :cond_2af
    const/4 v3, 0x1

    :goto_2b0
    if-eqz v15, :cond_2b7

    const-string v1, "REQUEST_LZMA"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2b7
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c6

    const-string v1, "OVERSEA"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2c7

    :cond_2c6
    const/4 v3, 0x1

    :goto_2c7
    if-eqz v2, :cond_2ce

    const-string v1, "DOWNLOAD_FOREGROUND"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_2ce} :catch_2ce

    :catch_2ce
    :cond_2ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsDownloader.postJsonData] jsonData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)V
    .registers 12

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const-string v4, "host check failed,packageName = "

    const-string v5, "TbsDownload"

    const/4 v6, 0x1

    if-ge v3, v1, :cond_79

    aget-object v7, v0, v3

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_76

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9, v7, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_3d

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :cond_3d
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add CoreVersionToJsonData,version+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is in black list"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :cond_5f
    const/4 v4, 0x0

    :goto_60
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_70

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    if-ne v5, v8, :cond_6d

    goto :goto_71

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_70
    const/4 v6, 0x0

    :goto_71
    if-nez v6, :cond_76

    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_79
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_7f
    if-ge v3, v1, :cond_cb

    aget-object v7, v0, v3

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_c8

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9, v7, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_b0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_b0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    :cond_b0
    const/4 v7, 0x0

    :goto_b1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_c2

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    if-ne v9, v8, :cond_bf

    const/4 v7, 0x1

    goto :goto_c3

    :cond_bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_b1

    :cond_c2
    const/4 v7, 0x0

    :goto_c3
    if-nez v7, :cond_c8

    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_c8
    :goto_c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_cb
    return-void
.end method

.method private static a(ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;Z)V
    .registers 5

    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.queryConfig]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_18

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_18
    const/4 p1, 0x0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "tbs_downloaddecouplecore"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method static a(Landroid/content/Context;I)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le p0, v1, :cond_17

    if-lez p1, :cond_17

    const p0, 0xb03a

    if-ge p1, p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .registers 9

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v3, :cond_11

    const/16 p0, -0x66

    :goto_d
    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return v2

    :cond_11
    sget-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-nez v3, :cond_24

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->c()Z

    move-result v3

    if-nez v3, :cond_24

    return v2

    :cond_24
    iget-object v3, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "is_oversea"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "TbsDownload"

    if-nez v3, :cond_68

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.tencent.mm"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string p1, "needDownload-oversea is true, but not WX"

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_46
    iget-object v3, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sput-boolean p1, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needDownload-first-called--isoversea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_97

    const/16 p0, 0x10

    if-eq v1, p0, :cond_97

    const/16 p0, 0x11

    if-eq v1, p0, :cond_97

    const/16 p0, 0x12

    if-eq v1, p0, :cond_97

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "needDownload- return false,  because of  version is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", and overea"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x67

    goto/16 :goto_d

    :cond_97
    iget-object p0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string p1, "device_cpuabi"

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c7

    :try_start_a8
    const-string p0, "i686|mips|x86_64"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    sget-object p1, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    nop

    :goto_b6
    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_c7

    const-string p0, "can not support x86 devices!!"

    invoke-static {v5, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x68

    goto/16 :goto_d

    :cond_c7
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;ZZ)Z
    .registers 25

    invoke-static/range {p0 .. p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/e;->a()Lcom/tencent/smtt/sdk/e;

    move-result-object v1

    new-instance v2, Lcom/tencent/smtt/sdk/TbsDownloader$1;

    invoke-direct {v2, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$1;-><init>(Lcom/tencent/smtt/sdk/TbsDownloadConfig;)V

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/tencent/smtt/sdk/e;->a(ILcom/tencent/smtt/sdk/e$a;)V

    const/4 v1, 0x0

    if-nez p1, :cond_1f7

    iget-object v3, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "app_versionname"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "app_versioncode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "app_metadata"

    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v8

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v10, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v9, v10}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[TbsDownloader.needSendQueryRequest] appVersionName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " oldAppVersionName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " appVersionCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " oldAppVersionCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " appMetadata="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " oldAppVersionMetadata="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TbsDownload"

    invoke-static {v11, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v10, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v14, "last_check"

    const-wide/16 v1, 0x0

    move-object/from16 v16, v7

    invoke-interface {v10, v14, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TbsDownloader.needSendQueryRequest] timeLastCheck="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " timeNow="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_cf

    iget-object v10, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TbsDownloader.needSendQueryRequest] hasLaskCheckKey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_cf

    cmp-long v10, v6, v1

    if-nez v10, :cond_cf

    move-wide v6, v12

    :cond_cf
    iget-object v10, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v14, "last_request_success"

    invoke-interface {v10, v14, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    iget-object v10, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v5

    const-string v5, "count_request_fail_in_24hours"

    invoke-interface {v10, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retryInterval = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " s"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getEmergentCoreVersion()I

    move-result v0

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_download_version"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sub-long v6, v12, v6

    const-wide/16 v20, 0x3e8

    mul-long v1, v1, v20

    cmp-long v10, v6, v1

    if-lez v10, :cond_126

    goto/16 :goto_1f7

    :cond_126
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    sget-object v11, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v10

    if-le v0, v10, :cond_136

    if-le v0, v5, :cond_136

    goto/16 :goto_1f7

    :cond_136
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_151

    const-wide/16 v10, 0x0

    cmp-long v0, v14, v10

    if-lez v0, :cond_151

    sub-long/2addr v12, v14

    cmp-long v0, v12, v1

    if-lez v0, :cond_151

    const-wide/16 v0, 0xb

    cmp-long v2, v18, v0

    if-gez v2, :cond_151

    goto/16 :goto_1f7

    :cond_151
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_172

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_172

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->e()Z

    move-result v0

    if-nez v0, :cond_172

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->d(Landroid/content/Context;)V

    goto/16 :goto_1f7

    :cond_172
    if-eqz v16, :cond_18b

    if-eqz v8, :cond_18b

    if-eqz v9, :cond_18b

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    if-ne v8, v4, :cond_1f7

    move-object/from16 v1, v17

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f4

    goto :goto_1f7

    :cond_18b
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeNow - timeLastCheck is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " TbsShareManager.findCoreForThirdPartyApp(sAppContext) is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sendRequestWithSameHostCoreVersion() is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->e()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " appVersionName is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " appVersionCode is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appMetadata is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " oldAppVersionName is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " oldAppVersionCode is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " oldAppVersionMetadata is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f5

    :cond_1f4
    const/4 v1, 0x0

    :goto_1f5
    const/4 v2, 0x0

    goto :goto_1f9

    :cond_1f7
    :goto_1f7
    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_1f9
    if-nez v2, :cond_220

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_220

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v3, -0x77

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v3, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :cond_220
    return v2
.end method

.method private static a(Ljava/lang/String;IZZZ)Z
    .registers 37
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.readResponse] response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "isNeedInstall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v6, :cond_4b

    if-eqz v2, :cond_3e

    const/16 v0, -0x6c

    goto :goto_40

    :cond_3e
    const/16 v0, -0xd0

    :goto_40
    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.readResponse] return #1,response is empty..."

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_4b
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "RET"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_79

    if-eqz v2, :cond_5d

    const/16 v1, -0x6d

    goto :goto_5f

    :cond_5d
    const/16 v1, -0xd1

    :goto_5f
    invoke-virtual {v5, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.readResponse] return #2,returnCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_79
    const-string v0, "RESPONSECODE"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "DOWNLOADURL"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "URLLIST"

    const-string v11, ""

    invoke-virtual {v6, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "TBSAPKSERVERVERSION"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v0, "DOWNLOADMAXFLOW"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v0, "DOWNLOAD_MIN_FREE_SPACE"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v0, "DOWNLOAD_SUCCESS_MAX_RETRYTIMES"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v0, "DOWNLOAD_FAILED_MAX_RETRYTIMES"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v0, "DOWNLOAD_SINGLE_TIMEOUT"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v0, "TBSAPKFILESIZE"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    const-string v0, "RETRY_INTERVAL"

    move-object/from16 v21, v8

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v0, "FLOWCTR"

    const/4 v7, -0x1

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    :try_start_c8
    const-string v0, "USEBBACKUPVER"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_ce} :catch_cf

    goto :goto_d0

    :catch_cf
    const/4 v0, 0x0

    :goto_d0
    iget-object v8, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v4, "use_backup_version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_124

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz v0, :cond_124

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_124

    :try_start_e9
    const-string v0, "BUGLY"

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v8

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v3, "bugly_switch.txt"
    :try_end_f8
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_106

    move/from16 v24, v15

    const/4 v15, 0x1

    if-ne v0, v15, :cond_ff

    const/4 v0, 0x1

    goto :goto_100

    :cond_ff
    const/4 v0, 0x0

    :goto_100
    :try_start_100
    invoke-virtual {v8, v4, v3, v0}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    goto :goto_126

    :catchall_104
    move-exception v0

    goto :goto_109

    :catchall_106
    move-exception v0

    move/from16 v24, v15

    :goto_109
    const-string v3, "qbsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "throwable:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_126

    :cond_124
    move/from16 v24, v15

    :goto_126
    if-eqz v2, :cond_1f1

    :try_start_128
    const-string v0, "TEMPLATESWITCH"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_135

    const/4 v3, 0x1

    goto :goto_136

    :cond_135
    const/4 v3, 0x0

    :goto_136
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v4

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v15, "cookie_switch.txt"

    invoke-virtual {v4, v8, v15, v3}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string v4, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "useCookieCompatiable:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_15d

    const/4 v3, 0x1

    goto :goto_15e

    :cond_15d
    const/4 v3, 0x0

    :goto_15e
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v4

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v15, "disable_get_apk_version_switch.txt"

    invoke-virtual {v4, v8, v15, v3}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string v4, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "disableGetApkVersionByReadFile:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_185

    const/4 v3, 0x1

    goto :goto_186

    :cond_185
    const/4 v3, 0x0

    :goto_186
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v4

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v15, "disable_unpreinit.txt"

    invoke-virtual {v4, v8, v15, v3}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v3}, Lcom/tencent/smtt/sdk/QbSdk;->setDisableUnpreinitBySwitch(Z)V

    const-string v4, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "disableUnpreinitBySwitch:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b0

    const/4 v0, 0x1

    goto :goto_1b1

    :cond_1b0
    const/4 v0, 0x0

    :goto_1b1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v8, "disable_use_host_backup_core.txt"

    invoke-virtual {v3, v4, v8, v0}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setDisableUseHostBackupCoreBySwitch(Z)V

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableUseHostBackupCoreBySwitch:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d5
    .catchall {:try_start_128 .. :try_end_1d5} :catchall_1d6

    goto :goto_1f1

    :catchall_1d6
    move-exception v0

    const-string v3, "qbsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "throwable:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f1
    :goto_1f1
    const-string v0, ""

    :try_start_1f3
    const-string v4, "PKGMD5"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f9} :catch_27d

    :try_start_1f9
    const-string v8, "RESETX5"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_1ff} :catch_279

    :try_start_1ff
    const-string v15, "UPLOADLOG"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_205} :catch_275

    :try_start_205
    const-string v3, "RESETTOKEN"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_20b} :catch_271

    if-eqz v3, :cond_21b

    :try_start_20d
    const-string v3, "RESETTOKEN"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_213} :catch_273

    if-eqz v3, :cond_217

    const/4 v3, 0x1

    goto :goto_218

    :cond_217
    const/4 v3, 0x0

    :goto_218
    move-object/from16 v25, v0

    goto :goto_21e

    :cond_21b
    move-object/from16 v25, v0

    const/4 v3, 0x0

    :goto_21e
    :try_start_21e
    const-string v0, "SETTOKEN"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22e

    const-string v0, "SETTOKEN"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    :cond_22e
    const-string v0, "ENABLE_LOAD_RENAME_FILE_LOCK"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_244

    const-string v0, "ENABLE_LOAD_RENAME_FILE_LOCK"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_23c} :catch_26e

    if-eqz v0, :cond_240

    const/4 v0, 0x1

    goto :goto_241

    :cond_240
    const/4 v0, 0x0

    :goto_241
    move/from16 v26, v0

    goto :goto_246

    :cond_244
    const/16 v26, 0x1

    :goto_246
    :try_start_246
    const-string v0, "ENABLE_LOAD_RENAME_FILE_LOCK_WAIT"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_259

    const-string v0, "ENABLE_LOAD_RENAME_FILE_LOCK_WAIT"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_254} :catch_26b

    if-eqz v0, :cond_257

    goto :goto_259

    :cond_257
    const/4 v0, 0x0

    goto :goto_25a

    :cond_259
    :goto_259
    const/4 v0, 0x1

    :goto_25a
    move/from16 v27, v13

    move/from16 v31, v8

    move v8, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v4

    move/from16 v4, v26

    move/from16 v26, v14

    move v14, v15

    move/from16 v15, v31

    goto :goto_292

    :catch_26b
    move-object/from16 v0, v25

    goto :goto_285

    :catch_26e
    move-object/from16 v0, v25

    goto :goto_283

    :catch_271
    move-object/from16 v25, v0

    :catch_273
    const/4 v3, 0x0

    goto :goto_283

    :catch_275
    move-object/from16 v25, v0

    const/4 v3, 0x0

    goto :goto_282

    :catch_279
    move-object/from16 v25, v0

    const/4 v3, 0x0

    goto :goto_281

    :catch_27d
    move-object/from16 v25, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_281
    const/4 v8, 0x0

    :goto_282
    const/4 v15, 0x0

    :goto_283
    const/16 v26, 0x1

    :goto_285
    move-object/from16 v25, v4

    move/from16 v27, v13

    move/from16 v4, v26

    move/from16 v26, v14

    move v14, v15

    move v15, v8

    move v8, v3

    move-object v3, v0

    const/4 v0, 0x1

    :goto_292
    :try_start_292
    const-string v13, "RESETDECOUPLECORE"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_298} :catch_299

    goto :goto_29a

    :catch_299
    const/4 v13, 0x0

    :goto_29a
    move-object/from16 v28, v11

    :try_start_29c
    const-string v11, "RESETTODECOUPLECORE"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2a2} :catch_2a3

    goto :goto_2a4

    :catch_2a3
    const/4 v11, 0x0

    :goto_2a4
    sget-object v29, Lcom/tencent/smtt/sdk/TbsDownloader;->f:Ljava/lang/Object;

    monitor-enter v29

    if-eqz v8, :cond_2b5

    :try_start_2a9
    iget-object v8, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_deskey_token"

    move/from16 v30, v9

    const-string v9, ""

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b7

    :cond_2b5
    move/from16 v30, v9

    :goto_2b7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x60

    if-ne v1, v8, :cond_2e4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v8, "tbs_deskey_token"

    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e4
    monitor-exit v29
    :try_end_2e5
    .catchall {:try_start_2a9 .. :try_end_2e5} :catchall_7a7

    const/4 v1, 0x1

    if-ne v15, v1, :cond_314

    if-eqz v2, :cond_2ed

    const/16 v0, -0x6e

    goto :goto_2ef

    :cond_2ed
    const/16 v0, -0xd2

    :goto_2ef
    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    if-ne v11, v1, :cond_2f8

    const/4 v1, 0x1

    goto :goto_2f9

    :cond_2f8
    const/4 v1, 0x0

    :goto_2f9
    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;Z)V

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.readResponse] return #3,needResetTbs=1,isQuery="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_314
    if-nez v4, :cond_319

    invoke-virtual {v5, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setTbsCoreLoadRenameFileLockEnable(Z)V

    :cond_319
    if-nez v0, :cond_31e

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setTbsCoreLoadRenameFileLockWaitEnable(Z)V

    :cond_31e
    const/4 v1, 0x1

    if-ne v13, v1, :cond_326

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->resetDecoupleCore(Landroid/content/Context;)V

    :cond_326
    if-ne v14, v1, :cond_338

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_338
    const-wide/32 v3, 0x15180

    if-ne v7, v1, :cond_34f

    const-wide/32 v0, 0x93a80

    cmp-long v7, v22, v0

    if-lez v7, :cond_346

    move-wide/from16 v22, v0

    :cond_346
    const-wide/16 v7, 0x0

    cmp-long v0, v22, v7

    if-lez v0, :cond_351

    move-wide/from16 v3, v22

    goto :goto_351

    :cond_34f
    const-wide/16 v7, 0x0

    :cond_351
    :goto_351
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v0

    cmp-long v9, v0, v7

    if-ltz v9, :cond_35d

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v3

    :cond_35d
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "retry_interval"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_371

    :try_start_36a
    const-string v0, "DECOUPLECOREVERSION"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_382

    :cond_371
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_decouplecoreversion"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_380
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_380} :catch_381

    goto :goto_382

    :catch_381
    const/4 v0, 0x0

    :goto_382
    :try_start_382
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_391} :catch_392

    goto :goto_393

    :catch_392
    const/4 v1, 0x0

    :goto_393
    if-eqz v2, :cond_3a9

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3a9

    if-nez v0, :cond_3a9

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v0

    :cond_3a9
    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in response decoupleCoreVersion is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v4, "tbs_decouplecoreversion"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v4, "tbs_downloaddecouplecore"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_412

    if-lez v0, :cond_401

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v3

    if-eq v0, v3, :cond_401

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v3

    if-ne v0, v3, :cond_401

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/o;->n(Landroid/content/Context;)Z

    goto :goto_412

    :cond_401
    if-nez v0, :cond_412

    :try_start_403
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_410
    .catchall {:try_start_403 .. :try_end_410} :catchall_411

    goto :goto_412

    :catchall_411
    nop

    :cond_412
    :goto_412
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43e

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43e

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v2, :cond_435

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V

    goto :goto_436

    :cond_435
    const/4 v1, 0x0

    :goto_436
    const-string v0, "TbsDownload"

    const-string v2, "[TbsDownloader.readResponse] return #4,current app is third app..."

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_43e
    const-string v0, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in response responseCode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_49f

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_responsecode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_download_interrupt_code_reason"

    if-eqz v2, :cond_47c

    const/16 v2, -0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_488

    :cond_47c
    const/16 v2, -0xd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_488
    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_496

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDecoupleCoreIfNeeded()Z

    :cond_496
    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.readResponse] return #5,responseCode=0"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_49f
    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_version"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v12, :cond_4be

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/l;->c()V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/sdk/o;->o(Landroid/content/Context;)V

    :cond_4be
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4f7

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/tencent/smtt/sdk/o;->e(Landroid/content/Context;I)I

    move-result v3

    if-lt v3, v12, :cond_4d5

    const/4 v7, 0x1

    goto :goto_4d6

    :cond_4d5
    const/4 v7, 0x0

    :goto_4d6
    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tmpCoreVersion is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tbsDownloadVersion is"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, p1

    goto :goto_4fa

    :cond_4f7
    move/from16 v3, p1

    const/4 v7, 0x0

    :goto_4fa
    if-ge v3, v12, :cond_504

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_504

    if-eqz v7, :cond_58c

    :cond_504
    const/4 v7, 0x1

    if-eq v1, v7, :cond_58c

    iget-object v1, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v4, "tbs_needdownload"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_537

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_526

    iget-object v1, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v2, "tbs_download_interrupt_code_reason"

    const/16 v4, -0x7c

    :goto_51e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_559

    :cond_526
    iget-object v1, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v2, "tbs_download_interrupt_code_reason"

    if-gtz v12, :cond_52f

    const/16 v4, -0x7d

    goto :goto_51e

    :cond_52f
    if-lt v3, v12, :cond_534

    const/16 v4, -0x7f

    goto :goto_51e

    :cond_534
    const/16 v4, -0x70

    goto :goto_51e

    :cond_537
    const/16 v1, -0xd4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_542

    const/16 v1, -0xd9

    goto :goto_54b

    :cond_542
    if-gtz v12, :cond_547

    const/16 v1, -0xda

    goto :goto_54b

    :cond_547
    if-lt v3, v12, :cond_54b

    const/16 v1, -0xdb

    :cond_54b
    :goto_54b
    iget-object v2, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_559
    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version error or downloadUrl empty ,return ahead tbsLocalVersion="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tbsDownloadVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tbsLastDownloadVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " downloadUrl="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_58c
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloadurl"

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/l;->c()V

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v3, "tbs_download_failed_retrytimes"

    move-object/from16 v7, v21

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v3, "tbs_download_success_retrytimes"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b3

    :cond_5b1
    move-object/from16 v7, v21

    :goto_5b3
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v3, "tbs_download_version"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "put KEY_TBS_DOWNLOAD_V is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v12, :cond_600

    const/4 v3, 0x1

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    if-ne v1, v3, :cond_5e5

    const-string v7, "tbs_download_version_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5ea

    :cond_5e5
    const-string v3, "tbs_download_version_type"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5ea
    const-string v0, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "put KEY_TBS_DOWNLOAD_V_TYPE is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_600
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_downloadurl"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_downloadurl_list"

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_responsecode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_download_maxflow"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_download_min_free_space"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_download_success_max_retrytimes"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_download_failed_max_retrytimes"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_single_timeout"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_apkfilesize"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v25, :cond_66b

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_apk_md5"

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66b
    move/from16 v1, p3

    if-nez v1, :cond_6a8

    if-eqz p4, :cond_6a8

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v12}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6a8

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_download_interrupt_code_reason"

    if-eqz v2, :cond_68d

    const/16 v2, -0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_699

    :cond_68d
    const/16 v2, -0xd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_699
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_needdownload"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.readResponse] ##6 set needDownload=false"

    goto/16 :goto_78d

    :cond_6a8
    const/16 v0, 0x64

    if-nez v1, :cond_710

    if-eqz p4, :cond_710

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    const/4 v7, 0x1

    if-eq v4, v7, :cond_6b9

    const/4 v7, 0x2

    if-ne v4, v7, :cond_6b7

    goto :goto_6b9

    :cond_6b7
    const/4 v4, 0x0

    goto :goto_6ba

    :cond_6b9
    :goto_6b9
    const/4 v4, 0x1

    :goto_6ba
    invoke-virtual {v3, v1, v4}, Lcom/tencent/smtt/sdk/l;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_710

    iget-object v1, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use local backup apk in needDownload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    iget-object v2, v2, Lcom/tencent/smtt/sdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6ff

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    goto :goto_707

    :cond_6ff
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    :goto_707
    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.readResponse] ##7 set needDownload=false"

    goto/16 :goto_78d

    :cond_710
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version_type"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_779

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/l;->a()Z

    move-result v1

    if-eqz v1, :cond_779

    iget-object v1, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installDecoupleCoreFromBackup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    iget-object v2, v2, Lcom/tencent/smtt/sdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_769

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    goto :goto_771

    :cond_769
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    :goto_771
    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.readResponse] ##8 set needDownload=false"

    goto :goto_78d

    :cond_779
    if-nez v2, :cond_780

    const/16 v0, -0xd8

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_780
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v1, "tbs_needdownload"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.readResponse] ##9 set needDownload=true"

    :goto_78d
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stop_pre_oat"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7a3

    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v2, "tbs_stop_preoat"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a3
    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    return v1

    :catchall_7a7
    move-exception v0

    :try_start_7a8
    monitor-exit v29
    :try_end_7a9
    .catchall {:try_start_7a8 .. :try_end_7a9} :catchall_7a7

    throw v0
.end method

.method static synthetic a(ZZZZ)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(ZZZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Lcom/tencent/smtt/sdk/l;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    return-object v0
.end method

.method protected static b(I)Ljava/io/File;
    .registers 11

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_76

    aget-object v3, v0, v4

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v3, v7, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_20

    const-string v8, "x5.oversea.tbs.org"

    goto :goto_24

    :cond_20
    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v8

    :goto_24
    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v8, "local tbs version fond,path = "

    const-string v9, "TbsDownload"

    if-eqz v6, :cond_51

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v6

    if-ne v6, p0, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3e
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_76

    :cond_51
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6, v3, v7, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    const-string v6, "x5.tbs.decouple"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_72

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    if-ne v3, p0, :cond_72

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3e

    :cond_72
    add-int/lit8 v4, v4, 0x1

    move-object v3, v5

    goto :goto_8

    :cond_76
    :goto_76
    return-object v3
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string p0, "ISO8859-1"

    const-string v0, "UTF-8"

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    return-object p0

    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :try_start_1a
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_25

    move-object v3, v4

    goto :goto_26

    :catch_25
    nop

    :goto_26
    const-string v4, "1.0"

    if-nez v3, :cond_2e

    :cond_2a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_37
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_59

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_59
    const-string v1, "en"

    :goto_5b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5e
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v4, "REL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :try_start_6a
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v4, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_75

    move-object v1, v4

    goto :goto_76

    :catch_75
    nop

    :goto_76
    if-nez v1, :cond_7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_88

    :cond_7c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_88

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_88
    :goto_88
    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v0, ""

    if-nez p0, :cond_8f

    move-object p0, v0

    :cond_8f
    const-string v1, "[一-龥]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " Build/"

    if-nez p0, :cond_a2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "00"

    :goto_9e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ac

    :cond_a2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ac

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9e

    :cond_ac
    :goto_ac
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, p0, v0

    const-string v0, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 Mobile Safari/533.1"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Lorg/json/JSONArray;)V
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_25

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    if-ne v3, v0, :cond_22

    const/4 v1, 0x1

    goto :goto_25

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_25
    :goto_25
    if-nez v1, :cond_2a

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_2a
    return-void
.end method

.method private static b(ZZZZ)Z
    .registers 29

    move/from16 v1, p0

    move/from16 v0, p2

    const-string v2, "tbs_startdownload_code"

    const-string v3, "tbs_needdownload_code"

    if-eqz v1, :cond_1f

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v4

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v6, 0x90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_33

    :cond_1f
    if-nez v0, :cond_33

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v4

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v6, 0xa4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_33
    :goto_33
    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    const-string v5, "TbsDownload"

    const/4 v6, 0x0

    if-eqz v4, :cond_81

    const-string v7, "SET_SENDREQUEST_AND_UPLOAD"

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "false"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    const-string v4, "[TbsDownloader.sendRequest] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6c

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v2, 0x91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_68
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_80

    :cond_6c
    if-nez v0, :cond_80

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v3, 0xa5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_80
    :goto_80
    return v6

    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.sendRequest]isQuery: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " forDecoupleCore is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_da

    const-string v4, "[TbsDownloader.sendRequest] -- isTbsLocalInstalled!"

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c5

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v2, 0x92

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c1
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_d9

    :cond_c5
    if-nez v0, :cond_d9

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v3, 0xa6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_d9
    :goto_d9
    return v6

    :cond_da
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v10

    const-string v11, "x5.oversea.tbs.org"

    if-eqz v10, :cond_f5

    move-object v10, v11

    goto :goto_f9

    :cond_f5
    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v10

    :goto_f9
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v12, 0x2

    invoke-static {v10, v12}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v12}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_10f

    move-object v12, v11

    goto :goto_113

    :cond_10f
    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v12

    :goto_113
    invoke-direct {v8, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    sget-object v12, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v13}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_129

    move-object v13, v11

    goto :goto_12d

    :cond_129
    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v13

    :goto_12d
    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_142

    goto :goto_146

    :cond_142
    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v11

    :goto_146
    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_16c

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_159

    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_16c

    :cond_159
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_163

    invoke-virtual {v8, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_16c

    :cond_163
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_16c

    invoke-virtual {v7, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_16c
    :goto_16c
    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    if-nez v7, :cond_180

    invoke-static {}, Lcom/tencent/smtt/utils/b;->b()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    iget-object v8, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v10, "device_cpuabi"

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_180
    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f6

    const/4 v7, 0x0

    :try_start_189
    const-string v8, "i686|mips|x86_64"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_195} :catch_196

    goto :goto_197

    :catch_196
    nop

    :goto_197
    if-eqz v7, :cond_1f6

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1f6

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v7

    const/16 v8, -0x68

    const/16 v10, -0xcd

    if-eqz v7, :cond_1eb

    const-string v7, "don\'t support x86 devices,skip send request"

    invoke-static {v5, v7}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v7

    if-eqz v1, :cond_1c3

    invoke-virtual {v4, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    goto :goto_1c9

    :cond_1c3
    invoke-virtual {v4, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-virtual {v7, v10}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    :goto_1c9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mycpu is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v8

    sget-object v10, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v8, v10, v7}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_1f4

    :cond_1eb
    if-eqz v1, :cond_1f1

    invoke-virtual {v4, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_1f4

    :cond_1f1
    invoke-virtual {v4, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_1f4
    const/4 v7, 0x1

    goto :goto_1f7

    :cond_1f6
    const/4 v7, 0x0

    :goto_1f7
    iget-object v8, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "app_versionname"

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "app_versioncode"

    invoke-interface {v8, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p0 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(ZZZ)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v10, -0x1

    :try_start_21d
    const-string v13, "TBSV"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_223} :catch_224

    goto :goto_225

    :catch_224
    const/4 v13, -0x1

    :goto_225
    if-nez v7, :cond_22f

    if-eq v13, v10, :cond_22a

    goto :goto_22f

    :cond_22a
    move-object/from16 v20, v8

    :cond_22c
    const/4 v6, -0x1

    goto/16 :goto_2d5

    :cond_22f
    :goto_22f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v16, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v16

    const-string v9, "request_fail"

    if-eqz v16, :cond_26d

    iget-object v10, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move/from16 v17, v7

    const-wide/16 v6, 0x0

    invoke-interface {v10, v9, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    iget-object v10, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v8

    const-string v8, "count_request_fail_in_24hours"

    invoke-interface {v10, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v18, v14, v18

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    const-wide/16 v23, 0x1

    cmp-long v10, v18, v21

    if-gez v10, :cond_263

    add-long v23, v6, v23

    :cond_263
    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_271

    :cond_26d
    move/from16 v17, v7

    move-object/from16 v20, v8

    :goto_271
    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v8, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_metadata"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v17, :cond_22c

    if-eqz v1, :cond_2bf

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v2, 0x93

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2bb
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_2d3

    :cond_2bf
    if-nez v0, :cond_2d3

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2bb

    :cond_2d3
    :goto_2d3
    const/4 v1, 0x0

    return v1

    :goto_2d5
    if-ne v13, v6, :cond_308

    if-eqz v0, :cond_2da

    goto :goto_308

    :cond_2da
    if-eqz v1, :cond_2f1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v2, 0x95

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2ed
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_305

    :cond_2f1
    if-nez v0, :cond_305

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v3, 0xa9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2ed

    :cond_305
    :goto_305
    const/4 v3, 0x0

    goto/16 :goto_3a1

    :cond_308
    :goto_308
    :try_start_308
    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/utils/m;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsDownloader.sendRequest] postUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_34e

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v7, 0x94

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload_sent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v0, "sendRequest query 148"

    :goto_34a
    invoke-static {v5, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_373

    :cond_34e
    if-nez v0, :cond_373

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v7, 0xa8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_startdownload_sent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v0, "sendRequest download 168"

    goto :goto_34a

    :cond_373
    :goto_373
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/tencent/smtt/sdk/TbsDownloader$3;

    invoke-direct {v2, v4, v1}, Lcom/tencent/smtt/sdk/TbsDownloader$3;-><init>(Lcom/tencent/smtt/sdk/TbsDownloadConfig;Z)V
    :try_end_382
    .catchall {:try_start_308 .. :try_end_382} :catchall_392

    const/4 v3, 0x0

    :try_start_383
    invoke-static {v6, v0, v2, v3}, Lcom/tencent/smtt/utils/f;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;

    move-result-object v0

    move/from16 v2, p1

    move/from16 v5, p3

    invoke-static {v0, v13, v1, v2, v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;IZZZ)Z

    move-result v6
    :try_end_38f
    .catchall {:try_start_383 .. :try_end_38f} :catchall_390

    goto :goto_3a2

    :catchall_390
    move-exception v0

    goto :goto_394

    :catchall_392
    move-exception v0

    const/4 v3, 0x0

    :goto_394
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v1, :cond_39c

    const/16 v0, -0x6a

    goto :goto_39e

    :cond_39c
    const/16 v0, -0xce

    :goto_39e
    invoke-virtual {v4, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_3a1
    const/4 v6, 0x0

    :goto_3a2
    return v6
.end method

.method static c(Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/l;->c(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "tbs_extension_config"

    const/16 v4, 0xb

    if-lt v0, v4, :cond_20

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_24

    :cond_20
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "tbs_preloadx5_check_cfg_file"

    if-lt v0, v4, :cond_38

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_3c

    :cond_38
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static c(Lorg/json/JSONArray;)V
    .registers 12

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isDisableHostBackupCore()Z

    move-result v0

    if-nez v0, :cond_bf

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_bf

    aget-object v4, v0, v3

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "host check failed,packageName = "

    const-string v7, "TbsDownload"

    const/4 v8, 0x1

    if-lez v5, :cond_84

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9, v4, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_4a

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bb

    :cond_4a
    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add addBackupVersionToJsonData,version+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is in black list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    :cond_6c
    const/4 v9, 0x0

    :goto_6d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7e

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    if-ne v10, v5, :cond_7b

    const/4 v9, 0x1

    goto :goto_7f

    :cond_7b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    :cond_7e
    const/4 v9, 0x0

    :goto_7f
    if-nez v9, :cond_84

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_84
    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_bb

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9, v4, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_a4

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3b

    :cond_a4
    const/4 v4, 0x0

    :goto_a5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_b5

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    if-ne v6, v5, :cond_b2

    goto :goto_b6

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    :cond_b5
    const/4 v8, 0x0

    :goto_b6
    if-nez v8, :cond_bb

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_bb
    :goto_bb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_bf
    return-void
.end method

.method private static c()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_18

    if-lez v4, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    return v0
.end method

.method private static declared-synchronized d()V
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    if-nez v1, :cond_30

    invoke-static {}, Lcom/tencent/smtt/sdk/n;->a()Lcom/tencent/smtt/sdk/n;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_32

    :try_start_d
    new-instance v1, Lcom/tencent/smtt/sdk/l;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_24
    .catchall {:try_start_d .. :try_end_16} :catchall_32

    :try_start_16
    new-instance v1, Lcom/tencent/smtt/sdk/TbsDownloader$2;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloader$2;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    goto :goto_30

    :catch_24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    const-string v1, "TbsDownload"

    const-string v2, "TbsApkDownloader init has Exception"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_32

    monitor-exit v0

    return-void

    :cond_30
    :goto_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static e()Z
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->g()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last_thirdapp_sendrequest_coreversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return v0

    :catch_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static f()[Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3c

    :cond_17
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    array-length v3, v0

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v2, v4, v3

    move-object v0, v4

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private static g()Lorg/json/JSONArray;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->c(Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Lorg/json/JSONArray;)V

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBackupFileName(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/tencent/smtt/utils/b;->d()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "x5.tbs.decouple.64"

    return-object p0

    :cond_b
    const-string p0, "x5.tbs.decouple"

    return-object p0

    :cond_e
    invoke-static {}, Lcom/tencent/smtt/utils/b;->d()Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "x5.tbs.org.64"

    return-object p0

    :cond_17
    const-string p0, "x5.tbs.org"

    return-object p0
.end method

.method public static getCoreShareDecoupleCoreVersion()I
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getCoreShareDecoupleCoreVersionByContext(Landroid/content/Context;)I
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getOverSea(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    if-nez v1, :cond_53

    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "is_oversea"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_oversea"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    const-string p0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsDownloader.getOverSea]  first called. sOverSea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    const-string p0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsDownloader.getOverSea]  sOverSea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    sget-boolean p0, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    monitor-exit v0

    return p0

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRetryIntervalInSeconds()J
    .registers 2

    sget-wide v0, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    return-wide v0
.end method

.method public static getsTbsHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static h()Z
    .registers 11

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_success_retrytimes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadSuccessMaxRetrytimes()I

    move-result v2

    const/4 v4, 0x1

    const-string v5, "TbsDownload"

    if-lt v1, v2, :cond_23

    const-string v1, "[TbsDownloader.needStartDownload] out of success retrytimes"

    invoke-static {v5, v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x73

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return v3

    :cond_23
    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_failed_retrytimes"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v2

    if-lt v1, v2, :cond_39

    const-string v1, "[TbsDownloader.needStartDownload] out of failed retrytimes"

    invoke-static {v5, v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x74

    goto :goto_1f

    :cond_39
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "[TbsDownloader.needStartDownload] local rom freespace limit"

    invoke-static {v5, v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x75

    goto :goto_1f

    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v6, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_downloadstarttime"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v1, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v10, v1, v6

    if-gtz v10, :cond_8b

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_downloadflow"

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.needStartDownload] downloadFlow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-ltz v8, :cond_8b

    const-string v1, "[TbsDownloader.needStartDownload] failed because you exceeded max flow!"

    invoke-static {v5, v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x78

    goto :goto_1f

    :cond_8b
    return v4
.end method

.method public static isDownloadForeground()Z
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/l;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static declared-synchronized isDownloading()Z
    .registers 4

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v0

    :try_start_3
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.isDownloading] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static needDownload(Landroid/content/Context;Z)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;ZZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result p0

    return p0
.end method

.method public static needDownload(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;ZZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result p0

    return p0
.end method

.method public static needDownload(Landroid/content/Context;ZZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDownload,process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 v3, 0x8c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tbs_needdownload_code"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.needDownload] oversea="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isDownloadForeground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-boolean v2, Lcom/tencent/smtt/sdk/o;->b:Z

    const-string v3, "tbs_needdownload_return"

    const/4 v5, 0x0

    if-eqz v2, :cond_90

    if-eqz p4, :cond_6d

    invoke-interface {p4, v5, v5}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[TbsDownloader.needDownload]#1,return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 p1, 0xab

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    return v5

    :cond_90
    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->app_extra(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v6, -0x64

    invoke-virtual {v2, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_e0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[TbsDownloader.needDownload]#2,return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 p1, 0x8d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    iget-object p0, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 p1, 0xac

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    if-eqz p4, :cond_df

    invoke-interface {p4, v5, v5}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_df
    return v5

    :cond_e0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->d()V

    sget-boolean p1, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz p1, :cond_127

    if-eqz p4, :cond_ec

    invoke-interface {p4, v5, v5}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_ec
    const/16 p0, -0x69

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[TbsDownloader.needDownload]#3,return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 p1, 0x8e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    iget-object p0, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 p1, 0xad

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    if-eqz p4, :cond_126

    invoke-interface {p4, v5, v5}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_126
    return v5

    :cond_127
    sget-object p1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p1, p2, v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZZ)Z

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.needDownload],needSendRequest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_14c

    invoke-static {p2, p4, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;Z)V

    const/16 p2, -0x72

    invoke-virtual {v2, p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_15a

    :cond_14c
    iget-object p2, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/16 p3, 0x8f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :goto_15a
    sget-object p2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 p3, 0x66

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    sget-boolean p2, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    const/4 p3, 0x1

    if-nez p2, :cond_179

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_176

    goto :goto_179

    :cond_176
    const/4 p0, 0x0

    const/4 p2, 0x0

    goto :goto_1a5

    :cond_179
    :goto_179
    iget-object p2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_needdownload"

    invoke-interface {p2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.needDownload] hasNeedDownloadKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_19f

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_19f

    const/4 p0, 0x1

    goto :goto_1a5

    :cond_19f
    iget-object p0, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_1a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsDownloader.needDownload]#4,needDownload="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",hasNeedDownloadKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1db

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->h()Z

    move-result p2

    if-nez p2, :cond_1d0

    const-string p0, "[TbsDownloader.needDownload]#5,set needDownload = false"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_22e

    :cond_1d0
    const/16 p2, -0x76

    invoke-virtual {v2, p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const-string p2, "[TbsDownloader.needDownload]#6"

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22e

    :cond_1db
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/tencent/smtt/sdk/o;->m(Landroid/content/Context;)I

    move-result p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsDownloader.needDownload]#7,tbsLocalVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",needSendRequest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_20c

    if-gtz p2, :cond_206

    goto :goto_20c

    :cond_206
    const/16 p2, -0x77

    :goto_208
    invoke-virtual {v2, p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_22e

    :cond_20c
    :goto_20c
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v6, 0x67

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz p2, :cond_220

    if-nez p1, :cond_220

    sget-object p2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object p3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p2, v6, v5, v5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    goto :goto_228

    :cond_220
    sget-object p2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p2, v6, p3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    :goto_228
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    const/16 p2, -0x79

    goto :goto_208

    :goto_22e
    if-nez p1, :cond_235

    if-eqz p4, :cond_235

    invoke-interface {p4, v5, v5}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[TbsDownloader.needDownload] needDownload="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    if-eqz p0, :cond_250

    const/16 p2, 0xaa

    goto :goto_252

    :cond_250
    const/16 p2, 0xae

    :goto_252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    return p0
.end method

.method public static needDownloadDecoupleCore()Z
    .registers 8

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v4, "last_download_decouple_core"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v6

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    mul-long v6, v6, v2

    cmp-long v0, v4, v6

    if-gez v0, :cond_3b

    return v1

    :cond_3b
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_decouplecoreversion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_69

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_69

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_69

    const/4 v0, 0x1

    return v0

    :cond_69
    return v1
.end method

.method public static needSendRequest(Landroid/content/Context;Z)Z
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_13

    return v0

    :cond_13
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->m(Landroid/content/Context;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsDownloader.needSendRequest] localTbsVersion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TbsDownload"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_34

    return v0

    :cond_34
    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZZ)Z

    move-result p0

    if-eqz p0, :cond_3e

    return p1

    :cond_3e
    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_needdownload"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsDownloader.needSendRequest] hasNeedDownloadKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_64

    const/4 p0, 0x1

    goto :goto_6a

    :cond_64
    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.needSendRequest] needDownload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_87

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->h()Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 v0, 0x1

    :cond_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[TbsDownloader.needSendRequest] ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static pauseDownload()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "called pauseDownload,downloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/l;->e()V

    :cond_1f
    return-void
.end method

.method public static resumeDownload()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "called resumeDownload,downloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    if-eqz v0, :cond_26

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_26
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    :cond_e
    return-void
.end method

.method public static setRetryIntervalInSeconds(Landroid/content/Context;J)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.tencent.qqlive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    sput-wide p1, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mRetryIntervalInSeconds is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p1, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TbsDownload"

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startDecoupleCoreIfNeeded()Z
    .registers 10

    const-string v0, "TbsDownload"

    const-string v1, "startDecoupleCoreIfNeeded "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return v2

    :cond_11
    const-string v1, "startDecoupleCoreIfNeeded #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    if-nez v1, :cond_24

    return v2

    :cond_24
    const-string v1, "startDecoupleCoreIfNeeded #2"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    const-string v5, "last_download_decouple_core"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v8

    sub-long/2addr v6, v3

    const-wide/16 v3, 0x3e8

    mul-long v8, v8, v3

    cmp-long v1, v6, v8

    if-gez v1, :cond_51

    return v2

    :cond_51
    const-string v1, "startDecoupleCoreIfNeeded #3"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_decouplecoreversion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_f6

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v3

    if-eq v1, v3, :cond_f6

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v1, :cond_c7

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_version_type"

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_94

    goto :goto_c7

    :cond_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDecoupleCoreIfNeeded no need, KEY_TBS_DOWNLOAD_V is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " deCoupleCoreVersion is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KEY_TBS_DOWNLOAD_V_TYPE is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_112

    :cond_c7
    :goto_c7
    const-string v1, "startDecoupleCoreIfNeeded #4"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {v0, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_f6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDecoupleCoreIfNeeded no need, deCoupleCoreVersion is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v1

    :goto_112
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static startDownload(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDownload(Landroid/content/Context;Z)V

    return-void
.end method

.method public static declared-synchronized startDownload(Landroid/content/Context;Z)V
    .registers 7

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v1

    iget-object v2, v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_startdownload_code"

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsDownloader.startDownload] sAppContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/smtt/sdk/o;->b:Z

    if-eqz v2, :cond_45

    iget-object p0, v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string p1, "tbs_startdownload_code"

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_d2

    monitor-exit v0

    return-void

    :cond_45
    const/4 v2, 0x1

    :try_start_46
    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 v3, -0xc8

    invoke-virtual {p0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge p0, v3, :cond_81

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 p1, 0x6e

    invoke-interface {p0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 p1, -0xc9

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    iget-object p0, v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string p1, "tbs_startdownload_code"

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V
    :try_end_7f
    .catchall {:try_start_46 .. :try_end_7f} :catchall_d2

    monitor-exit v0

    return-void

    :cond_81
    :try_start_81
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->d()V

    sget-boolean p0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz p0, :cond_ac

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 p1, 0x79

    invoke-interface {p0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 p1, -0xca

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    iget-object p0, v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string p1, "tbs_startdownload_code"

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V
    :try_end_aa
    .catchall {:try_start_81 .. :try_end_aa} :catchall_d2

    monitor-exit v0

    return-void

    :cond_ac
    if-eqz p1, :cond_b1

    :try_start_ae
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->stopDownload()V

    :cond_b1
    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {p0, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    if-eqz p1, :cond_ca

    goto :goto_cb

    :cond_ca
    const/4 v2, 0x0

    :goto_cb
    iput v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d0
    .catchall {:try_start_ae .. :try_end_d0} :catchall_d2

    monitor-exit v0

    return-void

    :catchall_d2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stopDownload()V
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.stopDownload]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/l;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/l;->b()V

    :cond_13
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    if-eqz v0, :cond_2a

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2a
    return-void
.end method
