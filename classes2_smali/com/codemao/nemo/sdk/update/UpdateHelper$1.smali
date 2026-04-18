.class Lcom/codemao/nemo/sdk/update/UpdateHelper$1;
.super Lcn/codemao/android/update/listener/NetResultListener;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;->getIfHasNewVersion(Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/update/listener/NetResultListener<",
        "Lcn/codemao/android/update/vo/UpdateResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;)V
    .registers 3

    .line 93
    iput-object p2, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;->val$callBack:Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;

    invoke-direct {p0}, Lcn/codemao/android/update/listener/NetResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 4

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;->val$callBack:Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;

    const/4 v0, 0x0

    const-string v1, "当前版本不是最新版本，马上更新体验新功能吧！"

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;->chekFinished(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcn/codemao/android/update/vo/UpdateResultVO;)V
    .registers 4

    .line 96
    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getVersionCode()I

    move-result v0

    const/16 v1, 0xcf

    if-le v0, v1, :cond_13

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;->val$callBack:Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getUpdateDesc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;->chekFinished(ZLjava/lang/String;)V

    goto :goto_1d

    .line 99
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;->val$callBack:Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getUpdateDesc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;->chekFinished(ZLjava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 93
    check-cast p1, Lcn/codemao/android/update/vo/UpdateResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;->onSuccess(Lcn/codemao/android/update/vo/UpdateResultVO;)V

    return-void
.end method
