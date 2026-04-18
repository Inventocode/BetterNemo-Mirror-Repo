.class Lcom/qiniu/android/storage/UploadInfoV2$3;
.super Ljava/lang/Object;
.source "UploadInfoV2.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV2;->clearUploadState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/ListVector$EnumeratorHandler<",
        "Lcom/qiniu/android/storage/UploadData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV2;)V
    .registers 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadData;)Z
    .registers 2

    .line 264
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadData;->clearUploadState()V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 261
    check-cast p1, Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV2$3;->enumerate(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    return p1
.end method
