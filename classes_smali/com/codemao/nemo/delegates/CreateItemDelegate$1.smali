.class Lcom/codemao/nemo/delegates/CreateItemDelegate$1;
.super Ljava/lang/Object;
.source "CreateItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CreateItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CreateItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 140
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 147
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0220

    if-eq v0, v1, :cond_2c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a09bd

    if-eq v0, v1, :cond_2c

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onDismissDeleteHolder(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    .line 150
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_118

    goto/16 :goto_116

    .line 182
    :sswitch_35
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onShare(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto/16 :goto_116

    .line 170
    :sswitch_48
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto/16 :goto_116

    .line 178
    :sswitch_57
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onConfirmDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto/16 :goto_116

    .line 174
    :sswitch_6a
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onCancelDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto/16 :goto_116

    .line 186
    :sswitch_79
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onPublish(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto/16 :goto_116

    .line 153
    :sswitch_8c
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$100(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Z

    move-result p1

    if-nez p1, :cond_95

    return-void

    .line 156
    :cond_95
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-boolean v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-nez v0, :cond_116

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_116

    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v0, 0x7f0a05fa

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result p1

    if-nez p1, :cond_116

    .line 157
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onRename(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_116

    .line 196
    :sswitch_bd
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onEnter(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_116

    .line 189
    :sswitch_cf
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onContinueDownload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_116

    .line 166
    :sswitch_e1
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onCopy(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_116

    .line 162
    :sswitch_f3
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onUpload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_116

    .line 192
    :sswitch_105
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onCancelDownload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :cond_116
    :goto_116
    return-void

    nop

    :sswitch_data_118
    .sparse-switch
        0x7f0a00fa -> :sswitch_105
        0x7f0a0175 -> :sswitch_f3
        0x7f0a0197 -> :sswitch_e1
        0x7f0a01f6 -> :sswitch_cf
        0x7f0a0220 -> :sswitch_bd
        0x7f0a0399 -> :sswitch_8c
        0x7f0a05d3 -> :sswitch_79
        0x7f0a05f7 -> :sswitch_6a
        0x7f0a05f9 -> :sswitch_57
        0x7f0a05fc -> :sswitch_48
        0x7f0a0719 -> :sswitch_35
        0x7f0a09bd -> :sswitch_bd
        0x7f0a09be -> :sswitch_8c
    .end sparse-switch
.end method
