.class public final Lcom/ljwx/baseapp/extensions/AppExtensionKt;
.super Ljava/lang/Object;
.source "AppExtension.kt"


# direct methods
.method public static final isMainThread()Z
    .registers 2

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
