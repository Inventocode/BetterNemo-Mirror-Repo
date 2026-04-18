.class Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;
.super Ljava/lang/Object;
.source "UserDynamicWorkPublishDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;I)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->access$000(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;)Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;->showMore(Landroid/view/View;I)V

    return-void
.end method
