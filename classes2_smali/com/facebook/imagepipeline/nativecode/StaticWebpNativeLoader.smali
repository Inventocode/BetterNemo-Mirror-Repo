.class public Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;
.super Ljava/lang/Object;
.source "StaticWebpNativeLoader.java"


# static fields
.field private static sInitialized:Z


# direct methods
.method public static declared-synchronized ensure()V
    .registers 3

    const-class v0, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-boolean v1, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->sInitialized:Z

    if-nez v1, :cond_1a

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    const/16 v2, 0x10

    if-gt v1, v2, :cond_12

    :try_start_d
    const-string v1, "fb_jpegturbo"

    .line 30
    invoke-static {v1}, Lcom/facebook/common/soloader/SoLoaderShim;->loadLibrary(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_12} :catch_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    :catch_12
    :cond_12
    :try_start_12
    const-string v1, "static-webp"

    .line 35
    invoke-static {v1}, Lcom/facebook/common/soloader/SoLoaderShim;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 36
    sput-boolean v1, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->sInitialized:Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    .line 38
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
