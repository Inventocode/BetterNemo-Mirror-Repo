.class public Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;
.super Lcom/tencent/mm/opensdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final MAX_URL_LENGHT:I = 0x2800


# instance fields
.field public appId:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public packageExt:Ljava/lang/String;

.field public signType:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_3a

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->timeStamp:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_3a

    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->nonceStr:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_22

    goto :goto_3a

    :cond_22
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->signType:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2d

    goto :goto_3a

    :cond_2d
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->signature:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v0, 0x1

    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0xd

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->appId:Ljava/lang/String;

    const-string v1, "_wxapi_open_busi_lucky_money_appid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->timeStamp:Ljava/lang/String;

    const-string v1, "_wxapi_open_busi_lucky_money_timeStamp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->nonceStr:Ljava/lang/String;

    const-string v1, "_wxapi_open_busi_lucky_money_nonceStr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->signType:Ljava/lang/String;

    const-string v1, "_wxapi_open_busi_lucky_money_signType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->signature:Ljava/lang/String;

    const-string v1, "_wxapi_open_busi_lucky_money_signature"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/OpenBusiLuckyMoney$Req;->packageExt:Ljava/lang/String;

    const-string v1, "_wxapi_open_busi_lucky_money_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
