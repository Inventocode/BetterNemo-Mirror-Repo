.class Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;
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

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$workInfo:Lcom/codemao/nemo/bean/DynamicWorkInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DynamicWorkInfo;)V
    .registers 4

    .line 102
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->val$workInfo:Lcom/codemao/nemo/bean/DynamicWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->access$000(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;)Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->val$workInfo:Lcom/codemao/nemo/bean/DynamicWorkInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getWork_id()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;->val$workInfo:Lcom/codemao/nemo/bean/DynamicWorkInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;->toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V

    return-void
.end method
