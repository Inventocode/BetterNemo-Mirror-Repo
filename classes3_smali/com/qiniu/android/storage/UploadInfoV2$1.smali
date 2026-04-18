.class Lcom/qiniu/android/storage/UploadInfoV2$1;
.super Ljava/lang/Object;
.source "UploadInfoV2.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV2;->nextUploadDataFormDataList()Lcom/qiniu/android/storage/UploadData;
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
.field final synthetic val$dataRet:[Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV2;[Lcom/qiniu/android/storage/UploadData;)V
    .registers 3

    .line 156
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV2$1;->val$dataRet:[Lcom/qiniu/android/storage/UploadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadData;)Z
    .registers 4

    .line 159
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadData;->needToUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 160
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2$1;->val$dataRet:[Lcom/qiniu/android/storage/UploadData;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    return p1

    :cond_d
    return v1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 156
    check-cast p1, Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV2$1;->enumerate(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    return p1
.end method
