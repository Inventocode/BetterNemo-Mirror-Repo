.class public final synthetic Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

.field public final synthetic f$1:Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/bean/BeginnerRecommendBean;Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;->$r8$lambda$qJxxlrfMZ7icb0RjgX9AY5idsJY(Lcom/codemao/nemo/bean/BeginnerRecommendBean;Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;Landroid/view/View;)V

    return-void
.end method
