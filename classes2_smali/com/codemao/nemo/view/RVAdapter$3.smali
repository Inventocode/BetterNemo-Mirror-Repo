.class Lcom/codemao/nemo/view/RVAdapter$3;
.super Ljava/lang/Object;
.source "RVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RVAdapter;->onBindViewHolder(Lcom/codemao/nemo/view/RVAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RVAdapter;

.field final synthetic val$data:Lcom/codemao/nemo/bean/CardVO;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RVAdapter;ILcom/codemao/nemo/bean/CardVO;)V
    .registers 4

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$3;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    iput p2, p0, Lcom/codemao/nemo/view/RVAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/view/RVAdapter$3;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$3;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/RVAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/codemao/nemo/view/RVAdapter$3;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onScrollTo(ILjava/lang/String;)V

    return-void
.end method
