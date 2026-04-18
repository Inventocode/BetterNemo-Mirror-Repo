.class public final synthetic Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/fragment/CourseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/fragment/CourseFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/CourseFragment;

    return-void
.end method


# virtual methods
.method public final generateFooterView()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CourseFragment;->$r8$lambda$CI5n8WoXQmZXMVcUTLYi1BOqtPo(Lcom/codemao/nemo/fragment/CourseFragment;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object v0

    return-object v0
.end method
