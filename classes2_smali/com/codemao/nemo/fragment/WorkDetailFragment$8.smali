.class Lcom/codemao/nemo/fragment/WorkDetailFragment$8;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->getRecommensList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/WorkDetailRecommends;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$8;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

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

.method public onSuc(Lcom/codemao/nemo/bean/WorkDetailRecommends;)V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$8;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$700(Lcom/codemao/nemo/fragment/WorkDetailFragment;Lcom/codemao/nemo/bean/WorkDetailRecommends;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 470
    check-cast p1, Lcom/codemao/nemo/bean/WorkDetailRecommends;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment$8;->onSuc(Lcom/codemao/nemo/bean/WorkDetailRecommends;)V

    return-void
.end method
