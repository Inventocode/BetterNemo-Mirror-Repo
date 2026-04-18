.class public final Lcn/codemao/android/sketch/utils/EditorBitmapCache;
.super Landroidx/collection/LruCache;
.source "EditorBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static sEditorBitmapCache:Lcn/codemao/android/sketch/utils/EditorBitmapCache;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;
    .registers 3

    .line 44
    sget-object v0, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->sEditorBitmapCache:Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    if-nez v0, :cond_18

    .line 45
    const-class v0, Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    monitor-enter v0

    .line 46
    :try_start_7
    sget-object v1, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->sEditorBitmapCache:Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    if-nez v1, :cond_13

    .line 47
    new-instance v1, Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;-><init>(I)V

    sput-object v1, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->sEditorBitmapCache:Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    .line 49
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 52
    :cond_18
    :goto_18
    sget-object v0, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->sEditorBitmapCache:Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    return-object v0
.end method
