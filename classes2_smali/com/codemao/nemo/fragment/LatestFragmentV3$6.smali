.class Lcom/codemao/nemo/fragment/LatestFragmentV3$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "LatestFragmentV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV3;->getModuleList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/LatestWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

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

.method public onSuc(Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 4

    if-eqz p1, :cond_4d

    .line 376
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 377
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    new-instance v1, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$602(Lcom/codemao/nemo/fragment/LatestFragmentV3;Lcom/codemao/nemo/bean/LatestWorkInfo;)Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$600(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setOther(Z)V

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$600(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setOtherWorkInfos(Ljava/util/List;)V

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$600(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;

    move-result-object p1

    const-string v0, "模板"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setOtherTitle(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$600(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setOtherType(I)V

    .line 382
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, v1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$500(Lcom/codemao/nemo/fragment/LatestFragmentV3;ZIII)V

    :cond_4d
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 373
    check-cast p1, Lcom/codemao/nemo/bean/LatestWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;->onSuc(Lcom/codemao/nemo/bean/LatestWorks;)V

    return-void
.end method
