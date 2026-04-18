.class public abstract Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.super Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;
.source "CustomDataRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/common/CustomDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CustomObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
        "TServer;>.QuickObserver<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/common/CustomDataRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/common/CustomDataRepository<",
            "TServer;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/common/CustomDataRepository;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-direct {p0, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;-><init>(Lcom/ljwx/baseapp/vm/model/BaseDataRepository;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "本次请求完成"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "本次请求异常报错:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_46

    .line 38
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iget-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpException异常"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 42
    :cond_46
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_71

    const/16 v0, 0x258

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "网络错误:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iget-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IOException异常"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 47
    :cond_71
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_a2

    .line 48
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_7a

    goto :goto_a2

    :cond_7a
    const/16 v0, 0x2bc

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "未知错误:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "未知异常"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    :cond_a2
    :goto_a2
    const/16 v0, 0x384

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "解析错误"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "json解析失败"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b9
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 30
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-class v0, Lcom/codemao/nemo/activity/LoginActivity;

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-gt v4, v1, :cond_17

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_1f

    .line 68
    invoke-virtual {p0, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseSuccess(Ljava/lang/Object;)V

    goto/16 :goto_154

    .line 69
    :cond_1f
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v4, 0x1f4

    if-gt v4, v1, :cond_2d

    const/16 v4, 0x258

    if-ge v1, v4, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const/4 v4, 0x0

    if-eqz v1, :cond_60

    .line 70
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "服务器错误"

    invoke-virtual {p0, v0, v1, v4}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFailCompat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "响应失败:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 74
    :cond_60
    sget-object v1, Lcom/codemao/nemo/common/ResponseUtils;->INSTANCE:Lcom/codemao/nemo/common/ResponseUtils;

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/common/ResponseUtils;->getErrorCodeAndMsg(Lokhttp3/ResponseBody;)Lcn/codemao/android/http/model/CmaoHttpException;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "User-Not-Authentication@User-Authorization"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x2

    const-string v6, "40100005"

    if-nez v1, :cond_f3

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    goto :goto_f3

    .line 105
    :cond_84
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpException.code"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "402"

    invoke-static {v0, v1, v3, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 106
    sget-object v0, Lcom/codemao/nemo/common/AppUpdateUtils;->INSTANCE:Lcom/codemao/nemo/common/AppUpdateUtils;

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/common/AppUpdateUtils;->showUpdateDialog(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFailCompat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "响应失败,402"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 111
    :cond_c1
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, "0"

    goto :goto_d2

    :cond_ce
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_d2
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    const-string v1, ""

    goto :goto_e3

    :cond_df
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 110
    :goto_e3
    invoke-virtual {p0, v0, v1, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFailCompat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;->this$0:Lcom/codemao/nemo/common/CustomDataRepository;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "响应失败,未知响应码"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154

    .line 76
    :cond_f3
    :goto_f3
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_154

    .line 78
    invoke-static {v3}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    .line 79
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "type"

    if-eqz v3, :cond_12b

    .line 80
    instance-of v2, v1, Lcom/codemao/nemo/activity/LoginActivity;

    if-eqz v2, :cond_116

    .line 81
    check-cast v1, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/LoginActivity;->showForbidden()V

    goto :goto_154

    .line 83
    :cond_116
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1}, Lcn/codemao/android/http/model/CmaoHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errorString"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_154

    .line 89
    :cond_12b
    instance-of p1, v1, Lcom/codemao/nemo/activity/LoginActivity;

    const-string/jumbo v3, "请重新登录"

    if-eqz p1, :cond_13e

    .line 91
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    invoke-static {p1, v3}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_154

    .line 95
    :cond_13e
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    invoke-static {v0, v3}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_154
    :goto_154
    return-void
.end method
