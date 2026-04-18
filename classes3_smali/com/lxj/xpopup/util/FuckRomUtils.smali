.class public final Lcom/lxj/xpopup/util/FuckRomUtils;
.super Ljava/lang/Object;
.source "FuckRomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static final ROM_360:[Ljava/lang/String;

.field private static final ROM_COOLPAD:[Ljava/lang/String;

.field private static final ROM_GIONEE:[Ljava/lang/String;

.field private static final ROM_GOOGLE:[Ljava/lang/String;

.field private static final ROM_HTC:[Ljava/lang/String;

.field private static final ROM_HUAWEI:[Ljava/lang/String;

.field private static final ROM_LEECO:[Ljava/lang/String;

.field private static final ROM_LENOVO:[Ljava/lang/String;

.field private static final ROM_LG:[Ljava/lang/String;

.field private static final ROM_MEIZU:[Ljava/lang/String;

.field private static final ROM_MOTOROLA:[Ljava/lang/String;

.field private static final ROM_NUBIA:[Ljava/lang/String;

.field private static final ROM_ONEPLUS:[Ljava/lang/String;

.field private static final ROM_OPPO:[Ljava/lang/String;

.field private static final ROM_SAMSUNG:[Ljava/lang/String;

.field private static final ROM_SMARTISAN:[Ljava/lang/String;

.field private static final ROM_SONY:[Ljava/lang/String;

.field private static final ROM_VIVO:[Ljava/lang/String;

.field private static final ROM_XIAOMI:[Ljava/lang/String;

.field private static final ROM_ZTE:[Ljava/lang/String;

.field private static bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "huawei"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    const-string v0, "vivo"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_VIVO:[Ljava/lang/String;

    const-string v0, "xiaomi"

    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    const-string v0, "oppo"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_OPPO:[Ljava/lang/String;

    const-string v0, "leeco"

    const-string v1, "letv"

    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_LEECO:[Ljava/lang/String;

    const-string v0, "360"

    const-string v1, "qiku"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_360:[Ljava/lang/String;

    const-string v0, "zte"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_ZTE:[Ljava/lang/String;

    const-string v0, "oneplus"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    const-string v0, "nubia"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_NUBIA:[Ljava/lang/String;

    const-string v0, "coolpad"

    const-string v1, "yulong"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    const-string v0, "lg"

    const-string v1, "lge"

    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_LG:[Ljava/lang/String;

    const-string v0, "google"

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    const-string v0, "samsung"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    const-string v0, "meizu"

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_MEIZU:[Ljava/lang/String;

    const-string v0, "lenovo"

    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_LENOVO:[Ljava/lang/String;

    const-string v0, "smartisan"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    const-string v0, "htc"

    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_HTC:[Ljava/lang/String;

    const-string v0, "sony"

    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SONY:[Ljava/lang/String;

    const-string v0, "gionee"

    const-string v1, "amigo"

    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_GIONEE:[Ljava/lang/String;

    const-string v0, "motorola"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-void
.end method

.method private static getBrand()Ljava/lang/String;
    .registers 2

    .line 352
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    :cond_d
    const-string v0, "unknown"

    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .registers 2

    .line 342
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    :cond_d
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getRomInfo()Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;
    .registers 5

    .line 245
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    if-eqz v0, :cond_5

    return-object v0

    .line 246
    :cond_5
    new-instance v0, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    invoke-direct {v0}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;-><init>()V

    sput-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    .line 247
    invoke-static {}, Lcom/lxj/xpopup/util/FuckRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {}, Lcom/lxj/xpopup/util/FuckRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    .line 250
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.build.version.emui"

    .line 251
    invoke-static {v0}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 253
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3c

    .line 254
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_41

    .line 256
    :cond_3c
    sget-object v1, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    invoke-static {v1, v0}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    :goto_41
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 260
    :cond_44
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_VIVO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 261
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 265
    :cond_61
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 266
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 270
    :cond_7e
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_OPPO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 271
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 275
    :cond_9b
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_LEECO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 276
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.letv.release.version"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 281
    :cond_b8
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_360:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 282
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.build.uiversion"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 286
    :cond_d5
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_ZTE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 287
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.build.MiFavor_version"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 291
    :cond_f2
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 292
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.rom.version"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 296
    :cond_10f
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_NUBIA:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 297
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, "ro.build.rom.id"

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0

    .line 302
    :cond_12c
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 303
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1e5

    .line 304
    :cond_13d
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_LG:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 305
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1e5

    .line 306
    :cond_14e
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 307
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1e5

    .line 308
    :cond_15f
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_170

    .line 309
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1e5

    .line 310
    :cond_170
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_MEIZU:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 311
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 312
    :cond_180
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_LENOVO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_190

    .line 313
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 314
    :cond_190
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 315
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 316
    :cond_1a0
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_HTC:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 317
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 318
    :cond_1b0
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SONY:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 319
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 320
    :cond_1c0
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_GIONEE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 321
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 322
    :cond_1d0
    sget-object v2, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/FuckRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 323
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    aget-object v1, v2, v4

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e5

    .line 325
    :cond_1e0
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    :goto_1e5
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    const-string v1, ""

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->bean:Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    return-object v0
.end method

.method private static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 362
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 363
    invoke-static {p0}, Lcom/lxj/xpopup/util/FuckRomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, ""

    .line 365
    :goto_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 367
    :cond_1b
    :try_start_1b
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_28

    goto :goto_29

    :catchall_28
    nop

    .line 373
    :cond_29
    :goto_29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-object v1

    :cond_30
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 380
    invoke-static {p0}, Lcom/lxj/xpopup/util/FuckRomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 382
    :cond_b
    invoke-static {p0}, Lcom/lxj/xpopup/util/FuckRomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v0

    .line 384
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_21

    .line 385
    invoke-static {p0}, Lcom/lxj/xpopup/util/FuckRomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 426
    const-class v0, Ljava/lang/String;

    const-string v1, ""

    :try_start_4
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    .line 427
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v1, v3, v7

    .line 428
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    return-object v1
.end method

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 395
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_44
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3d

    .line 396
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_3b
    .catchall {:try_start_2a .. :try_end_2e} :catchall_38

    if-eqz p0, :cond_34

    .line 404
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    return-object p0

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4a

    goto :goto_4a

    :catchall_38
    move-exception p0

    move-object v0, v1

    goto :goto_3e

    :catch_3b
    move-object v0, v1

    goto :goto_45

    :catchall_3d
    move-exception p0

    :goto_3e
    if-eqz v0, :cond_43

    :try_start_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_43

    .line 407
    :catch_43
    :cond_43
    throw p0

    :catch_44
    nop

    :goto_45
    if-eqz v0, :cond_4a

    .line 404
    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4a

    :catch_4a
    :cond_4a
    :goto_4a
    const-string p0, ""

    return-object p0
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, ""

    .line 413
    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 414
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    .line 415
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 417
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 418
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    return-object v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "brand",
            "manufacturer",
            "names"
        }
    .end annotation

    .line 332
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_19

    aget-object v3, p2, v2

    .line 333
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public static isSamsung()Z
    .registers 2

    .line 173
    sget-object v0, Lcom/lxj/xpopup/util/FuckRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/lxj/xpopup/util/FuckRomUtils;->getRomInfo()Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->access$000(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
