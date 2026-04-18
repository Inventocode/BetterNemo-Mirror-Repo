.class Lcom/codemao/nemo/http/DiscoveryNetUtil$11;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "DiscoveryNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/http/DiscoveryNetUtil;->getReplys(JJILcom/codemao/nemo/http/LocalNetCallBackV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/WorkCommentReplys;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 3

    .line 315
    iput-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 328
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onNetError()V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/WorkCommentReplys;)V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onSuc(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 315
    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentReplys;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;->onSuccess(Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    return-void
.end method
