.class public final synthetic Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

.field public final synthetic f$1:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;->f$1:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;->f$1:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->$r8$lambda$keoOmA0kWh-SlRis2Rom72G6WHI(Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V

    return-void
.end method
