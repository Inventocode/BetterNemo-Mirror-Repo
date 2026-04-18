.class Lcom/qiniu/android/storage/UploadInfoV1$5;
.super Ljava/lang/Object;
.source "UploadInfoV1.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV1;->toJsonObject()Lorg/json/JSONObject;
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
.field final synthetic val$blockJsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV1;Lorg/json/JSONArray;)V
    .registers 3

    .line 185
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV1$5;->val$blockJsonArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z
    .registers 3

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadBlock;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 191
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV1$5;->val$blockJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :catch_d
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .registers 2

    .line 185
    check-cast p1, Lcom/qiniu/android/storage/UploadBlock;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV1$5;->enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z

    move-result p1

    return p1
.end method
