.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmFile(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 4

    .line 1925
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

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
            "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1944
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1945
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1946
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;",
            ">;)V"
        }
    .end annotation

    .line 1929
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1930
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1931
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1900()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1932
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1933
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponseVO;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 1935
    :cond_46
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1936
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p2, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->removeUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1937
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    const-string/jumbo p2, "未知错误"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    :goto_5a
    return-void
.end method
