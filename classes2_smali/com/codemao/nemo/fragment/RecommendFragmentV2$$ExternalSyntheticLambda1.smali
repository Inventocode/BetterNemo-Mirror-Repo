.class public final synthetic Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    check-cast p1, Lretrofit2/Response;

    check-cast p2, Lretrofit2/Response;

    invoke-static {v0, p1, p2}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->$r8$lambda$3CmH7CSmZopsvPkWVr6laeRwdNg(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lretrofit2/Response;Lretrofit2/Response;)Lretrofit2/Response;

    move-result-object p1

    return-object p1
.end method
