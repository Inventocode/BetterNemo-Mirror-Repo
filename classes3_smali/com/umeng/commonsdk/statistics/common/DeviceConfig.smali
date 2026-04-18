.class public Lcom/umeng/commonsdk/statistics/common/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field public static final DEFAULT_TIMEZONE:I = 0x8

.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.hw_emui_api_level"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field protected static final LOG_TAG:Ljava/lang/String; = "com.umeng.commonsdk.statistics.common.DeviceConfig"

.field public static final MOBILE_NETWORK:Ljava/lang/String; = "2G/3G"

.field public static final UNKNOW:Ljava/lang/String; = ""

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field private static volatile sAndroidID:Ljava/lang/String;

.field private static volatile sIDFA:Ljava/lang/String;

.field private static volatile sImei:Ljava/lang/String;

.field private static volatile sImeiOrMeidFlag:Z

.field private static volatile sImsi:Ljava/lang/String;

.field private static volatile sImsiFlag:Z

.field private static volatile sMeid:Ljava/lang/String;

.field private static volatile sOAID:Ljava/lang/String;

.field private static volatile sSecondImei:Ljava/lang/String;

.field private static volatile sSecondImeiFlag:Z

.field private static volatile sSerialFlag:Z

.field private static volatile sSerialNo:Ljava/lang/String;

.field private static volatile sSimSerialNumber:Ljava/lang/String;

.field private static volatile sSimSerialNumberFlag:Z

.field private static volatile sWifiMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->DEFAULT:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v0, ""

    .line 88
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sWifiMac:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sMeid:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsi:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialNo:Ljava/lang/String;

    .line 94
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sAndroidID:Ljava/lang/String;

    .line 95
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sIDFA:Ljava/lang/String;

    .line 96
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sOAID:Ljava/lang/String;

    .line 97
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImei:Ljava/lang/String;

    .line 98
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumber:Ljava/lang/String;

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    .line 102
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialFlag:Z

    .line 103
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumberFlag:Z

    .line 104
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsiFlag:Z

    .line 105
    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImeiFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1364
    :goto_a
    array-length v3, p0

    if-ge v1, v3, :cond_4a

    .line 1365
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1366
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 1368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2b
    if-le v4, v2, :cond_33

    add-int/lit8 v6, v4, -0x2

    .line 1370
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1371
    :cond_33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_47

    const/16 v3, 0x3a

    .line 1373
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1375
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 283
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2e

    :try_start_b
    const-string v1, "android.content.Context"

    .line 285
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkSelfPermission"

    new-array v4, v3, [Ljava/lang/Class;

    .line 286
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 287
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_3d

    if-nez p0, :cond_3d

    goto :goto_3c

    .line 297
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3d

    :goto_3c
    const/4 v0, 0x1

    :catchall_3d
    :cond_3d
    return v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 191
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sAndroidID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 192
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sAndroidID:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const-string v1, "header_device_id_android_id"

    .line 195
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eqz p0, :cond_2d

    .line 198
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sAndroidID:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    nop

    .line 201
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_2d

    const-string p0, "can\'t read android id"

    .line 203
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static getAppHashKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1320
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    .line 1322
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1323
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p0

    if-lez v0, :cond_30

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-string v1, "SHA"

    .line 1324
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1325
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1326
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-object p0

    :catchall_30
    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1345
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 1347
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1348
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 1349
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 1350
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "X509"

    .line 1351
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 1352
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    const-string v1, "MD5"

    .line 1354
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1355
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 1356
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3e

    :catchall_3e
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1402
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1403
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    goto :goto_2a

    :catchall_20
    move-exception p0

    .line 1405
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_2a

    .line 1406
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public static getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1298
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    .line 1300
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1301
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 1302
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 1304
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "X509"

    .line 1306
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 1307
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    const-string v0, "SHA1"

    .line 1309
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1310
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 1311
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    const/4 p0, 0x0

    :goto_3c
    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 255
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 267
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationLable(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1388
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBuildProp()Ljava/util/Properties;
    .registers 6

    .line 1951
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    .line 1954
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1f

    .line 1955
    :try_start_16
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 1961
    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_25

    :catchall_1d
    move-object v1, v2

    goto :goto_20

    :catchall_1f
    nop

    :goto_20
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_25

    :catchall_25
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static getCPU()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 436
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_23

    .line 439
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 440
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 442
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_2b

    :catchall_1a
    move-exception v1

    .line 444
    :try_start_1b
    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not read from file /proc/cpuinfo"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v1

    .line 448
    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not open file /proc/cpuinfo"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    if-eqz v0, :cond_3e

    const/16 v1, 0x3a

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    const-string v0, ""

    return-object v0
.end method

.method public static getDBencryptID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 2037
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 468
    invoke-static {}, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 469
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdForBox(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 471
    :cond_c
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdForGeneral(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceIdForBox(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1567
    :cond_5
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1e0

    const-string v2, "getDeviceId, ANDROID_ID: "

    const/16 v3, 0x17

    const-string v4, "getDeviceId, MAC: "

    const-string v5, "header_device_id_android_id"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v3, :cond_85

    .line 1568
    :try_start_13
    invoke-static {v5}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1570
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1572
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_3d

    .line 1573
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1576
    :cond_3d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1577
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1579
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_67

    .line 1580
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1582
    :cond_67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1583
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1584
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1586
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto/16 :goto_1e0

    :cond_85
    if-ne v1, v3, :cond_110

    .line 1592
    invoke-static {v5}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1594
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1596
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_b1

    .line 1597
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1600
    :cond_b1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1601
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1602
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 1604
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    if-eqz v2, :cond_d0

    .line 1605
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacShell()Ljava/lang/String;

    move-result-object v0

    .line 1606
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto :goto_d6

    .line 1608
    :cond_d0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1612
    :cond_d6
    :goto_d6
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_f2

    .line 1613
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    :cond_f2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1616
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1617
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1619
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto/16 :goto_1e0

    :cond_110
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_162

    .line 1627
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1630
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIdfa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1632
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1633
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1634
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1636
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1637
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1638
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1639
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1640
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1641
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 1642
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto/16 :goto_1e0

    .line 1650
    :cond_162
    invoke-static {v5}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 1652
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1653
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1654
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_18e

    .line 1655
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId: ANDROID_ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    :cond_18e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1659
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1660
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1661
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1662
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 1665
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1666
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 1668
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1670
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_1e0

    .line 1671
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e0
    .catchall {:try_start_13 .. :try_end_1e0} :catchall_1e0

    :catchall_1e0
    :cond_1e0
    :goto_1e0
    return-object v0
.end method

.method public static getDeviceIdForGeneral(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1431
    :cond_5
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1cd

    const/16 v2, 0x17

    const-string v3, "getDeviceId, ANDROID_ID: "

    const-string v4, "header_device_id_android_id"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v1, v2, :cond_74

    .line 1432
    :try_start_11
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1435
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_2e

    .line 1436
    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "No IMEI."

    aput-object v8, v7, v5

    invoke-static {v2, v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1439
    :cond_2e
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 1442
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1444
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    if-eqz v1, :cond_64

    .line 1447
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    :cond_64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1cd

    .line 1451
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1452
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
    :try_end_72
    .catchall {:try_start_11 .. :try_end_72} :catchall_1cd

    goto/16 :goto_1cd

    :cond_74
    const-string v7, "getDeviceId, MAC: "

    if-ne v1, v2, :cond_ff

    .line 1457
    :try_start_78
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1460
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1461
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1462
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1463
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    if-eqz v2, :cond_9f

    .line 1464
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacShell()Ljava/lang/String;

    move-result-object v0

    .line 1465
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto :goto_a5

    .line 1467
    :cond_9f
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1471
    :cond_a5
    :goto_a5
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_c1

    .line 1472
    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-static {v2, v8}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1474
    :cond_c1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 1475
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 1477
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    if-eqz v1, :cond_ef

    .line 1480
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    :cond_ef
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1cd

    .line 1484
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1485
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto/16 :goto_1cd

    :cond_ff
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_151

    .line 1491
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1493
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1494
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIdfa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1496
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1497
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1499
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1500
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1501
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1503
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1504
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 1506
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    goto/16 :goto_1cd

    .line 1514
    :cond_151
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1515
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1517
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 1518
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1520
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1522
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1523
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1524
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_197

    .line 1525
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1528
    :cond_197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 1529
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1530
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 1532
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1533
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 1534
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_1cd

    .line 1535
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1cd
    .catchall {:try_start_78 .. :try_end_1cd} :catchall_1cd

    :catchall_1cd
    :cond_1cd
    :goto_1cd
    return-object v0
.end method

.method public static getDeviceIdType()Ljava/lang/String;
    .registers 1

    .line 478
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->deviceTypeEnum:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->getDeviceIdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 488
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "Phone"

    if-nez p0, :cond_5

    return-object v0

    .line 2015
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x3

    if-lt p0, v1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1c

    const-string p0, "Tablet"
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    move-object v0, p0

    :catchall_1c
    :cond_1c
    return-object v0
.end method

.method public static getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 814
    :cond_5
    :try_start_5
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 815
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_3c

    .line 817
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 818
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 819
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-object p0

    :catchall_3c
    :cond_3c
    return-object v0
.end method

.method private static getEmuiVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ro.build.hw_emui_api_level"

    .line 1938
    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_7

    :catch_7
    return-object v0
.end method

.method private static getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "ro.build.display.id"

    .line 1920
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "flyme os"

    .line 1921
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, " "

    .line 1922
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/16 v2, 0x1f00

    .line 314
    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f01

    .line 315
    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p0

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p0, v0, v2
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception p0

    .line 320
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v0, :cond_22

    .line 321
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not read gpu infor:"

    invoke-static {v0, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method public static getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 6

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "android.app.ActivityThread"

    .line 2044
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2045
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mActivities"

    .line 2046
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 2047
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2048
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2049
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2050
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "paused"

    .line 2051
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2052
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2053
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v4, "activity"

    .line 2054
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2055
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2056
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    move-object p0, v1

    goto :goto_2e

    :catchall_5c
    :cond_5c
    return-object p0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 1727
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1728
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    return-object p0

    .line 1732
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_18

    .line 1733
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    if-eqz v3, :cond_18

    return-object v1

    :cond_18
    const-string v3, "header_device_id_imei"

    .line 1738
    invoke-static {v3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    if-nez p0, :cond_23

    return-object v1

    :cond_23
    const-string v3, "phone"

    .line 1742
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_7c

    const/4 v4, 0x1

    :try_start_2e
    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 1745
    invoke-static {p0, v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 1746
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_63

    .line 1747
    :try_start_3a
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_59

    .line 1748
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceId, IMEI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_5b

    :cond_59
    move-object v1, p0

    goto :goto_5e

    :catchall_5b
    move-exception v0

    move-object v1, p0

    goto :goto_64

    :cond_5e
    :goto_5e
    if-lt v0, v2, :cond_7c

    .line 1757
    :goto_60
    sput-boolean v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    goto :goto_7c

    :catchall_63
    move-exception v0

    .line 1752
    :goto_64
    :try_start_64
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_6f

    .line 1753
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No IMEI."

    invoke-static {p0, v3, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_74

    .line 1756
    :cond_6f
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_7c

    goto :goto_60

    :catchall_74
    move-exception p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_7b

    .line 1757
    sput-boolean v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    :cond_7b
    throw p0

    .line 1763
    :cond_7c
    :goto_7c
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    .line 1764
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    return-object p0
.end method

.method public static getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 p0, 0x0

    .line 887
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 889
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_d} :catch_6a

    move-object v1, p0

    :cond_e
    :try_start_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 891
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 892
    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 895
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5
    :try_end_36
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_36} :catch_69

    const-string v6, "dummy"

    if-nez v5, :cond_4e

    :try_start_3a
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4e

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    if-nez p0, :cond_4e

    .line 896
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    .line 898
    :cond_4e
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_26

    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_26

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    if-nez v1, :cond_26

    .line 899
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_68
    .catch Ljava/net/SocketException; {:try_start_3a .. :try_end_68} :catch_69

    goto :goto_26

    :catch_69
    move-object p0, v1

    :catch_6a
    const-string v0, "SocketException"

    move-object v1, p0

    move-object p0, v0

    :cond_6e
    if-eqz p0, :cond_71

    return-object p0

    :cond_71
    if-nez v1, :cond_75

    const-string v1, "null"

    :cond_75
    return-object v1
.end method

.method public static getIdfa(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1711
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sIDFA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1713
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sIDFA:Ljava/lang/String;

    return-object p0

    :cond_b
    const-string v0, ""

    :try_start_d
    const-string v1, "header_tracking_idfa"

    .line 1717
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1718
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sIDFA:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1b

    :catchall_1b
    :cond_1b
    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 109
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 110
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1d

    .line 114
    :try_start_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1c

    .line 115
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_42

    if-eqz v4, :cond_1c

    if-lt v3, v2, :cond_1b

    .line 134
    sput-boolean v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    :cond_1b
    return-object v0

    :cond_1c
    :try_start_1c
    const-string v4, "header_device_id_imei"

    .line 119
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    if-eqz p0, :cond_3d

    const-string v4, "phone"

    .line 121
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_3d

    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 123
    invoke-static {p0, v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 124
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_42

    move-object v0, p0

    :cond_3d
    if-lt v3, v2, :cond_51

    .line 134
    :goto_3f
    sput-boolean v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    goto :goto_51

    :catchall_42
    move-exception p0

    .line 130
    :try_start_43
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_4c

    const-string v3, "No IMEI."

    .line 131
    invoke-static {v3, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_54

    .line 133
    :cond_4c
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_51

    goto :goto_3f

    .line 138
    :cond_51
    :goto_51
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    return-object v0

    :catchall_54
    move-exception p0

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_5b

    .line 134
    sput-boolean v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    :cond_5b
    throw p0
.end method

.method public static getImeiNew(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 143
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 144
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1d

    .line 148
    :try_start_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1c

    .line 149
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_6b

    if-eqz v4, :cond_1c

    if-lt v3, v2, :cond_1b

    .line 182
    sput-boolean v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    :cond_1b
    return-object v0

    :cond_1c
    :try_start_1c
    const-string v4, "header_device_id_imei"

    .line 154
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    if-eqz p0, :cond_64

    const-string v4, "phone"

    .line 156
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_64

    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 158
    invoke-static {p0, v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_6b

    if-eqz p0, :cond_64

    const/16 p0, 0x1a

    if-lt v3, p0, :cond_60

    .line 161
    :try_start_3c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "getImei"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 163
    invoke-virtual {p0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_55

    move-object v0, p0

    .line 167
    :catchall_55
    :try_start_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 168
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 171
    :cond_60
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_6b

    .line 181
    :cond_64
    :goto_64
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_7a

    .line 182
    :goto_68
    sput-boolean v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    goto :goto_7a

    :catchall_6b
    move-exception p0

    .line 178
    :try_start_6c
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_75

    const-string v3, "No IMEI."

    .line 179
    invoke-static {v3, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_7d

    .line 181
    :cond_75
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_7a

    goto :goto_68

    .line 186
    :cond_7a
    :goto_7a
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImei:Ljava/lang/String;

    return-object v0

    :catchall_7d
    move-exception p0

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_84

    .line 182
    sput-boolean v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    :cond_84
    throw p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 540
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 541
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsi:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    .line 548
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1a

    .line 549
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsiFlag:Z

    if-eqz v3, :cond_1a

    return-object v0

    :cond_1a
    const-string v3, "phone"

    .line 554
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "internal_imsi"

    .line 556
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    :try_start_2b
    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 558
    invoke-static {p0, v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    if-eqz v3, :cond_3a

    .line 560
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3f

    move-object v0, p0

    :cond_3a
    if-lt v1, v2, :cond_45

    .line 566
    :goto_3c
    sput-boolean v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsiFlag:Z

    goto :goto_45

    :catchall_3f
    nop

    .line 565
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_45

    goto :goto_3c

    .line 571
    :cond_45
    :goto_45
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsi:Ljava/lang/String;

    .line 572
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImsi:Ljava/lang/String;

    return-object p0
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4

    if-nez p0, :cond_7

    .line 1100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 1105
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1106
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 1109
    iget-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    goto :goto_27

    .line 1112
    :catchall_19
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "fail to read user config locale"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_27
    if-nez p0, :cond_2d

    .line 1116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_2d
    return-object p0
.end method

.method public static getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    const-string v0, "Unknown"

    .line 1065
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_9

    return-object v1

    .line 1071
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1d

    .line 1074
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1075
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 1078
    :cond_1d
    aget-object p0, v1, v3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 1079
    aput-object v0, v1, v3

    .line 1080
    :cond_27
    aget-object p0, v1, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 1081
    aput-object v0, v1, v2
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_32

    :cond_31
    return-object v1

    :catchall_32
    move-exception p0

    .line 1085
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error in getLocaleInfo"

    invoke-static {v0, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getMCCMNC(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 507
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    .line 510
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_4d

    .line 513
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-ge p0, v3, :cond_39

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 515
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 517
    :cond_39
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_4d

    return-object p0

    :catchall_4d
    :cond_4d
    return-object v0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1129
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sWifiMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1130
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sWifiMac:Ljava/lang/String;

    return-object p0

    :cond_b
    const-string v0, ""

    const-string v1, "header_device_id_mac"

    .line 1133
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    if-nez p0, :cond_18

    return-object v0

    .line 1137
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_23

    .line 1138
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_23
    if-ne v0, v1, :cond_3d

    .line 1140
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1142
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    if-eqz v0, :cond_38

    .line 1143
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacShell()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 1145
    :cond_38
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 1149
    :cond_3d
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1151
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    :cond_4b
    :goto_4b
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sWifiMac:Ljava/lang/String;

    .line 1155
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sWifiMac:Ljava/lang/String;

    return-object p0
.end method

.method private static getMacByJavaAPI()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "header_device_id_mac"

    .line 335
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 336
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 337
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 338
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    const-string v3, "wlan0"

    .line 339
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "eth0"

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 340
    :cond_31
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_76

    .line 341
    array-length v2, v1

    if-nez v2, :cond_3b

    goto :goto_76

    .line 344
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_43
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5c

    aget-byte v7, v1, v5

    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    .line 346
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 348
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 351
    :cond_6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_76

    :catchall_76
    :cond_76
    :goto_76
    return-object v0
.end method

.method private static getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_7
    const-string v3, "header_device_id_mac"

    .line 1169
    invoke-static {v3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "wifi"

    .line 1170
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    .line 1171
    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    if-eqz v3, :cond_2a

    .line 1173
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 1174
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    return-object v0

    .line 1179
    :cond_2b
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_3a

    .line 1180
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    aput-object v4, v3, v1

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_3b

    :cond_3a
    return-object v0

    :catchall_3b
    move-exception p0

    .line 1187
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_5e

    .line 1188
    sget-object v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get mac address."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5e
    return-object v0
.end method

.method private static getMacShell()Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "header_device_id_mac"

    .line 369
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    const-string v1, "/sys/class/net/wlan0/address"

    const-string v2, "/sys/class/net/eth0/address"

    const-string v3, "/sys/devices/virtual/net/wlan0/address"

    .line 370
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_2e

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_2e

    .line 375
    :try_start_16
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->reaMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1f

    if-eqz v3, :cond_2b

    return-object v3

    :catchall_1f
    move-exception v3

    .line 380
    :try_start_20
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_2b

    .line 381
    sget-object v4, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "open file  Failed"

    invoke-static {v4, v5, v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catchall_2e
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMeid(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "phone"

    .line 588
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    const-string v1, "internal_meid"

    .line 592
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    :try_start_17
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 594
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 597
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_2b

    .line 598
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_39

    .line 601
    :cond_2b
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->meid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 603
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_39

    :catchall_39
    :cond_39
    :goto_39
    return-object v0
.end method

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 841
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 847
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 848
    aput-object v0, v1, v3

    return-object v1

    :cond_15
    const-string v2, "connectivity"

    .line 853
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_22

    .line 855
    aput-object v0, v1, v3

    return-object v1

    :cond_22
    const/4 v0, 0x1

    .line 858
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 860
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_36

    const-string p0, "Wi-Fi"

    .line 861
    aput-object p0, v1, v3

    return-object v1

    .line 865
    :cond_36
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 867
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_4e

    const-string v2, "2G/3G"

    .line 868
    aput-object v2, v1, v3

    .line 869
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_4e

    :catchall_4e
    :cond_4e
    return-object v1
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "phone"

    .line 792
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 793
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    if-eqz v1, :cond_1c

    .line 795
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    :cond_1c
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    const-string v0, "phone"

    .line 931
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 932
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 933
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_17

    goto :goto_19

    :cond_15
    const/4 p0, 0x0

    goto :goto_19

    :catch_17
    const/16 p0, -0x64

    :goto_19
    return p0
.end method

.method public static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1685
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1687
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sOAID:Ljava/lang/String;

    return-object p0

    :cond_b
    const-string v0, "header_device_oaid"

    .line 1690
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_27

    :try_start_15
    const-string v0, "umeng_sp_oaid"

    const/4 v2, 0x0

    .line 1692
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_27

    const-string v0, "key_umeng_sp_oaid"

    .line 1696
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_27

    .line 1697
    :try_start_24
    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sOAID:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_26

    :catchall_26
    move-object v1, p0

    :catchall_27
    :cond_27
    return-object v1
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1290
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRegisteredOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "phone"

    .line 767
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 769
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    if-eqz v1, :cond_1b

    .line 771
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    move-object v0, p0

    :catchall_1b
    :cond_1b
    return-object v0
.end method

.method public static getResolutionArray(Landroid/content/Context;)[I
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string v2, "window"

    .line 1205
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_8c

    .line 1207
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_52

    .line 1209
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1210
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    :try_start_22
    const-string v3, "android.view.Display"

    .line 1213
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRealMetrics"

    new-array v7, v6, [Ljava/lang/Class;

    .line 1215
    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v7, v5

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_8c

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    .line 1217
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1220
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p0, v2, :cond_48

    aput v2, v1, v5

    aput p0, v1, v6

    goto :goto_4c

    :cond_48
    aput p0, v1, v5

    aput v2, v1, v6

    :goto_4c
    aput p0, v1, v5

    aput v2, v1, v6
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_51

    return-object v1

    :catchall_51
    return-object v0

    .line 1238
    :cond_52
    :try_start_52
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1239
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1243
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x2000

    const/4 v2, -0x1

    if-nez p0, :cond_76

    const-string p0, "noncompatWidthPixels"

    .line 1244
    invoke-static {v3, p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    const-string v4, "noncompatHeightPixels"

    .line 1245
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    goto :goto_78

    :cond_76
    const/4 p0, -0x1

    const/4 v4, -0x1

    :goto_78
    if-eq p0, v2, :cond_7c

    if-ne v4, v2, :cond_80

    .line 1249
    :cond_7c
    iget p0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1250
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_80
    if-le p0, v4, :cond_87

    aput v4, v1, v5

    aput p0, v1, v6

    goto :goto_8b

    :cond_87
    aput p0, v1, v5

    aput v4, v1, v6
    :try_end_8b
    .catchall {:try_start_52 .. :try_end_8b} :catchall_8c

    :goto_8b
    return-object v1

    :catchall_8c
    :cond_8c
    return-object v0
.end method

.method public static getSecondSimIMEi(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 704
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 705
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImei:Ljava/lang/String;

    return-object p0

    .line 708
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_17

    .line 709
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImeiFlag:Z

    if-eqz v3, :cond_17

    return-object v1

    :cond_17
    if-eqz p0, :cond_7f

    const-string v3, "inner_imei2"

    .line 716
    invoke-static {v3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const/16 v3, 0x17

    if-lt v0, v3, :cond_7f

    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 717
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const/4 v3, 0x1

    :try_start_2e
    const-string v4, "phone"

    .line 725
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_78

    if-nez p0, :cond_3d

    if-lt v0, v2, :cond_3c

    .line 742
    sput-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImeiFlag:Z

    :cond_3c
    return-object v1

    .line 729
    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getPhoneCount"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 731
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    .line 732
    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_75

    const-string v4, "getDeviceId"

    new-array v7, v3, [Ljava/lang/Class;

    .line 734
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 735
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 736
    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImei:Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_3d .. :try_end_75} :catchall_78

    :cond_75
    if-lt v0, v2, :cond_7f

    goto :goto_7d

    :catchall_78
    nop

    .line 741
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_7f

    .line 742
    :goto_7d
    sput-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImeiFlag:Z

    .line 749
    :cond_7f
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSecondImei:Ljava/lang/String;

    return-object p0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 1

    .line 212
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSerialNo()Ljava/lang/String;
    .registers 7

    .line 1774
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1775
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialNo:Ljava/lang/String;

    return-object v0

    .line 1778
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_18

    .line 1779
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialFlag:Z

    if-eqz v3, :cond_18

    return-object v1

    :cond_18
    const-string v3, "header_device_id_serialNo"

    .line 1784
    invoke-static {v3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_53

    const/16 v3, 0x9

    if-lt v0, v3, :cond_44

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_41

    :try_start_2a
    const-string v0, "android.os.Build"

    .line 1790
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getSerial"

    new-array v6, v4, [Ljava/lang/Class;

    .line 1791
    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    .line 1792
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_44

    goto :goto_43

    .line 1796
    :cond_41
    :try_start_41
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_43
    move-object v1, v0

    .line 1799
    :catchall_44
    :cond_44
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialNo:Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_4d

    .line 1803
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_53

    .line 1804
    :goto_4a
    sput-boolean v5, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialFlag:Z

    goto :goto_53

    :catchall_4d
    nop

    .line 1803
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_53

    goto :goto_4a

    .line 1810
    :cond_53
    :goto_53
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v0, :cond_71

    .line 1811
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId, serial no: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    :cond_71
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSerialNo:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimICCID(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 665
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 666
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumber:Ljava/lang/String;

    return-object p0

    .line 669
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_17

    .line 670
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumberFlag:Z

    if-eqz v3, :cond_17

    return-object v1

    :cond_17
    const-string v3, "inner_iccid"

    .line 674
    invoke-static {v3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    if-eqz p0, :cond_46

    :try_start_22
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 677
    invoke-static {p0, v4}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, "phone"

    .line 678
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_40

    if-nez p0, :cond_39

    if-lt v0, v2, :cond_38

    .line 690
    sput-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumberFlag:Z

    :cond_38
    return-object v1

    .line 682
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    .line 683
    sput-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumber:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_40

    goto :goto_46

    :catchall_40
    nop

    .line 689
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_4a

    goto :goto_48

    :cond_46
    :goto_46
    if-lt v0, v2, :cond_4a

    .line 690
    :goto_48
    sput-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumberFlag:Z

    .line 695
    :cond_4a
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sSimSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static getSubOSName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1828
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getBuildProp()Ljava/util/Properties;

    move-result-object p0

    :try_start_4
    const-string v0, "ro.miui.ui.version.name"

    .line 1830
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1831
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1832
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isFlyMe()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "Flyme"

    goto :goto_33

    .line 1834
    :cond_19
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isEmui(Ljava/util/Properties;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "Emui"

    goto :goto_33

    .line 1837
    :cond_22
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string v0, "YunOS"

    goto :goto_33

    :cond_2f
    const-string v0, "MIUI"
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_32

    goto :goto_33

    :catchall_32
    const/4 v0, 0x0

    :cond_33
    :goto_33
    return-object v0
.end method

.method public static getSubOSVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1864
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getBuildProp()Ljava/util/Properties;

    move-result-object p0

    :try_start_4
    const-string v0, "ro.miui.ui.version.name"

    .line 1866
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1868
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isFlyMe()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_2b

    if-eqz v1, :cond_1b

    .line 1870
    :try_start_16
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2c

    goto :goto_2c

    .line 1873
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isEmui(Ljava/util/Properties;)Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2b

    if-eqz v1, :cond_26

    .line 1875
    :try_start_21
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getEmuiVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 1881
    :cond_26
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2c

    goto :goto_2c

    :catchall_2b
    const/4 v0, 0x0

    :catchall_2c
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public static getTimeZone(Landroid/content/Context;)I
    .registers 4

    const/16 v0, 0x8

    if-nez p0, :cond_5

    return v0

    .line 993
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 994
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 996
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    const v1, 0x36ee80

    div-int/2addr p0, v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return p0

    :catchall_1c
    move-exception p0

    .line 999
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error in getTimeZone"

    invoke-static {v1, v2, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    return v0
.end method

.method private static getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "ro.yunos.version"

    .line 1902
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1903
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_d

    if-nez v0, :cond_d

    return-object p0

    :catchall_d
    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isChineseAera(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "country"

    const-string v2, ""

    .line 1025
    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_5e

    const-string v3, "cn"

    const/4 v4, 0x1

    if-nez v2, :cond_1d

    .line 1027
    :try_start_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v4

    :cond_1c
    return v0

    .line 1033
    :cond_1d
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1034
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 1035
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    return v4

    .line 1039
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    const/16 v2, 0x1cc

    if-eq v1, v2, :cond_5d

    const/16 v2, 0x1cd

    if-ne v1, v2, :cond_49

    goto :goto_5d

    :cond_49
    if-nez v1, :cond_5e

    .line 1043
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 1044
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_5e

    if-eqz p0, :cond_5e

    :cond_5d
    :goto_5d
    return v4

    :catchall_5e
    :cond_5e
    return v0
.end method

.method private static isEmui(Ljava/util/Properties;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ro.build.hw_emui_api_level"

    const/4 v2, 0x0

    .line 1992
    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_c

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :catch_c
    :cond_c
    return v0
.end method

.method private static isFlyMe()Z
    .registers 4

    const/4 v0, 0x0

    .line 1977
    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    const/4 v0, 0x1

    :catchall_b
    return v0
.end method

.method public static isHarmony(Landroid/content/Context;)Z
    .registers 5

    .line 2069
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_os_brand"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2070
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "harmony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return p0

    :catchall_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 967
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "connectivity"

    .line 968
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_21

    .line 970
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 972
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_21

    return p0

    :catchall_21
    :cond_21
    return v0
.end method

.method public static isWiFiAvailable(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 949
    :cond_4
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v0, "Wi-Fi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static meid(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 624
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sMeid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 625
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sMeid:Ljava/lang/String;

    return-object p0

    .line 629
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_17

    .line 630
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    if-eqz v3, :cond_17

    return-object v2

    :cond_17
    if-nez p0, :cond_1a

    return-object v2

    :cond_1a
    const/4 p0, 0x1

    :try_start_1b
    const-string v3, "android.telephony.TelephonyManager"

    .line 639
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getMeid"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 640
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 641
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 642
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 643
    check-cast v3, Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_3e

    move-object v2, v3

    :cond_39
    if-lt v0, v1, :cond_5c

    .line 651
    :goto_3b
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    goto :goto_5c

    :catchall_3e
    move-exception v0

    .line 647
    :try_start_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_61

    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5c

    goto :goto_3b

    .line 655
    :cond_5c
    :goto_5c
    sput-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sMeid:Ljava/lang/String;

    .line 656
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sMeid:Ljava/lang/String;

    return-object p0

    :catchall_61
    move-exception v0

    .line 650
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_68

    .line 651
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->sImeiOrMeidFlag:Z

    :cond_68
    throw v0
.end method

.method private static reaMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 395
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_27

    .line 399
    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1a

    .line 400
    :try_start_d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_18

    .line 404
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_14

    .line 411
    :catchall_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    goto :goto_27

    :catchall_18
    move-exception v2

    goto :goto_1c

    :catchall_1a
    move-exception v2

    move-object p0, v0

    .line 404
    :goto_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_21

    :catchall_20
    nop

    :goto_21
    if-eqz p0, :cond_26

    .line 411
    :try_start_23
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    .line 414
    :catchall_26
    :cond_26
    :try_start_26
    throw v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    :goto_27
    return-object v0
.end method

.method private static reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 3

    .line 1271
    :try_start_0
    const-class v0, Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 1272
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1273
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return p0

    :catchall_f
    const/4 p0, -0x1

    return p0
.end method
