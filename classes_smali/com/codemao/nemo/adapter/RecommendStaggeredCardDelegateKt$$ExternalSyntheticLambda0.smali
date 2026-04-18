.class public final synthetic Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;Landroid/view/View;Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->$r8$lambda$YOvSh8NLkpFeLAtb2uGXrkT4mGw(Lcom/codemao/nemo/adapter/RecommendItemCallBack;Landroid/view/View;Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;)V

    return-void
.end method
