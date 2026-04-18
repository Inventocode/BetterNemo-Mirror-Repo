.class public abstract Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private errorBodyV0FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV0;
    .registers 4

    .line 270
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcn/codemao/android/http/model/HttpErrorBodyV0;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorBodyV0;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private errorBodyV1FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV1;
    .registers 4

    .line 280
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcn/codemao/android/http/model/HttpErrorBodyV1;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorBodyV1;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private errorBodyV2FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV2;
    .registers 4

    .line 288
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcn/codemao/android/http/model/HttpErrorBodyV2;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorBodyV2;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private getErrorCodeAndMsg(Lokhttp3/ResponseBody;)Lcn/codemao/android/http/model/CmaoHttpException;
    .registers 5

    const-string v0, "-1"

    const-string v1, ""

    .line 232
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_70

    const-string v2, "domain"

    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 235
    invoke-direct {p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->errorBodyV2FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV2;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 237
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getError_code()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getError_message()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    .line 240
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorDetail;

    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorDetail;->getMessage()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_70

    :cond_47
    const-string v2, "catastrophe"

    .line 243
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 244
    invoke-direct {p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->errorBodyV1FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV1;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 246
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV1;->getError_code()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV1;->getCatastrophe()Lcn/codemao/android/http/model/Catastrophe;

    goto :goto_70

    .line 252
    :cond_5d
    invoke-direct {p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->errorBodyV0FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV0;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 254
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV0;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV0;->getMsg()Ljava/lang/String;

    move-result-object v1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    :cond_70
    :goto_70
    new-instance p1, Lcn/codemao/android/http/model/CmaoHttpException;

    invoke-direct {p1, v0, v1}, Lcn/codemao/android/http/model/CmaoHttpException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private onFailureOnMain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 153
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 155
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$3;-><init>(Lcom/codemao/nemo/retrofit/response/CommonSubcriber;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 166
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method private onNetErrorOnMain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 171
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 173
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$4;-><init>(Lcom/codemao/nemo/retrofit/response/CommonSubcriber;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 184
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onNetError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method private showUpdateDialog(Ljava/lang/String;)V
    .registers 4

    .line 98
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v1, "这次算了"

    .line 99
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, "火速更新"

    .line 100
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 101
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$1;-><init>(Lcom/codemao/nemo/retrofit/response/CommonSubcriber;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 111
    new-instance v0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$2;-><init>(Lcom/codemao/nemo/retrofit/response/CommonSubcriber;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 118
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .registers 1

    .line 296
    invoke-virtual {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->stopUI()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 128
    instance-of v0, p1, Lretrofit2/HttpException;

    const-string v1, ""

    if-eqz v0, :cond_24

    .line 129
    check-cast p1, Lretrofit2/HttpException;

    .line 130
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    .line 131
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onNetErrorOnMain(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 133
    :cond_24
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_54

    .line 134
    check-cast p1, Ljava/io/IOException;

    const/16 v0, 0x258

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "网络错误:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onNetErrorOnMain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 138
    :cond_54
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_87

    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_5d

    goto :goto_87

    :cond_5d
    const/16 v0, 0x2bc

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "未知错误:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onNetErrorOnMain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    :cond_87
    :goto_87
    const/16 p1, 0x384

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "解析错误"

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailureOnMain(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_9d
    invoke-virtual {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->stopUI()V

    return-void
.end method

.method protected abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onNetError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public final onNext(Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    const-class v0, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1b

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1b

    .line 56
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_118

    .line 57
    :cond_1b
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x1f4

    const-string v3, ""

    if-lt v1, v2, :cond_47

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x258

    if-ge v1, v2, :cond_47

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "服务器错误"

    invoke-virtual {p0, p1, v0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_118

    .line 60
    :cond_47
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->getErrorCodeAndMsg(Lokhttp3/ResponseBody;)Lcn/codemao/android/http/model/CmaoHttpException;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Not-Authentication@User-Authorization"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "40100005"

    if-nez v1, :cond_b5

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    goto :goto_b5

    .line 86
    :cond_68
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "402"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 87
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->showUpdateDialog(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_118

    .line 90
    :cond_92
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    move-object v0, v3

    goto :goto_a2

    :cond_9e
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    :goto_a2
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ad

    goto :goto_b1

    :cond_ad
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_b1
    invoke-virtual {p0, v0, v3}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    .line 63
    :cond_b5
    :goto_b5
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_118

    const/4 v3, 0x0

    .line 65
    invoke-static {v3}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    .line 66
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "type"

    if-eqz v2, :cond_ef

    .line 67
    instance-of v2, v1, Lcom/codemao/nemo/activity/LoginActivity;

    if-eqz v2, :cond_d9

    .line 68
    check-cast v1, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/LoginActivity;->showForbidden()V

    goto :goto_118

    .line 70
    :cond_d9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 71
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errorString"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_118

    .line 76
    :cond_ef
    instance-of p1, v1, Lcom/codemao/nemo/activity/LoginActivity;

    const-string v2, "请重新登录"

    if-eqz p1, :cond_101

    .line 77
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_118

    .line 79
    :cond_101
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_118
    :goto_118
    invoke-virtual {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->stopUI()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->startUI()V

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
