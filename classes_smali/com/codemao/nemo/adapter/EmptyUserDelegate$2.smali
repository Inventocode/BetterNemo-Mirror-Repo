.class Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;
.super Ljava/lang/Object;
.source "EmptyUserDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/EmptyUserDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/EmptyUserDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/EmptyUserInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/EmptyUserDelegate;Lcom/codemao/nemo/bean/EmptyUserInfo;I)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;->this$0:Lcom/codemao/nemo/adapter/EmptyUserDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;->val$data:Lcom/codemao/nemo/bean/EmptyUserInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 81
    iget-object p1, p0, Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;->this$0:Lcom/codemao/nemo/adapter/EmptyUserDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/EmptyUserDelegate;->access$000(Lcom/codemao/nemo/adapter/EmptyUserDelegate;)Lcom/codemao/nemo/adapter/EmptyUserDelegate$UserCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;->val$data:Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/EmptyUserInfo;->getUser_id()J

    move-result-wide v0

    iget v2, p0, Lcom/codemao/nemo/adapter/EmptyUserDelegate$2;->val$position:I

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/adapter/EmptyUserDelegate$UserCallBack;->followUser(JI)V

    return-void
.end method
