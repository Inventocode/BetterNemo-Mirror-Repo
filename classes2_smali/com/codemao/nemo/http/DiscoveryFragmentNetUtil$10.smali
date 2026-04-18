.class Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "DiscoveryFragmentNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->sendComment(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/response/CommentAndReplyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 3

    .line 328
    iput-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "40102004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "40102005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 341
    :cond_19
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    const-string v0, "今天评论太多，明天再试试试吧~"

    invoke-virtual {p2, p1, v0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 338
    :cond_21
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    const-string v0, "评论过于频繁"

    invoke-virtual {p2, p1, v0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 351
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onNetError()V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/response/CommentAndReplyResponse;)V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->val$simpleResponse:Lcom/codemao/nemo/http/LocalNetCallBackV2;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/http/LocalNetCallBackV2;->onSuc(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 328
    check-cast p1, Lcom/codemao/nemo/response/CommentAndReplyResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;->onSuccess(Lcom/codemao/nemo/response/CommentAndReplyResponse;)V

    return-void
.end method
