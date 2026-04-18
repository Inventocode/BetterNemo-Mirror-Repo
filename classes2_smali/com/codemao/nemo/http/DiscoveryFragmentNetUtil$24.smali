.class Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "DiscoveryFragmentNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getUserDynamic(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserDynamics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 3

    .line 726
    iput-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 734
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 739
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onNetError()V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserDynamics;)V
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onSuc(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 726
    check-cast p1, Lcom/codemao/nemo/bean/UserDynamics;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;->onSuccess(Lcom/codemao/nemo/bean/UserDynamics;)V

    return-void
.end method
