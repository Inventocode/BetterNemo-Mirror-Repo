.class public final Lcom/codemao/toolssdk/manager/FileCachePathManager;
.super Ljava/lang/Object;
.source "FileCachePathManager.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/manager/FileCachePathManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/manager/FileCachePathManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/FileCachePathManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/FileCachePathManager;->INSTANCE:Lcom/codemao/toolssdk/manager/FileCachePathManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initFilePath(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tools_sdk/audio_cache/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
