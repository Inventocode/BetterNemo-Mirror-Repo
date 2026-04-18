.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 5

    .line 1261
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$type:I

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$900(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V

    .line 1287
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeDownload(Ljava/lang/String;Lretrofit2/Call;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 1264
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1266
    :try_start_6
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 1267
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$filePath:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_1b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    .line 1269
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$filePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/jpeg;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->decode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_43
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_57

    .line 1271
    :cond_4c
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$filePath:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-static {v0, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->writeResponseBody(Ljava/lang/String;Lokhttp3/ResponseBody;)V

    .line 1273
    :cond_57
    :goto_57
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onSuccess()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5c} :catch_5d

    goto :goto_72

    :catch_5d
    move-exception p2

    .line 1275
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$900(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V

    goto :goto_72

    .line 1278
    :cond_6a
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    const-string/jumbo v0, "未知错误"

    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    .line 1281
    :goto_72
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;->val$filePath:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeDownload(Ljava/lang/String;Lretrofit2/Call;)V

    return-void
.end method
