.class Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;
.super Ljava/lang/Object;
.source "UserRegistAvatarChooseDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;I)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->access$000(Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;)Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;->choose(I)V

    return-void
.end method
