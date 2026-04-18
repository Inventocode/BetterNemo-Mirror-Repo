.class Lcom/qiniu/android/storage/UploadInfoV1$2;
.super Ljava/lang/Object;
.source "UploadInfoV1.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV1;->uploadSize()J
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
.field final synthetic val$uploadSize:[J


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV1;[J)V
    .registers 3

    .line 128
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV1$2;->val$uploadSize:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z
    .registers 8

    .line 131
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1$2;->val$uploadSize:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadBlock;->uploadSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    return v1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 128
    check-cast p1, Lcom/qiniu/android/storage/UploadBlock;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV1$2;->enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z

    move-result p1

    return p1
.end method
