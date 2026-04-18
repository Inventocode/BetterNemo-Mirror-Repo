.class public final synthetic Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iput-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final generateFooterView()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->$r8$lambda$PQ2KbNac1THdhZEXKcxsXxkcV68(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Ljava/lang/String;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object v0

    return-object v0
.end method
