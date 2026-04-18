.class public final synthetic Lcom/codemao/nemo/fragment/BaseDiscoverFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    return-void
.end method


# virtual methods
.method public final generateFooterView()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->$r8$lambda$rJBXGQlo-W3AdW0SNXapRv5VQ5Q(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object v0

    return-object v0
.end method
