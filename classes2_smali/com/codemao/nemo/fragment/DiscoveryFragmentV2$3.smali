.class Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "DiscoveryFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getMessageCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/MessageCount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

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

.method public onSuc(Lcom/codemao/nemo/bean/MessageCount;)V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$502(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Lcom/codemao/nemo/bean/MessageCount;)Lcom/codemao/nemo/bean/MessageCount;

    .line 408
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->access$600(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 404
    check-cast p1, Lcom/codemao/nemo/bean/MessageCount;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;->onSuc(Lcom/codemao/nemo/bean/MessageCount;)V

    return-void
.end method
