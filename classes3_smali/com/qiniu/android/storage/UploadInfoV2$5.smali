.class Lcom/qiniu/android/storage/UploadInfoV2$5;
.super Ljava/lang/Object;
.source "UploadInfoV2.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV2;->isAllUploaded()Z
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


# instance fields
.field final synthetic val$isCompleted:[Z


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV2;[Z)V
    .registers 3

    .line 311
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV2$5;->val$isCompleted:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadData;)Z
    .registers 3

    .line 314
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadData;->isUploaded()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 315
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2$5;->val$isCompleted:[Z

    aput-boolean v0, p1, v0

    const/4 p1, 0x1

    return p1

    :cond_d
    return v0
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 311
    check-cast p1, Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV2$5;->enumerate(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    return p1
.end method
