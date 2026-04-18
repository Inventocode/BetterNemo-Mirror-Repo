.class Lcom/codemao/nemo/activity/WorkDetailActivity$52;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->getAduanInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/UserDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 2071
    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onNetError()V
    .registers 1

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/UserDetailInfo;)V
    .registers 3

    .line 2074
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->setAduanAvatar(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->setAduanName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 2071
    check-cast p1, Lcom/codemao/nemo/bean/UserDetailInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$52;->onSuc(Lcom/codemao/nemo/bean/UserDetailInfo;)V

    return-void
.end method
