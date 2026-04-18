.class public Lcn/codemao/android/account/util/DuerOSUtil;
.super Ljava/lang/Object;
.source "DuerOSUtil.java"


# static fields
.field private static final DU_SYSTEM_SIGNATURE:Ljava/lang/String; = "21:71:94:6E:B9:37:87:D7:33:48:C4:20:64:B5:C8:B7"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkApkSignatureEquals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 35
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 36
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p1, :cond_26

    aget-object v2, p0, v1

    .line 37
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcn/codemao/android/account/util/DuerOSUtil;->getMD5Signature([B)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_26

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_26
    :cond_26
    return v0
.end method

.method public static checkSystemApksSignatures()Z
    .registers 3

    .line 24
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.baidu.launcher"

    const-string v2, "21:71:94:6E:B9:37:87:D7:33:48:C4:20:64:B5:C8:B7"

    .line 25
    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/DuerOSUtil;->checkApkSignatureEquals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "com.android.systemui"

    .line 26
    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/DuerOSUtil;->checkApkSignatureEquals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private static getMD5Signature([B)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "MD5"

    .line 50
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 53
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_36

    .line 54
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    const/16 v3, 0x30

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    :cond_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    array-length v2, p0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_33

    const-string v2, ":"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 64
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerialNo()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    const-string v0, "ro.serialno"

    .line 72
    invoke-static {v0}, Lcn/codemao/android/account/util/DuerOSUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 75
    :try_start_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_15

    .line 76
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_19

    .line 78
    :cond_15
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 90
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 91
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
