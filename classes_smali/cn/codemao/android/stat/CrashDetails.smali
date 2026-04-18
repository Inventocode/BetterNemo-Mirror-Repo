.class Lcn/codemao/android/stat/CrashDetails;
.super Ljava/lang/Object;
.source "CrashDetails.java"


# static fields
.field private static customSegments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static inBackground:Z

.field private static final logs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final startTime:I

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/codemao/android/stat/CrashDetails;->logs:Ljava/util/ArrayList;

    .line 60
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v0

    sput v0, Lcn/codemao/android/stat/CrashDetails;->startTime:I

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcn/codemao/android/stat/CrashDetails;->customSegments:Ljava/util/Map;

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcn/codemao/android/stat/CrashDetails;->inBackground:Z

    const-wide/16 v0, 0x0

    .line 63
    sput-wide v0, Lcn/codemao/android/stat/CrashDetails;->totalMemory:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addLog(Ljava/lang/String;)V
    .registers 2

    .line 133
    sget-object v0, Lcn/codemao/android/stat/CrashDetails;->logs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static varargs fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 6

    .line 421
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_20

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_20

    const/4 v0, 0x0

    .line 422
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_20

    .line 423
    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    .line 424
    aget-object v2, p1, v2

    if-eqz v2, :cond_1d

    .line 425
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    .line 426
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_20

    :cond_1d
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :catch_20
    :cond_20
    return-void
.end method

.method static getBatteryLevel(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 268
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3d

    const-string v1, "level"

    const/4 v2, -0x1

    .line 270
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 271
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-le v1, v2, :cond_3d

    if-lez p0, :cond_3d

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    const/high16 p0, 0x42c80000  # 100.0f

    mul-float v1, v1, p0

    .line 275
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    nop

    .line 280
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "CodeMaoStat"

    const-string v1, "Can\'t get batter level"

    .line 281
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v0
.end method

.method static getCpu()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_9

    .line 184
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0

    .line 186
    :cond_9
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getCrashData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 7

    .line 370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x2c

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_error"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "_nonfatal"

    aput-object v2, v1, p1

    .line 374
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const/4 p1, 0x4

    const-string p2, "_logs"

    aput-object p2, v1, p1

    .line 375
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getLogs()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const/4 p1, 0x6

    const-string p2, "_device"

    aput-object p2, v1, p1

    .line 376
    invoke-static {}, Lcn/codemao/android/stat/DeviceInfo;->getDevice()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    const/16 p1, 0x8

    const-string p2, "_os"

    aput-object p2, v1, p1

    .line 377
    invoke-static {}, Lcn/codemao/android/stat/DeviceInfo;->getOS()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v1, p2

    const/16 p1, 0xa

    const-string p2, "_os_version"

    aput-object p2, v1, p1

    .line 378
    invoke-static {}, Lcn/codemao/android/stat/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v1, p2

    const/16 p1, 0xc

    const-string p2, "_resolution"

    aput-object p2, v1, p1

    .line 379
    invoke-static {p0}, Lcn/codemao/android/stat/DeviceInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xd

    aput-object p1, v1, p2

    const/16 p1, 0xe

    const-string p2, "_app_version"

    aput-object p2, v1, p1

    .line 380
    invoke-static {p0}, Lcn/codemao/android/stat/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xf

    aput-object p1, v1, p2

    const/16 p1, 0x10

    const-string p2, "_manufacture"

    aput-object p2, v1, p1

    .line 381
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getManufacturer()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x11

    aput-object p1, v1, p2

    const/16 p1, 0x12

    const-string p2, "_cpu"

    aput-object p2, v1, p1

    .line 382
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getCpu()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x13

    aput-object p1, v1, p2

    const/16 p1, 0x14

    const-string p2, "_opengl"

    aput-object p2, v1, p1

    .line 383
    invoke-static {p0}, Lcn/codemao/android/stat/CrashDetails;->getOpenGL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x15

    aput-object p1, v1, p2

    const/16 p1, 0x16

    const-string p2, "_ram_current"

    aput-object p2, v1, p1

    .line 384
    invoke-static {p0}, Lcn/codemao/android/stat/CrashDetails;->getRamCurrent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x17

    aput-object p1, v1, p2

    const/16 p1, 0x18

    const-string p2, "_ram_total"

    aput-object p2, v1, p1

    .line 385
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getRamTotal()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x19

    aput-object p1, v1, p2

    const/16 p1, 0x1a

    const-string p2, "_disk_current"

    aput-object p2, v1, p1

    .line 386
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getDiskCurrent()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1b

    aput-object p1, v1, p2

    const/16 p1, 0x1c

    const-string p2, "_disk_total"

    aput-object p2, v1, p1

    .line 387
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getDiskTotal()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1d

    aput-object p1, v1, p2

    const/16 p1, 0x1e

    const-string p2, "_bat"

    aput-object p2, v1, p1

    .line 388
    invoke-static {p0}, Lcn/codemao/android/stat/CrashDetails;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1f

    aput-object p1, v1, p2

    const/16 p1, 0x20

    const-string p2, "_run"

    aput-object p2, v1, p1

    .line 389
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getRunningTime()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x21

    aput-object p1, v1, p2

    const/16 p1, 0x22

    const-string p2, "_orientation"

    aput-object p2, v1, p1

    .line 390
    invoke-static {p0}, Lcn/codemao/android/stat/CrashDetails;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x23

    aput-object p1, v1, p2

    const/16 p1, 0x24

    const-string p2, "_root"

    aput-object p2, v1, p1

    .line 391
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->isRooted()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x25

    aput-object p1, v1, p2

    const/16 p1, 0x26

    const-string p2, "_online"

    aput-object p2, v1, p1

    .line 392
    invoke-static {p0}, Lcn/codemao/android/stat/CrashDetails;->isOnline(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x27

    aput-object p1, v1, p2

    const/16 p1, 0x28

    const-string p2, "_muted"

    aput-object p2, v1, p1

    .line 393
    invoke-static {p0}, Lcn/codemao/android/stat/CrashDetails;->isMuted(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x29

    aput-object p0, v1, p1

    const/16 p0, 0x2a

    const-string p1, "_background"

    aput-object p1, v1, p0

    .line 394
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->isInBackground()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2b

    aput-object p0, v1, p1

    .line 372
    invoke-static {v0, v1}, Lcn/codemao/android/stat/CrashDetails;->fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V

    :try_start_138
    const-string p0, "_custom"

    .line 398
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getCustomSegments()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_141
    .catch Lorg/json/JSONException; {:try_start_138 .. :try_end_141} :catch_141

    .line 402
    :catch_141
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_145
    const-string p1, "UTF-8"

    .line 405
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_145 .. :try_end_14b} :catch_14b

    :catch_14b
    return-object p0
.end method

.method static getCustomSegments()Lorg/json/JSONObject;
    .registers 2

    .line 163
    sget-object v0, Lcn/codemao/android/stat/CrashDetails;->customSegments:Ljava/util/Map;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcn/codemao/android/stat/CrashDetails;->customSegments:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method static getDiskCurrent()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/32 v1, 0x100000

    const/16 v3, 0x12

    if-ge v0, v3, :cond_35

    .line 233
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v3, v3, v5

    .line 235
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v7, v0

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    .line 236
    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_35
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    mul-long v3, v3, v5

    .line 241
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    .line 242
    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDiskTotal()Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/32 v1, 0x100000

    const/16 v3, 0x12

    if-ge v0, v3, :cond_28

    .line 252
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    mul-long v3, v3, v5

    .line 254
    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_28
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    mul-long v3, v3, v5

    .line 259
    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLogs()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    sget-object v1, Lcn/codemao/android/stat/CrashDetails;->logs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 146
    :cond_20
    sget-object v1, Lcn/codemao/android/stat/CrashDetails;->logs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getManufacturer()Ljava/lang/String;
    .registers 1

    .line 175
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static getOpenGL(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    const-string v0, "1"

    if-eqz p0, :cond_2b

    .line 195
    array-length v1, p0

    if-lez v1, :cond_2b

    .line 196
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    aget-object v3, p0, v2

    .line 198
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_28

    .line 199
    iget p0, v3, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-eqz p0, :cond_27

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    return-object v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    return-object v0
.end method

.method static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    :cond_17
    const-string p0, "Square"

    return-object p0

    :cond_1a
    const-string p0, "Landscape"

    return-object p0

    :cond_1d
    const-string p0, "Portrait"

    return-object p0

    :cond_20
    const-string p0, "Unknown"

    return-object p0
.end method

.method static getRamCurrent(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 214
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 216
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 217
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getTotalRAM()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRamTotal()Ljava/lang/String;
    .registers 2

    .line 224
    invoke-static {}, Lcn/codemao/android/stat/CrashDetails;->getTotalRAM()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRunningTime()Ljava/lang/String;
    .registers 2

    .line 292
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->currentTimestamp()I

    move-result v0

    sget v1, Lcn/codemao/android/stat/CrashDetails;->startTime:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTotalRAM()J
    .registers 9

    .line 66
    sget-wide v0, Lcn/codemao/android/stat/CrashDetails;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6e

    const/4 v0, 0x0

    .line 70
    :try_start_9
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/meminfo"

    const-string v5, "r"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_45
    .catchall {:try_start_9 .. :try_end_12} :catchall_40

    .line 71
    :try_start_12
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v4, "(\\d+)"

    .line 74
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v4, ""

    .line 77
    :goto_22
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v4, 0x1

    .line 78
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2d} :catch_3e
    .catchall {:try_start_12 .. :try_end_2d} :catchall_4f

    goto :goto_22

    .line 81
    :cond_2e
    :try_start_2e
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    sput-wide v4, Lcn/codemao/android/stat/CrashDetails;->totalMemory:J
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_3e
    .catchall {:try_start_2e .. :try_end_37} :catchall_4f

    goto :goto_3a

    .line 83
    :catch_38
    :try_start_38
    sput-wide v2, Lcn/codemao/android/stat/CrashDetails;->totalMemory:J
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3a} :catch_3e
    .catchall {:try_start_38 .. :try_end_3a} :catchall_4f

    .line 98
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_5e

    goto :goto_6e

    :catch_3e
    move-exception v0

    goto :goto_49

    :catchall_40
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_63

    :catch_45
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_49
    if-eqz v1, :cond_55

    .line 88
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_55

    :catchall_4f
    move-exception v0

    goto :goto_63

    :catch_51
    move-exception v2

    .line 91
    :try_start_52
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    :cond_55
    :goto_55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_4f

    if-eqz v1, :cond_6e

    .line 98
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_6e

    :catch_5e
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    :goto_63
    if-eqz v1, :cond_6d

    .line 98
    :try_start_65
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    :cond_6d
    :goto_6d
    throw v0

    .line 105
    :cond_6e
    :goto_6e
    sget-wide v0, Lcn/codemao/android/stat/CrashDetails;->totalMemory:J

    return-wide v0
.end method

.method static inBackground()V
    .registers 1

    const/4 v0, 0x1

    .line 119
    sput-boolean v0, Lcn/codemao/android/stat/CrashDetails;->inBackground:Z

    return-void
.end method

.method static inForeground()V
    .registers 1

    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcn/codemao/android/stat/CrashDetails;->inBackground:Z

    return-void
.end method

.method static isInBackground()Ljava/lang/String;
    .registers 1

    .line 126
    sget-boolean v0, Lcn/codemao/android/stat/CrashDetails;->inBackground:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isMuted(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "audio"

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 354
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    const-string v0, "true"

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    const-string p0, "false"

    return-object p0

    :cond_16
    return-object v0
.end method

.method static isOnline(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "connectivity"

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_27

    .line 333
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 334
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 335
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "true"

    return-object p0

    :cond_27
    const-string p0, "false"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 342
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "CodeMaoStat"

    const-string v1, "Got exception determining connectivity"

    .line 343
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method static isRooted()Ljava/lang/String;
    .registers 8

    const-string v0, "/sbin/su"

    const-string v1, "/system/bin/su"

    const-string v2, "/system/xbin/su"

    const-string v3, "/data/local/xbin/su"

    const-string v4, "/data/local/bin/su"

    const-string v5, "/system/sd/xbin/su"

    const-string v6, "/system/bin/failsafe/su"

    const-string v7, "/data/local/su"

    .line 319
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2c

    .line 321
    aget-object v2, v0, v1

    .line 322
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v0, "true"

    return-object v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2c
    const-string v0, "false"

    return-object v0
.end method

.method static setCustomSegments(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/codemao/android/stat/CrashDetails;->customSegments:Ljava/util/Map;

    .line 156
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
