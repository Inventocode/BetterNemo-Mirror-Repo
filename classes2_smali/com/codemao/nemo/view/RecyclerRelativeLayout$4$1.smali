.class Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;
.super Ljava/lang/Object;
.source "RecyclerRelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->onUploadItem(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;

.field final synthetic val$position:I

.field final synthetic val$workName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;ILjava/lang/String;)V
    .registers 4

    .line 245
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;->this$1:Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;

    iput p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;->val$workName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;->this$1:Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;

    iget-object v0, v0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4$1;->val$workName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onUploadItem(ILjava/lang/String;)V

    return-void
.end method
