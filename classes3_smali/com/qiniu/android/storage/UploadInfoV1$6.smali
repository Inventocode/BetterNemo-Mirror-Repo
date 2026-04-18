.class Lcom/qiniu/android/storage/UploadInfoV1$6;
.super Ljava/lang/Object;
.source "UploadInfoV1.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV1;->nextUploadBlockFormBlockList()Lcom/qiniu/android/storage/UploadBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/ListVector$EnumeratorHandler<",
        "Lcom/qiniu/android/storage/UploadBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$blocks:[Lcom/qiniu/android/storage/UploadBlock;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV1;[Lcom/qiniu/android/storage/UploadBlock;)V
    .registers 3

    .line 277
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV1$6;->val$blocks:[Lcom/qiniu/android/storage/UploadBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z
    .registers 4

    .line 280
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadBlock;->nextUploadDataWithoutCheckData()Lcom/qiniu/android/storage/UploadData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 282
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1$6;->val$blocks:[Lcom/qiniu/android/storage/UploadBlock;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    return p1

    :cond_d
    return v1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 277
    check-cast p1, Lcom/qiniu/android/storage/UploadBlock;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV1$6;->enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z

    move-result p1

    return p1
.end method
