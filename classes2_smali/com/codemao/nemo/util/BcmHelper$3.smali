.class Lcom/codemao/nemo/util/BcmHelper$3;
.super Ljava/lang/Object;
.source "BcmHelper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/BcmHelper;->getMiaoCode(Ljava/lang/String;Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/codemao/nemo/bean/GetMiaoCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/codemao/nemo/util/BcmHelper$3;->val$callBack:Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/GetMiaoCode;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 654
    iget-object p1, p0, Lcom/codemao/nemo/util/BcmHelper$3;->val$callBack:Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;

    const-string p2, "获取喵口令失败"

    invoke-interface {p1, p2}, Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/GetMiaoCode;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/GetMiaoCode;",
            ">;)V"
        }
    .end annotation

    .line 645
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 646
    iget-object p1, p0, Lcom/codemao/nemo/util/BcmHelper$3;->val$callBack:Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/GetMiaoCode;

    invoke-interface {p1, p2}, Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;->onSuccess(Lcom/codemao/nemo/bean/GetMiaoCode;)V

    goto :goto_19

    .line 648
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/util/BcmHelper$3;->val$callBack:Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;

    const-string p2, "未知错误"

    invoke-interface {p1, p2}, Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;->onError(Ljava/lang/String;)V

    :goto_19
    return-void
.end method
