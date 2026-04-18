.class Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;
.super Ljava/lang/Object;
.source "ThemeMaterialListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

.field final synthetic val$bean:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;I)V
    .registers 4

    .line 158
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->val$bean:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    iput p3, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$400(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 162
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$400(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->val$bean:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    iget v2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->val$position:I

    iget-object v3, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;->clickDownload(Landroid/view/View;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;II)V

    :cond_21
    return-void
.end method
