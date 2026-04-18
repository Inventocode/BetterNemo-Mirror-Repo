.class Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;
.super Ljava/lang/Object;
.source "CourseItemDelegateV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CourseItemDelegateV2;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/CourseItemDelegateV2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CourseItemDelegateV2;I)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;->this$0:Lcom/codemao/nemo/delegates/CourseItemDelegateV2;

    iput p2, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 49
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;->this$0:Lcom/codemao/nemo/delegates/CourseItemDelegateV2;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;->access$000(Lcom/codemao/nemo/delegates/CourseItemDelegateV2;)Lcom/codemao/nemo/listener/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 50
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;->this$0:Lcom/codemao/nemo/delegates/CourseItemDelegateV2;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;->access$000(Lcom/codemao/nemo/delegates/CourseItemDelegateV2;)Lcom/codemao/nemo/listener/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/listener/OnItemClickListener;->onItemClick(I)V

    :cond_13
    return-void
.end method
