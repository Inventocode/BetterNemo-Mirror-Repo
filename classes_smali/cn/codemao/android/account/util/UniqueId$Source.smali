.class final Lcn/codemao/android/account/util/UniqueId$Source;
.super Ljava/lang/Object;
.source "UniqueId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/UniqueId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    }
.end annotation


# instance fields
.field private memory:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$55frT91j8p9a1i7TlFFcobf0bZs(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/util/UniqueId$Source;->lambda$logSource$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0tdGRgBFwyYXs7DbgsOc6EsgC8(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->lambda$generate$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cL8NpzGyxCDBKy0UYkwfih6y-Hg(Lcn/codemao/android/account/util/UniqueId$Source;Lio/reactivex/ObservableEmitter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->lambda$memory$0(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fSKW9psBGIMjQfZfx41cfBGdERU(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/util/UniqueId$Source;->lambda$logSource$4(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tqoz8NVs6PD668GCPEi9c2aef9c(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->lambda$disk$1(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/account/util/UniqueId$1;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;
    .registers 1

    .line 104
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->readFromLocal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;
    .registers 1

    .line 104
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->readInternalStorage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;
    .registers 1

    .line 104
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->readExternalStorage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->saveIdToInternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->saveIdToExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcn/codemao/android/account/util/UniqueId$Source;)Ljava/lang/String;
    .registers 1

    .line 104
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->generateUniquePseudoId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 484
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2e

    :try_start_b
    const-string v1, "android.content.Context"

    .line 486
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkSelfPermission"

    new-array v4, v3, [Ljava/lang/Class;

    .line 487
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 488
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_3d

    if-nez p1, :cond_3d

    goto :goto_3c

    .line 498
    :cond_2e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    :goto_3c
    const/4 v0, 0x1

    :catchall_3d
    :cond_3d
    return v0
.end method

.method private generateUniquePseudoId()Ljava/lang/String;
    .registers 6

    .line 201
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->getDeviceId(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 202
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 203
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 205
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    :cond_44
    const/16 v0, 0x10

    .line 211
    invoke-direct {p0, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->getRandomCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 213
    :cond_4b
    sget-object v2, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    if-ne v1, v2, :cond_60

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_60
    :goto_60
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->makeFakeImeiNumber()Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fakeImei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    return-object v0
.end method

.method private getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 419
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method private getDeviceId(Landroid/content/Context;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_c

    .line 334
    new-instance p1, Landroid/util/Pair;

    sget-object v1, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->DEFAULT:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 336
    :cond_c
    sget-object v1, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->DEFAULT:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 338
    :try_start_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_45

    .line 339
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_db

    .line 340
    :try_start_18
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->MAC:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_42

    .line 341
    :try_start_1a
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 342
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_3e

    .line 343
    :try_start_24
    sget-object v2, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->ANDROIDID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_d8

    .line 344
    :try_start_26
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalAndroidId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 345
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getSerialNo()Ljava/lang/String;

    move-result-object p1

    .line 346
    sget-object v2, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 347
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalSerialNumber(Ljava/lang/String;)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3a

    if-nez v3, :cond_3a

    goto/16 :goto_db

    :catchall_3a
    :cond_3a
    move-object v0, p1

    move-object v1, v2

    goto/16 :goto_db

    :catchall_3e
    :cond_3e
    move-object v0, v2

    :goto_3f
    move-object v1, v3

    goto/16 :goto_db

    :catchall_42
    move-object v0, v2

    goto/16 :goto_db

    :cond_45
    if-ne v2, v3, :cond_76

    .line 354
    :try_start_47
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v2
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_db

    .line 355
    :try_start_4b
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->MAC:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_42

    .line 356
    :try_start_4d
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 357
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_57
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 361
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_3e

    .line 362
    :try_start_61
    sget-object v2, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->ANDROIDID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_d8

    .line 363
    :try_start_63
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalAndroidId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 364
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getSerialNo()Ljava/lang/String;

    move-result-object p1

    .line 365
    sget-object v2, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 366
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalSerialNumber(Ljava/lang/String;)Z

    move-result v3
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_3a

    if-nez v3, :cond_3a

    goto :goto_db

    :cond_76
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_a9

    .line 373
    :try_start_7a
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_db

    .line 374
    :try_start_7e
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->ANDROIDID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_42

    .line 375
    :try_start_80
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalAndroidId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 376
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    .line 377
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 378
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalSerialNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 379
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v2

    .line 380
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->MAC:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 381
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 382
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_a2
    .catchall {:try_start_80 .. :try_end_a2} :catchall_3e

    .line 384
    :try_start_a2
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v2
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_d8

    if-nez v2, :cond_d8

    goto :goto_db

    .line 392
    :cond_a9
    :try_start_a9
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getSerialNo()Ljava/lang/String;

    move-result-object v2
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_db

    .line 393
    :try_start_ad
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_42

    .line 394
    :try_start_af
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalSerialNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 395
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 396
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->ANDROIDID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 397
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalAndroidId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 398
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacByJavaAPI()Ljava/lang/String;

    move-result-object v2

    .line 399
    sget-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->MAC:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 400
    invoke-direct {p0, v2}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 401
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_d1
    .catchall {:try_start_af .. :try_end_d1} :catchall_3e

    .line 403
    :try_start_d1
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->isLegalMacAddress(Ljava/lang/String;)Z

    move-result v2
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_d8

    if-nez v2, :cond_d8

    goto :goto_db

    :catchall_d8
    :cond_d8
    move-object v0, p1

    goto/16 :goto_3f

    .line 413
    :catchall_db
    :goto_db
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getMacByJavaAPI()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 442
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 445
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_c

    return-object v0

    .line 448
    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    const-string v3, "wlan0"

    .line 449
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "eth0"

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    :cond_2a
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 451
    array-length v2, v1

    if-eqz v2, :cond_6e

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3b
    const/4 v6, 0x1

    if-ge v5, v3, :cond_54

    aget-byte v7, v1, v5

    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    .line 454
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 456
    :cond_54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_62

    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 459
    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6e

    :catchall_6e
    :cond_6e
    return-object v0
.end method

.method private getMacBySystemInterface(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 469
    invoke-direct {p0, p1, v1}, Lcn/codemao/android/account/util/UniqueId$Source;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    .line 471
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    return-object v1
.end method

.method private getRandomCode(I)Ljava/lang/String;
    .registers 8

    .line 230
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_1b

    .line 232
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v4, 0x3e

    int-to-double v4, v4

    mul-double v2, v2, v4

    rem-double/2addr v2, v4

    double-to-int v2, v2

    const-string v3, "0123456789qwertyuiopasdfghjklzxcvbnmABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 236
    :cond_1b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private getSerialNo()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method private isExternalStorageReadable()Z
    .registers 3

    .line 329
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private isExternalStorageWritable()Z
    .registers 3

    .line 324
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLegalAndroidId(Ljava/lang/String;)Z
    .registers 3

    .line 510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "9774d56d682e549c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private isLegalMacAddress(Ljava/lang/String;)Z
    .registers 3

    .line 517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "00:00:00:00:00:00"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private isLegalSerialNumber(Ljava/lang/String;)Z
    .registers 3

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private synthetic lambda$disk$1(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$generate$2(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->saveIdToInternalStorage(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source;->saveIdToExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$logSource$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    iget-object p2, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has the data you are looking for!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    goto :goto_31

    .line 192
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have any data."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    :goto_31
    return-void
.end method

.method private synthetic lambda$logSource$4(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 4

    .line 188
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda4;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$memory$0(Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 126
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_11

    .line 128
    :cond_e
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    :goto_11
    return-void
.end method

.method private logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFakeImeiNumber()Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "35"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 249
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 251
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readExternalStorage()Ljava/lang/String;
    .registers 4

    const-string v0, "try to readExternalStorage"

    .line 270
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/codemao/android/account/util/UniqueId;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM_PSEUDO_DI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 281
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/FileUtils;->file2byte(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_19

    .line 282
    array-length v0, p1

    if-lez v0, :cond_19

    .line 283
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_19
    const-string p1, ""

    return-object p1
.end method

.method private readFromLocal()Ljava/lang/String;
    .registers 3

    .line 115
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->readInternalStorage()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 117
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->readExternalStorage()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private readInternalStorage()Ljava/lang/String;
    .registers 4

    const-string v0, "readInternalStorage"

    .line 264
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CM_PSEUDO_DI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveIdToExternalStorage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "try to saveIdToExternalStorage"

    .line 303
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 306
    invoke-direct {p0}, Lcn/codemao/android/account/util/UniqueId$Source;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "saveIdToExternalStorage"

    .line 307
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 309
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/codemao/android/account/util/UniqueId;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CM_PSEUDO_DI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->writeFile([BLjava/io/File;)V

    :cond_2e
    return-void
.end method

.method private saveIdToInternalStorage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "saveIdToInternalStorage"

    .line 293
    invoke-static {v0}, Lcn/codemao/android/account/util/UniqueId;->access$500(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CM_PSEUDO_DI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 296
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/account/util/UniqueId$Source;->writeFile([BLjava/io/File;)V

    return-void
.end method

.method private writeFile([BLjava/io/File;)V
    .registers 4

    .line 316
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 317
    invoke-static {p2}, Lcn/codemao/android/account/util/FileUtils;->createNewFile(Ljava/io/File;)Z

    .line 319
    :cond_9
    invoke-static {p1, p2}, Lcn/codemao/android/account/util/FileUtils;->byte2File([BLjava/io/File;)V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .registers 3

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Wiping memory..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source;->memory:Ljava/lang/String;

    return-void
.end method

.method public disk()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/UniqueId$Source$1;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;)V

    invoke-static {v0}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 164
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 166
    new-instance v1, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda3;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "DISK"

    invoke-direct {p0, v1}, Lcn/codemao/android/account/util/UniqueId$Source;->logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public generate()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source$2;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/UniqueId$Source$2;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;)V

    invoke-static {v0}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 177
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 179
    new-instance v1, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 183
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "GENERATE"

    .line 184
    invoke-direct {p0, v1}, Lcn/codemao/android/account/util/UniqueId$Source;->logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public memory()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/UniqueId$Source$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/util/UniqueId$Source;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "MEMORY"

    .line 131
    invoke-direct {p0, v1}, Lcn/codemao/android/account/util/UniqueId$Source;->logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
