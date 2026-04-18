.class Lcom/qiniu/android/storage/UploadInfoV1$7;
.super Ljava/lang/Object;
.source "UploadInfoV1.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV1;->allBlocksContexts()Ljava/util/ArrayList;
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
.field final synthetic val$contexts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV1;Ljava/util/ArrayList;)V
    .registers 3

    .line 363
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV1$7;->val$contexts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z
    .registers 3

    .line 366
    iget-object p1, p1, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 367
    invoke-static {p1}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 368
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1$7;->val$contexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 363
    check-cast p1, Lcom/qiniu/android/storage/UploadBlock;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV1$7;->enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z

    move-result p1

    return p1
.end method
