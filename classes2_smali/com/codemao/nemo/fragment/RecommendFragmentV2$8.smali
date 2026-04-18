.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$8;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "Lcom/codemao/nemo/bean/BannerData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    .line 843
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$8;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

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

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 843
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$8;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BannerData;",
            ">;)V"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$8;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$400(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/util/List;)V

    return-void
.end method
