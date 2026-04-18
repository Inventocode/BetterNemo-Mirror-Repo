.class public final Lcom/qiniu/android/common/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static interval:I = 0x0

.field public static isRecord:Z = true

.field public static maxRecordFileSize:I

.field public static preQueryHost00:Ljava/lang/String;

.field public static preQueryHost01:Ljava/lang/String;

.field public static recordDir:Ljava/lang/String;

.field public static uploadThreshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/common/Config;->recordDir:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_13
    const/high16 v0, 0x200000

    .line 55
    sput v0, Lcom/qiniu/android/common/Config;->maxRecordFileSize:I

    const/16 v0, 0x1000

    .line 68
    sput v0, Lcom/qiniu/android/common/Config;->uploadThreshold:I

    const/16 v0, 0xa

    .line 73
    sput v0, Lcom/qiniu/android/common/Config;->interval:I

    const-string v0, "uc.qbox.me"

    .line 78
    sput-object v0, Lcom/qiniu/android/common/Config;->preQueryHost00:Ljava/lang/String;

    const-string v0, "api.qiniu.com"

    .line 79
    sput-object v0, Lcom/qiniu/android/common/Config;->preQueryHost01:Ljava/lang/String;

    return-void
.end method
