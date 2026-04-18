.class public Lcom/tencent/mm/opensdk/modelpay/PayReq;
.super Lcom/tencent/mm/opensdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;
    }
.end annotation


# static fields
.field private static final EXTDATA_MAX_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.PaySdk.PayReq"


# instance fields
.field public appId:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public options:Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public signType:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 5

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MicroMsg.PaySdk.PayReq"

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_77

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_74

    :cond_1a
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_71

    :cond_25
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    goto :goto_6e

    :cond_30
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_6b

    :cond_3b
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_46

    goto :goto_68

    :cond_46
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_51

    goto :goto_65

    :cond_51
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->extData:Ljava/lang/String;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x400

    if-le v0, v3, :cond_63

    const-string v0, "checkArgs fail, extData length too long"

    :goto_5f
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_63
    const/4 v0, 0x1

    return v0

    :cond_65
    :goto_65
    const-string v0, "checkArgs fail, invalid sign"

    goto :goto_5f

    :cond_68
    :goto_68
    const-string v0, "checkArgs fail, invalid packageValue"

    goto :goto_5f

    :cond_6b
    :goto_6b
    const-string v0, "checkArgs fail, invalid timeStamp"

    goto :goto_5f

    :cond_6e
    :goto_6e
    const-string v0, "checkArgs fail, invalid nonceStr"

    goto :goto_5f

    :cond_71
    :goto_71
    const-string v0, "checkArgs fail, invalid prepayId"

    goto :goto_5f

    :cond_74
    :goto_74
    const-string v0, "checkArgs fail, invalid partnerId"

    goto :goto_5f

    :cond_77
    :goto_77
    const-string v0, "checkArgs fail, invalid appId"

    goto :goto_5f
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_payreq_appid"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_partnerid"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_prepayid"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_noncestr"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_timestamp"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_packagevalue"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_sign"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_extdata"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->extData:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_sign_type"

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->signType:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->options:Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_appid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_partnerid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_prepayid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_noncestr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_packagevalue"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_sign"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->extData:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_extdata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->signType:Ljava/lang/String;

    const-string v1, "_wxapi_payreq_sign_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->options:Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;

    if-eqz v0, :cond_49

    invoke-virtual {v0, p1}, Lcom/tencent/mm/opensdk/modelpay/PayReq$Options;->toBundle(Landroid/os/Bundle;)V

    :cond_49
    return-void
.end method
