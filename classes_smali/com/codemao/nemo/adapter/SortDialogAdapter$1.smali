.class Lcom/codemao/nemo/adapter/SortDialogAdapter$1;
.super Ljava/lang/Object;
.source "SortDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/SortDialogAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/SortDialogAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/SortDialogAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/SortDialogAdapter;I)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$1;->this$0:Lcom/codemao/nemo/adapter/SortDialogAdapter;

    iput p2, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 70
    iget-object p1, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$1;->this$0:Lcom/codemao/nemo/adapter/SortDialogAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/SortDialogAdapter;->access$000(Lcom/codemao/nemo/adapter/SortDialogAdapter;)Lcom/codemao/nemo/listener/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/SortDialogAdapter$1;->val$i:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/listener/OnItemClickListener;->onItemClick(I)V

    return-void
.end method
