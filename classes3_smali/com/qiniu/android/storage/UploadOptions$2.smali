.class Lcom/qiniu/android/storage/UploadOptions$2;
.super Ljava/lang/Object;
.source "UploadOptions.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCancellationSignal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;Lcom/qiniu/android/storage/NetReadyHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadOptions;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
