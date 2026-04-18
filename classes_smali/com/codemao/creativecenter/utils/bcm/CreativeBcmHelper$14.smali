.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 5

    .line 1857
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$type:I

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1896
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1897
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;)V"
        }
    .end annotation

    .line 1860
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1861
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1862
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;

    .line 1864
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->getBucket_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1502(Ljava/lang/String;)Ljava/lang/String;

    .line 1866
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1867
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    .line 1869
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    move-object v3, p2

    goto :goto_65

    :cond_51
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4f

    .line 1871
    :cond_5d
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$filePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4f

    .line 1877
    :goto_65
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$type:I

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;->getFile_path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1500()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    invoke-static/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmFile(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    goto :goto_ca

    .line 1879
    :cond_90
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1880
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1882
    :try_start_9c
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    .line 1883
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_b7

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1884
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_bb

    .line 1885
    :cond_b7
    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    .line 1882
    :goto_bb
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_be} :catch_bf

    goto :goto_ca

    :catch_bf
    move-exception p1

    .line 1887
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1888
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    const-string p2, "qiniu Token 获取失败"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    :goto_ca
    return-void
.end method
