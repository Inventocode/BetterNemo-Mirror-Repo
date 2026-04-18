.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WorkPublishKnActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 3

    .line 85
    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->changeOpenSouce(Landroid/view/View;)V

    return-void
.end method
