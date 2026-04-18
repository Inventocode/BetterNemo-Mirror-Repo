.class Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;
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


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;->val$bean:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 153
    iget-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$400(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 154
    iget-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$400(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;->val$bean:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;->clickToDetail(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)V

    :cond_17
    return-void
.end method
