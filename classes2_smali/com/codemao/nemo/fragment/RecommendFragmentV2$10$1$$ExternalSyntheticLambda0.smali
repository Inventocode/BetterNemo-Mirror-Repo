.class public final synthetic Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;

.field public final synthetic f$1:Lcom/codemao/nemo/bean/EventInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;Lcom/codemao/nemo/bean/EventInfo;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/nemo/bean/EventInfo;

    iput-object p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/nemo/bean/EventInfo;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;->$r8$lambda$5GAoX_7Fs3V4Bfjg5pfeuaHQyfo(Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;Lcom/codemao/nemo/bean/EventInfo;Ljava/lang/String;Z)V

    return-void
.end method
