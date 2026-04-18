.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "CreativeBcmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateName(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 292
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 297
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V
    .registers 2

    .line 287
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onSuccess()V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 283
    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;->onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V

    return-void
.end method
