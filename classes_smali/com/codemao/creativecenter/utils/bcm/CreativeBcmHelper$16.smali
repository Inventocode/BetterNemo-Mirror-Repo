.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmFile(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 5

    .line 1952
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$type:I

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$finalPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 1957
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1958
    iget p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_25

    .line 1959
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1900()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$finalPath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    :cond_25
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$baseUrl:Ljava/lang/String;

    iget-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$finalPath:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 1963
    :cond_2f
    iget-object p1, p2, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-eqz p1, :cond_43

    const-string p2, "cancelled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 1964
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    const-string p2, "Canceled"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    goto :goto_4b

    .line 1966
    :cond_43
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;

    const-string/jumbo p2, "未知错误"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    :goto_4b
    return-void
.end method
