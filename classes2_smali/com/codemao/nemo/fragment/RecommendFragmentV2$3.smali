.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$3;
.super Ljava/lang/Object;
.source "RecommendFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/RecommendItemCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWorkDetail(Landroid/widget/ImageView;Ljava/lang/String;J)V
    .registers 6

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$200(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Landroid/widget/ImageView;Ljava/lang/String;J)V

    return-void
.end method
