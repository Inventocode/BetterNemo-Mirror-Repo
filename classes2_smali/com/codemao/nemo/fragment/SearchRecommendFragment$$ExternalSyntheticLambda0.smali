.class public final synthetic Lcom/codemao/nemo/fragment/SearchRecommendFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->clearHistory(Landroid/view/View;)V

    return-void
.end method
