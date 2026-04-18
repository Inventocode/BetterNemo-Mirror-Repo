.class public abstract Lcn/codemao/android/account/rx/CommonSubscriber;
.super Lio/reactivex/subscribers/ResourceSubscriber;
.source "CommonSubscriber.java"

# interfaces
.implements Lcn/codemao/android/account/listener/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/ResourceSubscriber<",
        "Lretrofit2/Response<",
        "TT;>;>;",
        "Lcn/codemao/android/account/listener/ResponseListener<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mNetFailureResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mNetSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lio/reactivex/subscribers/ResourceSubscriber;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Lio/reactivex/subscribers/ResourceSubscriber;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/codemao/android/account/rx/CommonSubscriber;->mNetSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 31
    iput-object p2, p0, Lcn/codemao/android/account/rx/CommonSubscriber;->mNetFailureResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-void
.end method

.method private createErrorResponseBody(Ljava/lang/Throwable;)Lcn/codemao/android/account/rx/ResponseBody;
    .registers 6

    .line 116
    new-instance v0, Lcn/codemao/android/account/rx/ResponseBody;

    invoke-direct {v0}, Lcn/codemao/android/account/rx/ResponseBody;-><init>()V

    .line 118
    instance-of v1, p1, Lretrofit2/HttpException;

    if-eqz v1, :cond_2c

    .line 119
    move-object v1, p1

    check-cast v1, Lretrofit2/HttpException;

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lretrofit2/HttpException;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/codemao/android/account/rx/ResponseBody;->setCode(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/rx/ResponseBody;->setMsg(Ljava/lang/String;)V

    goto :goto_70

    .line 122
    :cond_2c
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_3c

    const-string v1, "600"

    .line 123
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/rx/ResponseBody;->setCode(Ljava/lang/String;)V

    const-string/jumbo v1, "网络错误，请检查您的网络设置"

    .line 124
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/rx/ResponseBody;->setMsg(Ljava/lang/String;)V

    goto :goto_70

    .line 125
    :cond_3c
    instance-of v1, p1, Lcn/codemao/android/account/bean/CodeException;

    if-eqz v1, :cond_52

    .line 126
    move-object v1, p1

    check-cast v1, Lcn/codemao/android/account/bean/CodeException;

    .line 127
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/CodeException;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/codemao/android/account/rx/ResponseBody;->setCode(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/CodeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/rx/ResponseBody;->setMsg(Ljava/lang/String;)V

    goto :goto_70

    :cond_52
    const-string v1, "800"

    .line 130
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/rx/ResponseBody;->setCode(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "未知错误:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/rx/ResponseBody;->setMsg(Ljava/lang/String;)V

    .line 134
    :goto_70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private onFailure(Lcn/codemao/android/account/rx/ResponseBody;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/rx/ResponseBody<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/codemao/android/account/rx/ResponseBody;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 89
    instance-of v0, p1, Lretrofit2/HttpException;

    const-string v1, ""

    if-eqz v0, :cond_21

    .line 90
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    .line 93
    :cond_21
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2b

    const-string v1, "800003"

    const-string/jumbo v0, "网络错误，请检查您的网络设置"

    goto :goto_62

    .line 96
    :cond_2b
    instance-of v0, p1, Lcn/codemao/android/account/bean/CodeException;

    if-eqz v0, :cond_4a

    .line 97
    move-object v0, p1

    check-cast v0, Lcn/codemao/android/account/bean/CodeException;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/CodeException;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/CodeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    .line 102
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "未知错误:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "800004"

    .line 105
    :goto_62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-virtual {p0, v1, v0}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->createErrorResponseBody(Ljava/lang/Throwable;)Lcn/codemao/android/account/rx/ResponseBody;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Lcn/codemao/android/account/rx/ResponseBody;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcn/codemao/android/account/rx/CommonSubscriber;->mNetFailureResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz v0, :cond_7

    .line 148
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_d

    .line 40
    invoke-virtual {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    goto/16 :goto_113

    .line 41
    :cond_d
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1a

    .line 42
    invoke-virtual {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    goto/16 :goto_113

    .line 43
    :cond_1a
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x194

    const-string v2, ""

    if-ne v0, v1, :cond_40

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_113

    .line 46
    :cond_40
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 48
    :try_start_46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-class v3, Lcn/codemao/android/account/bean/HttpErrorBody;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/HttpErrorBody;

    if-eqz v0, :cond_c3

    const-string v1, "E_0"

    .line 52
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getError_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "E_1"

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getError_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    goto :goto_94

    :cond_76
    const-string v1, "AC3_79"

    .line 54
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getError_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 55
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getAccountFailListener()Lcn/codemao/android/account/listener/AccountFailListener;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 57
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getError_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcn/codemao/android/account/listener/AccountFailListener;->onAccountFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 53
    :cond_94
    :goto_94
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    .line 63
    :cond_97
    :goto_97
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 64
    invoke-static {}, Lcn/codemao/android/account/rx/ErrorCodeTips;->getInstance()Lcn/codemao/android/account/rx/ErrorCodeTips;

    move-result-object v1

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getError_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/codemao/android/account/rx/ErrorCodeTips;->getTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b2

    .line 65
    :cond_ae
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_b2
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/HttpErrorBody;->getError_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bf

    const-string/jumbo v1, "未知错误"

    :cond_bf
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    .line 68
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_dd} :catch_de

    goto :goto_113

    .line 71
    :catch_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    .line 74
    :cond_f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_113
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcn/codemao/android/account/rx/CommonSubscriber;->mNetSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    if-eqz v0, :cond_b

    .line 141
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
