.class Lcom/codemao/nemo/view/RVAdapter$4;
.super Ljava/lang/Object;
.source "RVAdapter.java"

# interfaces
.implements Lcom/codemao/nemo/view/MyExpandCardView$CallBack;


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
.method constructor <init>(Lcom/codemao/nemo/view/RVAdapter;Lcom/codemao/nemo/bean/CardVO;I)V
    .registers 4

    .line 101
    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    iput-object p2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    iput p3, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCopy()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onCopyItem(ILjava/lang/String;)V

    return-void
.end method

.method public onDownloadCancel()V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onDeleteBcm(ILjava/lang/String;)V

    goto :goto_31

    .line 140
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onCancelDownloadItem(ILjava/lang/String;)V

    :goto_31
    return-void
.end method

.method public onEnter()V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onClick(ILjava/lang/String;)V

    return-void
.end method

.method public onRedownload()V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 152
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onRedownload(ILjava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onRemove()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onDeleteItem(ILjava/lang/String;)V

    return-void
.end method

.method public onRename()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onChangeNameItem(ILjava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onShare()V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onShareItem(ILjava/lang/String;)V

    return-void
.end method

.method public onUpload()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter$4;->this$0:Lcom/codemao/nemo/view/RVAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/view/RVAdapter;->access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/RVAdapter$4;->val$data:Lcom/codemao/nemo/bean/CardVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;->onUploadItem(ILjava/lang/String;)V

    return-void
.end method
