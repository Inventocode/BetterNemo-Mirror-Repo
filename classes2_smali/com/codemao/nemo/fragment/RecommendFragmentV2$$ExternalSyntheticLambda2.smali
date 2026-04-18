.class public final synthetic Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->$r8$lambda$mjEo24aUcexZxcrRyjM3WX-_VYk(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lretrofit2/Response;)Lretrofit2/Response;

    move-result-object p1

    return-object p1
.end method
