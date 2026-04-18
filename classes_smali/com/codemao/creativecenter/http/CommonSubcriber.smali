.class public abstract Lcom/codemao/creativecenter/http/CommonSubcriber;
.super Ljava/lang/Object;
.source "CommonSubcriber.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private errorBodyV0FromJsonStr(Ljava/lang/String;)Lcom/codemao/creativecenter/http/HttpErrorBodyV0;
    .registers 4

    .line 161
    :try_start_0
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/http/HttpErrorBodyV0;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/http/HttpErrorBodyV0;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private errorBodyV1FromJsonStr(Ljava/lang/String;)Lcom/codemao/creativecenter/http/HttpErrorBodyV1;
    .registers 4

    .line 171
    :try_start_0
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/http/HttpErrorBodyV1;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/http/HttpErrorBodyV1;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private errorBodyV2FromJsonStr(Ljava/lang/String;)Lcom/codemao/creativecenter/http/HttpErrorBodyV2;
    .registers 4

    .line 179
    :try_start_0
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private getErrorCodeAndMsg(Lokhttp3/ResponseBody;)Lcom/codemao/creativecenter/http/CmaoHttpException;
    .registers 5

    const-string v0, "-1"

    const-string v1, ""

    .line 123
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_70

    const-string v2, "domain"

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 126
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->errorBodyV2FromJsonStr(Ljava/lang/String;)Lcom/codemao/creativecenter/http/HttpErrorBodyV2;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 128
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->getError_code()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->getError_message()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    .line 131
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/http/HttpErrorDetail;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorDetail;->getMessage()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_70

    :cond_47
    const-string v2, "catastrophe"

    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 135
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->errorBodyV1FromJsonStr(Ljava/lang/String;)Lcom/codemao/creativecenter/http/HttpErrorBodyV1;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 137
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV1;->getError_code()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV1;->getCatastrophe()Lcom/codemao/creativecenter/http/Catastrophe;

    goto :goto_70

    .line 143
    :cond_5d
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->errorBodyV0FromJsonStr(Ljava/lang/String;)Lcom/codemao/creativecenter/http/HttpErrorBodyV0;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 145
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV0;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/HttpErrorBodyV0;->getMsg()Ljava/lang/String;

    move-result-object v1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_70
    :goto_70
    new-instance p1, Lcom/codemao/creativecenter/http/CmaoHttpException;

    invoke-direct {p1, v0, v1}, Lcom/codemao/creativecenter/http/CmaoHttpException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final onComplete()V
    .registers 1

    .line 187
    invoke-virtual {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;->stopUI()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 56
    instance-of v0, p1, Lretrofit2/HttpException;

    const-string v1, ""

    if-eqz v0, :cond_24

    .line 57
    check-cast p1, Lretrofit2/HttpException;

    .line 58
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onNetError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 61
    :cond_24
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_55

    .line 62
    check-cast p1, Ljava/io/IOException;

    const/16 v0, 0x258

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "网络错误:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onNetError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 66
    :cond_55
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_89

    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_5e

    goto :goto_89

    :cond_5e
    const/16 v0, 0x2bc

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "未知错误:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_89
    :goto_89
    const/16 p1, 0x384

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "解析错误"

    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_a0
    invoke-virtual {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;->stopUI()V

    return-void
.end method

.method protected abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onNetError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public final onNext(Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_18

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_18

    .line 41
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_6e

    .line 42
    :cond_18
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x1f4

    const-string v2, ""

    if-lt v0, v1, :cond_44

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_44

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "服务器错误"

    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 45
    :cond_44
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/http/CommonSubcriber;->getErrorCodeAndMsg(Lokhttp3/ResponseBody;)Lcom/codemao/creativecenter/http/CmaoHttpException;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    move-object v0, v2

    goto :goto_5c

    :cond_58
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    :goto_5c
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_6b

    :cond_67
    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_6b
    invoke-virtual {p0, v0, v2}, Lcom/codemao/creativecenter/http/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_6e
    invoke-virtual {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;->stopUI()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;->startUI()V

    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected startUI()V
    .registers 1

    return-void
.end method

.method protected stopUI()V
    .registers 1

    return-void
.end method
