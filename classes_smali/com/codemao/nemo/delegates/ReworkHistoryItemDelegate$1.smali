.class Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;
.super Ljava/lang/Object;
.source "ReworkHistoryItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/ReworkHistoryVO;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/ReworkHistoryVO;)V
    .registers 4

    .line 113
    iput-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->access$000(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;)Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 120
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    goto :goto_57

    .line 122
    :sswitch_11
    iget-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->access$000(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;)Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;->onMore()V

    goto :goto_57

    .line 134
    :sswitch_1b
    iget-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->access$100(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getId()J

    move-result-wide v1

    const-string v3, ""

    const-string/jumbo v4, "再创作历史"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 128
    :sswitch_32
    iget-object v0, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->access$000(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;)Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;

    move-result-object v1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    iget-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getUser_id()J

    move-result-wide v3

    iget-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getId()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;->toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;J)V

    :goto_57
    return-void

    :sswitch_data_58
    .sparse-switch
        0x7f0a019d -> :sswitch_32
        0x7f0a019e -> :sswitch_32
        0x7f0a01cb -> :sswitch_32
        0x7f0a0393 -> :sswitch_1b
        0x7f0a0394 -> :sswitch_1b
        0x7f0a04ae -> :sswitch_1b
        0x7f0a04af -> :sswitch_1b
        0x7f0a04cb -> :sswitch_11
        0x7f0a092d -> :sswitch_32
    .end sparse-switch
.end method
