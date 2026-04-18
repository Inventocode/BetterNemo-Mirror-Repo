.class final Lcom/scottyab/rootbeer/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final knownDangerousAppsPackages:[Ljava/lang/String;

.field static final knownRootAppsPackages:[Ljava/lang/String;

.field static final pathsThatShouldNotBeWritable:[Ljava/lang/String;

.field private static final suPaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 28

    const-string v0, "com.noshufou.android.su"

    const-string v1, "com.noshufou.android.su.elite"

    const-string v2, "eu.chainfire.supersu"

    const-string v3, "com.koushikdutta.superuser"

    const-string v4, "com.thirdparty.superuser"

    const-string v5, "com.yellowes.su"

    const-string v6, "com.topjohnwu.magisk"

    const-string v7, "com.kingroot.kinguser"

    const-string v8, "com.kingo.root"

    const-string v9, "com.smedialink.oneclickroot"

    const-string v10, "com.zhiqupk.root.global"

    const-string v11, "com.alephzain.framaroot"

    .line 15
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scottyab/rootbeer/Const;->knownRootAppsPackages:[Ljava/lang/String;

    const-string v1, "com.koushikdutta.rommanager"

    const-string v2, "com.koushikdutta.rommanager.license"

    const-string v3, "com.dimonvideo.luckypatcher"

    const-string v4, "com.chelpus.lackypatch"

    const-string v5, "com.ramdroid.appquarantine"

    const-string v6, "com.ramdroid.appquarantinepro"

    const-string v7, "com.android.vending.billing.InAppBillingService.COIN"

    const-string v8, "com.android.vending.billing.InAppBillingService.LUCK"

    const-string v9, "com.chelpus.luckypatcher"

    const-string v10, "com.blackmartalpha"

    const-string v11, "org.blackmart.market"

    const-string v12, "com.allinone.free"

    const-string v13, "com.repodroid.app"

    const-string v14, "org.creeplays.hack"

    const-string v15, "com.baseappfull.fwd"

    const-string v16, "com.zmapp"

    const-string v17, "com.dv.marketmod.installer"

    const-string v18, "org.mobilism.android"

    const-string v19, "com.android.wp.net.log"

    const-string v20, "com.android.camera.update"

    const-string v21, "cc.madkite.freedom"

    const-string v22, "com.solohsu.android.edxp.manager"

    const-string v23, "org.meowcat.edxposed.manager"

    const-string v24, "com.xmodgame"

    const-string v25, "com.cih.game_cih"

    const-string v26, "com.charles.lpoqasert"

    const-string v27, "catch_.me_.if_.you_.can_"

    .line 30
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scottyab/rootbeer/Const;->knownDangerousAppsPackages:[Ljava/lang/String;

    const-string v1, "/data/local/"

    const-string v2, "/data/local/bin/"

    const-string v3, "/data/local/xbin/"

    const-string v4, "/sbin/"

    const-string v5, "/su/bin/"

    const-string v6, "/system/bin/"

    const-string v7, "/system/bin/.ext/"

    const-string v8, "/system/bin/failsafe/"

    const-string v9, "/system/sd/xbin/"

    const-string v10, "/system/usr/we-need-root/"

    const-string v11, "/system/xbin/"

    const-string v12, "/cache/"

    const-string v13, "/data/"

    const-string v14, "/dev/"

    .line 73
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scottyab/rootbeer/Const;->suPaths:[Ljava/lang/String;

    const-string v1, "/system"

    const-string v2, "/system/bin"

    const-string v3, "/system/sbin"

    const-string v4, "/system/xbin"

    const-string v5, "/vendor/bin"

    const-string v6, "/sbin"

    const-string v7, "/etc"

    .line 91
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scottyab/rootbeer/Const;->pathsThatShouldNotBeWritable:[Ljava/lang/String;

    return-void
.end method

.method static getPaths()[Ljava/lang/String;
    .registers 7

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/scottyab/rootbeer/Const;->suPaths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "PATH"

    .line 113
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    const-string v3, ""

    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_57

    :cond_1d
    const-string v3, ":"

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_4e

    aget-object v5, v1, v4

    const-string v6, "/"

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    :cond_42
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 127
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_4e
    new-array v1, v2, [Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_57
    :goto_57
    new-array v1, v2, [Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
