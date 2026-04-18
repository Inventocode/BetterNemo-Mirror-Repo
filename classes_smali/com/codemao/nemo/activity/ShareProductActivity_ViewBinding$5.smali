.class Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShareProductActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/ShareProductActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;Lcom/codemao/nemo/activity/ShareProductActivity;)V
    .registers 3

    .line 85
    iput-object p2, p0, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
