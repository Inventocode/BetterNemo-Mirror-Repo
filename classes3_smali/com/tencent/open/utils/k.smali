.class public Lcom/tencent/open/utils/k;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/open/utils/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    return v1

    :cond_c
    const/4 v2, -0x1

    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    return v2

    :cond_12
    const-string v3, "\\."

    .line 180
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 184
    :goto_1d
    :try_start_1d
    array-length v6, v4

    if-ge v5, v6, :cond_38

    array-length v6, v3

    if-ge v5, v6, :cond_38

    .line 185
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 186
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_32

    return v2

    :cond_32
    if-le v6, v7, :cond_35

    return v1

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 193
    :cond_38
    array-length v4, v4

    if-le v4, v5, :cond_3c

    return v1

    .line 195
    :cond_3c
    array-length p0, v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_3d} :catch_41

    if-le p0, v5, :cond_40

    return v2

    :cond_40
    return v0

    .line 201
    :catch_41
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_6
    const/4 v4, 0x0

    .line 561
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_14

    .line 562
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v5

    add-long/2addr v2, v4

    goto :goto_6

    .line 566
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-->copy, copyed size is: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "openSDK_LOG.SystemUtils"

    invoke-static {p1, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2777

    if-ne p0, v0, :cond_7

    const-string p0, "shareToQQ"

    return-object p0

    :cond_7
    const/16 v0, 0x2778

    if-ne p0, v0, :cond_e

    const-string p0, "shareToQzone"

    return-object p0

    :cond_e
    const/16 v0, 0x2779

    if-ne p0, v0, :cond_15

    const-string p0, "addToQQFavorites"

    return-object p0

    :cond_15
    const/16 v0, 0x277a

    if-ne p0, v0, :cond_1c

    const-string p0, "sendToMyComputer"

    return-object p0

    :cond_1c
    const/16 v0, 0x277b

    if-ne p0, v0, :cond_23

    const-string p0, "shareToTroopBar"

    return-object p0

    :cond_23
    const/16 v0, 0x2b5d

    if-ne p0, v0, :cond_2a

    const-string p0, "action_login"

    return-object p0

    :cond_2a
    const/16 v0, 0x2774

    if-ne p0, v0, :cond_31

    const-string p0, "action_request"

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    const-string v0, "openSDK_LOG.SystemUtils"

    .line 678
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 681
    :try_start_11
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2d} :catch_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    const-string v1, "Exception"

    .line 688
    invoke-static {v0, v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_35
    move-exception p0

    const-string v1, "NameNotFoundException"

    .line 685
    invoke-static {v0, v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    const-string v1, "openSDK_LOG.SystemUtils"

    if-nez p0, :cond_c

    const-string p0, "getEncryptPkgName activity==null !!!!!!"

    .line 280
    invoke-static {v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 284
    :cond_c
    :try_start_c
    invoke-static {p1}, Lcom/tencent/open/utils/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_18

    const-string p0, "getEncryptPkgName shaBytes==null !!!!!!"

    .line 286
    invoke-static {v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_18
    const/16 v2, 0x8

    new-array v3, v2, [B

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 292
    invoke-static {p1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x10

    new-array v6, v4, [B

    .line 295
    invoke-static {p1, v2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6}, Lcom/tencent/open/utils/e;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/tencent/open/utils/e;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception p0

    const-string p1, "getEncryptPkgName"

    .line 299
    invoke-static {v1, p1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 111
    invoke-static {}, Lcom/tencent/open/utils/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "UNKNOWN"

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 113
    :cond_12
    invoke-static {p0, p1}, Lcom/tencent/open/utils/k;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    goto :goto_1c

    .line 114
    :cond_1a
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1c
    move-object v0, p0

    :cond_1d
    return-object v0
.end method

.method public static a()V
    .registers 1

    .line 94
    sget-object v0, Lcom/tencent/open/utils/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 101
    :cond_3
    sget-object v0, Lcom/tencent/open/utils/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 7

    const-string v0, "openSDK_LOG.SystemUtils"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_34

    if-nez p1, :cond_9

    goto :goto_34

    .line 353
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 354
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 355
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2b

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivityExist false. Intent= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_2b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1

    .line 349
    :cond_34
    :goto_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivityExist params error! ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "openSDK_LOG.SystemUtils"

    const-string v1, "OpenUi, validateAppSignatureForPackage"

    .line 214
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_12} :catch_2d

    .line 223
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p1, :cond_2d

    aget-object v2, p0, v1

    .line 224
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :catch_2d
    :cond_2d
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->extractSecureLib, libName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.SystemUtils"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_23

    const-string p0, "-->extractSecureLib, global context is null. "

    .line 468
    invoke-static {v1, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    const-string v3, "secure_lib"

    .line 472
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 474
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "version"

    if-nez v5, :cond_50

    .line 476
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 477
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 479
    :try_start_47
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_73

    :catch_4b
    move-exception v4

    .line 481
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    .line 485
    :cond_50
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->extractSecureLib, libVersion: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | oldVersion: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v4, :cond_73

    return v6

    :cond_73
    :goto_73
    const/4 v4, 0x0

    .line 495
    :try_start_74
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7c} :catch_a7
    .catchall {:try_start_74 .. :try_end_7c} :catchall_a4

    .line 496
    :try_start_7c
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 498
    invoke-static {p0, v4}, Lcom/tencent/open/utils/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 500
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 501
    invoke-interface {p1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8d} :catch_9f
    .catchall {:try_start_7c .. :try_end_8d} :catchall_9a

    if-eqz p0, :cond_94

    .line 509
    :try_start_8f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_94

    :catch_93
    nop

    :cond_94
    :goto_94
    if-eqz v4, :cond_99

    .line 516
    :try_start_96
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_99

    :catch_99
    :cond_99
    return v6

    :catchall_9a
    move-exception p1

    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    goto :goto_bc

    :catch_9f
    move-exception p1

    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    goto :goto_a9

    :catchall_a4
    move-exception p1

    move-object p0, v4

    goto :goto_bc

    :catch_a7
    move-exception p1

    move-object p0, v4

    :goto_a9
    :try_start_a9
    const-string p2, "-->extractSecureLib, when copy lib execption."

    .line 505
    invoke-static {v1, p2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_bb

    if-eqz v4, :cond_b5

    .line 509
    :try_start_b0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    nop

    :cond_b5
    :goto_b5
    if-eqz p0, :cond_ba

    .line 516
    :try_start_b7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_ba

    :catch_ba
    :cond_ba
    return v2

    :catchall_bb
    move-exception p1

    :goto_bc
    if-eqz v4, :cond_c3

    .line 509
    :try_start_be
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_c3

    :catch_c2
    nop

    :cond_c3
    :goto_c3
    if-eqz p0, :cond_c8

    .line 516
    :try_start_c5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c8

    .line 521
    :catch_c8
    :cond_c8
    throw p1
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    const-string v0, "shareToQQ"

    .line 571
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x2777

    return p0

    :cond_b
    const-string v0, "shareToQzone"

    .line 573
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p0, 0x2778

    return p0

    :cond_16
    const-string v0, "addToQQFavorites"

    .line 575
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 p0, 0x2779

    return p0

    :cond_21
    const-string v0, "sendToMyComputer"

    .line 577
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 p0, 0x277a

    return p0

    :cond_2c
    const-string v0, "shareToTroopBar"

    .line 579
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 p0, 0x277b

    return p0

    :cond_37
    const-string v0, "action_login"

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 p0, 0x2b5d

    return p0

    :cond_42
    const-string v0, "action_request"

    .line 583
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const/16 p0, 0x2774

    return p0

    :cond_4d
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "_"

    const-string v1, ""

    const-string v2, "openSDK_LOG.SystemUtils"

    const-string v3, "OpenUi, getSignValidString"

    .line 241
    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v4, 0x40

    .line 246
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 247
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v4, "MD5"

    .line 249
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const/4 v5, 0x0

    .line 250
    aget-object p0, p0, v5

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 251
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/open/utils/m;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->sign: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-static {p0}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 258
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/open/utils/m;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-->signEncryped: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_8b} :catch_8c

    goto :goto_95

    :catch_8c
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "OpenUi, getSignValidString error"

    .line 264
    invoke-static {v2, p1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_95
    return-object v1
.end method

.method private static b()Z
    .registers 4

    const/4 v0, 0x0

    .line 712
    :try_start_1
    const-class v1, Landroid/os/Environment;

    const-string v2, "isExternalStorageLegacy"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 713
    const-class v2, Landroid/os/Environment;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_19} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_19

    :catch_19
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.tencent.mobileqq"

    .line 619
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQQInstalled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.SystemUtils"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_41

    if-nez p1, :cond_6

    goto :goto_41

    .line 372
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const-string v1, "openSDK_LOG.SystemUtils"

    if-nez p1, :cond_14

    const-string p0, "isActivityExist? component null"

    .line 374
    invoke-static {v1, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 377
    :cond_14
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {p0, p1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v0, 0x1

    .line 380
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityExist? packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", appVersionName= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const-string v0, "com.tencent.mobileqq"

    .line 403
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 404
    invoke-static {p0, p1}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static c()Ljava/lang/String;
    .registers 3

    .line 724
    invoke-static {}, Lcom/tencent/open/b/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 725
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 726
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.SystemUtils"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "com.tencent.mobileqq"

    .line 630
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "openSDK_LOG.SystemUtils"

    if-eqz v0, :cond_11

    const-string p0, "isQQBranchInstalled: qq"

    .line 632
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    const-string v0, "com.tencent.tim"

    .line 635
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "isQQBranchInstalled: tim"

    .line 637
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1f
    const-string v0, "com.tencent.minihd.qq"

    .line 640
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    const-string p0, "isQQBranchInstalled: pad"

    .line 642
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    const-string p0, "isQQBranchInstalled: disable speed"

    .line 650
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const-string v0, "com.tencent.tim"

    .line 416
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-static {p0, p1}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 697
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt p0, v1, :cond_19

    .line 698
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_19

    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    if-nez p1, :cond_6

    goto :goto_33

    .line 129
    :cond_6
    const-class v1, Lcom/tencent/open/utils/k;

    monitor-enter v1

    .line 130
    :try_start_9
    sget-object v2, Lcom/tencent/open/utils/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 132
    sget-object p0, Lcom/tencent/open/utils/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/a/a/a;

    if-nez p0, :cond_1c

    goto :goto_1e

    .line 133
    :cond_1c
    iget-object v0, p0, Lcom/tencent/a/a/a;->b:Landroid/content/pm/PackageInfo;

    :goto_1e
    monitor-exit v1

    return-object v0

    .line 135
    :cond_20
    invoke-static {p0, p1}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 136
    sget-object v0, Lcom/tencent/open/utils/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/tencent/a/a/a;

    invoke-direct {v2, p1, p0}, Lcom/tencent/a/a/a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v1

    return-object p0

    :catchall_30
    move-exception p0

    .line 139
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    :goto_33
    return-object v0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 157
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 657
    invoke-static {}, Lcom/tencent/open/utils/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 661
    :cond_c
    invoke-static {p0, p1}, Lcom/tencent/open/utils/k;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method
