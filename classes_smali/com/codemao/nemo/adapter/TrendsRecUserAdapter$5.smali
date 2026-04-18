.class Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;
.super Ljava/lang/Object;
.source "TrendsRecUserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

.field final synthetic val$i:I

.field final synthetic val$userInfo:Lcom/codemao/nemo/bean/TrendsRecUserInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;Lcom/codemao/nemo/bean/TrendsRecUserInfo;I)V
    .registers 4

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->val$userInfo:Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->access$100(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->access$100(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->val$userInfo:Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getUser_id()J

    move-result-wide v0

    iget v2, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$5;->val$i:I

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;->follow(JI)V

    :cond_19
    return-void
.end method
